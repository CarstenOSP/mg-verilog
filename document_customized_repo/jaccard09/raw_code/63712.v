module fft1D_512_fft1D_512_Pipeline_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_q1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_q1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_q1,grp_fu_789_p_din0,grp_fu_789_p_din1,grp_fu_789_p_dout0,grp_fu_789_p_ce,grp_fu_793_p_din0,grp_fu_793_p_din1,grp_fu_793_p_dout0,grp_fu_793_p_ce,grp_fu_797_p_din0,grp_fu_797_p_din1,grp_fu_797_p_dout0,grp_fu_797_p_ce,grp_fu_801_p_din0,grp_fu_801_p_din1,grp_fu_801_p_dout0,grp_fu_801_p_ce,grp_fu_805_p_din0,grp_fu_805_p_din1,grp_fu_805_p_dout0,grp_fu_805_p_ce); 
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
output  [6:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [6:0] smem_6_address1;
output   smem_6_ce1;
output   smem_6_we1;
output  [63:0] smem_6_d1;
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
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
input  [63:0] DATA_x_4_q1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
input  [63:0] DATA_x_5_q1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
input  [63:0] DATA_x_6_q1;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
input  [63:0] DATA_x_7_q1;
output  [31:0] grp_fu_789_p_din0;
output  [33:0] grp_fu_789_p_din1;
input  [64:0] grp_fu_789_p_dout0;
output   grp_fu_789_p_ce;
output  [31:0] grp_fu_793_p_din0;
output  [33:0] grp_fu_793_p_din1;
input  [64:0] grp_fu_793_p_dout0;
output   grp_fu_793_p_ce;
output  [31:0] grp_fu_797_p_din0;
output  [33:0] grp_fu_797_p_din1;
input  [64:0] grp_fu_797_p_dout0;
output   grp_fu_797_p_ce;
output  [31:0] grp_fu_801_p_din0;
output  [33:0] grp_fu_801_p_din1;
input  [64:0] grp_fu_801_p_dout0;
output   grp_fu_801_p_ce;
output  [31:0] grp_fu_805_p_din0;
output  [33:0] grp_fu_805_p_din1;
input  [64:0] grp_fu_805_p_dout0;
output   grp_fu_805_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_3643;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_3635;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_reg_3635_pp0_iter1_reg;
reg   [6:0] tid_reg_3635_pp0_iter2_reg;
reg   [6:0] tid_reg_3635_pp0_iter3_reg;
reg   [6:0] tid_reg_3635_pp0_iter4_reg;
reg   [0:0] tmp_reg_3643_pp0_iter1_reg;
reg   [0:0] tmp_reg_3643_pp0_iter2_reg;
reg   [0:0] tmp_reg_3643_pp0_iter3_reg;
reg   [0:0] tmp_reg_3643_pp0_iter4_reg;
reg   [0:0] tmp_reg_3643_pp0_iter5_reg;
wire   [5:0] offset_fu_2469_p1;
reg   [5:0] offset_reg_3647;
reg   [5:0] offset_reg_3647_pp0_iter1_reg;
reg   [5:0] offset_reg_3647_pp0_iter2_reg;
reg   [5:0] offset_reg_3647_pp0_iter3_reg;
reg   [5:0] offset_reg_3647_pp0_iter4_reg;
wire   [31:0] offset_3_fu_2493_p5;
reg   [31:0] offset_3_reg_3656;
reg   [31:0] offset_3_reg_3656_pp0_iter1_reg;
reg   [31:0] offset_3_reg_3656_pp0_iter2_reg;
reg   [31:0] offset_3_reg_3656_pp0_iter3_reg;
reg   [31:0] offset_3_reg_3656_pp0_iter4_reg;
reg   [31:0] offset_3_reg_3656_pp0_iter5_reg;
wire   [5:0] offset_1_fu_2525_p3;
reg   [5:0] offset_1_reg_3669;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [5:0] offset_1_reg_3669_pp0_iter1_reg;
reg   [5:0] offset_1_reg_3669_pp0_iter2_reg;
reg   [5:0] offset_1_reg_3669_pp0_iter3_reg;
reg   [5:0] offset_1_reg_3669_pp0_iter4_reg;
wire   [3:0] tmp_s_fu_2539_p4;
reg   [3:0] tmp_s_reg_3679;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [3:0] tmp_s_reg_3679_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_3679_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_3679_pp0_iter3_reg;
reg   [3:0] tmp_s_reg_3679_pp0_iter4_reg;
wire   [5:0] offset_2_fu_2548_p3;
reg   [5:0] offset_2_reg_3686;
reg   [5:0] offset_2_reg_3686_pp0_iter1_reg;
reg   [5:0] offset_2_reg_3686_pp0_iter2_reg;
reg   [5:0] offset_2_reg_3686_pp0_iter3_reg;
reg   [5:0] offset_2_reg_3686_pp0_iter4_reg;
wire   [2:0] trunc_ln172_fu_2572_p1;
reg   [2:0] trunc_ln172_reg_3696;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [2:0] trunc_ln172_reg_3696_pp0_iter2_reg;
reg   [2:0] trunc_ln172_reg_3696_pp0_iter3_reg;
reg   [2:0] trunc_ln172_reg_3696_pp0_iter4_reg;
wire   [2:0] trunc_ln172_16_fu_2576_p1;
reg   [2:0] trunc_ln172_16_reg_3700;
wire    ap_block_pp0_stage5_11001;
reg   [2:0] trunc_ln172_16_reg_3700_pp0_iter2_reg;
reg   [2:0] trunc_ln172_16_reg_3700_pp0_iter3_reg;
reg   [2:0] trunc_ln172_16_reg_3700_pp0_iter4_reg;
wire   [2:0] trunc_ln172_17_fu_2580_p1;
reg   [2:0] trunc_ln172_17_reg_3704;
reg   [2:0] trunc_ln172_17_reg_3704_pp0_iter3_reg;
reg   [2:0] trunc_ln172_17_reg_3704_pp0_iter4_reg;
reg   [2:0] trunc_ln172_17_reg_3704_pp0_iter5_reg;
reg   [2:0] trunc_ln172_17_reg_3704_pp0_iter6_reg;
wire   [7:0] zext_ln172_25_fu_2598_p1;
reg   [7:0] zext_ln172_25_reg_3708;
reg   [3:0] tmp_226_reg_3713;
wire   [8:0] add_ln179_fu_2623_p2;
reg   [8:0] add_ln179_reg_3728;
reg   [4:0] tmp_228_reg_3738;
wire   [8:0] add_ln181_fu_2658_p2;
reg   [8:0] add_ln181_reg_3748;
wire   [7:0] add_ln183_fu_2664_p2;
reg   [7:0] add_ln183_reg_3763;
wire   [8:0] zext_ln172_30_fu_2681_p1;
reg   [8:0] zext_ln172_30_reg_3778;
reg   [3:0] tmp_234_reg_3784;
reg   [4:0] tmp_236_reg_3804;
wire   [8:0] add_ln181_1_fu_2732_p2;
reg   [8:0] add_ln181_1_reg_3814;
reg   [3:0] tmp_242_reg_3839;
reg   [63:0] DATA_x_load_reg_3844;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] tmp_227_reg_3855;
reg   [6:0] tmp_229_reg_3860;
reg   [5:0] tmp_230_reg_3865;
reg   [6:0] tmp_231_reg_3870;
wire   [7:0] zext_ln172_29_fu_2846_p1;
reg   [7:0] zext_ln172_29_reg_3875;
wire   [8:0] add_ln179_1_fu_2849_p2;
reg   [8:0] add_ln179_1_reg_3880;
reg   [6:0] tmp_237_reg_3885;
wire   [7:0] add_ln183_1_fu_2873_p2;
reg   [7:0] add_ln183_1_reg_3890;
wire   [8:0] zext_ln172_34_fu_2890_p1;
reg   [8:0] zext_ln172_34_reg_3895;
wire   [8:0] add_ln179_2_fu_2893_p2;
reg   [8:0] add_ln179_2_reg_3911;
wire   [63:0] zext_ln176_fu_2906_p1;
reg   [63:0] zext_ln176_reg_3946;
reg   [63:0] DATA_x_load_1_reg_3962;
reg   [63:0] DATA_x_1_load_reg_3973;
reg   [63:0] DATA_x_1_load_1_reg_3984;
reg   [63:0] DATA_x_4_load_reg_3995;
reg   [63:0] DATA_x_4_load_1_reg_4006;
reg   [63:0] DATA_x_5_load_reg_4017;
reg   [63:0] DATA_x_5_load_1_reg_4028;
reg   [63:0] DATA_x_2_load_reg_4039;
reg   [63:0] DATA_x_2_load_1_reg_4050;
reg   [63:0] DATA_x_3_load_reg_4061;
reg   [63:0] DATA_x_3_load_1_reg_4072;
reg   [63:0] DATA_x_6_load_reg_4083;
reg   [63:0] DATA_x_6_load_1_reg_4094;
reg   [63:0] DATA_x_7_load_reg_4105;
reg   [63:0] DATA_x_7_load_1_reg_4116;
reg   [6:0] tmp_235_reg_4127;
reg   [5:0] tmp_238_reg_4132;
reg   [6:0] tmp_239_reg_4137;
wire   [7:0] zext_ln172_33_fu_2978_p1;
reg   [7:0] zext_ln172_33_reg_4142;
reg   [6:0] tmp_243_reg_4147;
wire   [8:0] add_ln181_2_fu_3000_p2;
reg   [8:0] add_ln181_2_reg_4152;
wire   [7:0] add_ln183_2_fu_3005_p2;
reg   [7:0] add_ln183_2_reg_4157;
wire   [64:0] zext_ln172_57_fu_3011_p1;
reg   [63:0] DATA_x_load_2_reg_4167;
reg   [63:0] DATA_x_load_3_reg_4178;
reg   [63:0] DATA_x_1_load_2_reg_4189;
wire   [31:0] add_ln179_3_fu_3015_p2;
reg   [31:0] add_ln179_3_reg_4200;
reg   [63:0] DATA_x_4_load_2_reg_4205;
wire   [31:0] add_ln180_1_fu_3020_p2;
reg   [31:0] add_ln180_1_reg_4216;
reg   [63:0] DATA_x_5_load_2_reg_4221;
reg   [63:0] DATA_x_2_load_2_reg_4232;
reg   [63:0] DATA_x_3_load_2_reg_4243;
reg   [63:0] DATA_x_6_load_2_reg_4254;
reg   [63:0] DATA_x_7_load_2_reg_4265;
reg   [7:0] tmp_233_reg_4276;
reg   [6:0] tmp_245_reg_4281;
reg   [5:0] tmp_246_reg_4286;
reg   [6:0] tmp_247_reg_4291;
reg   [29:0] tmp_251_reg_4296;
wire   [64:0] zext_ln179_7_fu_3184_p1;
wire   [64:0] zext_ln180_7_fu_3188_p1;
wire   [31:0] add_ln181_3_fu_3192_p2;
reg   [31:0] add_ln181_3_reg_4311;
wire   [31:0] add_ln182_3_fu_3197_p2;
reg   [31:0] add_ln182_3_reg_4316;
wire   [31:0] add_ln183_3_fu_3202_p2;
reg   [31:0] add_ln183_3_reg_4321;
wire   [31:0] add_ln184_3_fu_3207_p2;
reg   [31:0] add_ln184_3_reg_4326;
wire   [31:0] add_ln185_3_fu_3212_p2;
reg   [31:0] add_ln185_3_reg_4331;
reg   [7:0] tmp_241_reg_4336;
reg   [29:0] tmp_252_reg_4341;
reg   [29:0] tmp_253_reg_4346;
wire   [64:0] zext_ln181_7_fu_3306_p1;
wire   [64:0] zext_ln182_7_fu_3310_p1;
wire   [64:0] zext_ln183_7_fu_3314_p1;
wire   [64:0] zext_ln184_7_fu_3318_p1;
wire   [64:0] zext_ln185_7_fu_3322_p1;
reg   [5:0] tmp_244_reg_4376;
reg   [6:0] tmp_248_reg_4381;
wire   [2:0] trunc_ln172_18_fu_3374_p1;
reg   [2:0] trunc_ln172_18_reg_4386;
reg   [29:0] tmp_254_reg_4390;
reg   [29:0] tmp_255_reg_4395;
reg   [29:0] tmp_256_reg_4400;
reg   [29:0] tmp_257_reg_4405;
reg   [29:0] tmp_258_reg_4410;
reg   [7:0] tmp_249_reg_4415;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln174_fu_2584_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln177_fu_2670_p1;
wire   [63:0] zext_ln177_1_fu_2879_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln172_fu_3025_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln179_fu_3035_p1;
wire   [63:0] zext_ln180_fu_3045_p1;
wire   [63:0] zext_ln182_fu_3055_p1;
wire   [63:0] zext_ln183_fu_3065_p1;
wire   [63:0] zext_ln184_fu_3084_p1;
wire   [63:0] zext_ln172_1_fu_3104_p1;
wire   [63:0] zext_ln181_fu_3217_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln185_fu_3227_p1;
wire   [63:0] zext_ln179_1_fu_3237_p1;
wire   [63:0] zext_ln180_1_fu_3247_p1;
wire   [63:0] zext_ln181_1_fu_3257_p1;
wire   [63:0] zext_ln183_1_fu_3267_p1;
wire   [63:0] zext_ln184_1_fu_3286_p1;
wire   [63:0] zext_ln182_1_fu_3326_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln185_1_fu_3336_p1;
wire   [63:0] zext_ln172_2_fu_3346_p1;
wire   [63:0] zext_ln172_3_fu_3417_p1;
wire   [63:0] zext_ln179_2_fu_3427_p1;
wire   [63:0] zext_ln180_2_fu_3437_p1;
wire   [63:0] zext_ln181_2_fu_3447_p1;
wire   [63:0] zext_ln182_2_fu_3457_p1;
wire   [63:0] zext_ln183_2_fu_3467_p1;
wire   [63:0] zext_ln184_2_fu_3477_p1;
wire   [63:0] zext_ln185_2_fu_3487_p1;
wire   [63:0] zext_ln179_3_fu_3497_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln180_3_fu_3507_p1;
wire   [63:0] zext_ln181_3_fu_3517_p1;
wire   [63:0] zext_ln182_3_fu_3527_p1;
wire   [63:0] zext_ln183_3_fu_3537_p1;
wire   [63:0] zext_ln184_3_fu_3547_p1;
wire   [63:0] zext_ln185_3_fu_3557_p1;
reg   [6:0] tid_1_fu_172;
wire   [6:0] add_ln174_fu_2562_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_x_ce1_local;
reg   [5:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [5:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [5:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [5:0] DATA_x_1_address0_local;
reg    DATA_x_4_ce1_local;
reg   [5:0] DATA_x_4_address1_local;
reg    DATA_x_4_ce0_local;
reg   [5:0] DATA_x_4_address0_local;
reg    DATA_x_5_ce1_local;
reg   [5:0] DATA_x_5_address1_local;
reg    DATA_x_5_ce0_local;
reg   [5:0] DATA_x_5_address0_local;
reg    DATA_x_2_ce1_local;
reg   [5:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [5:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [5:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [5:0] DATA_x_3_address0_local;
reg    DATA_x_6_ce1_local;
reg   [5:0] DATA_x_6_address1_local;
reg    DATA_x_6_ce0_local;
reg   [5:0] DATA_x_6_address0_local;
reg    DATA_x_7_ce1_local;
reg   [5:0] DATA_x_7_address1_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [6:0] smem_5_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    smem_6_we1_local;
reg   [63:0] smem_6_d1_local;
reg    smem_6_ce1_local;
reg   [6:0] smem_6_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg   [31:0] grp_fu_2408_p0;
reg   [31:0] grp_fu_2413_p0;
wire   [0:0] tmp_250_fu_2477_p3;
wire   [31:0] zext_ln175_fu_2473_p1;
wire   [2:0] or_ln8_fu_2485_p3;
wire   [31:0] grp_fu_2505_p0;
wire   [3:0] grp_fu_2505_p1;
wire   [3:0] grp_fu_2511_p1;
wire   [4:0] tmp_62_fu_2516_p4;
wire   [5:0] grp_fu_2533_p0;
wire   [3:0] grp_fu_2533_p1;
wire   [5:0] grp_fu_2556_p0;
wire   [3:0] grp_fu_2556_p1;
wire   [2:0] grp_fu_2511_p2;
wire   [2:0] grp_fu_2533_p2;
wire   [2:0] grp_fu_2556_p2;
wire   [5:0] mul_ln172_fu_2607_p0;
wire   [7:0] mul_ln172_fu_2607_p1;
wire   [12:0] mul_ln172_fu_2607_p2;
wire   [8:0] zext_ln172_26_fu_2601_p1;
wire   [6:0] zext_ln180_4_cast_fu_2629_p4;
wire   [6:0] mul_ln180_fu_2642_p0;
wire   [8:0] mul_ln180_fu_2642_p1;
wire   [14:0] mul_ln180_fu_2642_p2;
wire   [5:0] mul_ln172_1_fu_2687_p0;
wire   [7:0] mul_ln172_1_fu_2687_p1;
wire   [12:0] mul_ln172_1_fu_2687_p2;
wire   [6:0] zext_ln180_5_cast_fu_2703_p4;
wire   [6:0] mul_ln180_1_fu_2716_p0;
wire   [8:0] mul_ln180_1_fu_2716_p1;
wire   [14:0] mul_ln180_1_fu_2716_p2;
wire   [5:0] mul_ln172_2_fu_2741_p0;
wire   [7:0] mul_ln172_2_fu_2741_p1;
wire   [12:0] mul_ln172_2_fu_2741_p2;
wire   [8:0] mul_ln179_fu_2760_p0;
wire   [10:0] mul_ln179_fu_2760_p1;
wire   [18:0] mul_ln179_fu_2760_p2;
wire   [8:0] mul_ln181_fu_2779_p0;
wire   [10:0] mul_ln181_fu_2779_p1;
wire   [18:0] mul_ln181_fu_2779_p2;
wire   [7:0] add_ln182_fu_2795_p2;
wire   [7:0] mul_ln182_fu_2804_p0;
wire   [9:0] mul_ln182_fu_2804_p1;
wire   [16:0] mul_ln182_fu_2804_p2;
wire  signed [8:0] sext_ln183_fu_2820_p1;
wire   [8:0] mul_ln183_fu_2827_p0;
wire   [10:0] mul_ln183_fu_2827_p1;
wire   [18:0] mul_ln183_fu_2827_p2;
wire   [8:0] mul_ln181_1_fu_2857_p0;
wire   [10:0] mul_ln181_1_fu_2857_p1;
wire   [18:0] mul_ln181_1_fu_2857_p2;
wire   [5:0] or_ln174_2_fu_2899_p3;
wire   [8:0] mul_ln179_1_fu_2914_p0;
wire   [10:0] mul_ln179_1_fu_2914_p1;
wire   [18:0] mul_ln179_1_fu_2914_p2;
wire   [7:0] add_ln182_1_fu_2930_p2;
wire   [7:0] mul_ln182_1_fu_2939_p0;
wire   [9:0] mul_ln182_1_fu_2939_p1;
wire   [16:0] mul_ln182_1_fu_2939_p2;
wire  signed [8:0] sext_ln183_1_fu_2955_p1;
wire   [8:0] mul_ln183_1_fu_2962_p0;
wire   [10:0] mul_ln183_1_fu_2962_p1;
wire   [18:0] mul_ln183_1_fu_2962_p2;
wire   [8:0] mul_ln179_2_fu_2984_p0;
wire   [10:0] mul_ln179_2_fu_2984_p1;
wire   [18:0] mul_ln179_2_fu_2984_p2;
wire   [18:0] tmp_232_fu_3075_p1;
wire  signed [18:0] grp_fu_3567_p3;
wire   [6:0] tmp_232_fu_3075_p4;
wire   [20:0] tmp_233_fu_3095_p1;
wire  signed [20:0] grp_fu_3576_p3;
wire   [8:0] mul_ln181_2_fu_3120_p0;
wire   [10:0] mul_ln181_2_fu_3120_p1;
wire   [18:0] mul_ln181_2_fu_3120_p2;
wire   [7:0] add_ln182_2_fu_3136_p2;
wire   [7:0] mul_ln182_2_fu_3145_p0;
wire   [9:0] mul_ln182_2_fu_3145_p1;
wire   [16:0] mul_ln182_2_fu_3145_p2;
wire  signed [8:0] sext_ln183_2_fu_3161_p1;
wire   [8:0] mul_ln183_2_fu_3168_p0;
wire   [10:0] mul_ln183_2_fu_3168_p1;
wire   [18:0] mul_ln183_2_fu_3168_p2;
wire   [18:0] tmp_240_fu_3277_p1;
wire  signed [18:0] grp_fu_3585_p3;
wire   [6:0] tmp_240_fu_3277_p4;
wire   [20:0] tmp_241_fu_3297_p1;
wire  signed [20:0] grp_fu_3593_p3;
wire   [16:0] tmp_244_fu_3356_p1;
wire  signed [16:0] grp_fu_3602_p3;
wire   [18:0] tmp_248_fu_3365_p1;
wire  signed [18:0] grp_fu_3611_p3;
wire   [2:0] grp_fu_2505_p2;
wire   [20:0] tmp_249_fu_3408_p1;
wire  signed [20:0] grp_fu_3619_p3;
wire   [5:0] grp_fu_3567_p0;
wire   [7:0] grp_fu_3567_p1;
wire   [9:0] grp_fu_3567_p2;
wire   [5:0] grp_fu_3576_p0;
wire   [8:0] grp_fu_3576_p1;
wire   [10:0] grp_fu_3576_p2;
wire   [5:0] grp_fu_3585_p0;
wire   [7:0] grp_fu_3585_p1;
wire   [9:0] grp_fu_3585_p2;
wire   [5:0] grp_fu_3593_p0;
wire   [8:0] grp_fu_3593_p1;
wire   [10:0] grp_fu_3593_p2;
wire   [5:0] grp_fu_3602_p0;
wire   [6:0] grp_fu_3602_p1;
wire   [8:0] grp_fu_3602_p2;
wire   [5:0] grp_fu_3611_p0;
wire   [7:0] grp_fu_3611_p1;
wire   [9:0] grp_fu_3611_p2;
wire   [5:0] grp_fu_3619_p0;
wire   [8:0] grp_fu_3619_p1;
wire   [10:0] grp_fu_3619_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage2;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_3576_p00;
wire   [9:0] grp_fu_3593_p00;
wire   [9:0] grp_fu_3619_p00;
wire   [12:0] mul_ln172_1_fu_2687_p00;
wire   [12:0] mul_ln172_2_fu_2741_p00;
wire   [12:0] mul_ln172_fu_2607_p00;
wire   [18:0] mul_ln179_1_fu_2914_p00;
wire   [18:0] mul_ln179_2_fu_2984_p00;
wire   [18:0] mul_ln179_fu_2760_p00;
wire   [14:0] mul_ln180_1_fu_2716_p00;
wire   [14:0] mul_ln180_fu_2642_p00;
wire   [18:0] mul_ln181_1_fu_2857_p00;
wire   [18:0] mul_ln181_2_fu_3120_p00;
wire   [18:0] mul_ln181_fu_2779_p00;
wire   [16:0] mul_ln182_1_fu_2939_p00;
wire   [16:0] mul_ln182_2_fu_3145_p00;
wire   [16:0] mul_ln182_fu_2804_p00;
wire   [18:0] mul_ln183_1_fu_2962_p00;
wire   [18:0] mul_ln183_2_fu_3168_p00;
wire   [18:0] mul_ln183_fu_2827_p00;
reg    ap_condition_2249;
reg    ap_condition_2253;
reg    ap_condition_2257;
reg    ap_condition_2261;
reg    ap_condition_2264;
reg    ap_condition_2269;
reg    ap_condition_2273;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_1_fu_172 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_32ns_4ns_3_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_32ns_4ns_3_36_1_U219(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2505_p0),.din1(grp_fu_2505_p1),.ce(1'b1),.dout(grp_fu_2505_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U220(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_3647),.din1(grp_fu_2511_p1),.ce(1'b1),.dout(grp_fu_2511_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U221(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2533_p0),.din1(grp_fu_2533_p1),.ce(1'b1),.dout(grp_fu_2533_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U222(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2556_p0),.din1(grp_fu_2556_p1),.ce(1'b1),.dout(grp_fu_2556_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U223(.din0(mul_ln172_fu_2607_p0),.din1(mul_ln172_fu_2607_p1),.dout(mul_ln172_fu_2607_p2));
fft1D_512_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U224(.din0(mul_ln180_fu_2642_p0),.din1(mul_ln180_fu_2642_p1),.dout(mul_ln180_fu_2642_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U225(.din0(mul_ln172_1_fu_2687_p0),.din1(mul_ln172_1_fu_2687_p1),.dout(mul_ln172_1_fu_2687_p2));
fft1D_512_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U226(.din0(mul_ln180_1_fu_2716_p0),.din1(mul_ln180_1_fu_2716_p1),.dout(mul_ln180_1_fu_2716_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U227(.din0(mul_ln172_2_fu_2741_p0),.din1(mul_ln172_2_fu_2741_p1),.dout(mul_ln172_2_fu_2741_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U228(.din0(mul_ln179_fu_2760_p0),.din1(mul_ln179_fu_2760_p1),.dout(mul_ln179_fu_2760_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U229(.din0(mul_ln181_fu_2779_p0),.din1(mul_ln181_fu_2779_p1),.dout(mul_ln181_fu_2779_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U230(.din0(mul_ln182_fu_2804_p0),.din1(mul_ln182_fu_2804_p1),.dout(mul_ln182_fu_2804_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U231(.din0(mul_ln183_fu_2827_p0),.din1(mul_ln183_fu_2827_p1),.dout(mul_ln183_fu_2827_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U232(.din0(mul_ln181_1_fu_2857_p0),.din1(mul_ln181_1_fu_2857_p1),.dout(mul_ln181_1_fu_2857_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U233(.din0(mul_ln179_1_fu_2914_p0),.din1(mul_ln179_1_fu_2914_p1),.dout(mul_ln179_1_fu_2914_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U234(.din0(mul_ln182_1_fu_2939_p0),.din1(mul_ln182_1_fu_2939_p1),.dout(mul_ln182_1_fu_2939_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U235(.din0(mul_ln183_1_fu_2962_p0),.din1(mul_ln183_1_fu_2962_p1),.dout(mul_ln183_1_fu_2962_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U236(.din0(mul_ln179_2_fu_2984_p0),.din1(mul_ln179_2_fu_2984_p1),.dout(mul_ln179_2_fu_2984_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U237(.din0(mul_ln181_2_fu_3120_p0),.din1(mul_ln181_2_fu_3120_p1),.dout(mul_ln181_2_fu_3120_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U238(.din0(mul_ln182_2_fu_3145_p0),.din1(mul_ln182_2_fu_3145_p1),.dout(mul_ln182_2_fu_3145_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U239(.din0(mul_ln183_2_fu_3168_p0),.din1(mul_ln183_2_fu_3168_p1),.dout(mul_ln183_2_fu_3168_p2));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U240(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3567_p0),.din1(grp_fu_3567_p1),.din2(grp_fu_3567_p2),.ce(1'b1),.dout(grp_fu_3567_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U241(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3576_p0),.din1(grp_fu_3576_p1),.din2(grp_fu_3576_p2),.ce(1'b1),.dout(grp_fu_3576_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U242(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3585_p0),.din1(grp_fu_3585_p1),.din2(grp_fu_3585_p2),.ce(1'b1),.dout(grp_fu_3585_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U243(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3593_p0),.din1(grp_fu_3593_p1),.din2(grp_fu_3593_p2),.ce(1'b1),.dout(grp_fu_3593_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3602_p0),.din1(grp_fu_3602_p1),.din2(grp_fu_3602_p2),.ce(1'b1),.dout(grp_fu_3602_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U245(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3611_p0),.din1(grp_fu_3611_p1),.din2(grp_fu_3611_p2),.ce(1'b1),.dout(grp_fu_3611_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U246(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3619_p0),.din1(grp_fu_3619_p1),.din2(grp_fu_3619_p2),.ce(1'b1),.dout(grp_fu_3619_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_1_fu_172 <= 7'd0;
    end else if (((tmp_reg_3643 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tid_1_fu_172 <= add_ln174_fu_2562_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_1_reg_3984 <= DATA_x_1_q0;
        DATA_x_1_load_reg_3973 <= DATA_x_1_q1;
        DATA_x_2_load_1_reg_4050 <= DATA_x_2_q0;
        DATA_x_2_load_reg_4039 <= DATA_x_2_q1;
        DATA_x_3_load_1_reg_4072 <= DATA_x_3_q0;
        DATA_x_3_load_reg_4061 <= DATA_x_3_q1;
        DATA_x_4_load_1_reg_4006 <= DATA_x_4_q0;
        DATA_x_4_load_reg_3995 <= DATA_x_4_q1;
        DATA_x_5_load_1_reg_4028 <= DATA_x_5_q0;
        DATA_x_5_load_reg_4017 <= DATA_x_5_q1;
        DATA_x_6_load_1_reg_4094 <= DATA_x_6_q0;
        DATA_x_6_load_reg_4083 <= DATA_x_6_q1;
        DATA_x_7_load_1_reg_4116 <= DATA_x_7_q0;
        DATA_x_7_load_reg_4105 <= DATA_x_7_q1;
        DATA_x_load_1_reg_3962 <= DATA_x_q0;
        DATA_x_load_reg_3844 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_load_2_reg_4189 <= DATA_x_1_q1;
        DATA_x_2_load_2_reg_4232 <= DATA_x_2_q1;
        DATA_x_3_load_2_reg_4243 <= DATA_x_3_q1;
        DATA_x_4_load_2_reg_4205 <= DATA_x_4_q1;
        DATA_x_5_load_2_reg_4221 <= DATA_x_5_q1;
        DATA_x_6_load_2_reg_4254 <= DATA_x_6_q1;
        DATA_x_7_load_2_reg_4265 <= DATA_x_7_q1;
        DATA_x_load_2_reg_4167 <= DATA_x_q1;
        DATA_x_load_3_reg_4178 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln179_1_reg_3880[8 : 1] <= add_ln179_1_fu_2849_p2[8 : 1];
        add_ln179_2_reg_3911[8 : 2] <= add_ln179_2_fu_2893_p2[8 : 2];
        add_ln183_1_reg_3890[7 : 1] <= add_ln183_1_fu_2873_p2[7 : 1];
        tmp_227_reg_3855 <= {{mul_ln179_fu_2760_p2[18:12]}};
        tmp_229_reg_3860 <= {{mul_ln181_fu_2779_p2[18:12]}};
        tmp_230_reg_3865 <= {{mul_ln182_fu_2804_p2[16:11]}};
        tmp_231_reg_3870 <= {{mul_ln183_fu_2827_p2[18:12]}};
        tmp_237_reg_3885 <= {{mul_ln181_1_fu_2857_p2[18:12]}};
        zext_ln172_29_reg_3875[5 : 1] <= zext_ln172_29_fu_2846_p1[5 : 1];
        zext_ln172_34_reg_3895[5 : 2] <= zext_ln172_34_fu_2890_p1[5 : 2];
        zext_ln176_reg_3946[5 : 2] <= zext_ln176_fu_2906_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln179_3_reg_4200 <= add_ln179_3_fu_3015_p2;
        add_ln180_1_reg_4216 <= add_ln180_1_fu_3020_p2;
        add_ln181_2_reg_4152[8 : 2] <= add_ln181_2_fu_3000_p2[8 : 2];
        add_ln183_2_reg_4157[7 : 2] <= add_ln183_2_fu_3005_p2[7 : 2];
        offset_1_reg_3669[5 : 1] <= offset_1_fu_2525_p3[5 : 1];
        offset_1_reg_3669_pp0_iter1_reg[5 : 1] <= offset_1_reg_3669[5 : 1];
        offset_1_reg_3669_pp0_iter2_reg[5 : 1] <= offset_1_reg_3669_pp0_iter1_reg[5 : 1];
        offset_1_reg_3669_pp0_iter3_reg[5 : 1] <= offset_1_reg_3669_pp0_iter2_reg[5 : 1];
        offset_1_reg_3669_pp0_iter4_reg[5 : 1] <= offset_1_reg_3669_pp0_iter3_reg[5 : 1];
        tmp_235_reg_4127 <= {{mul_ln179_1_fu_2914_p2[18:12]}};
        tmp_238_reg_4132 <= {{mul_ln182_1_fu_2939_p2[16:11]}};
        tmp_239_reg_4137 <= {{mul_ln183_1_fu_2962_p2[18:12]}};
        tmp_243_reg_4147 <= {{mul_ln179_2_fu_2984_p2[18:12]}};
        zext_ln172_33_reg_4142[5 : 2] <= zext_ln172_33_fu_2978_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln179_reg_3728 <= add_ln179_fu_2623_p2;
        add_ln181_1_reg_3814[8 : 1] <= add_ln181_1_fu_2732_p2[8 : 1];
        add_ln181_reg_3748 <= add_ln181_fu_2658_p2;
        add_ln183_reg_3763 <= add_ln183_fu_2664_p2;
        offset_3_reg_3656 <= offset_3_fu_2493_p5;
        offset_3_reg_3656_pp0_iter1_reg <= offset_3_reg_3656;
        offset_3_reg_3656_pp0_iter2_reg <= offset_3_reg_3656_pp0_iter1_reg;
        offset_3_reg_3656_pp0_iter3_reg <= offset_3_reg_3656_pp0_iter2_reg;
        offset_3_reg_3656_pp0_iter4_reg <= offset_3_reg_3656_pp0_iter3_reg;
        offset_3_reg_3656_pp0_iter5_reg <= offset_3_reg_3656_pp0_iter4_reg;
        offset_reg_3647 <= offset_fu_2469_p1;
        offset_reg_3647_pp0_iter1_reg <= offset_reg_3647;
        offset_reg_3647_pp0_iter2_reg <= offset_reg_3647_pp0_iter1_reg;
        offset_reg_3647_pp0_iter3_reg <= offset_reg_3647_pp0_iter2_reg;
        offset_reg_3647_pp0_iter4_reg <= offset_reg_3647_pp0_iter3_reg;
        tid_reg_3635 <= ap_sig_allocacmp_tid;
        tid_reg_3635_pp0_iter1_reg <= tid_reg_3635;
        tid_reg_3635_pp0_iter2_reg <= tid_reg_3635_pp0_iter1_reg;
        tid_reg_3635_pp0_iter3_reg <= tid_reg_3635_pp0_iter2_reg;
        tid_reg_3635_pp0_iter4_reg <= tid_reg_3635_pp0_iter3_reg;
        tmp_226_reg_3713 <= {{mul_ln172_fu_2607_p2[12:9]}};
        tmp_228_reg_3738 <= {{mul_ln180_fu_2642_p2[14:10]}};
        tmp_234_reg_3784 <= {{mul_ln172_1_fu_2687_p2[12:9]}};
        tmp_236_reg_3804 <= {{mul_ln180_1_fu_2716_p2[14:10]}};
        tmp_242_reg_3839 <= {{mul_ln172_2_fu_2741_p2[12:9]}};
        tmp_249_reg_4415 <= {{tmp_249_fu_3408_p1[20:13]}};
        tmp_reg_3643 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_3643_pp0_iter1_reg <= tmp_reg_3643;
        tmp_reg_3643_pp0_iter2_reg <= tmp_reg_3643_pp0_iter1_reg;
        tmp_reg_3643_pp0_iter3_reg <= tmp_reg_3643_pp0_iter2_reg;
        tmp_reg_3643_pp0_iter4_reg <= tmp_reg_3643_pp0_iter3_reg;
        tmp_reg_3643_pp0_iter5_reg <= tmp_reg_3643_pp0_iter4_reg;
        trunc_ln172_17_reg_3704 <= trunc_ln172_17_fu_2580_p1;
        trunc_ln172_17_reg_3704_pp0_iter3_reg <= trunc_ln172_17_reg_3704;
        trunc_ln172_17_reg_3704_pp0_iter4_reg <= trunc_ln172_17_reg_3704_pp0_iter3_reg;
        trunc_ln172_17_reg_3704_pp0_iter5_reg <= trunc_ln172_17_reg_3704_pp0_iter4_reg;
        trunc_ln172_17_reg_3704_pp0_iter6_reg <= trunc_ln172_17_reg_3704_pp0_iter5_reg;
        zext_ln172_25_reg_3708[5 : 0] <= zext_ln172_25_fu_2598_p1[5 : 0];
        zext_ln172_30_reg_3778[5 : 1] <= zext_ln172_30_fu_2681_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln181_3_reg_4311 <= add_ln181_3_fu_3192_p2;
        add_ln182_3_reg_4316 <= add_ln182_3_fu_3197_p2;
        add_ln183_3_reg_4321 <= add_ln183_3_fu_3202_p2;
        add_ln184_3_reg_4326 <= add_ln184_3_fu_3207_p2;
        add_ln185_3_reg_4331 <= add_ln185_3_fu_3212_p2;
        offset_2_reg_3686[5 : 2] <= offset_2_fu_2548_p3[5 : 2];
        offset_2_reg_3686_pp0_iter1_reg[5 : 2] <= offset_2_reg_3686[5 : 2];
        offset_2_reg_3686_pp0_iter2_reg[5 : 2] <= offset_2_reg_3686_pp0_iter1_reg[5 : 2];
        offset_2_reg_3686_pp0_iter3_reg[5 : 2] <= offset_2_reg_3686_pp0_iter2_reg[5 : 2];
        offset_2_reg_3686_pp0_iter4_reg[5 : 2] <= offset_2_reg_3686_pp0_iter3_reg[5 : 2];
        tmp_233_reg_4276 <= {{tmp_233_fu_3095_p1[20:13]}};
        tmp_245_reg_4281 <= {{mul_ln181_2_fu_3120_p2[18:12]}};
        tmp_246_reg_4286 <= {{mul_ln182_2_fu_3145_p2[16:11]}};
        tmp_247_reg_4291 <= {{mul_ln183_2_fu_3168_p2[18:12]}};
        tmp_s_reg_3679 <= {{tid_reg_3635[5:2]}};
        tmp_s_reg_3679_pp0_iter1_reg <= tmp_s_reg_3679;
        tmp_s_reg_3679_pp0_iter2_reg <= tmp_s_reg_3679_pp0_iter1_reg;
        tmp_s_reg_3679_pp0_iter3_reg <= tmp_s_reg_3679_pp0_iter2_reg;
        tmp_s_reg_3679_pp0_iter4_reg <= tmp_s_reg_3679_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_241_reg_4336 <= {{tmp_241_fu_3297_p1[20:13]}};
        trunc_ln172_reg_3696 <= trunc_ln172_fu_2572_p1;
        trunc_ln172_reg_3696_pp0_iter2_reg <= trunc_ln172_reg_3696;
        trunc_ln172_reg_3696_pp0_iter3_reg <= trunc_ln172_reg_3696_pp0_iter2_reg;
        trunc_ln172_reg_3696_pp0_iter4_reg <= trunc_ln172_reg_3696_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_244_reg_4376 <= {{tmp_244_fu_3356_p1[16:11]}};
        tmp_248_reg_4381 <= {{tmp_248_fu_3365_p1[18:12]}};
        tmp_256_reg_4400 <= {{grp_fu_797_p_dout0[64:35]}};
        tmp_257_reg_4405 <= {{grp_fu_801_p_dout0[64:35]}};
        tmp_258_reg_4410 <= {{grp_fu_805_p_dout0[64:35]}};
        trunc_ln172_16_reg_3700 <= trunc_ln172_16_fu_2576_p1;
        trunc_ln172_16_reg_3700_pp0_iter2_reg <= trunc_ln172_16_reg_3700;
        trunc_ln172_16_reg_3700_pp0_iter3_reg <= trunc_ln172_16_reg_3700_pp0_iter2_reg;
        trunc_ln172_16_reg_3700_pp0_iter4_reg <= trunc_ln172_16_reg_3700_pp0_iter3_reg;
        trunc_ln172_18_reg_4386 <= trunc_ln172_18_fu_3374_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_251_reg_4296 <= {{grp_fu_789_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_252_reg_4341 <= {{grp_fu_789_p_dout0[64:35]}};
        tmp_253_reg_4346 <= {{grp_fu_793_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_254_reg_4390 <= {{grp_fu_789_p_dout0[64:35]}};
        tmp_255_reg_4395 <= {{grp_fu_793_p_dout0[64:35]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln176_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln177_fu_2670_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln177_1_fu_2879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln174_fu_2584_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_2_address0_local = zext_ln176_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_address0_local = zext_ln177_fu_2670_p1;
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln177_1_fu_2879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln174_fu_2584_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_3_address0_local = zext_ln176_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_address0_local = zext_ln177_fu_2670_p1;
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln177_1_fu_2879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln174_fu_2584_p1;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_address0_local = zext_ln176_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_address0_local = zext_ln177_fu_2670_p1;
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_4_address1_local = zext_ln177_1_fu_2879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_4_address1_local = zext_ln174_fu_2584_p1;
        end else begin
            DATA_x_4_address1_local = 'bx;
        end
    end else begin
        DATA_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_5_address0_local = zext_ln176_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_address0_local = zext_ln177_fu_2670_p1;
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_5_address1_local = zext_ln177_1_fu_2879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_5_address1_local = zext_ln174_fu_2584_p1;
        end else begin
            DATA_x_5_address1_local = 'bx;
        end
    end else begin
        DATA_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_6_address0_local = zext_ln176_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_address0_local = zext_ln177_fu_2670_p1;
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_6_address1_local = zext_ln177_1_fu_2879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_6_address1_local = zext_ln174_fu_2584_p1;
        end else begin
            DATA_x_6_address1_local = 'bx;
        end
    end else begin
        DATA_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_7_address0_local = zext_ln176_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_address0_local = zext_ln177_fu_2670_p1;
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_7_address1_local = zext_ln177_1_fu_2879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_7_address1_local = zext_ln174_fu_2584_p1;
        end else begin
            DATA_x_7_address1_local = 'bx;
        end
    end else begin
        DATA_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln176_fu_2906_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln177_fu_2670_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln177_1_fu_2879_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln174_fu_2584_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3643 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (tmp_reg_3643_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter5_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_1_fu_172;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_2408_p0 = zext_ln181_7_fu_3306_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_2408_p0 = zext_ln179_7_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_2408_p0 = zext_ln172_57_fu_3011_p1;
        end else begin
            grp_fu_2408_p0 = 'bx;
        end
    end else begin
        grp_fu_2408_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_2413_p0 = zext_ln182_7_fu_3310_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_2413_p0 = zext_ln180_7_fu_3188_p1;
        end else begin
            grp_fu_2413_p0 = 'bx;
        end
    end else begin
        grp_fu_2413_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_1_address0_local = zext_ln184_3_fu_3547_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln182_3_fu_3527_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln179_3_fu_3497_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln183_3_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln180_3_fu_3507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln185_3_fu_3557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln181_3_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_1_address0_local = zext_ln184_2_fu_3477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln182_2_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln179_2_fu_3427_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln183_2_fu_3467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln180_2_fu_3437_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln185_2_fu_3487_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln181_2_fu_3447_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_3_fu_3417_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln182_1_fu_3326_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln185_1_fu_3336_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln185_fu_3227_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln181_fu_3217_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_1_address0_local = zext_ln184_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln182_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln179_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln183_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln180_fu_3045_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_address1_local = zext_ln172_2_fu_3346_p1;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_1_address1_local = zext_ln184_1_fu_3286_p1;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_1_address1_local = zext_ln179_1_fu_3237_p1;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_1_address1_local = zext_ln183_1_fu_3267_p1;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_1_address1_local = zext_ln180_1_fu_3247_p1;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_1_address1_local = zext_ln181_1_fu_3257_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_address1_local = zext_ln172_1_fu_3104_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_1_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_1_d0_local = DATA_x_6_load_2_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_2_load_2_reg_4232;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_1_load_2_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_3_load_2_reg_4243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_4_load_2_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_7_load_2_reg_4265;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_5_load_2_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_load_3_reg_4178;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_2_load_1_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_x_7_load_1_reg_4116;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = DATA_x_7_load_reg_4105;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_d0_local = DATA_x_5_load_reg_4017;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_1_d0_local = DATA_x_6_load_reg_4083;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_2_load_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_1_load_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_3_load_reg_4061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_load_reg_3844;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_x_4_load_reg_3995;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_1_d1_local = DATA_x_load_2_reg_4167;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_1_d1_local = DATA_x_6_load_1_reg_4094;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_1_d1_local = DATA_x_1_load_1_reg_3984;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_1_d1_local = DATA_x_3_load_1_reg_4072;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_1_d1_local = DATA_x_4_load_1_reg_4006;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_1_d1_local = DATA_x_5_load_1_reg_4028;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_1_d1_local = DATA_x_load_1_reg_3962;
        end else begin
            smem_1_d1_local = 'bx;
        end
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter5_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_2_address0_local = zext_ln180_3_fu_3507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln185_3_fu_3557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln182_3_fu_3527_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln179_3_fu_3497_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln183_3_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln181_3_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln184_3_fu_3547_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_2_address0_local = zext_ln180_2_fu_3437_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln185_2_fu_3487_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln182_2_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln179_2_fu_3427_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln183_2_fu_3467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln181_2_fu_3447_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln184_2_fu_3477_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_3_fu_3417_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln185_1_fu_3336_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln182_1_fu_3326_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln185_fu_3227_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln181_fu_3217_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln182_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln179_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln183_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln184_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_2_address0_local = zext_ln180_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_fu_3025_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_2_address1_local = zext_ln172_2_fu_3346_p1;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_2_address1_local = zext_ln180_1_fu_3247_p1;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_2_address1_local = zext_ln179_1_fu_3237_p1;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_2_address1_local = zext_ln183_1_fu_3267_p1;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_2_address1_local = zext_ln181_1_fu_3257_p1;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_2_address1_local = zext_ln184_1_fu_3286_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_address1_local = zext_ln172_1_fu_3104_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_2_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_2_d0_local = DATA_x_4_load_2_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_7_load_2_reg_4265;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_2_load_2_reg_4232;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_1_load_2_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_3_load_2_reg_4243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_5_load_2_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_6_load_2_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_load_3_reg_4178;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_x_7_load_1_reg_4116;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_x_2_load_1_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = DATA_x_7_load_reg_4105;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_d0_local = DATA_x_5_load_reg_4017;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_2_load_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_1_load_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_3_load_reg_4061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_6_load_reg_4083;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_2_d0_local = DATA_x_4_load_reg_3995;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_x_load_reg_3844;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_2_d1_local = DATA_x_load_2_reg_4167;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_2_d1_local = DATA_x_4_load_1_reg_4006;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_2_d1_local = DATA_x_1_load_1_reg_3984;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_2_d1_local = DATA_x_3_load_1_reg_4072;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_2_d1_local = DATA_x_5_load_1_reg_4028;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_2_d1_local = DATA_x_6_load_1_reg_4094;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_2_d1_local = DATA_x_load_1_reg_3962;
        end else begin
            smem_2_d1_local = 'bx;
        end
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter5_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_3_address0_local = zext_ln183_3_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln181_3_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln185_3_fu_3557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln182_3_fu_3527_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln179_3_fu_3497_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln184_3_fu_3547_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln180_3_fu_3507_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_3_address0_local = zext_ln183_2_fu_3467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln181_2_fu_3447_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln185_2_fu_3487_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln182_2_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln179_2_fu_3427_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln184_2_fu_3477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln180_2_fu_3437_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_3_fu_3417_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln185_1_fu_3336_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln182_1_fu_3326_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln181_fu_3217_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln185_fu_3227_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_3_address0_local = zext_ln183_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln182_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln179_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln184_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln180_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_fu_3025_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_3_address1_local = zext_ln172_2_fu_3346_p1;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_3_address1_local = zext_ln183_1_fu_3267_p1;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_3_address1_local = zext_ln181_1_fu_3257_p1;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_3_address1_local = zext_ln179_1_fu_3237_p1;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_3_address1_local = zext_ln184_1_fu_3286_p1;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_3_address1_local = zext_ln180_1_fu_3247_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_address1_local = zext_ln172_1_fu_3104_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_3_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_3_d0_local = DATA_x_3_load_2_reg_4243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_5_load_2_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_7_load_2_reg_4265;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_2_load_2_reg_4232;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_load_2_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_6_load_2_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_4_load_2_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_load_3_reg_4178;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_x_7_load_1_reg_4116;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_x_2_load_1_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d0_local = DATA_x_5_load_reg_4017;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_d0_local = DATA_x_7_load_reg_4105;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_3_d0_local = DATA_x_3_load_reg_4061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_2_load_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_1_load_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_6_load_reg_4083;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_4_load_reg_3995;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_x_load_reg_3844;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_3_d1_local = DATA_x_load_2_reg_4167;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_3_d1_local = DATA_x_3_load_1_reg_4072;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_3_d1_local = DATA_x_5_load_1_reg_4028;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_3_d1_local = DATA_x_1_load_1_reg_3984;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_3_d1_local = DATA_x_6_load_1_reg_4094;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_3_d1_local = DATA_x_4_load_1_reg_4006;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_3_d1_local = DATA_x_load_1_reg_3962;
        end else begin
            smem_3_d1_local = 'bx;
        end
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter5_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_4_address0_local = zext_ln179_3_fu_3497_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln184_3_fu_3547_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln181_3_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln185_3_fu_3557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln182_3_fu_3527_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln180_3_fu_3507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln183_3_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_4_address0_local = zext_ln179_2_fu_3427_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln184_2_fu_3477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln181_2_fu_3447_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln185_2_fu_3487_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln182_2_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln180_2_fu_3437_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln183_2_fu_3467_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_3_fu_3417_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln185_1_fu_3336_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln182_1_fu_3326_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln181_fu_3217_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln185_fu_3227_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_4_address0_local = zext_ln179_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln184_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln182_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln183_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln180_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_fu_3025_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_4_address1_local = zext_ln172_2_fu_3346_p1;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_4_address1_local = zext_ln179_1_fu_3237_p1;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_4_address1_local = zext_ln184_1_fu_3286_p1;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_4_address1_local = zext_ln181_1_fu_3257_p1;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_4_address1_local = zext_ln180_1_fu_3247_p1;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_4_address1_local = zext_ln183_1_fu_3267_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_4_address1_local = zext_ln172_1_fu_3104_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_4_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_4_d0_local = DATA_x_1_load_2_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_6_load_2_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_5_load_2_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_7_load_2_reg_4265;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_2_load_2_reg_4232;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_4_load_2_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_3_load_2_reg_4243;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_load_3_reg_4178;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_x_7_load_1_reg_4116;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_x_2_load_1_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d0_local = DATA_x_5_load_reg_4017;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_d0_local = DATA_x_7_load_reg_4105;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_4_d0_local = DATA_x_1_load_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_6_load_reg_4083;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_2_load_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_3_load_reg_4061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_4_load_reg_3995;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_x_load_reg_3844;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_4_d1_local = DATA_x_load_2_reg_4167;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_4_d1_local = DATA_x_1_load_1_reg_3984;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_4_d1_local = DATA_x_6_load_1_reg_4094;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_4_d1_local = DATA_x_5_load_1_reg_4028;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_4_d1_local = DATA_x_4_load_1_reg_4006;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_4_d1_local = DATA_x_3_load_1_reg_4072;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_4_d1_local = DATA_x_load_1_reg_3962;
        end else begin
            smem_4_d1_local = 'bx;
        end
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter5_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_5_address0_local = zext_ln182_3_fu_3527_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln180_3_fu_3507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln184_3_fu_3547_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln181_3_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln185_3_fu_3557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln183_3_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln179_3_fu_3497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_5_address0_local = zext_ln182_2_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln180_2_fu_3437_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln184_2_fu_3477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln181_2_fu_3447_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln185_2_fu_3487_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln183_2_fu_3467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln179_2_fu_3427_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_3_fu_3417_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7)))) begin
        smem_5_address0_local = zext_ln182_1_fu_3326_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln185_1_fu_3336_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln181_fu_3217_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln185_fu_3227_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_5_address0_local = zext_ln182_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln184_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln183_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln179_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln180_fu_3045_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_fu_3025_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_5_address1_local = zext_ln172_2_fu_3346_p1;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_5_address1_local = zext_ln180_1_fu_3247_p1;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_5_address1_local = zext_ln184_1_fu_3286_p1;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_5_address1_local = zext_ln181_1_fu_3257_p1;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_5_address1_local = zext_ln183_1_fu_3267_p1;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_5_address1_local = zext_ln179_1_fu_3237_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_5_address1_local = zext_ln172_1_fu_3104_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 ==1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_5_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_5_d0_local = DATA_x_2_load_2_reg_4232;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_4_load_2_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_6_load_2_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_5_load_2_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_7_load_2_reg_4265;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_3_load_2_reg_4243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_1_load_2_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_load_3_reg_4178;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7)))) begin
        smem_5_d0_local = DATA_x_2_load_1_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_x_7_load_1_reg_4116;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d0_local = DATA_x_5_load_reg_4017;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_d0_local = DATA_x_7_load_reg_4105;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_5_d0_local = DATA_x_2_load_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_6_load_reg_4083;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_3_load_reg_4061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_1_load_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_4_load_reg_3995;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_x_load_reg_3844;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_5_d1_local = DATA_x_load_2_reg_4167;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_5_d1_local = DATA_x_4_load_1_reg_4006;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_5_d1_local = DATA_x_6_load_1_reg_4094;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_5_d1_local = DATA_x_5_load_1_reg_4028;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_5_d1_local = DATA_x_3_load_1_reg_4072;
        end else if ((1'b1 == ap_condition_2249)) begin
            smem_5_d1_local = DATA_x_1_load_1_reg_3984;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_5_d1_local = DATA_x_load_1_reg_3962;
        end else begin
            smem_5_d1_local = 'bx;
        end
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 ==1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter5_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)& (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_6_address0_local = zext_ln185_3_fu_3557_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln183_3_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln180_3_fu_3507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln184_3_fu_3547_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln181_3_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln179_3_fu_3497_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln182_3_fu_3527_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_6_address0_local = zext_ln185_2_fu_3487_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln183_2_fu_3467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln180_2_fu_3437_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln184_2_fu_3477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln181_2_fu_3447_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln179_2_fu_3427_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln182_2_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_3_fu_3417_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7)))) begin
        smem_6_address0_local = zext_ln185_1_fu_3336_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln182_1_fu_3326_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_6_address0_local = zext_ln185_fu_3227_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln181_fu_3217_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln183_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln184_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln179_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln182_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_6_address0_local = zext_ln172_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln180_fu_3045_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_6_address1_local = zext_ln172_2_fu_3346_p1;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_6_address1_local = zext_ln183_1_fu_3267_p1;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_6_address1_local = zext_ln180_1_fu_3247_p1;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_6_address1_local = zext_ln184_1_fu_3286_p1;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_6_address1_local = zext_ln181_1_fu_3257_p1;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_6_address1_local = zext_ln179_1_fu_3237_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_6_address1_local = zext_ln172_1_fu_3104_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386== 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_6_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_6_d0_local = DATA_x_7_load_2_reg_4265;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_3_load_2_reg_4243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_4_load_2_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_6_load_2_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_5_load_2_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_1_load_2_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_2_load_2_reg_4232;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_load_3_reg_4178;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7)))) begin
        smem_6_d0_local = DATA_x_7_load_1_reg_4116;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_x_2_load_1_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_6_d0_local = DATA_x_7_load_reg_4105;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_d0_local = DATA_x_5_load_reg_4017;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_3_load_reg_4061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_6_load_reg_4083;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_1_load_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_2_load_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_6_d0_local = DATA_x_load_reg_3844;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_x_4_load_reg_3995;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_6_d1_local = DATA_x_load_2_reg_4167;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_6_d1_local = DATA_x_3_load_1_reg_4072;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_6_d1_local = DATA_x_4_load_1_reg_4006;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_6_d1_local = DATA_x_6_load_1_reg_4094;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_6_d1_local = DATA_x_5_load_1_reg_4028;
        end else if ((1'b1 == ap_condition_2269)) begin
            smem_6_d1_local = DATA_x_1_load_1_reg_3984;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_6_d1_local = DATA_x_load_1_reg_3962;
        end else begin
            smem_6_d1_local = 'bx;
        end
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386== 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_17_reg_3704_pp0_iter5_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter5_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_address0_local = zext_ln181_3_fu_3517_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln179_3_fu_3497_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln183_3_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln180_3_fu_3507_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln184_3_fu_3547_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln182_3_fu_3527_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln185_3_fu_3557_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_address0_local = zext_ln181_2_fu_3447_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln179_2_fu_3427_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln183_2_fu_3467_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln180_2_fu_3437_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln184_2_fu_3477_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln182_2_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln185_2_fu_3487_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_3_fu_3417_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln182_1_fu_3326_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln185_1_fu_3336_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_address0_local = zext_ln181_fu_3217_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln185_fu_3227_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln179_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln183_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln184_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln182_fu_3055_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_fu_3025_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln180_fu_3045_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_address1_local = zext_ln172_2_fu_3346_p1;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_address1_local = zext_ln181_1_fu_3257_p1;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_address1_local = zext_ln179_1_fu_3237_p1;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_address1_local = zext_ln183_1_fu_3267_p1;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_address1_local = zext_ln180_1_fu_3247_p1;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_address1_local = zext_ln184_1_fu_3286_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_address1_local = zext_ln172_1_fu_3104_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)& (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7)))) begin
        smem_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7)))) begin
        smem_d0_local = DATA_x_5_load_2_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_load_2_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_3_load_2_reg_4243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_4_load_2_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_6_load_2_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_2_load_2_reg_4232;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_7_load_2_reg_4265;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_load_3_reg_4178;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_x_2_load_1_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_x_7_load_1_reg_4116;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7)))) begin
        smem_d0_local = DATA_x_5_load_reg_4017;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_d0_local = DATA_x_7_load_reg_4105;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_1_load_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_3_load_reg_4061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_6_load_reg_4083;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_2_load_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_load_reg_3844;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_x_4_load_reg_3995;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            smem_d1_local = DATA_x_load_2_reg_4167;
        end else if ((1'b1 == ap_condition_2264)) begin
            smem_d1_local = DATA_x_5_load_1_reg_4028;
        end else if ((1'b1 == ap_condition_2273)) begin
            smem_d1_local = DATA_x_1_load_1_reg_3984;
        end else if ((1'b1 == ap_condition_2261)) begin
            smem_d1_local = DATA_x_3_load_1_reg_4072;
        end else if ((1'b1 == ap_condition_2257)) begin
            smem_d1_local = DATA_x_4_load_1_reg_4006;
        end else if ((1'b1 == ap_condition_2253)) begin
            smem_d1_local = DATA_x_6_load_1_reg_4094;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            smem_d1_local = DATA_x_load_1_reg_3962;
        end else begin
            smem_d1_local = 'bx;
        end
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd6) | (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter6_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_reg_3696_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)& (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3696_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_18_reg_4386 == 3'd6) | (trunc_ln172_18_reg_4386 == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln172_18_reg_4386 == 3'd5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_18_reg_4386 == 3'd0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_17_reg_3704_pp0_iter5_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage2))) begin
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
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_4_address0 = DATA_x_4_address0_local;
assign DATA_x_4_address1 = DATA_x_4_address1_local;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_5_address0 = DATA_x_5_address0_local;
assign DATA_x_5_address1 = DATA_x_5_address1_local;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_6_address0 = DATA_x_6_address0_local;
assign DATA_x_6_address1 = DATA_x_6_address1_local;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_7_address0 = DATA_x_7_address0_local;
assign DATA_x_7_address1 = DATA_x_7_address1_local;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln174_fu_2562_p2 = (tid_reg_3635 + 7'd4);
assign add_ln179_1_fu_2849_p2 = ($signed(zext_ln172_30_reg_3778) + $signed(9'd264));
assign add_ln179_2_fu_2893_p2 = ($signed(zext_ln172_34_fu_2890_p1) + $signed(9'd264));
assign add_ln179_3_fu_3015_p2 = (offset_3_reg_3656_pp0_iter5_reg + 32'd264);
assign add_ln179_fu_2623_p2 = ($signed(zext_ln172_26_fu_2601_p1) + $signed(9'd264));
assign add_ln180_1_fu_3020_p2 = (offset_3_reg_3656_pp0_iter5_reg + 32'd66);
assign add_ln181_1_fu_2732_p2 = ($signed(zext_ln172_30_fu_2681_p1) + $signed(9'd330));
assign add_ln181_2_fu_3000_p2 = ($signed(zext_ln172_34_reg_3895) + $signed(9'd330));
assign add_ln181_3_fu_3192_p2 = (offset_3_reg_3656_pp0_iter5_reg + 32'd330);
assign add_ln181_fu_2658_p2 = ($signed(zext_ln172_26_fu_2601_p1) + $signed(9'd330));
assign add_ln182_1_fu_2930_p2 = ($signed(zext_ln172_29_reg_3875) + $signed(8'd132));
assign add_ln182_2_fu_3136_p2 = ($signed(zext_ln172_33_reg_4142) + $signed(8'd132));
assign add_ln182_3_fu_3197_p2 = (offset_3_reg_3656_pp0_iter5_reg + 32'd132);
assign add_ln182_fu_2795_p2 = ($signed(zext_ln172_25_reg_3708) + $signed(8'd132));
assign add_ln183_1_fu_2873_p2 = ($signed(zext_ln172_29_fu_2846_p1) + $signed(8'd140));
assign add_ln183_2_fu_3005_p2 = ($signed(zext_ln172_33_fu_2978_p1) + $signed(8'd140));
assign add_ln183_3_fu_3202_p2 = (offset_3_reg_3656_pp0_iter5_reg + 32'd396);
assign add_ln183_fu_2664_p2 = ($signed(zext_ln172_25_fu_2598_p1) + $signed(8'd140));
assign add_ln184_3_fu_3207_p2 = (offset_3_reg_3656_pp0_iter5_reg + 32'd198);
assign add_ln185_3_fu_3212_p2 = (offset_3_reg_3656_pp0_iter5_reg + 32'd462);
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
always @ (*) begin
    ap_condition_2249 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2253 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2257 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2261 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2264 = ((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd6) | (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd7)));
end
always @ (*) begin
    ap_condition_2269 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_2273 = ((1'b0 == ap_block_pp0_stage4) & (trunc_ln172_16_reg_3700_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign grp_fu_2505_p0 = {{zext_ln175_fu_2473_p1[31:3]}, {or_ln8_fu_2485_p3}};
assign grp_fu_2505_p1 = 32'd7;
assign grp_fu_2511_p1 = 6'd7;
assign grp_fu_2533_p0 = {{tmp_62_fu_2516_p4}, {1'd1}};
assign grp_fu_2533_p1 = 6'd7;
assign grp_fu_2556_p0 = {{tmp_s_fu_2539_p4}, {2'd2}};
assign grp_fu_2556_p1 = 6'd7;
assign grp_fu_3567_p0 = zext_ln172_26_fu_2601_p1;
assign grp_fu_3567_p1 = 9'd198;
assign grp_fu_3567_p2 = 19'd586;
assign grp_fu_3576_p0 = grp_fu_3576_p00;
assign grp_fu_3576_p00 = offset_reg_3647_pp0_iter4_reg;
assign grp_fu_3576_p1 = 10'd462;
assign grp_fu_3576_p2 = 21'd1171;
assign grp_fu_3585_p0 = zext_ln172_30_reg_3778;
assign grp_fu_3585_p1 = 9'd198;
assign grp_fu_3585_p2 = 19'd586;
assign grp_fu_3593_p0 = grp_fu_3593_p00;
assign grp_fu_3593_p00 = offset_1_reg_3669_pp0_iter4_reg;
assign grp_fu_3593_p1 = 10'd462;
assign grp_fu_3593_p2 = 21'd1171;
assign grp_fu_3602_p0 = zext_ln172_33_fu_2978_p1;
assign grp_fu_3602_p1 = 8'd66;
assign grp_fu_3602_p2 = 17'd293;
assign grp_fu_3611_p0 = zext_ln172_34_reg_3895;
assign grp_fu_3611_p1 = 9'd198;
assign grp_fu_3611_p2 = 19'd586;
assign grp_fu_3619_p0 = grp_fu_3619_p00;
assign grp_fu_3619_p00 = offset_2_reg_3686_pp0_iter4_reg;
assign grp_fu_3619_p1 = 10'd462;
assign grp_fu_3619_p2 = 21'd1171;
assign grp_fu_789_p_ce = 1'b1;
assign grp_fu_789_p_din0 = grp_fu_2408_p0;
assign grp_fu_789_p_din1 = 65'd4908534053;
assign grp_fu_793_p_ce = 1'b1;
assign grp_fu_793_p_din0 = grp_fu_2413_p0;
assign grp_fu_793_p_din1 = 65'd4908534053;
assign grp_fu_797_p_ce = 1'b1;
assign grp_fu_797_p_din0 = zext_ln183_7_fu_3314_p1;
assign grp_fu_797_p_din1 = 65'd4908534053;
assign grp_fu_801_p_ce = 1'b1;
assign grp_fu_801_p_din0 = zext_ln184_7_fu_3318_p1;
assign grp_fu_801_p_din1 = 65'd4908534053;
assign grp_fu_805_p_ce = 1'b1;
assign grp_fu_805_p_din0 = zext_ln185_7_fu_3322_p1;
assign grp_fu_805_p_din1 = 65'd4908534053;
assign mul_ln172_1_fu_2687_p0 = mul_ln172_1_fu_2687_p00;
assign mul_ln172_1_fu_2687_p00 = offset_1_reg_3669_pp0_iter4_reg;
assign mul_ln172_1_fu_2687_p1 = 13'd74;
assign mul_ln172_2_fu_2741_p0 = mul_ln172_2_fu_2741_p00;
assign mul_ln172_2_fu_2741_p00 = offset_2_reg_3686_pp0_iter4_reg;
assign mul_ln172_2_fu_2741_p1 = 13'd74;
assign mul_ln172_fu_2607_p0 = mul_ln172_fu_2607_p00;
assign mul_ln172_fu_2607_p00 = offset_reg_3647_pp0_iter4_reg;
assign mul_ln172_fu_2607_p1 = 13'd74;
assign mul_ln179_1_fu_2914_p0 = mul_ln179_1_fu_2914_p00;
assign mul_ln179_1_fu_2914_p00 = add_ln179_1_reg_3880;
assign mul_ln179_1_fu_2914_p1 = 19'd586;
assign mul_ln179_2_fu_2984_p0 = mul_ln179_2_fu_2984_p00;
assign mul_ln179_2_fu_2984_p00 = add_ln179_2_reg_3911;
assign mul_ln179_2_fu_2984_p1 = 19'd586;
assign mul_ln179_fu_2760_p0 = mul_ln179_fu_2760_p00;
assign mul_ln179_fu_2760_p00 = add_ln179_reg_3728;
assign mul_ln179_fu_2760_p1 = 19'd586;
assign mul_ln180_1_fu_2716_p0 = mul_ln180_1_fu_2716_p00;
assign mul_ln180_1_fu_2716_p00 = zext_ln180_5_cast_fu_2703_p4;
assign mul_ln180_1_fu_2716_p1 = 15'd147;
assign mul_ln180_fu_2642_p0 = mul_ln180_fu_2642_p00;
assign mul_ln180_fu_2642_p00 = zext_ln180_4_cast_fu_2629_p4;
assign mul_ln180_fu_2642_p1 = 15'd147;
assign mul_ln181_1_fu_2857_p0 = mul_ln181_1_fu_2857_p00;
assign mul_ln181_1_fu_2857_p00 = add_ln181_1_reg_3814;
assign mul_ln181_1_fu_2857_p1 = 19'd586;
assign mul_ln181_2_fu_3120_p0 = mul_ln181_2_fu_3120_p00;
assign mul_ln181_2_fu_3120_p00 = add_ln181_2_reg_4152;
assign mul_ln181_2_fu_3120_p1 = 19'd586;
assign mul_ln181_fu_2779_p0 = mul_ln181_fu_2779_p00;
assign mul_ln181_fu_2779_p00 = add_ln181_reg_3748;
assign mul_ln181_fu_2779_p1 = 19'd586;
assign mul_ln182_1_fu_2939_p0 = mul_ln182_1_fu_2939_p00;
assign mul_ln182_1_fu_2939_p00 = add_ln182_1_fu_2930_p2;
assign mul_ln182_1_fu_2939_p1 = 17'd293;
assign mul_ln182_2_fu_3145_p0 = mul_ln182_2_fu_3145_p00;
assign mul_ln182_2_fu_3145_p00 = add_ln182_2_fu_3136_p2;
assign mul_ln182_2_fu_3145_p1 = 17'd293;
assign mul_ln182_fu_2804_p0 = mul_ln182_fu_2804_p00;
assign mul_ln182_fu_2804_p00 = add_ln182_fu_2795_p2;
assign mul_ln182_fu_2804_p1 = 17'd293;
assign mul_ln183_1_fu_2962_p0 = mul_ln183_1_fu_2962_p00;
assign mul_ln183_1_fu_2962_p00 = $unsigned(sext_ln183_1_fu_2955_p1);
assign mul_ln183_1_fu_2962_p1 = 19'd586;
assign mul_ln183_2_fu_3168_p0 = mul_ln183_2_fu_3168_p00;
assign mul_ln183_2_fu_3168_p00 = $unsigned(sext_ln183_2_fu_3161_p1);
assign mul_ln183_2_fu_3168_p1 = 19'd586;
assign mul_ln183_fu_2827_p0 = mul_ln183_fu_2827_p00;
assign mul_ln183_fu_2827_p00 = $unsigned(sext_ln183_fu_2820_p1);
assign mul_ln183_fu_2827_p1 = 19'd586;
assign offset_1_fu_2525_p3 = {{tmp_62_fu_2516_p4}, {1'd1}};
assign offset_2_fu_2548_p3 = {{tmp_s_fu_2539_p4}, {2'd2}};
assign offset_3_fu_2493_p5 = {{zext_ln175_fu_2473_p1[31:3]}, {or_ln8_fu_2485_p3}};
assign offset_fu_2469_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln174_2_fu_2899_p3 = {{tmp_s_reg_3679_pp0_iter4_reg}, {2'd3}};
assign or_ln8_fu_2485_p3 = {{tmp_250_fu_2477_p3}, {2'd3}};
assign sext_ln183_1_fu_2955_p1 = $signed(add_ln183_1_reg_3890);
assign sext_ln183_2_fu_3161_p1 = $signed(add_ln183_2_reg_4157);
assign sext_ln183_fu_2820_p1 = $signed(add_ln183_reg_3763);
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
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_232_fu_3075_p1 = grp_fu_3567_p3;
assign tmp_232_fu_3075_p4 = {{tmp_232_fu_3075_p1[18:12]}};
assign tmp_233_fu_3095_p1 = grp_fu_3576_p3;
assign tmp_240_fu_3277_p1 = grp_fu_3585_p3;
assign tmp_240_fu_3277_p4 = {{tmp_240_fu_3277_p1[18:12]}};
assign tmp_241_fu_3297_p1 = grp_fu_3593_p3;
assign tmp_244_fu_3356_p1 = grp_fu_3602_p3;
assign tmp_248_fu_3365_p1 = grp_fu_3611_p3;
assign tmp_249_fu_3408_p1 = grp_fu_3619_p3;
assign tmp_250_fu_2477_p3 = ap_sig_allocacmp_tid[32'd2];
assign tmp_62_fu_2516_p4 = {{tid_reg_3635[5:1]}};
assign tmp_s_fu_2539_p4 = {{tid_reg_3635[5:2]}};
assign trunc_ln172_16_fu_2576_p1 = grp_fu_2533_p2[2:0];
assign trunc_ln172_17_fu_2580_p1 = grp_fu_2556_p2[2:0];
assign trunc_ln172_18_fu_3374_p1 = grp_fu_2505_p2[2:0];
assign trunc_ln172_fu_2572_p1 = grp_fu_2511_p2[2:0];
assign zext_ln172_1_fu_3104_p1 = tmp_234_reg_3784;
assign zext_ln172_25_fu_2598_p1 = offset_reg_3647_pp0_iter4_reg;
assign zext_ln172_26_fu_2601_p1 = offset_reg_3647_pp0_iter4_reg;
assign zext_ln172_29_fu_2846_p1 = offset_1_reg_3669_pp0_iter4_reg;
assign zext_ln172_2_fu_3346_p1 = tmp_242_reg_3839;
assign zext_ln172_30_fu_2681_p1 = offset_1_reg_3669_pp0_iter4_reg;
assign zext_ln172_33_fu_2978_p1 = offset_2_reg_3686_pp0_iter4_reg;
assign zext_ln172_34_fu_2890_p1 = offset_2_reg_3686_pp0_iter4_reg;
assign zext_ln172_3_fu_3417_p1 = tmp_251_reg_4296;
assign zext_ln172_57_fu_3011_p1 = offset_3_reg_3656_pp0_iter5_reg;
assign zext_ln172_fu_3025_p1 = tmp_226_reg_3713;
assign zext_ln174_fu_2584_p1 = tid_reg_3635_pp0_iter4_reg;
assign zext_ln175_fu_2473_p1 = offset_fu_2469_p1;
assign zext_ln176_fu_2906_p1 = or_ln174_2_fu_2899_p3;
assign zext_ln177_1_fu_2879_p1 = offset_2_reg_3686_pp0_iter4_reg;
assign zext_ln177_fu_2670_p1 = offset_1_reg_3669_pp0_iter4_reg;
assign zext_ln179_1_fu_3237_p1 = tmp_235_reg_4127;
assign zext_ln179_2_fu_3427_p1 = tmp_243_reg_4147;
assign zext_ln179_3_fu_3497_p1 = tmp_252_reg_4341;
assign zext_ln179_7_fu_3184_p1 = add_ln179_3_reg_4200;
assign zext_ln179_fu_3035_p1 = tmp_227_reg_3855;
assign zext_ln180_1_fu_3247_p1 = tmp_236_reg_3804;
assign zext_ln180_2_fu_3437_p1 = tmp_244_reg_4376;
assign zext_ln180_3_fu_3507_p1 = tmp_253_reg_4346;
assign zext_ln180_4_cast_fu_2629_p4 = {{{{1'd1}, {tmp_s_reg_3679_pp0_iter4_reg}}}, {2'd2}};
assign zext_ln180_5_cast_fu_2703_p4 = {{{{1'd1}, {tmp_s_reg_3679_pp0_iter4_reg}}}, {2'd3}};
assign zext_ln180_7_fu_3188_p1 = add_ln180_1_reg_4216;
assign zext_ln180_fu_3045_p1 = tmp_228_reg_3738;
assign zext_ln181_1_fu_3257_p1 = tmp_237_reg_3885;
assign zext_ln181_2_fu_3447_p1 = tmp_245_reg_4281;
assign zext_ln181_3_fu_3517_p1 = tmp_254_reg_4390;
assign zext_ln181_7_fu_3306_p1 = add_ln181_3_reg_4311;
assign zext_ln181_fu_3217_p1 = tmp_229_reg_3860;
assign zext_ln182_1_fu_3326_p1 = tmp_238_reg_4132;
assign zext_ln182_2_fu_3457_p1 = tmp_246_reg_4286;
assign zext_ln182_3_fu_3527_p1 = tmp_255_reg_4395;
assign zext_ln182_7_fu_3310_p1 = add_ln182_3_reg_4316;
assign zext_ln182_fu_3055_p1 = tmp_230_reg_3865;
assign zext_ln183_1_fu_3267_p1 = tmp_239_reg_4137;
assign zext_ln183_2_fu_3467_p1 = tmp_247_reg_4291;
assign zext_ln183_3_fu_3537_p1 = tmp_256_reg_4400;
assign zext_ln183_7_fu_3314_p1 = add_ln183_3_reg_4321;
assign zext_ln183_fu_3065_p1 = tmp_231_reg_3870;
assign zext_ln184_1_fu_3286_p1 = tmp_240_fu_3277_p4;
assign zext_ln184_2_fu_3477_p1 = tmp_248_reg_4381;
assign zext_ln184_3_fu_3547_p1 = tmp_257_reg_4405;
assign zext_ln184_7_fu_3318_p1 = add_ln184_3_reg_4326;
assign zext_ln184_fu_3084_p1 = tmp_232_fu_3075_p4;
assign zext_ln185_1_fu_3336_p1 = tmp_241_reg_4336;
assign zext_ln185_2_fu_3487_p1 = tmp_249_reg_4415;
assign zext_ln185_3_fu_3557_p1 = tmp_258_reg_4410;
assign zext_ln185_7_fu_3322_p1 = add_ln185_3_reg_4331;
assign zext_ln185_fu_3227_p1 = tmp_233_reg_4276;
always @ (posedge ap_clk) begin
    offset_1_reg_3669[0] <= 1'b1;
    offset_1_reg_3669_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_3669_pp0_iter2_reg[0] <= 1'b1;
    offset_1_reg_3669_pp0_iter3_reg[0] <= 1'b1;
    offset_1_reg_3669_pp0_iter4_reg[0] <= 1'b1;
    offset_2_reg_3686[1:0] <= 2'b10;
    offset_2_reg_3686_pp0_iter1_reg[1:0] <= 2'b10;
    offset_2_reg_3686_pp0_iter2_reg[1:0] <= 2'b10;
    offset_2_reg_3686_pp0_iter3_reg[1:0] <= 2'b10;
    offset_2_reg_3686_pp0_iter4_reg[1:0] <= 2'b10;
    zext_ln172_25_reg_3708[7:6] <= 2'b00;
    zext_ln172_30_reg_3778[0] <= 1'b1;
    zext_ln172_30_reg_3778[8:6] <= 3'b000;
    add_ln181_1_reg_3814[0] <= 1'b1;
    zext_ln172_29_reg_3875[0] <= 1'b1;
    zext_ln172_29_reg_3875[7:6] <= 2'b00;
    add_ln179_1_reg_3880[0] <= 1'b1;
    add_ln183_1_reg_3890[0] <= 1'b1;
    zext_ln172_34_reg_3895[1:0] <= 2'b10;
    zext_ln172_34_reg_3895[8:6] <= 3'b000;
    add_ln179_2_reg_3911[1:0] <= 2'b10;
    zext_ln176_reg_3946[1:0] <= 2'b11;
    zext_ln176_reg_3946[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln172_33_reg_4142[1:0] <= 2'b10;
    zext_ln172_33_reg_4142[7:6] <= 2'b00;
    add_ln181_2_reg_4152[1:0] <= 2'b00;
    add_ln183_2_reg_4157[1:0] <= 2'b10;
end
endmodule 