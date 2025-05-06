
module forward_dataflow_in_loop_VITIS_LOOP_17744_1_Loop_VITIS_LOOP_17526_1_proc29_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,urem_ln17750,urem_ln17747,mul_ln17530,v13677_address0,v13677_ce0,v13677_we0,v13677_d0,v13677_1_address0,v13677_1_ce0,v13677_1_we0,v13677_1_d0,v13677_2_address0,v13677_2_ce0,v13677_2_we0,v13677_2_d0,v13677_3_address0,v13677_3_ce0,v13677_3_we0,v13677_3_d0,v13677_4_address0,v13677_4_ce0,v13677_4_we0,v13677_4_d0,v13677_5_address0,v13677_5_ce0,v13677_5_we0,v13677_5_d0,v13677_6_address0,v13677_6_ce0,v13677_6_we0,v13677_6_d0,v13677_7_address0,v13677_7_ce0,v13677_7_we0,v13677_7_d0,v13677_8_address0,v13677_8_ce0,v13677_8_we0,v13677_8_d0,v13677_9_address0,v13677_9_ce0,v13677_9_we0,v13677_9_d0,v13677_10_address0,v13677_10_ce0,v13677_10_we0,v13677_10_d0,v13677_11_address0,v13677_11_ce0,v13677_11_we0,v13677_11_d0,v13677_12_address0,v13677_12_ce0,v13677_12_we0,v13677_12_d0,v13677_13_address0,v13677_13_ce0,v13677_13_we0,v13677_13_d0,v13677_14_address0,v13677_14_ce0,v13677_14_we0,v13677_14_d0,v13677_15_address0,v13677_15_ce0,v13677_15_we0,v13677_15_d0,urem_ln17749,urem_ln17746,v13680_0_0_address0,v13680_0_0_ce0,v13680_0_0_q0,v13680_0_1_address0,v13680_0_1_ce0,v13680_0_1_q0,v13680_0_2_address0,v13680_0_2_ce0,v13680_0_2_q0,v13680_0_3_address0,v13680_0_3_ce0,v13680_0_3_q0,v13680_1_0_address0,v13680_1_0_ce0,v13680_1_0_q0,v13680_1_1_address0,v13680_1_1_ce0,v13680_1_1_q0,v13680_1_2_address0,v13680_1_2_ce0,v13680_1_2_q0,v13680_1_3_address0,v13680_1_3_ce0,v13680_1_3_q0,v13680_2_0_address0,v13680_2_0_ce0,v13680_2_0_q0,v13680_2_1_address0,v13680_2_1_ce0,v13680_2_1_q0,v13680_2_2_address0,v13680_2_2_ce0,v13680_2_2_q0,v13680_2_3_address0,v13680_2_3_ce0,v13680_2_3_q0,v13680_3_0_address0,v13680_3_0_ce0,v13680_3_0_q0,v13680_3_1_address0,v13680_3_1_ce0,v13680_3_1_q0,v13680_3_2_address0,v13680_3_2_ce0,v13680_3_2_q0,v13680_3_3_address0,v13680_3_3_ce0,v13680_3_3_q0,empty_96,empty);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [1:0] urem_ln17750;
input  [5:0] urem_ln17747;
input  [9:0] mul_ln17530;
output  [5:0] v13677_address0;
output   v13677_ce0;
output   v13677_we0;
output  [7:0] v13677_d0;
output  [5:0] v13677_1_address0;
output   v13677_1_ce0;
output   v13677_1_we0;
output  [7:0] v13677_1_d0;
output  [5:0] v13677_2_address0;
output   v13677_2_ce0;
output   v13677_2_we0;
output  [7:0] v13677_2_d0;
output  [5:0] v13677_3_address0;
output   v13677_3_ce0;
output   v13677_3_we0;
output  [7:0] v13677_3_d0;
output  [5:0] v13677_4_address0;
output   v13677_4_ce0;
output   v13677_4_we0;
output  [7:0] v13677_4_d0;
output  [5:0] v13677_5_address0;
output   v13677_5_ce0;
output   v13677_5_we0;
output  [7:0] v13677_5_d0;
output  [5:0] v13677_6_address0;
output   v13677_6_ce0;
output   v13677_6_we0;
output  [7:0] v13677_6_d0;
output  [5:0] v13677_7_address0;
output   v13677_7_ce0;
output   v13677_7_we0;
output  [7:0] v13677_7_d0;
output  [5:0] v13677_8_address0;
output   v13677_8_ce0;
output   v13677_8_we0;
output  [7:0] v13677_8_d0;
output  [5:0] v13677_9_address0;
output   v13677_9_ce0;
output   v13677_9_we0;
output  [7:0] v13677_9_d0;
output  [5:0] v13677_10_address0;
output   v13677_10_ce0;
output   v13677_10_we0;
output  [7:0] v13677_10_d0;
output  [5:0] v13677_11_address0;
output   v13677_11_ce0;
output   v13677_11_we0;
output  [7:0] v13677_11_d0;
output  [5:0] v13677_12_address0;
output   v13677_12_ce0;
output   v13677_12_we0;
output  [7:0] v13677_12_d0;
output  [5:0] v13677_13_address0;
output   v13677_13_ce0;
output   v13677_13_we0;
output  [7:0] v13677_13_d0;
output  [5:0] v13677_14_address0;
output   v13677_14_ce0;
output   v13677_14_we0;
output  [7:0] v13677_14_d0;
output  [5:0] v13677_15_address0;
output   v13677_15_ce0;
output   v13677_15_we0;
output  [7:0] v13677_15_d0;
input  [1:0] urem_ln17749;
input  [3:0] urem_ln17746;
output  [16:0] v13680_0_0_address0;
output   v13680_0_0_ce0;
input  [7:0] v13680_0_0_q0;
output  [16:0] v13680_0_1_address0;
output   v13680_0_1_ce0;
input  [7:0] v13680_0_1_q0;
output  [16:0] v13680_0_2_address0;
output   v13680_0_2_ce0;
input  [7:0] v13680_0_2_q0;
output  [16:0] v13680_0_3_address0;
output   v13680_0_3_ce0;
input  [7:0] v13680_0_3_q0;
output  [16:0] v13680_1_0_address0;
output   v13680_1_0_ce0;
input  [7:0] v13680_1_0_q0;
output  [16:0] v13680_1_1_address0;
output   v13680_1_1_ce0;
input  [7:0] v13680_1_1_q0;
output  [16:0] v13680_1_2_address0;
output   v13680_1_2_ce0;
input  [7:0] v13680_1_2_q0;
output  [16:0] v13680_1_3_address0;
output   v13680_1_3_ce0;
input  [7:0] v13680_1_3_q0;
output  [16:0] v13680_2_0_address0;
output   v13680_2_0_ce0;
input  [7:0] v13680_2_0_q0;
output  [16:0] v13680_2_1_address0;
output   v13680_2_1_ce0;
input  [7:0] v13680_2_1_q0;
output  [16:0] v13680_2_2_address0;
output   v13680_2_2_ce0;
input  [7:0] v13680_2_2_q0;
output  [16:0] v13680_2_3_address0;
output   v13680_2_3_ce0;
input  [7:0] v13680_2_3_q0;
output  [16:0] v13680_3_0_address0;
output   v13680_3_0_ce0;
input  [7:0] v13680_3_0_q0;
output  [16:0] v13680_3_1_address0;
output   v13680_3_1_ce0;
input  [7:0] v13680_3_1_q0;
output  [16:0] v13680_3_2_address0;
output   v13680_3_2_ce0;
input  [7:0] v13680_3_2_q0;
output  [16:0] v13680_3_3_address0;
output   v13680_3_3_ce0;
input  [7:0] v13680_3_3_q0;
input  [1:0] empty_96;
input  [1:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln17526_fu_3146_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [1:0] tmp_reg_4238;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] tmp_338_reg_4258;
wire   [10:0] mul_ln17530_cast_fu_2968_p1;
reg   [10:0] mul_ln17530_cast_reg_4289;
wire   [2:0] tmp_339_fu_3028_p4;
reg   [2:0] tmp_339_reg_4297;
reg   [2:0] tmp_339_reg_4297_pp0_iter1_reg;
reg   [2:0] tmp_339_reg_4297_pp0_iter2_reg;
reg   [9:0] tmp_60_reg_4303;
reg   [8:0] tmp_61_reg_4308;
reg   [8:0] tmp_62_reg_4313;
reg   [2:0] lshr_ln_reg_4318;
reg   [2:0] lshr_ln_reg_4318_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_4318_pp0_iter2_reg;
wire   [1:0] or_ln17529_fu_3114_p2;
reg   [1:0] or_ln17529_reg_4325;
wire   [0:0] xor_ln17527_fu_3140_p2;
reg   [0:0] xor_ln17527_reg_4330;
reg   [0:0] icmp_ln17526_reg_4335;
wire   [7:0] tmp_541_i_fu_3823_p11;
reg   [7:0] tmp_541_i_reg_5619;
wire   [7:0] tmp_546_i_fu_3846_p11;
reg   [7:0] tmp_546_i_reg_5624;
wire   [7:0] tmp_551_i_fu_3869_p11;
reg   [7:0] tmp_551_i_reg_5629;
wire   [7:0] tmp_556_i_fu_3892_p11;
reg   [7:0] tmp_556_i_reg_5634;
wire   [7:0] tmp_561_i_fu_3915_p11;
reg   [7:0] tmp_561_i_reg_5639;
wire   [7:0] tmp_566_i_fu_3938_p11;
reg   [7:0] tmp_566_i_reg_5644;
wire   [7:0] tmp_571_i_fu_3961_p11;
reg   [7:0] tmp_571_i_reg_5649;
wire   [7:0] tmp_576_i_fu_3984_p11;
reg   [7:0] tmp_576_i_reg_5654;
wire   [7:0] tmp_581_i_fu_4007_p11;
reg   [7:0] tmp_581_i_reg_5659;
wire   [7:0] tmp_586_i_fu_4030_p11;
reg   [7:0] tmp_586_i_reg_5664;
wire   [7:0] tmp_591_i_fu_4053_p11;
reg   [7:0] tmp_591_i_reg_5669;
wire   [7:0] tmp_596_i_fu_4076_p11;
reg   [7:0] tmp_596_i_reg_5674;
wire   [7:0] tmp_601_i_fu_4099_p11;
reg   [7:0] tmp_601_i_reg_5679;
wire   [7:0] tmp_606_i_fu_4122_p11;
reg   [7:0] tmp_606_i_reg_5684;
wire   [7:0] tmp_611_i_fu_4145_p11;
reg   [7:0] tmp_611_i_reg_5689;
wire   [7:0] tmp_616_i_fu_4168_p11;
reg   [7:0] tmp_616_i_reg_5694;
reg   [0:0] ap_phi_mux_icmp_ln175271641_phi_fu_2593_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln17532_1_fu_3349_p1;
wire   [63:0] zext_ln17540_fu_3375_p1;
wire   [63:0] zext_ln17548_fu_3401_p1;
wire   [63:0] zext_ln17556_fu_3427_p1;
wire   [63:0] zext_ln17530_fu_3477_p1;
wire   [63:0] zext_ln17538_2_fu_3503_p1;
wire   [63:0] zext_ln17546_2_fu_3529_p1;
wire   [63:0] zext_ln17554_2_fu_3555_p1;
wire   [63:0] zext_ln17534_1_fu_3601_p1;
wire   [63:0] zext_ln17542_fu_3627_p1;
wire   [63:0] zext_ln17550_fu_3653_p1;
wire   [63:0] zext_ln17558_fu_3679_p1;
wire   [63:0] zext_ln17536_1_fu_3725_p1;
wire   [63:0] zext_ln17544_fu_3751_p1;
wire   [63:0] zext_ln17552_fu_3777_p1;
wire   [63:0] zext_ln17560_1_fu_3803_p1;
wire   [63:0] zext_ln17560_fu_4197_p1;
reg   [5:0] indvar_flatten1638_fu_200;
wire   [5:0] add_ln17526_1_fu_3126_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten1638_load;
reg   [5:0] v135741639_fu_204;
wire   [5:0] v13574_fu_3010_p3;
reg   [5:0] ap_sig_allocacmp_v135741639_load;
reg   [5:0] v135751640_fu_208;
wire   [5:0] v13575_fu_3120_p2;
reg   [5:0] ap_sig_allocacmp_v135751640_load;
reg    v13680_0_0_ce0_local;
reg   [16:0] v13680_0_0_address0_local;
reg    v13680_0_1_ce0_local;
reg   [16:0] v13680_0_1_address0_local;
reg    v13680_0_2_ce0_local;
reg   [16:0] v13680_0_2_address0_local;
reg    v13680_0_3_ce0_local;
reg   [16:0] v13680_0_3_address0_local;
reg    v13680_1_0_ce0_local;
reg   [16:0] v13680_1_0_address0_local;
reg    v13680_1_1_ce0_local;
reg   [16:0] v13680_1_1_address0_local;
reg    v13680_1_2_ce0_local;
reg   [16:0] v13680_1_2_address0_local;
reg    v13680_1_3_ce0_local;
reg   [16:0] v13680_1_3_address0_local;
reg    v13680_2_0_ce0_local;
reg   [16:0] v13680_2_0_address0_local;
reg    v13680_2_1_ce0_local;
reg   [16:0] v13680_2_1_address0_local;
reg    v13680_2_2_ce0_local;
reg   [16:0] v13680_2_2_address0_local;
reg    v13680_2_3_ce0_local;
reg   [16:0] v13680_2_3_address0_local;
reg    v13680_3_0_ce0_local;
reg   [16:0] v13680_3_0_address0_local;
reg    v13680_3_1_ce0_local;
reg   [16:0] v13680_3_1_address0_local;
reg    v13680_3_2_ce0_local;
reg   [16:0] v13680_3_2_address0_local;
reg    v13680_3_3_ce0_local;
reg   [16:0] v13680_3_3_address0_local;
reg    v13677_15_we0_local;
reg    v13677_15_ce0_local;
reg    v13677_14_we0_local;
reg    v13677_14_ce0_local;
reg    v13677_13_we0_local;
reg    v13677_13_ce0_local;
reg    v13677_12_we0_local;
reg    v13677_12_ce0_local;
reg    v13677_11_we0_local;
reg    v13677_11_ce0_local;
reg    v13677_10_we0_local;
reg    v13677_10_ce0_local;
reg    v13677_9_we0_local;
reg    v13677_9_ce0_local;
reg    v13677_8_we0_local;
reg    v13677_8_ce0_local;
reg    v13677_7_we0_local;
reg    v13677_7_ce0_local;
reg    v13677_6_we0_local;
reg    v13677_6_ce0_local;
reg    v13677_5_we0_local;
reg    v13677_5_ce0_local;
reg    v13677_4_we0_local;
reg    v13677_4_ce0_local;
reg    v13677_3_we0_local;
reg    v13677_3_ce0_local;
reg    v13677_2_we0_local;
reg    v13677_2_ce0_local;
reg    v13677_1_we0_local;
reg    v13677_1_ce0_local;
reg    v13677_we0_local;
reg    v13677_ce0_local;
wire   [7:0] grp_fu_2600_p9;
wire   [7:0] grp_fu_2623_p9;
wire   [7:0] grp_fu_2646_p9;
wire   [7:0] grp_fu_2669_p9;
wire   [7:0] grp_fu_2692_p9;
wire   [7:0] grp_fu_2715_p9;
wire   [7:0] grp_fu_2738_p9;
wire   [7:0] grp_fu_2761_p9;
wire   [7:0] grp_fu_2784_p9;
wire   [7:0] grp_fu_2807_p9;
wire   [7:0] grp_fu_2830_p9;
wire   [7:0] grp_fu_2853_p9;
wire   [7:0] grp_fu_2876_p9;
wire   [7:0] grp_fu_2899_p9;
wire   [7:0] grp_fu_2922_p9;
wire   [7:0] grp_fu_2945_p9;
wire   [5:0] add_ln17526_fu_2996_p2;
wire   [1:0] empty_312_fu_3018_p1;
wire   [1:0] empty_313_fu_3022_p2;
wire   [10:0] tmp_4_fu_3038_p4;
wire   [11:0] p_cast133_i_fu_3048_p1;
wire   [11:0] empty_314_fu_3052_p2;
wire   [10:0] empty_315_fu_3068_p2;
wire   [10:0] empty_316_fu_3084_p2;
wire   [5:0] select_ln17526_fu_3002_p3;
wire   [1:0] trunc_ln17529_fu_3110_p1;
wire   [0:0] tmp_348_fu_3132_p3;
wire   [8:0] tmp_s_fu_3167_p3;
wire   [10:0] zext_ln17538_fu_3173_p1;
wire   [10:0] add_ln17538_fu_3177_p2;
wire   [9:0] trunc_ln17538_fu_3182_p1;
wire   [15:0] tmp_340_fu_3186_p3;
wire   [16:0] tmp_341_fu_3194_p3;
wire   [16:0] zext_ln17538_1_fu_3202_p1;
wire   [10:0] zext_ln17530_1_fu_3212_p1;
wire   [10:0] add_ln17530_fu_3215_p2;
wire   [9:0] trunc_ln17530_fu_3220_p1;
wire   [15:0] tmp_342_fu_3224_p3;
wire   [16:0] tmp_343_fu_3232_p3;
wire   [16:0] zext_ln17530_2_fu_3240_p1;
wire   [10:0] zext_ln17546_fu_3250_p1;
wire   [10:0] add_ln17546_fu_3253_p2;
wire   [9:0] trunc_ln17546_fu_3258_p1;
wire   [15:0] tmp_344_fu_3262_p3;
wire   [16:0] tmp_345_fu_3270_p3;
wire   [16:0] zext_ln17546_1_fu_3278_p1;
wire   [10:0] zext_ln17554_fu_3288_p1;
wire   [10:0] add_ln17554_fu_3291_p2;
wire   [9:0] trunc_ln17554_fu_3296_p1;
wire   [15:0] tmp_346_fu_3300_p3;
wire   [16:0] tmp_347_fu_3308_p3;
wire   [16:0] zext_ln17554_1_fu_3316_p1;
wire   [6:0] lshr_ln36_fu_3333_p3;
wire   [16:0] sub_ln17530_fu_3244_p2;
wire   [16:0] zext_ln17532_fu_3339_p1;
wire   [16:0] add_ln17532_fu_3343_p2;
wire   [16:0] sub_ln17538_fu_3206_p2;
wire   [16:0] add_ln17540_fu_3369_p2;
wire   [16:0] sub_ln17546_fu_3282_p2;
wire   [16:0] add_ln17548_fu_3395_p2;
wire   [16:0] sub_ln17527_fu_3320_p2;
wire   [16:0] add_ln17556_fu_3421_p2;
wire   [8:0] or_ln17529_1_fu_3326_p4;
wire   [9:0] zext_ln17529_fu_3447_p1;
wire   [9:0] add_ln17529_fu_3451_p2;
wire   [7:0] trunc_ln_fu_3457_p4;
wire  signed [16:0] sext_ln17530_fu_3467_p1;
wire   [16:0] add_ln17530_1_fu_3471_p2;
wire   [16:0] add_ln17538_1_fu_3497_p2;
wire   [16:0] add_ln17546_1_fu_3523_p2;
wire   [16:0] add_ln17554_1_fu_3549_p2;
wire   [8:0] add_ln17533_fu_3575_p2;
wire   [6:0] lshr_ln37_fu_3581_p4;
wire   [16:0] zext_ln17534_fu_3591_p1;
wire   [16:0] add_ln17534_fu_3595_p2;
wire   [16:0] add_ln17542_fu_3621_p2;
wire   [16:0] add_ln17550_fu_3647_p2;
wire   [16:0] add_ln17558_fu_3673_p2;
wire   [8:0] add_ln17535_fu_3699_p2;
wire   [6:0] lshr_ln38_fu_3705_p4;
wire   [16:0] zext_ln17536_fu_3715_p1;
wire   [16:0] add_ln17536_fu_3719_p2;
wire   [16:0] add_ln17544_fu_3745_p2;
wire   [16:0] add_ln17552_fu_3771_p2;
wire   [16:0] add_ln17560_fu_3797_p2;
wire   [7:0] grp_fu_2600_p11;
wire   [7:0] grp_fu_2623_p11;
wire   [7:0] grp_fu_2646_p11;
wire   [7:0] grp_fu_2669_p11;
wire   [7:0] tmp_541_i_fu_3823_p9;
wire   [7:0] grp_fu_2692_p11;
wire   [7:0] grp_fu_2715_p11;
wire   [7:0] grp_fu_2738_p11;
wire   [7:0] grp_fu_2761_p11;
wire   [7:0] tmp_546_i_fu_3846_p9;
wire   [7:0] grp_fu_2784_p11;
wire   [7:0] grp_fu_2807_p11;
wire   [7:0] grp_fu_2830_p11;
wire   [7:0] grp_fu_2853_p11;
wire   [7:0] tmp_551_i_fu_3869_p9;
wire   [7:0] grp_fu_2876_p11;
wire   [7:0] grp_fu_2899_p11;
wire   [7:0] grp_fu_2922_p11;
wire   [7:0] grp_fu_2945_p11;
wire   [7:0] tmp_556_i_fu_3892_p9;
wire   [7:0] tmp_561_i_fu_3915_p9;
wire   [7:0] tmp_566_i_fu_3938_p9;
wire   [7:0] tmp_571_i_fu_3961_p9;
wire   [7:0] tmp_576_i_fu_3984_p9;
wire   [7:0] tmp_581_i_fu_4007_p9;
wire   [7:0] tmp_586_i_fu_4030_p9;
wire   [7:0] tmp_591_i_fu_4053_p9;
wire   [7:0] tmp_596_i_fu_4076_p9;
wire   [7:0] tmp_601_i_fu_4099_p9;
wire   [7:0] tmp_606_i_fu_4122_p9;
wire   [7:0] tmp_611_i_fu_4145_p9;
wire   [7:0] tmp_616_i_fu_4168_p9;
wire   [5:0] tmp_63_fu_4191_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_2075;
reg    ap_condition_868;
wire   [1:0] grp_fu_2600_p1;
wire  signed [1:0] grp_fu_2600_p3;
wire  signed [1:0] grp_fu_2600_p5;
wire   [1:0] grp_fu_2600_p7;
wire   [1:0] grp_fu_2623_p1;
wire  signed [1:0] grp_fu_2623_p3;
wire  signed [1:0] grp_fu_2623_p5;
wire   [1:0] grp_fu_2623_p7;
wire   [1:0] grp_fu_2646_p1;
wire  signed [1:0] grp_fu_2646_p3;
wire  signed [1:0] grp_fu_2646_p5;
wire   [1:0] grp_fu_2646_p7;
wire   [1:0] grp_fu_2669_p1;
wire  signed [1:0] grp_fu_2669_p3;
wire  signed [1:0] grp_fu_2669_p5;
wire   [1:0] grp_fu_2669_p7;
wire   [1:0] grp_fu_2692_p1;
wire   [1:0] grp_fu_2692_p3;
wire  signed [1:0] grp_fu_2692_p5;
wire  signed [1:0] grp_fu_2692_p7;
wire   [1:0] grp_fu_2715_p1;
wire   [1:0] grp_fu_2715_p3;
wire  signed [1:0] grp_fu_2715_p5;
wire  signed [1:0] grp_fu_2715_p7;
wire   [1:0] grp_fu_2738_p1;
wire   [1:0] grp_fu_2738_p3;
wire  signed [1:0] grp_fu_2738_p5;
wire  signed [1:0] grp_fu_2738_p7;
wire   [1:0] grp_fu_2761_p1;
wire   [1:0] grp_fu_2761_p3;
wire  signed [1:0] grp_fu_2761_p5;
wire  signed [1:0] grp_fu_2761_p7;
wire  signed [1:0] grp_fu_2784_p1;
wire   [1:0] grp_fu_2784_p3;
wire   [1:0] grp_fu_2784_p5;
wire  signed [1:0] grp_fu_2784_p7;
wire  signed [1:0] grp_fu_2807_p1;
wire   [1:0] grp_fu_2807_p3;
wire   [1:0] grp_fu_2807_p5;
wire  signed [1:0] grp_fu_2807_p7;
wire  signed [1:0] grp_fu_2830_p1;
wire   [1:0] grp_fu_2830_p3;
wire   [1:0] grp_fu_2830_p5;
wire  signed [1:0] grp_fu_2830_p7;
wire  signed [1:0] grp_fu_2853_p1;
wire   [1:0] grp_fu_2853_p3;
wire   [1:0] grp_fu_2853_p5;
wire  signed [1:0] grp_fu_2853_p7;
wire  signed [1:0] grp_fu_2876_p1;
wire  signed [1:0] grp_fu_2876_p3;
wire   [1:0] grp_fu_2876_p5;
wire   [1:0] grp_fu_2876_p7;
wire  signed [1:0] grp_fu_2899_p1;
wire  signed [1:0] grp_fu_2899_p3;
wire   [1:0] grp_fu_2899_p5;
wire   [1:0] grp_fu_2899_p7;
wire  signed [1:0] grp_fu_2922_p1;
wire  signed [1:0] grp_fu_2922_p3;
wire   [1:0] grp_fu_2922_p5;
wire   [1:0] grp_fu_2922_p7;
wire  signed [1:0] grp_fu_2945_p1;
wire  signed [1:0] grp_fu_2945_p3;
wire   [1:0] grp_fu_2945_p5;
wire   [1:0] grp_fu_2945_p7;
wire   [1:0] tmp_541_i_fu_3823_p1;
wire  signed [1:0] tmp_541_i_fu_3823_p3;
wire  signed [1:0] tmp_541_i_fu_3823_p5;
wire   [1:0] tmp_541_i_fu_3823_p7;
wire   [1:0] tmp_546_i_fu_3846_p1;
wire  signed [1:0] tmp_546_i_fu_3846_p3;
wire  signed [1:0] tmp_546_i_fu_3846_p5;
wire   [1:0] tmp_546_i_fu_3846_p7;
wire   [1:0] tmp_551_i_fu_3869_p1;
wire  signed [1:0] tmp_551_i_fu_3869_p3;
wire  signed [1:0] tmp_551_i_fu_3869_p5;
wire   [1:0] tmp_551_i_fu_3869_p7;
wire   [1:0] tmp_556_i_fu_3892_p1;
wire  signed [1:0] tmp_556_i_fu_3892_p3;
wire  signed [1:0] tmp_556_i_fu_3892_p5;
wire   [1:0] tmp_556_i_fu_3892_p7;
wire   [1:0] tmp_561_i_fu_3915_p1;
wire   [1:0] tmp_561_i_fu_3915_p3;
wire  signed [1:0] tmp_561_i_fu_3915_p5;
wire  signed [1:0] tmp_561_i_fu_3915_p7;
wire   [1:0] tmp_566_i_fu_3938_p1;
wire   [1:0] tmp_566_i_fu_3938_p3;
wire  signed [1:0] tmp_566_i_fu_3938_p5;
wire  signed [1:0] tmp_566_i_fu_3938_p7;
wire   [1:0] tmp_571_i_fu_3961_p1;
wire   [1:0] tmp_571_i_fu_3961_p3;
wire  signed [1:0] tmp_571_i_fu_3961_p5;
wire  signed [1:0] tmp_571_i_fu_3961_p7;
wire   [1:0] tmp_576_i_fu_3984_p1;
wire   [1:0] tmp_576_i_fu_3984_p3;
wire  signed [1:0] tmp_576_i_fu_3984_p5;
wire  signed [1:0] tmp_576_i_fu_3984_p7;
wire  signed [1:0] tmp_581_i_fu_4007_p1;
wire   [1:0] tmp_581_i_fu_4007_p3;
wire   [1:0] tmp_581_i_fu_4007_p5;
wire  signed [1:0] tmp_581_i_fu_4007_p7;
wire  signed [1:0] tmp_586_i_fu_4030_p1;
wire   [1:0] tmp_586_i_fu_4030_p3;
wire   [1:0] tmp_586_i_fu_4030_p5;
wire  signed [1:0] tmp_586_i_fu_4030_p7;
wire  signed [1:0] tmp_591_i_fu_4053_p1;
wire   [1:0] tmp_591_i_fu_4053_p3;
wire   [1:0] tmp_591_i_fu_4053_p5;
wire  signed [1:0] tmp_591_i_fu_4053_p7;
wire  signed [1:0] tmp_596_i_fu_4076_p1;
wire   [1:0] tmp_596_i_fu_4076_p3;
wire   [1:0] tmp_596_i_fu_4076_p5;
wire  signed [1:0] tmp_596_i_fu_4076_p7;
wire  signed [1:0] tmp_601_i_fu_4099_p1;
wire  signed [1:0] tmp_601_i_fu_4099_p3;
wire   [1:0] tmp_601_i_fu_4099_p5;
wire   [1:0] tmp_601_i_fu_4099_p7;
wire  signed [1:0] tmp_606_i_fu_4122_p1;
wire  signed [1:0] tmp_606_i_fu_4122_p3;
wire   [1:0] tmp_606_i_fu_4122_p5;
wire   [1:0] tmp_606_i_fu_4122_p7;
wire  signed [1:0] tmp_611_i_fu_4145_p1;
wire  signed [1:0] tmp_611_i_fu_4145_p3;
wire   [1:0] tmp_611_i_fu_4145_p5;
wire   [1:0] tmp_611_i_fu_4145_p7;
wire  signed [1:0] tmp_616_i_fu_4168_p1;
wire  signed [1:0] tmp_616_i_fu_4168_p3;
wire   [1:0] tmp_616_i_fu_4168_p5;
wire   [1:0] tmp_616_i_fu_4168_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten1638_fu_200 = 6'd0;
#0 v135741639_fu_204 = 6'd0;
#0 v135751640_fu_208 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U269(.din0(v13680_0_0_q0),.din1(v13680_0_1_q0),.din2(v13680_0_2_q0),.din3(v13680_0_3_q0),.def(grp_fu_2600_p9),.sel(empty_96),.dout(grp_fu_2600_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U270(.din0(v13680_1_0_q0),.din1(v13680_1_1_q0),.din2(v13680_1_2_q0),.din3(v13680_1_3_q0),.def(grp_fu_2623_p9),.sel(empty_96),.dout(grp_fu_2623_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U271(.din0(v13680_2_0_q0),.din1(v13680_2_1_q0),.din2(v13680_2_2_q0),.din3(v13680_2_3_q0),.def(grp_fu_2646_p9),.sel(empty_96),.dout(grp_fu_2646_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U272(.din0(v13680_3_0_q0),.din1(v13680_3_1_q0),.din2(v13680_3_2_q0),.din3(v13680_3_3_q0),.def(grp_fu_2669_p9),.sel(empty_96),.dout(grp_fu_2669_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U273(.din0(v13680_0_0_q0),.din1(v13680_0_1_q0),.din2(v13680_0_2_q0),.din3(v13680_0_3_q0),.def(grp_fu_2692_p9),.sel(empty_96),.dout(grp_fu_2692_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U274(.din0(v13680_1_0_q0),.din1(v13680_1_1_q0),.din2(v13680_1_2_q0),.din3(v13680_1_3_q0),.def(grp_fu_2715_p9),.sel(empty_96),.dout(grp_fu_2715_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U275(.din0(v13680_2_0_q0),.din1(v13680_2_1_q0),.din2(v13680_2_2_q0),.din3(v13680_2_3_q0),.def(grp_fu_2738_p9),.sel(empty_96),.dout(grp_fu_2738_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U276(.din0(v13680_3_0_q0),.din1(v13680_3_1_q0),.din2(v13680_3_2_q0),.din3(v13680_3_3_q0),.def(grp_fu_2761_p9),.sel(empty_96),.dout(grp_fu_2761_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U277(.din0(v13680_0_0_q0),.din1(v13680_0_1_q0),.din2(v13680_0_2_q0),.din3(v13680_0_3_q0),.def(grp_fu_2784_p9),.sel(empty_96),.dout(grp_fu_2784_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U278(.din0(v13680_1_0_q0),.din1(v13680_1_1_q0),.din2(v13680_1_2_q0),.din3(v13680_1_3_q0),.def(grp_fu_2807_p9),.sel(empty_96),.dout(grp_fu_2807_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U279(.din0(v13680_2_0_q0),.din1(v13680_2_1_q0),.din2(v13680_2_2_q0),.din3(v13680_2_3_q0),.def(grp_fu_2830_p9),.sel(empty_96),.dout(grp_fu_2830_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U280(.din0(v13680_3_0_q0),.din1(v13680_3_1_q0),.din2(v13680_3_2_q0),.din3(v13680_3_3_q0),.def(grp_fu_2853_p9),.sel(empty_96),.dout(grp_fu_2853_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U281(.din0(v13680_0_0_q0),.din1(v13680_0_1_q0),.din2(v13680_0_2_q0),.din3(v13680_0_3_q0),.def(grp_fu_2876_p9),.sel(empty_96),.dout(grp_fu_2876_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U282(.din0(v13680_1_0_q0),.din1(v13680_1_1_q0),.din2(v13680_1_2_q0),.din3(v13680_1_3_q0),.def(grp_fu_2899_p9),.sel(empty_96),.dout(grp_fu_2899_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U283(.din0(v13680_2_0_q0),.din1(v13680_2_1_q0),.din2(v13680_2_2_q0),.din3(v13680_2_3_q0),.def(grp_fu_2922_p9),.sel(empty_96),.dout(grp_fu_2922_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U284(.din0(v13680_3_0_q0),.din1(v13680_3_1_q0),.din2(v13680_3_2_q0),.din3(v13680_3_3_q0),.def(grp_fu_2945_p9),.sel(empty_96),.dout(grp_fu_2945_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U285(.din0(grp_fu_2600_p11),.din1(grp_fu_2623_p11),.din2(grp_fu_2646_p11),.din3(grp_fu_2669_p11),.def(tmp_541_i_fu_3823_p9),.sel(empty),.dout(tmp_541_i_fu_3823_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U286(.din0(grp_fu_2692_p11),.din1(grp_fu_2715_p11),.din2(grp_fu_2738_p11),.din3(grp_fu_2761_p11),.def(tmp_546_i_fu_3846_p9),.sel(empty),.dout(tmp_546_i_fu_3846_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U287(.din0(grp_fu_2784_p11),.din1(grp_fu_2807_p11),.din2(grp_fu_2830_p11),.din3(grp_fu_2853_p11),.def(tmp_551_i_fu_3869_p9),.sel(empty),.dout(tmp_551_i_fu_3869_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U288(.din0(grp_fu_2876_p11),.din1(grp_fu_2899_p11),.din2(grp_fu_2922_p11),.din3(grp_fu_2945_p11),.def(tmp_556_i_fu_3892_p9),.sel(empty),.dout(tmp_556_i_fu_3892_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U289(.din0(grp_fu_2600_p11),.din1(grp_fu_2623_p11),.din2(grp_fu_2646_p11),.din3(grp_fu_2669_p11),.def(tmp_561_i_fu_3915_p9),.sel(empty),.dout(tmp_561_i_fu_3915_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U290(.din0(grp_fu_2692_p11),.din1(grp_fu_2715_p11),.din2(grp_fu_2738_p11),.din3(grp_fu_2761_p11),.def(tmp_566_i_fu_3938_p9),.sel(empty),.dout(tmp_566_i_fu_3938_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U291(.din0(grp_fu_2784_p11),.din1(grp_fu_2807_p11),.din2(grp_fu_2830_p11),.din3(grp_fu_2853_p11),.def(tmp_571_i_fu_3961_p9),.sel(empty),.dout(tmp_571_i_fu_3961_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U292(.din0(grp_fu_2876_p11),.din1(grp_fu_2899_p11),.din2(grp_fu_2922_p11),.din3(grp_fu_2945_p11),.def(tmp_576_i_fu_3984_p9),.sel(empty),.dout(tmp_576_i_fu_3984_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U293(.din0(grp_fu_2600_p11),.din1(grp_fu_2623_p11),.din2(grp_fu_2646_p11),.din3(grp_fu_2669_p11),.def(tmp_581_i_fu_4007_p9),.sel(empty),.dout(tmp_581_i_fu_4007_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U294(.din0(grp_fu_2692_p11),.din1(grp_fu_2715_p11),.din2(grp_fu_2738_p11),.din3(grp_fu_2761_p11),.def(tmp_586_i_fu_4030_p9),.sel(empty),.dout(tmp_586_i_fu_4030_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U295(.din0(grp_fu_2784_p11),.din1(grp_fu_2807_p11),.din2(grp_fu_2830_p11),.din3(grp_fu_2853_p11),.def(tmp_591_i_fu_4053_p9),.sel(empty),.dout(tmp_591_i_fu_4053_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U296(.din0(grp_fu_2876_p11),.din1(grp_fu_2899_p11),.din2(grp_fu_2922_p11),.din3(grp_fu_2945_p11),.def(tmp_596_i_fu_4076_p9),.sel(empty),.dout(tmp_596_i_fu_4076_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U297(.din0(grp_fu_2600_p11),.din1(grp_fu_2623_p11),.din2(grp_fu_2646_p11),.din3(grp_fu_2669_p11),.def(tmp_601_i_fu_4099_p9),.sel(empty),.dout(tmp_601_i_fu_4099_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U298(.din0(grp_fu_2692_p11),.din1(grp_fu_2715_p11),.din2(grp_fu_2738_p11),.din3(grp_fu_2761_p11),.def(tmp_606_i_fu_4122_p9),.sel(empty),.dout(tmp_606_i_fu_4122_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U299(.din0(grp_fu_2784_p11),.din1(grp_fu_2807_p11),.din2(grp_fu_2830_p11),.din3(grp_fu_2853_p11),.def(tmp_611_i_fu_4145_p9),.sel(empty),.dout(tmp_611_i_fu_4145_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U300(.din0(grp_fu_2876_p11),.din1(grp_fu_2899_p11),.din2(grp_fu_2922_p11),.din3(grp_fu_2945_p11),.def(tmp_616_i_fu_4168_p9),.sel(empty),.dout(tmp_616_i_fu_4168_p11));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1638_fu_200 <= add_ln17526_1_fu_3126_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1638_fu_200 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v135741639_fu_204 <= v13574_fu_3010_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v135741639_fu_204 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v135751640_fu_208 <= v13575_fu_3120_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v135751640_fu_208 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln17526_reg_4335 <= icmp_ln17526_fu_3146_p2;
        lshr_ln_reg_4318 <= {{select_ln17526_fu_3002_p3[4:2]}};
        lshr_ln_reg_4318_pp0_iter1_reg <= lshr_ln_reg_4318;
        mul_ln17530_cast_reg_4289[9 : 0] <= mul_ln17530_cast_fu_2968_p1[9 : 0];
        or_ln17529_reg_4325 <= or_ln17529_fu_3114_p2;
        tmp_339_reg_4297 <= {{v13574_fu_3010_p3[4:2]}};
        tmp_339_reg_4297_pp0_iter1_reg <= tmp_339_reg_4297;
        tmp_60_reg_4303 <= {{empty_314_fu_3052_p2[11:2]}};
        tmp_61_reg_4308 <= {{empty_315_fu_3068_p2[10:2]}};
        tmp_62_reg_4313 <= {{empty_316_fu_3084_p2[10:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln_reg_4318_pp0_iter2_reg <= lshr_ln_reg_4318_pp0_iter1_reg;
        tmp_339_reg_4297_pp0_iter2_reg <= tmp_339_reg_4297_pp0_iter1_reg;
        tmp_541_i_reg_5619 <= tmp_541_i_fu_3823_p11;
        tmp_546_i_reg_5624 <= tmp_546_i_fu_3846_p11;
        tmp_551_i_reg_5629 <= tmp_551_i_fu_3869_p11;
        tmp_556_i_reg_5634 <= tmp_556_i_fu_3892_p11;
        tmp_561_i_reg_5639 <= tmp_561_i_fu_3915_p11;
        tmp_566_i_reg_5644 <= tmp_566_i_fu_3938_p11;
        tmp_571_i_reg_5649 <= tmp_571_i_fu_3961_p11;
        tmp_576_i_reg_5654 <= tmp_576_i_fu_3984_p11;
        tmp_581_i_reg_5659 <= tmp_581_i_fu_4007_p11;
        tmp_586_i_reg_5664 <= tmp_586_i_fu_4030_p11;
        tmp_591_i_reg_5669 <= tmp_591_i_fu_4053_p11;
        tmp_596_i_reg_5674 <= tmp_596_i_fu_4076_p11;
        tmp_601_i_reg_5679 <= tmp_601_i_fu_4099_p11;
        tmp_606_i_reg_5684 <= tmp_606_i_fu_4122_p11;
        tmp_611_i_reg_5689 <= tmp_611_i_fu_4145_p11;
        tmp_616_i_reg_5694 <= tmp_616_i_fu_4168_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln17527_reg_4330 <= xor_ln17527_fu_3140_p2;
    end
end
always @ (*) begin
    if (((icmp_ln17526_fu_3146_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_2075)) begin
            ap_phi_mux_icmp_ln175271641_phi_fu_2593_p4 = xor_ln17527_reg_4330;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln175271641_phi_fu_2593_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln175271641_phi_fu_2593_p4 = xor_ln17527_reg_4330;
        end
    end else begin
        ap_phi_mux_icmp_ln175271641_phi_fu_2593_p4 = xor_ln17527_reg_4330;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1638_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1638_load = indvar_flatten1638_fu_200;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v135741639_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v135741639_load = v135741639_fu_204;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v135751640_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v135751640_load = v135751640_fu_208;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_10_ce0_local = 1'b1;
    end else begin
        v13677_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_10_we0_local = 1'b1;
    end else begin
        v13677_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_11_ce0_local = 1'b1;
    end else begin
        v13677_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_11_we0_local = 1'b1;
    end else begin
        v13677_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_12_ce0_local = 1'b1;
    end else begin
        v13677_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_12_we0_local = 1'b1;
    end else begin
        v13677_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_13_ce0_local = 1'b1;
    end else begin
        v13677_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_13_we0_local = 1'b1;
    end else begin
        v13677_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_14_ce0_local = 1'b1;
    end else begin
        v13677_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_14_we0_local = 1'b1;
    end else begin
        v13677_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_15_ce0_local = 1'b1;
    end else begin
        v13677_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_15_we0_local = 1'b1;
    end else begin
        v13677_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_1_ce0_local = 1'b1;
    end else begin
        v13677_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_1_we0_local = 1'b1;
    end else begin
        v13677_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_2_ce0_local = 1'b1;
    end else begin
        v13677_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_2_we0_local = 1'b1;
    end else begin
        v13677_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_3_ce0_local = 1'b1;
    end else begin
        v13677_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_3_we0_local = 1'b1;
    end else begin
        v13677_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_4_ce0_local = 1'b1;
    end else begin
        v13677_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_4_we0_local = 1'b1;
    end else begin
        v13677_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_5_ce0_local = 1'b1;
    end else begin
        v13677_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_5_we0_local = 1'b1;
    end else begin
        v13677_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_6_ce0_local = 1'b1;
    end else begin
        v13677_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_6_we0_local = 1'b1;
    end else begin
        v13677_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_7_ce0_local = 1'b1;
    end else begin
        v13677_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_7_we0_local = 1'b1;
    end else begin
        v13677_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_8_ce0_local = 1'b1;
    end else begin
        v13677_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_8_we0_local = 1'b1;
    end else begin
        v13677_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_9_ce0_local = 1'b1;
    end else begin
        v13677_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_9_we0_local = 1'b1;
    end else begin
        v13677_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_ce0_local = 1'b1;
    end else begin
        v13677_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13677_we0_local = 1'b1;
    end else begin
        v13677_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_0_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_0_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_0_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_0_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_0_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_0_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_0_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_0_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_0_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_0_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_0_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_0_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_0_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_0_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_0_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_0_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_0_0_address0_local = 'bx;
        end
    end else begin
        v13680_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_0_0_ce0_local = 1'b1;
    end else begin
        v13680_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_1_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_1_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_1_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_1_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_1_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_1_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_1_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_1_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_1_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_1_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_1_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_1_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_1_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_1_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_1_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_1_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_0_1_address0_local = 'bx;
        end
    end else begin
        v13680_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_0_1_ce0_local = 1'b1;
    end else begin
        v13680_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_2_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_2_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_2_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_2_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_2_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_2_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_2_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_2_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_2_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_2_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_2_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_2_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_2_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_2_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_2_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_2_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_0_2_address0_local = 'bx;
        end
    end else begin
        v13680_0_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_0_2_ce0_local = 1'b1;
    end else begin
        v13680_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_3_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_3_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_3_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_0_3_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_3_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_3_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_3_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_0_3_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_3_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_3_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_3_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_0_3_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_3_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_3_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_3_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_0_3_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_0_3_address0_local = 'bx;
        end
    end else begin
        v13680_0_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_0_3_ce0_local = 1'b1;
    end else begin
        v13680_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_0_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_0_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_0_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_0_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_0_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_0_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_0_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_0_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_0_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_0_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_0_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_0_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_0_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_0_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_0_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_0_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_1_0_address0_local = 'bx;
        end
    end else begin
        v13680_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_1_0_ce0_local = 1'b1;
    end else begin
        v13680_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_1_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_1_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_1_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_1_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_1_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_1_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_1_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_1_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_1_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_1_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_1_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_1_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_1_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_1_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_1_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_1_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_1_1_address0_local = 'bx;
        end
    end else begin
        v13680_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_1_1_ce0_local = 1'b1;
    end else begin
        v13680_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_2_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_2_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_2_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_2_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_2_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_2_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_2_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_2_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_2_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_2_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_2_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_2_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_2_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_2_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_2_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_2_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_1_2_address0_local = 'bx;
        end
    end else begin
        v13680_1_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_1_2_ce0_local = 1'b1;
    end else begin
        v13680_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_3_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_3_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_3_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_1_3_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_3_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_3_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_3_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_1_3_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_3_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_3_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_3_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_1_3_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_3_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_3_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_3_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_1_3_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_1_3_address0_local = 'bx;
        end
    end else begin
        v13680_1_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_1_3_ce0_local = 1'b1;
    end else begin
        v13680_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_0_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_0_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_0_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_0_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_0_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_0_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_0_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_0_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_0_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_0_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_0_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_0_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_0_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_0_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_0_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_0_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_2_0_address0_local = 'bx;
        end
    end else begin
        v13680_2_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_2_0_ce0_local = 1'b1;
    end else begin
        v13680_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_1_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_1_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_1_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_1_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_1_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_1_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_1_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_1_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_1_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_1_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_1_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_1_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_1_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_1_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_1_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_1_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_2_1_address0_local = 'bx;
        end
    end else begin
        v13680_2_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_2_1_ce0_local = 1'b1;
    end else begin
        v13680_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_2_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_2_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_2_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_2_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_2_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_2_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_2_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_2_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_2_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_2_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_2_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_2_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_2_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_2_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_2_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_2_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_2_2_address0_local = 'bx;
        end
    end else begin
        v13680_2_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_2_2_ce0_local = 1'b1;
    end else begin
        v13680_2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_3_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_3_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_3_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_2_3_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_3_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_3_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_3_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_2_3_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_3_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_3_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_3_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_2_3_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_3_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_3_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_3_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_2_3_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_2_3_address0_local = 'bx;
        end
    end else begin
        v13680_2_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_2_3_ce0_local = 1'b1;
    end else begin
        v13680_2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_0_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_0_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_0_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_0_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_0_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_0_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_0_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_0_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_0_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_0_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_0_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_0_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_0_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_0_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_0_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_0_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_3_0_address0_local = 'bx;
        end
    end else begin
        v13680_3_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_3_0_ce0_local = 1'b1;
    end else begin
        v13680_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_1_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_1_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_1_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_1_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_1_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_1_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_1_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_1_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_1_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_1_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_1_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_1_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_1_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_1_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_1_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_1_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_3_1_address0_local = 'bx;
        end
    end else begin
        v13680_3_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_3_1_ce0_local = 1'b1;
    end else begin
        v13680_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_2_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_2_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_2_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_2_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_2_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_2_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_2_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_2_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_2_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_2_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_2_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_2_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_2_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_2_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_2_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_2_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_3_2_address0_local = 'bx;
        end
    end else begin
        v13680_3_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_3_2_ce0_local = 1'b1;
    end else begin
        v13680_3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_868)) begin
        if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_3_address0_local = zext_ln17560_1_fu_3803_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_3_address0_local = zext_ln17558_fu_3679_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_3_address0_local = zext_ln17556_fu_3427_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1))) begin
            v13680_3_3_address0_local = zext_ln17554_2_fu_3555_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_3_address0_local = zext_ln17552_fu_3777_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_3_address0_local = zext_ln17550_fu_3653_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_3_address0_local = zext_ln17548_fu_3401_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2))) begin
            v13680_3_3_address0_local = zext_ln17546_2_fu_3529_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_3_address0_local = zext_ln17544_fu_3751_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_3_address0_local = zext_ln17542_fu_3627_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_3_address0_local = zext_ln17540_fu_3375_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3))) begin
            v13680_3_3_address0_local = zext_ln17538_2_fu_3503_p1;
        end else if (((tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_3_address0_local = zext_ln17536_1_fu_3725_p1;
        end else if (((tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_3_address0_local = zext_ln17534_1_fu_3601_p1;
        end else if (((tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_3_address0_local = zext_ln17532_1_fu_3349_p1;
        end else if (((tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0))) begin
            v13680_3_3_address0_local = zext_ln17530_fu_3477_p1;
        end else begin
            v13680_3_3_address0_local = 'bx;
        end
    end else begin
        v13680_3_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd3) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258== 2'd2) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd2) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd1) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_338_reg_4258 == 2'd0) & (tmp_reg_4238 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v13680_3_3_ce0_local = 1'b1;
    end else begin
        v13680_3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln17526_1_fu_3126_p2 = (ap_sig_allocacmp_indvar_flatten1638_load + 6'd1);
assign add_ln17526_fu_2996_p2 = (ap_sig_allocacmp_v135741639_load + 6'd4);
assign add_ln17529_fu_3451_p2 = ($signed(zext_ln17529_fu_3447_p1) + $signed(10'd1023));
assign add_ln17530_1_fu_3471_p2 = ($signed(sub_ln17530_fu_3244_p2) + $signed(sext_ln17530_fu_3467_p1));
assign add_ln17530_fu_3215_p2 = (mul_ln17530_cast_reg_4289 + zext_ln17530_1_fu_3212_p1);
assign add_ln17532_fu_3343_p2 = (sub_ln17530_fu_3244_p2 + zext_ln17532_fu_3339_p1);
assign add_ln17533_fu_3575_p2 = (or_ln17529_1_fu_3326_p4 + 9'd1);
assign add_ln17534_fu_3595_p2 = (sub_ln17530_fu_3244_p2 + zext_ln17534_fu_3591_p1);
assign add_ln17535_fu_3699_p2 = (or_ln17529_1_fu_3326_p4 + 9'd2);
assign add_ln17536_fu_3719_p2 = (sub_ln17530_fu_3244_p2 + zext_ln17536_fu_3715_p1);
assign add_ln17538_1_fu_3497_p2 = ($signed(sub_ln17538_fu_3206_p2) + $signed(sext_ln17530_fu_3467_p1));
assign add_ln17538_fu_3177_p2 = (mul_ln17530_cast_reg_4289 + zext_ln17538_fu_3173_p1);
assign add_ln17540_fu_3369_p2 = (sub_ln17538_fu_3206_p2 + zext_ln17532_fu_3339_p1);
assign add_ln17542_fu_3621_p2 = (sub_ln17538_fu_3206_p2 + zext_ln17534_fu_3591_p1);
assign add_ln17544_fu_3745_p2 = (sub_ln17538_fu_3206_p2 + zext_ln17536_fu_3715_p1);
assign add_ln17546_1_fu_3523_p2 = ($signed(sub_ln17546_fu_3282_p2) + $signed(sext_ln17530_fu_3467_p1));
assign add_ln17546_fu_3253_p2 = (mul_ln17530_cast_reg_4289 + zext_ln17546_fu_3250_p1);
assign add_ln17548_fu_3395_p2 = (sub_ln17546_fu_3282_p2 + zext_ln17532_fu_3339_p1);
assign add_ln17550_fu_3647_p2 = (sub_ln17546_fu_3282_p2 + zext_ln17534_fu_3591_p1);
assign add_ln17552_fu_3771_p2 = (sub_ln17546_fu_3282_p2 + zext_ln17536_fu_3715_p1);
assign add_ln17554_1_fu_3549_p2 = ($signed(sub_ln17527_fu_3320_p2) + $signed(sext_ln17530_fu_3467_p1));
assign add_ln17554_fu_3291_p2 = (mul_ln17530_cast_reg_4289 + zext_ln17554_fu_3288_p1);
assign add_ln17556_fu_3421_p2 = (sub_ln17527_fu_3320_p2 + zext_ln17532_fu_3339_p1);
assign add_ln17558_fu_3673_p2 = (sub_ln17527_fu_3320_p2 + zext_ln17534_fu_3591_p1);
assign add_ln17560_fu_3797_p2 = (sub_ln17527_fu_3320_p2 + zext_ln17536_fu_3715_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2075 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln17526_reg_4335 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_868 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_312_fu_3018_p1 = v13574_fu_3010_p3[1:0];
assign empty_313_fu_3022_p2 = (urem_ln17750 | empty_312_fu_3018_p1);
assign empty_314_fu_3052_p2 = ($signed(p_cast133_i_fu_3048_p1) + $signed(12'd4095));
assign empty_315_fu_3068_p2 = (tmp_4_fu_3038_p4 + 11'd1);
assign empty_316_fu_3084_p2 = (tmp_4_fu_3038_p4 + 11'd2);
assign grp_fu_2600_p9 = 'bx;
assign grp_fu_2623_p9 = 'bx;
assign grp_fu_2646_p9 = 'bx;
assign grp_fu_2669_p9 = 'bx;
assign grp_fu_2692_p9 = 'bx;
assign grp_fu_2715_p9 = 'bx;
assign grp_fu_2738_p9 = 'bx;
assign grp_fu_2761_p9 = 'bx;
assign grp_fu_2784_p9 = 'bx;
assign grp_fu_2807_p9 = 'bx;
assign grp_fu_2830_p9 = 'bx;
assign grp_fu_2853_p9 = 'bx;
assign grp_fu_2876_p9 = 'bx;
assign grp_fu_2899_p9 = 'bx;
assign grp_fu_2922_p9 = 'bx;
assign grp_fu_2945_p9 = 'bx;
assign icmp_ln17526_fu_3146_p2 = ((ap_sig_allocacmp_indvar_flatten1638_load == 6'd63) ? 1'b1 : 1'b0);
assign lshr_ln36_fu_3333_p3 = {{urem_ln17746}, {lshr_ln_reg_4318}};
assign lshr_ln37_fu_3581_p4 = {{add_ln17533_fu_3575_p2[8:2]}};
assign lshr_ln38_fu_3705_p4 = {{add_ln17535_fu_3699_p2[8:2]}};
assign mul_ln17530_cast_fu_2968_p1 = mul_ln17530;
assign or_ln17529_1_fu_3326_p4 = {{{urem_ln17746}, {lshr_ln_reg_4318}}, {or_ln17529_reg_4325}};
assign or_ln17529_fu_3114_p2 = (urem_ln17749 | trunc_ln17529_fu_3110_p1);
assign p_cast133_i_fu_3048_p1 = tmp_4_fu_3038_p4;
assign select_ln17526_fu_3002_p3 = ((ap_phi_mux_icmp_ln175271641_phi_fu_2593_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v135751640_load : 6'd0);
assign sext_ln17530_fu_3467_p1 = $signed(trunc_ln_fu_3457_p4);
assign sub_ln17527_fu_3320_p2 = (tmp_347_fu_3308_p3 - zext_ln17554_1_fu_3316_p1);
assign sub_ln17530_fu_3244_p2 = (tmp_343_fu_3232_p3 - zext_ln17530_2_fu_3240_p1);
assign sub_ln17538_fu_3206_p2 = (tmp_341_fu_3194_p3 - zext_ln17538_1_fu_3202_p1);
assign sub_ln17546_fu_3282_p2 = (tmp_345_fu_3270_p3 - zext_ln17546_1_fu_3278_p1);
assign tmp_338_reg_4258 = empty_96;
assign tmp_339_fu_3028_p4 = {{v13574_fu_3010_p3[4:2]}};
assign tmp_340_fu_3186_p3 = {{add_ln17538_fu_3177_p2}, {5'd0}};
assign tmp_341_fu_3194_p3 = {{trunc_ln17538_fu_3182_p1}, {7'd0}};
assign tmp_342_fu_3224_p3 = {{add_ln17530_fu_3215_p2}, {5'd0}};
assign tmp_343_fu_3232_p3 = {{trunc_ln17530_fu_3220_p1}, {7'd0}};
assign tmp_344_fu_3262_p3 = {{add_ln17546_fu_3253_p2}, {5'd0}};
assign tmp_345_fu_3270_p3 = {{trunc_ln17546_fu_3258_p1}, {7'd0}};
assign tmp_346_fu_3300_p3 = {{add_ln17554_fu_3291_p2}, {5'd0}};
assign tmp_347_fu_3308_p3 = {{trunc_ln17554_fu_3296_p1}, {7'd0}};
assign tmp_348_fu_3132_p3 = v13575_fu_3120_p2[32'd5];
assign tmp_4_fu_3038_p4 = {{{urem_ln17747}, {tmp_339_fu_3028_p4}}, {empty_313_fu_3022_p2}};
assign tmp_541_i_fu_3823_p9 = 'bx;
assign tmp_546_i_fu_3846_p9 = 'bx;
assign tmp_551_i_fu_3869_p9 = 'bx;
assign tmp_556_i_fu_3892_p9 = 'bx;
assign tmp_561_i_fu_3915_p9 = 'bx;
assign tmp_566_i_fu_3938_p9 = 'bx;
assign tmp_571_i_fu_3961_p9 = 'bx;
assign tmp_576_i_fu_3984_p9 = 'bx;
assign tmp_581_i_fu_4007_p9 = 'bx;
assign tmp_586_i_fu_4030_p9 = 'bx;
assign tmp_591_i_fu_4053_p9 = 'bx;
assign tmp_596_i_fu_4076_p9 = 'bx;
assign tmp_601_i_fu_4099_p9 = 'bx;
assign tmp_606_i_fu_4122_p9 = 'bx;
assign tmp_611_i_fu_4145_p9 = 'bx;
assign tmp_616_i_fu_4168_p9 = 'bx;
assign tmp_63_fu_4191_p3 = {{tmp_339_reg_4297_pp0_iter2_reg}, {lshr_ln_reg_4318_pp0_iter2_reg}};
assign tmp_reg_4238 = empty;
assign tmp_s_fu_3167_p3 = {{urem_ln17747}, {tmp_339_reg_4297}};
assign trunc_ln17529_fu_3110_p1 = select_ln17526_fu_3002_p3[1:0];
assign trunc_ln17530_fu_3220_p1 = add_ln17530_fu_3215_p2[9:0];
assign trunc_ln17538_fu_3182_p1 = add_ln17538_fu_3177_p2[9:0];
assign trunc_ln17546_fu_3258_p1 = add_ln17546_fu_3253_p2[9:0];
assign trunc_ln17554_fu_3296_p1 = add_ln17554_fu_3291_p2[9:0];
assign trunc_ln_fu_3457_p4 = {{add_ln17529_fu_3451_p2[9:2]}};
assign v13574_fu_3010_p3 = ((ap_phi_mux_icmp_ln175271641_phi_fu_2593_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v135741639_load : add_ln17526_fu_2996_p2);
assign v13575_fu_3120_p2 = (select_ln17526_fu_3002_p3 + 6'd4);
assign v13677_10_address0 = zext_ln17560_fu_4197_p1;
assign v13677_10_ce0 = v13677_10_ce0_local;
assign v13677_10_d0 = tmp_566_i_reg_5644;
assign v13677_10_we0 = v13677_10_we0_local;
assign v13677_11_address0 = zext_ln17560_fu_4197_p1;
assign v13677_11_ce0 = v13677_11_ce0_local;
assign v13677_11_d0 = tmp_561_i_reg_5639;
assign v13677_11_we0 = v13677_11_we0_local;
assign v13677_12_address0 = zext_ln17560_fu_4197_p1;
assign v13677_12_ce0 = v13677_12_ce0_local;
assign v13677_12_d0 = tmp_556_i_reg_5634;
assign v13677_12_we0 = v13677_12_we0_local;
assign v13677_13_address0 = zext_ln17560_fu_4197_p1;
assign v13677_13_ce0 = v13677_13_ce0_local;
assign v13677_13_d0 = tmp_551_i_reg_5629;
assign v13677_13_we0 = v13677_13_we0_local;
assign v13677_14_address0 = zext_ln17560_fu_4197_p1;
assign v13677_14_ce0 = v13677_14_ce0_local;
assign v13677_14_d0 = tmp_546_i_reg_5624;
assign v13677_14_we0 = v13677_14_we0_local;
assign v13677_15_address0 = zext_ln17560_fu_4197_p1;
assign v13677_15_ce0 = v13677_15_ce0_local;
assign v13677_15_d0 = tmp_541_i_reg_5619;
assign v13677_15_we0 = v13677_15_we0_local;
assign v13677_1_address0 = zext_ln17560_fu_4197_p1;
assign v13677_1_ce0 = v13677_1_ce0_local;
assign v13677_1_d0 = tmp_611_i_reg_5689;
assign v13677_1_we0 = v13677_1_we0_local;
assign v13677_2_address0 = zext_ln17560_fu_4197_p1;
assign v13677_2_ce0 = v13677_2_ce0_local;
assign v13677_2_d0 = tmp_606_i_reg_5684;
assign v13677_2_we0 = v13677_2_we0_local;
assign v13677_3_address0 = zext_ln17560_fu_4197_p1;
assign v13677_3_ce0 = v13677_3_ce0_local;
assign v13677_3_d0 = tmp_601_i_reg_5679;
assign v13677_3_we0 = v13677_3_we0_local;
assign v13677_4_address0 = zext_ln17560_fu_4197_p1;
assign v13677_4_ce0 = v13677_4_ce0_local;
assign v13677_4_d0 = tmp_596_i_reg_5674;
assign v13677_4_we0 = v13677_4_we0_local;
assign v13677_5_address0 = zext_ln17560_fu_4197_p1;
assign v13677_5_ce0 = v13677_5_ce0_local;
assign v13677_5_d0 = tmp_591_i_reg_5669;
assign v13677_5_we0 = v13677_5_we0_local;
assign v13677_6_address0 = zext_ln17560_fu_4197_p1;
assign v13677_6_ce0 = v13677_6_ce0_local;
assign v13677_6_d0 = tmp_586_i_reg_5664;
assign v13677_6_we0 = v13677_6_we0_local;
assign v13677_7_address0 = zext_ln17560_fu_4197_p1;
assign v13677_7_ce0 = v13677_7_ce0_local;
assign v13677_7_d0 = tmp_581_i_reg_5659;
assign v13677_7_we0 = v13677_7_we0_local;
assign v13677_8_address0 = zext_ln17560_fu_4197_p1;
assign v13677_8_ce0 = v13677_8_ce0_local;
assign v13677_8_d0 = tmp_576_i_reg_5654;
assign v13677_8_we0 = v13677_8_we0_local;
assign v13677_9_address0 = zext_ln17560_fu_4197_p1;
assign v13677_9_ce0 = v13677_9_ce0_local;
assign v13677_9_d0 = tmp_571_i_reg_5649;
assign v13677_9_we0 = v13677_9_we0_local;
assign v13677_address0 = zext_ln17560_fu_4197_p1;
assign v13677_ce0 = v13677_ce0_local;
assign v13677_d0 = tmp_616_i_reg_5694;
assign v13677_we0 = v13677_we0_local;
assign v13680_0_0_address0 = v13680_0_0_address0_local;
assign v13680_0_0_ce0 = v13680_0_0_ce0_local;
assign v13680_0_1_address0 = v13680_0_1_address0_local;
assign v13680_0_1_ce0 = v13680_0_1_ce0_local;
assign v13680_0_2_address0 = v13680_0_2_address0_local;
assign v13680_0_2_ce0 = v13680_0_2_ce0_local;
assign v13680_0_3_address0 = v13680_0_3_address0_local;
assign v13680_0_3_ce0 = v13680_0_3_ce0_local;
assign v13680_1_0_address0 = v13680_1_0_address0_local;
assign v13680_1_0_ce0 = v13680_1_0_ce0_local;
assign v13680_1_1_address0 = v13680_1_1_address0_local;
assign v13680_1_1_ce0 = v13680_1_1_ce0_local;
assign v13680_1_2_address0 = v13680_1_2_address0_local;
assign v13680_1_2_ce0 = v13680_1_2_ce0_local;
assign v13680_1_3_address0 = v13680_1_3_address0_local;
assign v13680_1_3_ce0 = v13680_1_3_ce0_local;
assign v13680_2_0_address0 = v13680_2_0_address0_local;
assign v13680_2_0_ce0 = v13680_2_0_ce0_local;
assign v13680_2_1_address0 = v13680_2_1_address0_local;
assign v13680_2_1_ce0 = v13680_2_1_ce0_local;
assign v13680_2_2_address0 = v13680_2_2_address0_local;
assign v13680_2_2_ce0 = v13680_2_2_ce0_local;
assign v13680_2_3_address0 = v13680_2_3_address0_local;
assign v13680_2_3_ce0 = v13680_2_3_ce0_local;
assign v13680_3_0_address0 = v13680_3_0_address0_local;
assign v13680_3_0_ce0 = v13680_3_0_ce0_local;
assign v13680_3_1_address0 = v13680_3_1_address0_local;
assign v13680_3_1_ce0 = v13680_3_1_ce0_local;
assign v13680_3_2_address0 = v13680_3_2_address0_local;
assign v13680_3_2_ce0 = v13680_3_2_ce0_local;
assign v13680_3_3_address0 = v13680_3_3_address0_local;
assign v13680_3_3_ce0 = v13680_3_3_ce0_local;
assign xor_ln17527_fu_3140_p2 = (tmp_348_fu_3132_p3 ^ 1'd1);
assign zext_ln17529_fu_3447_p1 = or_ln17529_1_fu_3326_p4;
assign zext_ln17530_1_fu_3212_p1 = tmp_60_reg_4303;
assign zext_ln17530_2_fu_3240_p1 = tmp_342_fu_3224_p3;
assign zext_ln17530_fu_3477_p1 = add_ln17530_1_fu_3471_p2;
assign zext_ln17532_1_fu_3349_p1 = add_ln17532_fu_3343_p2;
assign zext_ln17532_fu_3339_p1 = lshr_ln36_fu_3333_p3;
assign zext_ln17534_1_fu_3601_p1 = add_ln17534_fu_3595_p2;
assign zext_ln17534_fu_3591_p1 = lshr_ln37_fu_3581_p4;
assign zext_ln17536_1_fu_3725_p1 = add_ln17536_fu_3719_p2;
assign zext_ln17536_fu_3715_p1 = lshr_ln38_fu_3705_p4;
assign zext_ln17538_1_fu_3202_p1 = tmp_340_fu_3186_p3;
assign zext_ln17538_2_fu_3503_p1 = add_ln17538_1_fu_3497_p2;
assign zext_ln17538_fu_3173_p1 = tmp_s_fu_3167_p3;
assign zext_ln17540_fu_3375_p1 = add_ln17540_fu_3369_p2;
assign zext_ln17542_fu_3627_p1 = add_ln17542_fu_3621_p2;
assign zext_ln17544_fu_3751_p1 = add_ln17544_fu_3745_p2;
assign zext_ln17546_1_fu_3278_p1 = tmp_344_fu_3262_p3;
assign zext_ln17546_2_fu_3529_p1 = add_ln17546_1_fu_3523_p2;
assign zext_ln17546_fu_3250_p1 = tmp_61_reg_4308;
assign zext_ln17548_fu_3401_p1 = add_ln17548_fu_3395_p2;
assign zext_ln17550_fu_3653_p1 = add_ln17550_fu_3647_p2;
assign zext_ln17552_fu_3777_p1 = add_ln17552_fu_3771_p2;
assign zext_ln17554_1_fu_3316_p1 = tmp_346_fu_3300_p3;
assign zext_ln17554_2_fu_3555_p1 = add_ln17554_1_fu_3549_p2;
assign zext_ln17554_fu_3288_p1 = tmp_62_reg_4313;
assign zext_ln17556_fu_3427_p1 = add_ln17556_fu_3421_p2;
assign zext_ln17558_fu_3679_p1 = add_ln17558_fu_3673_p2;
assign zext_ln17560_1_fu_3803_p1 = add_ln17560_fu_3797_p2;
assign zext_ln17560_fu_4197_p1 = tmp_63_fu_4191_p3;
always @ (posedge ap_clk) begin
    mul_ln17530_cast_reg_4289[10] <= 1'b0;
end
endmodule 
