
module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_4_address1,DATA_y_4_ce1,DATA_y_4_q1,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_5_address1,DATA_y_5_ce1,DATA_y_5_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_6_address1,DATA_y_6_ce1,DATA_y_6_q1,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_7_address1,DATA_y_7_ce1,DATA_y_7_q1,grp_fu_789_p_din0,grp_fu_789_p_din1,grp_fu_789_p_dout0,grp_fu_789_p_ce,grp_fu_793_p_din0,grp_fu_793_p_din1,grp_fu_793_p_dout0,grp_fu_793_p_ce,grp_fu_797_p_din0,grp_fu_797_p_din1,grp_fu_797_p_dout0,grp_fu_797_p_ce,grp_fu_801_p_din0,grp_fu_801_p_din1,grp_fu_801_p_dout0,grp_fu_801_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
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
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [5:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [5:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [5:0] DATA_y_4_address1;
output   DATA_y_4_ce1;
input  [63:0] DATA_y_4_q1;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [5:0] DATA_y_5_address1;
output   DATA_y_5_ce1;
input  [63:0] DATA_y_5_q1;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [5:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [5:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [5:0] DATA_y_6_address1;
output   DATA_y_6_ce1;
input  [63:0] DATA_y_6_q1;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [5:0] DATA_y_7_address1;
output   DATA_y_7_ce1;
input  [63:0] DATA_y_7_q1;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] tmp_reg_3597;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_2399;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_2410;
reg   [63:0] reg_2421;
reg   [63:0] reg_2432;
reg   [63:0] reg_2443;
reg   [63:0] reg_2454;
reg   [63:0] reg_2465;
reg   [6:0] tid_1_reg_3589;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_1_reg_3589_pp0_iter1_reg;
reg   [6:0] tid_1_reg_3589_pp0_iter2_reg;
reg   [6:0] tid_1_reg_3589_pp0_iter3_reg;
reg   [0:0] tmp_reg_3597_pp0_iter1_reg;
reg   [0:0] tmp_reg_3597_pp0_iter2_reg;
reg   [0:0] tmp_reg_3597_pp0_iter3_reg;
reg   [0:0] tmp_reg_3597_pp0_iter4_reg;
wire   [5:0] offset_fu_2492_p1;
reg   [5:0] offset_reg_3601;
reg   [5:0] offset_reg_3601_pp0_iter1_reg;
reg   [5:0] offset_reg_3601_pp0_iter2_reg;
reg   [5:0] offset_reg_3601_pp0_iter3_reg;
reg   [5:0] offset_reg_3601_pp0_iter4_reg;
wire   [31:0] offset_3_fu_2516_p5;
reg   [31:0] offset_3_reg_3610;
reg   [31:0] offset_3_reg_3610_pp0_iter1_reg;
reg   [31:0] offset_3_reg_3610_pp0_iter2_reg;
reg   [31:0] offset_3_reg_3610_pp0_iter3_reg;
reg   [31:0] offset_3_reg_3610_pp0_iter4_reg;
wire   [5:0] offset_1_fu_2548_p3;
reg   [5:0] offset_1_reg_3623;
reg   [5:0] offset_1_reg_3623_pp0_iter1_reg;
reg   [5:0] offset_1_reg_3623_pp0_iter2_reg;
reg   [5:0] offset_1_reg_3623_pp0_iter3_reg;
wire   [3:0] tmp_20_fu_2562_p4;
reg   [3:0] tmp_20_reg_3633;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [3:0] tmp_20_reg_3633_pp0_iter1_reg;
reg   [3:0] tmp_20_reg_3633_pp0_iter2_reg;
reg   [3:0] tmp_20_reg_3633_pp0_iter3_reg;
wire   [5:0] offset_2_fu_2571_p3;
reg   [5:0] offset_2_reg_3638;
reg   [5:0] offset_2_reg_3638_pp0_iter1_reg;
reg   [5:0] offset_2_reg_3638_pp0_iter2_reg;
reg   [5:0] offset_2_reg_3638_pp0_iter3_reg;
reg   [5:0] offset_2_reg_3638_pp0_iter4_reg;
wire   [2:0] trunc_ln172_fu_2595_p1;
reg   [2:0] trunc_ln172_reg_3648;
reg   [2:0] trunc_ln172_reg_3648_pp0_iter2_reg;
reg   [2:0] trunc_ln172_reg_3648_pp0_iter3_reg;
reg   [2:0] trunc_ln172_reg_3648_pp0_iter4_reg;
wire   [2:0] trunc_ln172_1_fu_2599_p1;
reg   [2:0] trunc_ln172_1_reg_3652;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [2:0] trunc_ln172_1_reg_3652_pp0_iter2_reg;
reg   [2:0] trunc_ln172_1_reg_3652_pp0_iter3_reg;
reg   [2:0] trunc_ln172_1_reg_3652_pp0_iter4_reg;
wire   [2:0] trunc_ln172_2_fu_2603_p1;
reg   [2:0] trunc_ln172_2_reg_3656;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [2:0] trunc_ln172_2_reg_3656_pp0_iter2_reg;
reg   [2:0] trunc_ln172_2_reg_3656_pp0_iter3_reg;
reg   [2:0] trunc_ln172_2_reg_3656_pp0_iter4_reg;
wire   [63:0] zext_ln325_fu_2607_p1;
reg   [63:0] zext_ln325_reg_3660;
wire   [7:0] zext_ln172_1_fu_2611_p1;
reg   [7:0] zext_ln172_1_reg_3671;
reg   [7:0] zext_ln172_1_reg_3671_pp0_iter5_reg;
wire   [8:0] zext_ln172_2_fu_2614_p1;
reg   [8:0] zext_ln172_2_reg_3677;
reg   [3:0] tmp_28_reg_3683;
wire   [63:0] zext_ln328_fu_2636_p1;
reg   [63:0] zext_ln328_reg_3693;
reg   [3:0] tmp_36_reg_3704;
reg   [3:0] tmp_44_reg_3714;
reg   [63:0] DATA_y_load_reg_3719;
wire   [7:0] add_ln335_fu_2681_p2;
reg   [7:0] add_ln335_reg_3730;
wire   [7:0] zext_ln172_6_fu_2686_p1;
reg   [7:0] zext_ln172_6_reg_3735;
reg   [7:0] zext_ln172_6_reg_3735_pp0_iter5_reg;
wire   [63:0] zext_ln328_1_fu_2689_p1;
reg   [63:0] zext_ln328_1_reg_3741;
wire   [63:0] zext_ln327_fu_2700_p1;
reg   [63:0] zext_ln327_reg_3757;
wire   [64:0] zext_ln172_15_fu_2705_p1;
reg   [63:0] DATA_y_load_1_reg_3778;
reg   [6:0] tmp_33_reg_3789;
wire   [8:0] zext_ln172_7_fu_2735_p1;
reg   [8:0] zext_ln172_7_reg_3794;
wire   [7:0] add_ln335_1_fu_2738_p2;
reg   [7:0] add_ln335_1_reg_3800;
reg   [29:0] tmp_53_reg_3805;
reg   [63:0] DATA_y_load_2_reg_3810;
reg   [63:0] DATA_y_load_3_reg_3821;
reg   [5:0] tmp_30_reg_3832;
reg   [6:0] tmp_34_reg_3837;
reg   [6:0] tmp_41_reg_3842;
wire   [7:0] zext_ln172_11_fu_2784_p1;
reg   [7:0] zext_ln172_11_reg_3847;
wire   [8:0] zext_ln172_12_fu_2787_p1;
reg   [8:0] zext_ln172_12_reg_3852;
wire   [7:0] add_ln335_2_fu_2790_p2;
reg   [7:0] add_ln335_2_reg_3858;
wire   [31:0] add_ln331_3_fu_2796_p2;
reg   [31:0] add_ln331_3_reg_3863;
wire   [31:0] add_ln332_3_fu_2801_p2;
reg   [31:0] add_ln332_3_reg_3868;
wire   [31:0] add_ln333_3_fu_2806_p2;
reg   [31:0] add_ln333_3_reg_3873;
reg   [7:0] tmp_35_reg_3878;
reg   [5:0] tmp_38_reg_3883;
reg   [6:0] tmp_49_reg_3888;
wire   [64:0] zext_ln331_7_fu_2855_p1;
wire   [64:0] zext_ln332_7_fu_2859_p1;
wire   [64:0] zext_ln333_7_fu_2863_p1;
wire   [31:0] add_ln334_3_fu_2867_p2;
reg   [31:0] add_ln334_3_reg_3908;
wire   [31:0] add_ln335_3_fu_2872_p2;
reg   [31:0] add_ln335_3_reg_3913;
wire   [31:0] add_ln336_3_fu_2877_p2;
reg   [31:0] add_ln336_3_reg_3918;
wire   [31:0] add_ln337_3_fu_2882_p2;
reg   [31:0] add_ln337_3_reg_3923;
reg   [6:0] tmp_42_reg_3928;
reg   [7:0] tmp_43_reg_3933;
reg   [29:0] tmp_54_reg_3938;
reg   [29:0] tmp_55_reg_3943;
reg   [29:0] tmp_56_reg_3948;
wire   [64:0] zext_ln334_7_fu_2905_p1;
wire   [64:0] zext_ln335_7_fu_2909_p1;
wire   [64:0] zext_ln336_7_fu_2913_p1;
wire   [64:0] zext_ln337_7_fu_2917_p1;
reg   [5:0] tmp_46_reg_3973;
wire    ap_block_pp0_stage6_11001;
reg   [6:0] tmp_50_reg_3978;
reg   [29:0] tmp_57_reg_3983;
reg   [29:0] tmp_58_reg_3988;
reg   [29:0] tmp_59_reg_3993;
reg   [29:0] tmp_60_reg_3998;
wire   [8:0] add_ln331_fu_2969_p2;
reg   [8:0] add_ln331_reg_4008;
wire   [8:0] add_ln333_fu_2974_p2;
reg   [8:0] add_ln333_reg_4023;
reg   [7:0] tmp_51_reg_4083;
wire   [2:0] trunc_ln172_3_fu_2998_p1;
reg   [2:0] trunc_ln172_3_reg_4088;
reg   [6:0] tmp_29_reg_4092;
reg   [6:0] tmp_31_reg_4097;
reg   [5:0] tmp_32_reg_4102;
wire   [8:0] add_ln331_1_fu_3065_p2;
reg   [8:0] add_ln331_1_reg_4107;
wire   [8:0] add_ln333_1_fu_3070_p2;
reg   [8:0] add_ln333_1_reg_4112;
reg   [63:0] DATA_y_1_load_1_reg_4157;
reg   [63:0] DATA_y_4_load_1_reg_4173;
reg   [63:0] DATA_y_5_load_1_reg_4189;
reg   [63:0] DATA_y_2_load_1_reg_4205;
reg   [63:0] DATA_y_3_load_1_reg_4221;
reg   [63:0] DATA_y_6_load_1_reg_4237;
reg   [63:0] DATA_y_7_load_1_reg_4253;
reg   [6:0] tmp_37_reg_4264;
reg   [6:0] tmp_39_reg_4269;
reg   [5:0] tmp_40_reg_4274;
wire   [8:0] add_ln331_2_fu_3218_p2;
reg   [8:0] add_ln331_2_reg_4279;
wire   [8:0] add_ln333_2_fu_3223_p2;
reg   [8:0] add_ln333_2_reg_4284;
reg   [63:0] DATA_y_1_load_3_reg_4289;
reg   [63:0] DATA_y_4_load_3_reg_4300;
reg   [63:0] DATA_y_5_load_3_reg_4311;
reg   [63:0] DATA_y_2_load_3_reg_4322;
reg   [63:0] DATA_y_3_load_3_reg_4333;
reg   [63:0] DATA_y_6_load_3_reg_4344;
reg   [63:0] DATA_y_7_load_3_reg_4355;
reg   [6:0] tmp_45_reg_4366;
reg   [6:0] tmp_47_reg_4371;
reg   [5:0] tmp_48_reg_4376;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln172_4_fu_2921_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln172_9_fu_2931_p1;
wire   [63:0] zext_ln172_14_fu_2979_p1;
wire   [63:0] zext_ln172_16_fu_3075_p1;
wire   [63:0] zext_ln331_fu_3085_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln332_fu_3095_p1;
wire   [63:0] zext_ln333_fu_3105_p1;
wire   [63:0] zext_ln334_fu_3115_p1;
wire   [63:0] zext_ln335_fu_3125_p1;
wire   [63:0] zext_ln336_fu_3135_p1;
wire   [63:0] zext_ln337_fu_3145_p1;
wire   [63:0] zext_ln331_1_fu_3228_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln332_1_fu_3238_p1;
wire   [63:0] zext_ln333_1_fu_3248_p1;
wire   [63:0] zext_ln334_1_fu_3258_p1;
wire   [63:0] zext_ln335_1_fu_3268_p1;
wire   [63:0] zext_ln336_1_fu_3278_p1;
wire   [63:0] zext_ln337_1_fu_3288_p1;
wire   [63:0] zext_ln331_2_fu_3361_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln332_2_fu_3371_p1;
wire   [63:0] zext_ln333_2_fu_3381_p1;
wire   [63:0] zext_ln334_2_fu_3391_p1;
wire   [63:0] zext_ln335_2_fu_3401_p1;
wire   [63:0] zext_ln336_2_fu_3411_p1;
wire   [63:0] zext_ln337_2_fu_3421_p1;
wire   [63:0] zext_ln331_3_fu_3431_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln332_3_fu_3441_p1;
wire   [63:0] zext_ln333_3_fu_3451_p1;
wire   [63:0] zext_ln334_3_fu_3461_p1;
wire   [63:0] zext_ln335_3_fu_3471_p1;
wire   [63:0] zext_ln336_3_fu_3481_p1;
wire   [63:0] zext_ln337_3_fu_3491_p1;
reg   [6:0] tid_fu_162;
wire   [6:0] add_ln325_fu_2585_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_1;
reg    DATA_y_ce1_local;
reg   [5:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [5:0] DATA_y_address0_local;
reg    smem_5_we1_local;
reg    smem_5_ce1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [6:0] smem_5_address0_local;
reg    smem_4_we1_local;
reg    smem_4_ce1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    smem_3_we1_local;
reg    smem_3_ce1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_2_we1_local;
reg    smem_2_ce1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_1_we1_local;
reg    smem_1_ce1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_we1_local;
reg    smem_ce1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_6_we1_local;
reg    smem_6_ce1_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [6:0] smem_6_address0_local;
reg    DATA_y_1_ce1_local;
reg   [5:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [5:0] DATA_y_1_address0_local;
reg    DATA_y_4_ce1_local;
reg   [5:0] DATA_y_4_address1_local;
reg    DATA_y_4_ce0_local;
reg   [5:0] DATA_y_4_address0_local;
reg    DATA_y_5_ce1_local;
reg   [5:0] DATA_y_5_address1_local;
reg    DATA_y_5_ce0_local;
reg   [5:0] DATA_y_5_address0_local;
reg    DATA_y_2_ce1_local;
reg   [5:0] DATA_y_2_address1_local;
reg    DATA_y_2_ce0_local;
reg   [5:0] DATA_y_2_address0_local;
reg    DATA_y_3_ce1_local;
reg   [5:0] DATA_y_3_address1_local;
reg    DATA_y_3_ce0_local;
reg   [5:0] DATA_y_3_address0_local;
reg    DATA_y_6_ce1_local;
reg   [5:0] DATA_y_6_address1_local;
reg    DATA_y_6_ce0_local;
reg   [5:0] DATA_y_6_address0_local;
reg    DATA_y_7_ce1_local;
reg   [5:0] DATA_y_7_address1_local;
reg    DATA_y_7_ce0_local;
reg   [5:0] DATA_y_7_address0_local;
reg   [31:0] grp_fu_2349_p0;
reg   [31:0] grp_fu_2354_p0;
reg   [31:0] grp_fu_2359_p0;
wire   [0:0] tmp_52_fu_2500_p3;
wire   [31:0] zext_ln326_fu_2496_p1;
wire   [2:0] or_ln_fu_2508_p3;
wire   [31:0] grp_fu_2528_p0;
wire   [3:0] grp_fu_2528_p1;
wire   [3:0] grp_fu_2534_p1;
wire   [4:0] tmp_s_fu_2539_p4;
wire   [5:0] grp_fu_2556_p0;
wire   [3:0] grp_fu_2556_p1;
wire   [5:0] grp_fu_2579_p0;
wire   [3:0] grp_fu_2579_p1;
wire   [2:0] grp_fu_2534_p2;
wire   [2:0] grp_fu_2556_p2;
wire   [2:0] grp_fu_2579_p2;
wire   [5:0] mul_ln172_fu_2620_p0;
wire   [7:0] mul_ln172_fu_2620_p1;
wire   [12:0] mul_ln172_fu_2620_p2;
wire   [5:0] mul_ln172_1_fu_2643_p0;
wire   [7:0] mul_ln172_1_fu_2643_p1;
wire   [12:0] mul_ln172_1_fu_2643_p2;
wire   [5:0] mul_ln172_2_fu_2662_p0;
wire   [7:0] mul_ln172_2_fu_2662_p1;
wire   [12:0] mul_ln172_2_fu_2662_p2;
wire   [5:0] or_ln325_2_fu_2693_p3;
wire  signed [8:0] sext_ln335_fu_2709_p1;
wire   [8:0] mul_ln335_fu_2716_p0;
wire   [10:0] mul_ln335_fu_2716_p1;
wire   [18:0] mul_ln335_fu_2716_p2;
wire   [16:0] tmp_30_fu_2743_p1;
wire  signed [16:0] grp_fu_3501_p3;
wire   [18:0] tmp_34_fu_2752_p1;
wire  signed [18:0] grp_fu_3510_p3;
wire  signed [8:0] sext_ln335_1_fu_2761_p1;
wire   [8:0] mul_ln335_1_fu_2768_p0;
wire   [10:0] mul_ln335_1_fu_2768_p1;
wire   [18:0] mul_ln335_1_fu_2768_p2;
wire   [20:0] tmp_35_fu_2811_p1;
wire  signed [20:0] grp_fu_3519_p3;
wire   [16:0] tmp_38_fu_2820_p1;
wire  signed [16:0] grp_fu_3528_p3;
wire  signed [8:0] sext_ln335_2_fu_2832_p1;
wire   [8:0] mul_ln335_2_fu_2839_p0;
wire   [10:0] mul_ln335_2_fu_2839_p1;
wire   [18:0] mul_ln335_2_fu_2839_p2;
wire   [18:0] tmp_42_fu_2887_p1;
wire  signed [18:0] grp_fu_3537_p3;
wire   [20:0] tmp_43_fu_2896_p1;
wire  signed [20:0] grp_fu_3546_p3;
wire   [16:0] tmp_46_fu_2941_p1;
wire  signed [16:0] grp_fu_3555_p3;
wire   [18:0] tmp_50_fu_2950_p1;
wire  signed [18:0] grp_fu_3564_p3;
wire   [20:0] tmp_51_fu_2989_p1;
wire  signed [20:0] grp_fu_3573_p3;
wire   [2:0] grp_fu_2528_p2;
wire   [8:0] mul_ln331_fu_3005_p0;
wire   [10:0] mul_ln331_fu_3005_p1;
wire   [18:0] mul_ln331_fu_3005_p2;
wire   [8:0] mul_ln333_fu_3024_p0;
wire   [10:0] mul_ln333_fu_3024_p1;
wire   [18:0] mul_ln333_fu_3024_p2;
wire   [7:0] add_ln334_fu_3040_p2;
wire   [7:0] mul_ln334_fu_3049_p0;
wire   [9:0] mul_ln334_fu_3049_p1;
wire   [16:0] mul_ln334_fu_3049_p2;
wire   [8:0] mul_ln331_1_fu_3158_p0;
wire   [10:0] mul_ln331_1_fu_3158_p1;
wire   [18:0] mul_ln331_1_fu_3158_p2;
wire   [8:0] mul_ln333_1_fu_3177_p0;
wire   [10:0] mul_ln333_1_fu_3177_p1;
wire   [18:0] mul_ln333_1_fu_3177_p2;
wire   [7:0] add_ln334_1_fu_3193_p2;
wire   [7:0] mul_ln334_1_fu_3202_p0;
wire   [9:0] mul_ln334_1_fu_3202_p1;
wire   [16:0] mul_ln334_1_fu_3202_p2;
wire   [8:0] mul_ln331_2_fu_3301_p0;
wire   [10:0] mul_ln331_2_fu_3301_p1;
wire   [18:0] mul_ln331_2_fu_3301_p2;
wire   [8:0] mul_ln333_2_fu_3320_p0;
wire   [10:0] mul_ln333_2_fu_3320_p1;
wire   [18:0] mul_ln333_2_fu_3320_p2;
wire   [7:0] add_ln334_2_fu_3336_p2;
wire   [7:0] mul_ln334_2_fu_3345_p0;
wire   [9:0] mul_ln334_2_fu_3345_p1;
wire   [16:0] mul_ln334_2_fu_3345_p2;
wire   [5:0] grp_fu_3501_p0;
wire   [6:0] grp_fu_3501_p1;
wire   [8:0] grp_fu_3501_p2;
wire   [5:0] grp_fu_3510_p0;
wire   [7:0] grp_fu_3510_p1;
wire   [9:0] grp_fu_3510_p2;
wire   [5:0] grp_fu_3519_p0;
wire   [8:0] grp_fu_3519_p1;
wire   [10:0] grp_fu_3519_p2;
wire   [5:0] grp_fu_3528_p0;
wire   [6:0] grp_fu_3528_p1;
wire   [8:0] grp_fu_3528_p2;
wire   [5:0] grp_fu_3537_p0;
wire   [7:0] grp_fu_3537_p1;
wire   [9:0] grp_fu_3537_p2;
wire   [5:0] grp_fu_3546_p0;
wire   [8:0] grp_fu_3546_p1;
wire   [10:0] grp_fu_3546_p2;
wire   [5:0] grp_fu_3555_p0;
wire   [6:0] grp_fu_3555_p1;
wire   [8:0] grp_fu_3555_p2;
wire   [5:0] grp_fu_3564_p0;
wire   [7:0] grp_fu_3564_p1;
wire   [9:0] grp_fu_3564_p2;
wire   [5:0] grp_fu_3573_p0;
wire   [8:0] grp_fu_3573_p1;
wire   [10:0] grp_fu_3573_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage5;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_3501_p00;
wire   [8:0] grp_fu_3510_p00;
wire   [9:0] grp_fu_3519_p00;
wire   [7:0] grp_fu_3528_p00;
wire   [8:0] grp_fu_3537_p00;
wire   [9:0] grp_fu_3546_p00;
wire   [8:0] grp_fu_3564_p00;
wire   [9:0] grp_fu_3573_p00;
wire   [12:0] mul_ln172_1_fu_2643_p00;
wire   [12:0] mul_ln172_2_fu_2662_p00;
wire   [12:0] mul_ln172_fu_2620_p00;
wire   [18:0] mul_ln331_1_fu_3158_p00;
wire   [18:0] mul_ln331_2_fu_3301_p00;
wire   [18:0] mul_ln331_fu_3005_p00;
wire   [18:0] mul_ln333_1_fu_3177_p00;
wire   [18:0] mul_ln333_2_fu_3320_p00;
wire   [18:0] mul_ln333_fu_3024_p00;
wire   [16:0] mul_ln334_1_fu_3202_p00;
wire   [16:0] mul_ln334_2_fu_3345_p00;
wire   [16:0] mul_ln334_fu_3049_p00;
wire   [18:0] mul_ln335_1_fu_2768_p00;
wire   [18:0] mul_ln335_2_fu_2839_p00;
wire   [18:0] mul_ln335_fu_2716_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_162 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_32ns_4ns_3_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_32ns_4ns_3_36_1_U672(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2528_p0),.din1(grp_fu_2528_p1),.ce(1'b1),.dout(grp_fu_2528_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U673(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_3601),.din1(grp_fu_2534_p1),.ce(1'b1),.dout(grp_fu_2534_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U674(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2556_p0),.din1(grp_fu_2556_p1),.ce(1'b1),.dout(grp_fu_2556_p2));
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U675(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2579_p0),.din1(grp_fu_2579_p1),.ce(1'b1),.dout(grp_fu_2579_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U676(.din0(mul_ln172_fu_2620_p0),.din1(mul_ln172_fu_2620_p1),.dout(mul_ln172_fu_2620_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U677(.din0(mul_ln172_1_fu_2643_p0),.din1(mul_ln172_1_fu_2643_p1),.dout(mul_ln172_1_fu_2643_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U678(.din0(mul_ln172_2_fu_2662_p0),.din1(mul_ln172_2_fu_2662_p1),.dout(mul_ln172_2_fu_2662_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U679(.din0(mul_ln335_fu_2716_p0),.din1(mul_ln335_fu_2716_p1),.dout(mul_ln335_fu_2716_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U680(.din0(mul_ln335_1_fu_2768_p0),.din1(mul_ln335_1_fu_2768_p1),.dout(mul_ln335_1_fu_2768_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U681(.din0(mul_ln335_2_fu_2839_p0),.din1(mul_ln335_2_fu_2839_p1),.dout(mul_ln335_2_fu_2839_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U682(.din0(mul_ln331_fu_3005_p0),.din1(mul_ln331_fu_3005_p1),.dout(mul_ln331_fu_3005_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U683(.din0(mul_ln333_fu_3024_p0),.din1(mul_ln333_fu_3024_p1),.dout(mul_ln333_fu_3024_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U684(.din0(mul_ln334_fu_3049_p0),.din1(mul_ln334_fu_3049_p1),.dout(mul_ln334_fu_3049_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U685(.din0(mul_ln331_1_fu_3158_p0),.din1(mul_ln331_1_fu_3158_p1),.dout(mul_ln331_1_fu_3158_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U686(.din0(mul_ln333_1_fu_3177_p0),.din1(mul_ln333_1_fu_3177_p1),.dout(mul_ln333_1_fu_3177_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U687(.din0(mul_ln334_1_fu_3202_p0),.din1(mul_ln334_1_fu_3202_p1),.dout(mul_ln334_1_fu_3202_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U688(.din0(mul_ln331_2_fu_3301_p0),.din1(mul_ln331_2_fu_3301_p1),.dout(mul_ln331_2_fu_3301_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U689(.din0(mul_ln333_2_fu_3320_p0),.din1(mul_ln333_2_fu_3320_p1),.dout(mul_ln333_2_fu_3320_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U690(.din0(mul_ln334_2_fu_3345_p0),.din1(mul_ln334_2_fu_3345_p1),.dout(mul_ln334_2_fu_3345_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U691(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3501_p0),.din1(grp_fu_3501_p1),.din2(grp_fu_3501_p2),.ce(1'b1),.dout(grp_fu_3501_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U692(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3510_p0),.din1(grp_fu_3510_p1),.din2(grp_fu_3510_p2),.ce(1'b1),.dout(grp_fu_3510_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U693(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3519_p0),.din1(grp_fu_3519_p1),.din2(grp_fu_3519_p2),.ce(1'b1),.dout(grp_fu_3519_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U694(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3528_p0),.din1(grp_fu_3528_p1),.din2(grp_fu_3528_p2),.ce(1'b1),.dout(grp_fu_3528_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U695(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3537_p0),.din1(grp_fu_3537_p1),.din2(grp_fu_3537_p2),.ce(1'b1),.dout(grp_fu_3537_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U696(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3546_p0),.din1(grp_fu_3546_p1),.din2(grp_fu_3546_p2),.ce(1'b1),.dout(grp_fu_3546_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U697(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3555_p0),.din1(grp_fu_3555_p1),.din2(grp_fu_3555_p2),.ce(1'b1),.dout(grp_fu_3555_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U698(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3564_p0),.din1(grp_fu_3564_p1),.din2(grp_fu_3564_p2),.ce(1'b1),.dout(grp_fu_3564_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U699(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3573_p0),.din1(grp_fu_3573_p1),.din2(grp_fu_3573_p2),.ce(1'b1),.dout(grp_fu_3573_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage5) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage5) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage5) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage5) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_162 <= 7'd0;
    end else if (((tmp_reg_3597 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tid_fu_162 <= add_ln325_fu_2585_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_1_reg_4157 <= DATA_y_1_q0;
        DATA_y_2_load_1_reg_4205 <= DATA_y_2_q0;
        DATA_y_3_load_1_reg_4221 <= DATA_y_3_q0;
        DATA_y_4_load_1_reg_4173 <= DATA_y_4_q0;
        DATA_y_5_load_1_reg_4189 <= DATA_y_5_q0;
        DATA_y_6_load_1_reg_4237 <= DATA_y_6_q0;
        DATA_y_7_load_1_reg_4253 <= DATA_y_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_load_3_reg_4289 <= DATA_y_1_q0;
        DATA_y_2_load_3_reg_4322 <= DATA_y_2_q0;
        DATA_y_3_load_3_reg_4333 <= DATA_y_3_q0;
        DATA_y_4_load_3_reg_4300 <= DATA_y_4_q0;
        DATA_y_5_load_3_reg_4311 <= DATA_y_5_q0;
        DATA_y_6_load_3_reg_4344 <= DATA_y_6_q0;
        DATA_y_7_load_3_reg_4355 <= DATA_y_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_load_1_reg_3778 <= DATA_y_q0;
        DATA_y_load_reg_3719 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_load_2_reg_3810 <= DATA_y_q1;
        DATA_y_load_3_reg_3821 <= DATA_y_q0;
        tmp_53_reg_3805 <= {{grp_fu_789_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln331_1_reg_4107[8 : 1] <= add_ln331_1_fu_3065_p2[8 : 1];
        add_ln333_1_reg_4112[8 : 1] <= add_ln333_1_fu_3070_p2[8 : 1];
        add_ln335_reg_3730 <= add_ln335_fu_2681_p2;
        tmp_29_reg_4092 <= {{mul_ln331_fu_3005_p2[18:12]}};
        tmp_31_reg_4097 <= {{mul_ln333_fu_3024_p2[18:12]}};
        tmp_32_reg_4102 <= {{mul_ln334_fu_3049_p2[16:11]}};
        zext_ln172_6_reg_3735[5 : 1] <= zext_ln172_6_fu_2686_p1[5 : 1];
        zext_ln172_6_reg_3735_pp0_iter5_reg[5 : 1] <= zext_ln172_6_reg_3735[5 : 1];
        zext_ln327_reg_3757[5 : 2] <= zext_ln327_fu_2700_p1[5 : 2];
        zext_ln328_1_reg_3741[5 : 2] <= zext_ln328_1_fu_2689_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln331_2_reg_4279[8 : 2] <= add_ln331_2_fu_3218_p2[8 : 2];
        add_ln333_2_reg_4284[8 : 2] <= add_ln333_2_fu_3223_p2[8 : 2];
        add_ln335_1_reg_3800[7 : 1] <= add_ln335_1_fu_2738_p2[7 : 1];
        offset_1_reg_3623[5 : 1] <= offset_1_fu_2548_p3[5 : 1];
        offset_1_reg_3623_pp0_iter1_reg[5 : 1] <= offset_1_reg_3623[5 : 1];
        offset_1_reg_3623_pp0_iter2_reg[5 : 1] <= offset_1_reg_3623_pp0_iter1_reg[5 : 1];
        offset_1_reg_3623_pp0_iter3_reg[5 : 1] <= offset_1_reg_3623_pp0_iter2_reg[5 : 1];
        tmp_33_reg_3789 <= {{mul_ln335_fu_2716_p2[18:12]}};
        tmp_37_reg_4264 <= {{mul_ln331_1_fu_3158_p2[18:12]}};
        tmp_39_reg_4269 <= {{mul_ln333_1_fu_3177_p2[18:12]}};
        tmp_40_reg_4274 <= {{mul_ln334_1_fu_3202_p2[16:11]}};
        zext_ln172_7_reg_3794[5 : 1] <= zext_ln172_7_fu_2735_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln331_3_reg_3863 <= add_ln331_3_fu_2796_p2;
        add_ln332_3_reg_3868 <= add_ln332_3_fu_2801_p2;
        add_ln333_3_reg_3873 <= add_ln333_3_fu_2806_p2;
        add_ln335_2_reg_3858[7 : 2] <= add_ln335_2_fu_2790_p2[7 : 2];
        offset_2_reg_3638[5 : 2] <= offset_2_fu_2571_p3[5 : 2];
        offset_2_reg_3638_pp0_iter1_reg[5 : 2] <= offset_2_reg_3638[5 : 2];
        offset_2_reg_3638_pp0_iter2_reg[5 : 2] <= offset_2_reg_3638_pp0_iter1_reg[5 : 2];
        offset_2_reg_3638_pp0_iter3_reg[5 : 2] <= offset_2_reg_3638_pp0_iter2_reg[5 : 2];
        offset_2_reg_3638_pp0_iter4_reg[5 : 2] <= offset_2_reg_3638_pp0_iter3_reg[5 : 2];
        tmp_20_reg_3633 <= {{tid_1_reg_3589[5:2]}};
        tmp_20_reg_3633_pp0_iter1_reg <= tmp_20_reg_3633;
        tmp_20_reg_3633_pp0_iter2_reg <= tmp_20_reg_3633_pp0_iter1_reg;
        tmp_20_reg_3633_pp0_iter3_reg <= tmp_20_reg_3633_pp0_iter2_reg;
        tmp_30_reg_3832 <= {{tmp_30_fu_2743_p1[16:11]}};
        tmp_34_reg_3837 <= {{tmp_34_fu_2752_p1[18:12]}};
        tmp_41_reg_3842 <= {{mul_ln335_1_fu_2768_p2[18:12]}};
        tmp_45_reg_4366 <= {{mul_ln331_2_fu_3301_p2[18:12]}};
        tmp_47_reg_4371 <= {{mul_ln333_2_fu_3320_p2[18:12]}};
        tmp_48_reg_4376 <= {{mul_ln334_2_fu_3345_p2[16:11]}};
        trunc_ln172_reg_3648 <= trunc_ln172_fu_2595_p1;
        trunc_ln172_reg_3648_pp0_iter2_reg <= trunc_ln172_reg_3648;
        trunc_ln172_reg_3648_pp0_iter3_reg <= trunc_ln172_reg_3648_pp0_iter2_reg;
        trunc_ln172_reg_3648_pp0_iter4_reg <= trunc_ln172_reg_3648_pp0_iter3_reg;
        zext_ln172_11_reg_3847[5 : 2] <= zext_ln172_11_fu_2784_p1[5 : 2];
        zext_ln172_12_reg_3852[5 : 2] <= zext_ln172_12_fu_2787_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln331_reg_4008 <= add_ln331_fu_2969_p2;
        add_ln333_reg_4023 <= add_ln333_fu_2974_p2;
        offset_3_reg_3610 <= offset_3_fu_2516_p5;
        offset_3_reg_3610_pp0_iter1_reg <= offset_3_reg_3610;
        offset_3_reg_3610_pp0_iter2_reg <= offset_3_reg_3610_pp0_iter1_reg;
        offset_3_reg_3610_pp0_iter3_reg <= offset_3_reg_3610_pp0_iter2_reg;
        offset_3_reg_3610_pp0_iter4_reg <= offset_3_reg_3610_pp0_iter3_reg;
        offset_reg_3601 <= offset_fu_2492_p1;
        offset_reg_3601_pp0_iter1_reg <= offset_reg_3601;
        offset_reg_3601_pp0_iter2_reg <= offset_reg_3601_pp0_iter1_reg;
        offset_reg_3601_pp0_iter3_reg <= offset_reg_3601_pp0_iter2_reg;
        offset_reg_3601_pp0_iter4_reg <= offset_reg_3601_pp0_iter3_reg;
        tid_1_reg_3589 <= ap_sig_allocacmp_tid_1;
        tid_1_reg_3589_pp0_iter1_reg <= tid_1_reg_3589;
        tid_1_reg_3589_pp0_iter2_reg <= tid_1_reg_3589_pp0_iter1_reg;
        tid_1_reg_3589_pp0_iter3_reg <= tid_1_reg_3589_pp0_iter2_reg;
        tmp_28_reg_3683 <= {{mul_ln172_fu_2620_p2[12:9]}};
        tmp_36_reg_3704 <= {{mul_ln172_1_fu_2643_p2[12:9]}};
        tmp_44_reg_3714 <= {{mul_ln172_2_fu_2662_p2[12:9]}};
        tmp_51_reg_4083 <= {{tmp_51_fu_2989_p1[20:13]}};
        tmp_reg_3597 <= ap_sig_allocacmp_tid_1[32'd6];
        tmp_reg_3597_pp0_iter1_reg <= tmp_reg_3597;
        tmp_reg_3597_pp0_iter2_reg <= tmp_reg_3597_pp0_iter1_reg;
        tmp_reg_3597_pp0_iter3_reg <= tmp_reg_3597_pp0_iter2_reg;
        tmp_reg_3597_pp0_iter4_reg <= tmp_reg_3597_pp0_iter3_reg;
        trunc_ln172_3_reg_4088 <= trunc_ln172_3_fu_2998_p1;
        zext_ln172_1_reg_3671[5 : 0] <= zext_ln172_1_fu_2611_p1[5 : 0];
        zext_ln172_1_reg_3671_pp0_iter5_reg[5 : 0] <= zext_ln172_1_reg_3671[5 : 0];
        zext_ln172_2_reg_3677[5 : 0] <= zext_ln172_2_fu_2614_p1[5 : 0];
        zext_ln325_reg_3660[6 : 0] <= zext_ln325_fu_2607_p1[6 : 0];
        zext_ln328_reg_3693[5 : 1] <= zext_ln328_fu_2636_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln334_3_reg_3908 <= add_ln334_3_fu_2867_p2;
        add_ln335_3_reg_3913 <= add_ln335_3_fu_2872_p2;
        add_ln336_3_reg_3918 <= add_ln336_3_fu_2877_p2;
        add_ln337_3_reg_3923 <= add_ln337_3_fu_2882_p2;
        tmp_35_reg_3878 <= {{tmp_35_fu_2811_p1[20:13]}};
        tmp_38_reg_3883 <= {{tmp_38_fu_2820_p1[16:11]}};
        tmp_49_reg_3888 <= {{mul_ln335_2_fu_2839_p2[18:12]}};
        trunc_ln172_1_reg_3652 <= trunc_ln172_1_fu_2599_p1;
        trunc_ln172_1_reg_3652_pp0_iter2_reg <= trunc_ln172_1_reg_3652;
        trunc_ln172_1_reg_3652_pp0_iter3_reg <= trunc_ln172_1_reg_3652_pp0_iter2_reg;
        trunc_ln172_1_reg_3652_pp0_iter4_reg <= trunc_ln172_1_reg_3652_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_2399 <= DATA_y_1_q1;
        reg_2410 <= DATA_y_4_q1;
        reg_2421 <= DATA_y_5_q1;
        reg_2432 <= DATA_y_2_q1;
        reg_2443 <= DATA_y_3_q1;
        reg_2454 <= DATA_y_6_q1;
        reg_2465 <= DATA_y_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_42_reg_3928 <= {{tmp_42_fu_2887_p1[18:12]}};
        tmp_43_reg_3933 <= {{tmp_43_fu_2896_p1[20:13]}};
        trunc_ln172_2_reg_3656 <= trunc_ln172_2_fu_2603_p1;
        trunc_ln172_2_reg_3656_pp0_iter2_reg <= trunc_ln172_2_reg_3656;
        trunc_ln172_2_reg_3656_pp0_iter3_reg <= trunc_ln172_2_reg_3656_pp0_iter2_reg;
        trunc_ln172_2_reg_3656_pp0_iter4_reg <= trunc_ln172_2_reg_3656_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_46_reg_3973 <= {{tmp_46_fu_2941_p1[16:11]}};
        tmp_50_reg_3978 <= {{tmp_50_fu_2950_p1[18:12]}};
        tmp_60_reg_3998 <= {{grp_fu_801_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_54_reg_3938 <= {{grp_fu_789_p_dout0[64:35]}};
        tmp_55_reg_3943 <= {{grp_fu_793_p_dout0[64:35]}};
        tmp_56_reg_3948 <= {{grp_fu_797_p_dout0[64:35]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_57_reg_3983 <= {{grp_fu_789_p_dout0[64:35]}};
        tmp_58_reg_3988 <= {{grp_fu_793_p_dout0[64:35]}};
        tmp_59_reg_3993 <= {{grp_fu_797_p_dout0[64:35]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln327_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln328_reg_3693;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln328_1_reg_3741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln325_reg_3660;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_2_address0_local = zext_ln327_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address0_local = zext_ln328_reg_3693;
        end else begin
            DATA_y_2_address0_local = 'bx;
        end
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_2_address1_local = zext_ln328_1_reg_3741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address1_local = zext_ln325_reg_3660;
        end else begin
            DATA_y_2_address1_local = 'bx;
        end
    end else begin
        DATA_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_3_address0_local = zext_ln327_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address0_local = zext_ln328_reg_3693;
        end else begin
            DATA_y_3_address0_local = 'bx;
        end
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_3_address1_local = zext_ln328_1_reg_3741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address1_local = zext_ln325_reg_3660;
        end else begin
            DATA_y_3_address1_local = 'bx;
        end
    end else begin
        DATA_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_4_address0_local = zext_ln327_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_4_address0_local = zext_ln328_reg_3693;
        end else begin
            DATA_y_4_address0_local = 'bx;
        end
    end else begin
        DATA_y_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_4_address1_local = zext_ln328_1_reg_3741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_4_address1_local = zext_ln325_reg_3660;
        end else begin
            DATA_y_4_address1_local = 'bx;
        end
    end else begin
        DATA_y_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_4_ce1_local = 1'b1;
    end else begin
        DATA_y_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_5_address0_local = zext_ln327_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_5_address0_local = zext_ln328_reg_3693;
        end else begin
            DATA_y_5_address0_local = 'bx;
        end
    end else begin
        DATA_y_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_5_address1_local = zext_ln328_1_reg_3741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_5_address1_local = zext_ln325_reg_3660;
        end else begin
            DATA_y_5_address1_local = 'bx;
        end
    end else begin
        DATA_y_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_5_ce1_local = 1'b1;
    end else begin
        DATA_y_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_6_address0_local = zext_ln327_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_6_address0_local = zext_ln328_reg_3693;
        end else begin
            DATA_y_6_address0_local = 'bx;
        end
    end else begin
        DATA_y_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_6_address1_local = zext_ln328_1_reg_3741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_6_address1_local = zext_ln325_reg_3660;
        end else begin
            DATA_y_6_address1_local = 'bx;
        end
    end else begin
        DATA_y_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_6_ce1_local = 1'b1;
    end else begin
        DATA_y_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_7_address0_local = zext_ln327_reg_3757;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_7_address0_local = zext_ln328_reg_3693;
        end else begin
            DATA_y_7_address0_local = 'bx;
        end
    end else begin
        DATA_y_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_7_address1_local = zext_ln328_1_reg_3741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_7_address1_local = zext_ln325_reg_3660;
        end else begin
            DATA_y_7_address1_local = 'bx;
        end
    end else begin
        DATA_y_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_7_ce1_local = 1'b1;
    end else begin
        DATA_y_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln327_fu_2700_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln328_fu_2636_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln328_1_fu_2689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln325_fu_2607_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3597 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_3597_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter4_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_162;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_2349_p0 = zext_ln334_7_fu_2905_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_2349_p0 = zext_ln331_7_fu_2855_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_2349_p0 = zext_ln172_15_fu_2705_p1;
        end else begin
            grp_fu_2349_p0 = 'bx;
        end
    end else begin
        grp_fu_2349_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_2354_p0 = zext_ln335_7_fu_2909_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_2354_p0 = zext_ln332_7_fu_2859_p1;
        end else begin
            grp_fu_2354_p0 = 'bx;
        end
    end else begin
        grp_fu_2354_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_2359_p0 = zext_ln336_7_fu_2913_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_2359_p0 = zext_ln333_7_fu_2863_p1;
        end else begin
            grp_fu_2359_p0 = 'bx;
        end
    end else begin
        grp_fu_2359_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_1_address0_local = zext_ln332_3_fu_3441_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln333_3_fu_3451_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln331_3_fu_3431_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln337_3_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln336_3_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln335_3_fu_3471_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln334_3_fu_3461_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7)))) begin
        smem_1_address0_local = zext_ln332_2_fu_3371_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln333_2_fu_3381_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln331_2_fu_3361_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln337_2_fu_3421_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln336_2_fu_3411_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln335_2_fu_3401_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln334_2_fu_3391_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_1_address0_local = zext_ln332_1_fu_3238_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln333_1_fu_3248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln331_1_fu_3228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln337_1_fu_3288_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln336_1_fu_3278_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln335_1_fu_3268_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln334_1_fu_3258_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7)))) begin
        smem_1_address0_local = zext_ln332_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln333_fu_3105_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln331_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln337_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln336_fu_3135_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln335_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln334_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_16_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_14_fu_2979_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln172_9_fu_2931_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_1_d0_local = DATA_y_4_load_3_reg_4300;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_5_load_3_reg_4311;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_1_load_3_reg_4289;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_7_load_3_reg_4355;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_6_load_3_reg_4344;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_3_load_3_reg_4333;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_d0_local = DATA_y_2_load_3_reg_4322;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_1_d0_local = DATA_y_4_load_1_reg_4173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_5_load_1_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_1_load_1_reg_4157;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_7_load_1_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_6_load_1_reg_4237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_3_load_1_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_2_load_1_reg_4205;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))))) begin
        smem_1_d0_local = reg_2410;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2421;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2399;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2465;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2454;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2443;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_d0_local = reg_2432;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_load_3_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_load_2_reg_3810;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d0_local = DATA_y_load_1_reg_3778;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0== ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_2_address0_local = zext_ln333_3_fu_3451_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln334_3_fu_3461_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln332_3_fu_3441_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln331_3_fu_3431_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln337_3_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln336_3_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln335_3_fu_3471_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7)))) begin
        smem_2_address0_local = zext_ln333_2_fu_3381_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln334_2_fu_3391_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln332_2_fu_3371_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln331_2_fu_3361_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln337_2_fu_3421_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln336_2_fu_3411_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln335_2_fu_3401_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_2_address0_local = zext_ln333_1_fu_3248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln334_1_fu_3258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln332_1_fu_3238_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln331_1_fu_3228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln337_1_fu_3288_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln336_1_fu_3278_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln335_1_fu_3268_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7)))) begin
        smem_2_address0_local = zext_ln333_fu_3105_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln334_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln332_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln331_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln337_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln336_fu_3135_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln335_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_16_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_14_fu_2979_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln172_9_fu_2931_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_2_d0_local = DATA_y_5_load_3_reg_4311;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_2_load_3_reg_4322;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_4_load_3_reg_4300;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_1_load_3_reg_4289;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_7_load_3_reg_4355;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_6_load_3_reg_4344;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_d0_local = DATA_y_3_load_3_reg_4333;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_2_d0_local = DATA_y_5_load_1_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_2_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_4_load_1_reg_4173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_1_load_1_reg_4157;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_7_load_1_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_6_load_1_reg_4237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_3_load_1_reg_4221;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))))) begin
        smem_2_d0_local = reg_2421;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2432;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2410;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2399;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2465;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2454;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_d0_local = reg_2443;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_load_3_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_load_2_reg_3810;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d0_local = DATA_y_load_1_reg_3778;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0== ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_3_address0_local = zext_ln334_3_fu_3461_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln335_3_fu_3471_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln333_3_fu_3451_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln332_3_fu_3441_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln331_3_fu_3431_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln337_3_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln336_3_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7)))) begin
        smem_3_address0_local = zext_ln334_2_fu_3391_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln335_2_fu_3401_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln333_2_fu_3381_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln332_2_fu_3371_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln331_2_fu_3361_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln337_2_fu_3421_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln336_2_fu_3411_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_3_address0_local = zext_ln334_1_fu_3258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln335_1_fu_3268_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln333_1_fu_3248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln332_1_fu_3238_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln331_1_fu_3228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln337_1_fu_3288_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln336_1_fu_3278_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7)))) begin
        smem_3_address0_local = zext_ln334_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln335_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln333_fu_3105_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln332_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln331_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln337_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln336_fu_3135_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_16_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_14_fu_2979_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln172_9_fu_2931_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_3_d0_local = DATA_y_2_load_3_reg_4322;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_y_3_load_3_reg_4333;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_y_5_load_3_reg_4311;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_y_4_load_3_reg_4300;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_y_1_load_3_reg_4289;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_y_7_load_3_reg_4355;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_d0_local = DATA_y_6_load_3_reg_4344;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_3_d0_local = DATA_y_2_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_3_load_1_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_5_load_1_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_4_load_1_reg_4173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_1_load_1_reg_4157;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_7_load_1_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_6_load_1_reg_4237;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))))) begin
        smem_3_d0_local = reg_2432;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2443;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2421;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2410;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2399;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2465;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_d0_local = reg_2454;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_load_3_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_load_2_reg_3810;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_d0_local = DATA_y_load_1_reg_3778;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0== ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_4_address0_local = zext_ln335_3_fu_3471_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln336_3_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln334_3_fu_3461_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln333_3_fu_3451_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln332_3_fu_3441_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln331_3_fu_3431_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_address0_local = zext_ln337_3_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7)))) begin
        smem_4_address0_local = zext_ln335_2_fu_3401_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln336_2_fu_3411_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln334_2_fu_3391_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln333_2_fu_3381_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln332_2_fu_3371_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln331_2_fu_3361_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_4_address0_local = zext_ln337_2_fu_3421_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_4_address0_local = zext_ln335_1_fu_3268_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln336_1_fu_3278_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln334_1_fu_3258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln333_1_fu_3248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln332_1_fu_3238_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln331_1_fu_3228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln337_1_fu_3288_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7)))) begin
        smem_4_address0_local = zext_ln335_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln336_fu_3135_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln334_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln333_fu_3105_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln332_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln331_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln337_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_16_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_14_fu_2979_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_address0_local = zext_ln172_9_fu_2931_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_4_d0_local = DATA_y_3_load_3_reg_4333;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_y_6_load_3_reg_4344;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_y_2_load_3_reg_4322;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_y_5_load_3_reg_4311;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_y_4_load_3_reg_4300;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_y_1_load_3_reg_4289;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_4_d0_local = DATA_y_7_load_3_reg_4355;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_4_d0_local = DATA_y_3_load_1_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_6_load_1_reg_4237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_2_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_5_load_1_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_4_load_1_reg_4173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_1_load_1_reg_4157;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_7_load_1_reg_4253;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))))) begin
        smem_4_d0_local = reg_2443;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2454;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2432;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2421;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2410;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2399;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_d0_local = reg_2465;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_load_3_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_load_2_reg_3810;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_d0_local = DATA_y_load_1_reg_3778;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0== ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_5_address0_local = zext_ln336_3_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln337_3_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln335_3_fu_3471_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln334_3_fu_3461_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln333_3_fu_3451_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln332_3_fu_3441_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_address0_local = zext_ln331_3_fu_3431_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7)))) begin
        smem_5_address0_local = zext_ln336_2_fu_3411_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln337_2_fu_3421_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln335_2_fu_3401_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln334_2_fu_3391_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln333_2_fu_3381_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln332_2_fu_3371_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_5_address0_local = zext_ln331_2_fu_3361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_5_address0_local = zext_ln336_1_fu_3278_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln337_1_fu_3288_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln335_1_fu_3268_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln334_1_fu_3258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln333_1_fu_3248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln332_1_fu_3238_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln331_1_fu_3228_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7)))) begin
        smem_5_address0_local = zext_ln336_fu_3135_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln337_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln335_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln334_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln333_fu_3105_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln332_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln331_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_16_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_14_fu_2979_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_address0_local = zext_ln172_9_fu_2931_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_5_d0_local = DATA_y_6_load_3_reg_4344;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_y_7_load_3_reg_4355;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_y_3_load_3_reg_4333;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_y_2_load_3_reg_4322;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_y_5_load_3_reg_4311;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_y_4_load_3_reg_4300;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_5_d0_local = DATA_y_1_load_3_reg_4289;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_5_d0_local = DATA_y_6_load_1_reg_4237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_y_7_load_1_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_y_3_load_1_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_y_2_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_y_5_load_1_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_y_4_load_1_reg_4173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_y_1_load_1_reg_4157;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))))) begin
        smem_5_d0_local = reg_2454;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2465;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2443;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2432;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2421;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2410;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_d0_local = reg_2399;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_load_3_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_load_2_reg_3810;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_d0_local = DATA_y_load_1_reg_3778;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0== ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_6_address0_local = zext_ln337_3_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln331_3_fu_3431_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln336_3_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln335_3_fu_3471_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln334_3_fu_3461_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln333_3_fu_3451_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_address0_local = zext_ln332_3_fu_3441_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7)))) begin
        smem_6_address0_local = zext_ln337_2_fu_3421_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln331_2_fu_3361_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln336_2_fu_3411_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln335_2_fu_3401_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln334_2_fu_3391_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln333_2_fu_3381_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_6_address0_local = zext_ln332_2_fu_3371_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_6_address0_local = zext_ln337_1_fu_3288_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln331_1_fu_3228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln336_1_fu_3278_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln335_1_fu_3268_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln334_1_fu_3258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln333_1_fu_3248_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln332_1_fu_3238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7)))) begin
        smem_6_address0_local = zext_ln337_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln331_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln336_fu_3135_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln335_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln334_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln333_fu_3105_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln332_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_16_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_14_fu_2979_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_address0_local = zext_ln172_9_fu_2931_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_6_d0_local = DATA_y_7_load_3_reg_4355;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_y_1_load_3_reg_4289;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_y_6_load_3_reg_4344;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_y_3_load_3_reg_4333;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_y_2_load_3_reg_4322;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_y_5_load_3_reg_4311;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_6_d0_local = DATA_y_4_load_3_reg_4300;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_6_d0_local = DATA_y_7_load_1_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_y_1_load_1_reg_4157;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_y_6_load_1_reg_4237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_y_3_load_1_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_y_2_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_y_5_load_1_reg_4189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_y_4_load_1_reg_4173;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))))) begin
        smem_6_d0_local = reg_2465;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d0_local = reg_2399;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d0_local = reg_2454;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d0_local = reg_2443;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d0_local = reg_2432;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d0_local = reg_2421;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_d0_local = reg_2410;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_load_3_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_load_2_reg_3810;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_6_d0_local = DATA_y_load_1_reg_3778;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088== 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2)& (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5== 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5== 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7)))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_address0_local = zext_ln331_3_fu_3431_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln332_3_fu_3441_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln337_3_fu_3491_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln336_3_fu_3481_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln335_3_fu_3471_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln334_3_fu_3461_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln333_3_fu_3451_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7)))) begin
        smem_address0_local = zext_ln331_2_fu_3361_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln332_2_fu_3371_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln337_2_fu_3421_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln336_2_fu_3411_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln335_2_fu_3401_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln334_2_fu_3391_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln333_2_fu_3381_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_address0_local = zext_ln331_1_fu_3228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln332_1_fu_3238_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln337_1_fu_3288_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln336_1_fu_3278_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln335_1_fu_3268_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln334_1_fu_3258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln333_1_fu_3248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7)))) begin
        smem_address0_local = zext_ln331_fu_3085_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln332_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln337_fu_3145_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln336_fu_3135_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln335_fu_3125_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln334_fu_3115_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln333_fu_3105_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_16_fu_3075_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_14_fu_2979_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln172_9_fu_2931_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001)& (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg== 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001)& (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3)& (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7)))) begin
        smem_d0_local = DATA_y_1_load_3_reg_4289;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_4_load_3_reg_4300;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_7_load_3_reg_4355;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_6_load_3_reg_4344;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_3_load_3_reg_4333;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_2_load_3_reg_4322;
    end else if (((1'b0 == ap_block_pp0_stage5) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_d0_local = DATA_y_5_load_3_reg_4311;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7)))) begin
        smem_d0_local = DATA_y_1_load_1_reg_4157;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_4_load_1_reg_4173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_7_load_1_reg_4253;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_6_load_1_reg_4237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_3_load_1_reg_4221;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_2_load_1_reg_4205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_5_load_1_reg_4189;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))))) begin
        smem_d0_local = reg_2399;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2410;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2465;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2454;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2443;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2432;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_d0_local = reg_2421;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_load_3_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_load_2_reg_3810;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_y_load_1_reg_3778;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & ((trunc_ln172_3_reg_4088 == 3'd6) | (trunc_ln172_3_reg_4088 == 3'd7))) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln172_3_reg_4088 == 3'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd6) | (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0== ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg== 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd6) | (trunc_ln172_1_reg_3652_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_2_reg_3656_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln172_reg_3648_pp0_iter4_reg == 3'd6) | (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd7))) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_3_reg_4088 == 3'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln172_reg_3648_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage5) & (ap_idle_pp0_0to3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
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
assign DATA_y_4_address0 = DATA_y_4_address0_local;
assign DATA_y_4_address1 = DATA_y_4_address1_local;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_ce1 = DATA_y_4_ce1_local;
assign DATA_y_5_address0 = DATA_y_5_address0_local;
assign DATA_y_5_address1 = DATA_y_5_address1_local;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_ce1 = DATA_y_5_ce1_local;
assign DATA_y_6_address0 = DATA_y_6_address0_local;
assign DATA_y_6_address1 = DATA_y_6_address1_local;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_ce1 = DATA_y_6_ce1_local;
assign DATA_y_7_address0 = DATA_y_7_address0_local;
assign DATA_y_7_address1 = DATA_y_7_address1_local;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_ce1 = DATA_y_7_ce1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln325_fu_2585_p2 = (tid_1_reg_3589 + 7'd4);
assign add_ln331_1_fu_3065_p2 = ($signed(zext_ln172_7_reg_3794) + $signed(9'd288));
assign add_ln331_2_fu_3218_p2 = ($signed(zext_ln172_12_reg_3852) + $signed(9'd288));
assign add_ln331_3_fu_2796_p2 = (offset_3_reg_3610_pp0_iter4_reg + 32'd288);
assign add_ln331_fu_2969_p2 = ($signed(zext_ln172_2_reg_3677) + $signed(9'd288));
assign add_ln332_3_fu_2801_p2 = (offset_3_reg_3610_pp0_iter4_reg + 32'd72);
assign add_ln333_1_fu_3070_p2 = ($signed(zext_ln172_7_reg_3794) + $signed(9'd360));
assign add_ln333_2_fu_3223_p2 = ($signed(zext_ln172_12_reg_3852) + $signed(9'd360));
assign add_ln333_3_fu_2806_p2 = (offset_3_reg_3610_pp0_iter4_reg + 32'd360);
assign add_ln333_fu_2974_p2 = ($signed(zext_ln172_2_reg_3677) + $signed(9'd360));
assign add_ln334_1_fu_3193_p2 = ($signed(zext_ln172_6_reg_3735_pp0_iter5_reg) + $signed(8'd144));
assign add_ln334_2_fu_3336_p2 = ($signed(zext_ln172_11_reg_3847) + $signed(8'd144));
assign add_ln334_3_fu_2867_p2 = (offset_3_reg_3610_pp0_iter4_reg + 32'd144);
assign add_ln334_fu_3040_p2 = ($signed(zext_ln172_1_reg_3671_pp0_iter5_reg) + $signed(8'd144));
assign add_ln335_1_fu_2738_p2 = ($signed(zext_ln172_6_reg_3735) + $signed(8'd176));
assign add_ln335_2_fu_2790_p2 = ($signed(zext_ln172_11_fu_2784_p1) + $signed(8'd176));
assign add_ln335_3_fu_2872_p2 = (offset_3_reg_3610_pp0_iter4_reg + 32'd432);
assign add_ln335_fu_2681_p2 = ($signed(zext_ln172_1_reg_3671) + $signed(8'd176));
assign add_ln336_3_fu_2877_p2 = (offset_3_reg_3610_pp0_iter4_reg + 32'd216);
assign add_ln337_3_fu_2882_p2 = (offset_3_reg_3610_pp0_iter4_reg + 32'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign grp_fu_2528_p0 = {{zext_ln326_fu_2496_p1[31:3]}, {or_ln_fu_2508_p3}};
assign grp_fu_2528_p1 = 32'd7;
assign grp_fu_2534_p1 = 6'd7;
assign grp_fu_2556_p0 = {{tmp_s_fu_2539_p4}, {1'd1}};
assign grp_fu_2556_p1 = 6'd7;
assign grp_fu_2579_p0 = {{tmp_20_fu_2562_p4}, {2'd2}};
assign grp_fu_2579_p1 = 6'd7;
assign grp_fu_3501_p0 = grp_fu_3501_p00;
assign grp_fu_3501_p00 = offset_reg_3601_pp0_iter3_reg;
assign grp_fu_3501_p1 = 8'd72;
assign grp_fu_3501_p2 = 17'd293;
assign grp_fu_3510_p0 = grp_fu_3510_p00;
assign grp_fu_3510_p00 = offset_reg_3601_pp0_iter3_reg;
assign grp_fu_3510_p1 = 9'd216;
assign grp_fu_3510_p2 = 19'd586;
assign grp_fu_3519_p0 = grp_fu_3519_p00;
assign grp_fu_3519_p00 = offset_reg_3601_pp0_iter4_reg;
assign grp_fu_3519_p1 = 10'd504;
assign grp_fu_3519_p2 = 21'd1171;
assign grp_fu_3528_p0 = grp_fu_3528_p00;
assign grp_fu_3528_p00 = offset_1_reg_3623_pp0_iter3_reg;
assign grp_fu_3528_p1 = 8'd72;
assign grp_fu_3528_p2 = 17'd293;
assign grp_fu_3537_p0 = grp_fu_3537_p00;
assign grp_fu_3537_p00 = offset_1_reg_3623_pp0_iter3_reg;
assign grp_fu_3537_p1 = 9'd216;
assign grp_fu_3537_p2 = 19'd586;
assign grp_fu_3546_p0 = grp_fu_3546_p00;
assign grp_fu_3546_p00 = offset_1_reg_3623_pp0_iter3_reg;
assign grp_fu_3546_p1 = 10'd504;
assign grp_fu_3546_p2 = 21'd1171;
assign grp_fu_3555_p0 = zext_ln172_11_fu_2784_p1;
assign grp_fu_3555_p1 = 8'd72;
assign grp_fu_3555_p2 = 17'd293;
assign grp_fu_3564_p0 = grp_fu_3564_p00;
assign grp_fu_3564_p00 = offset_2_reg_3638_pp0_iter3_reg;
assign grp_fu_3564_p1 = 9'd216;
assign grp_fu_3564_p2 = 19'd586;
assign grp_fu_3573_p0 = grp_fu_3573_p00;
assign grp_fu_3573_p00 = offset_2_reg_3638_pp0_iter4_reg;
assign grp_fu_3573_p1 = 10'd504;
assign grp_fu_3573_p2 = 21'd1171;
assign grp_fu_789_p_ce = 1'b1;
assign grp_fu_789_p_din0 = grp_fu_2349_p0;
assign grp_fu_789_p_din1 = 65'd4908534053;
assign grp_fu_793_p_ce = 1'b1;
assign grp_fu_793_p_din0 = grp_fu_2354_p0;
assign grp_fu_793_p_din1 = 65'd4908534053;
assign grp_fu_797_p_ce = 1'b1;
assign grp_fu_797_p_din0 = grp_fu_2359_p0;
assign grp_fu_797_p_din1 = 65'd4908534053;
assign grp_fu_801_p_ce = 1'b1;
assign grp_fu_801_p_din0 = zext_ln337_7_fu_2917_p1;
assign grp_fu_801_p_din1 = 65'd4908534053;
assign mul_ln172_1_fu_2643_p0 = mul_ln172_1_fu_2643_p00;
assign mul_ln172_1_fu_2643_p00 = offset_1_reg_3623_pp0_iter3_reg;
assign mul_ln172_1_fu_2643_p1 = 13'd74;
assign mul_ln172_2_fu_2662_p0 = mul_ln172_2_fu_2662_p00;
assign mul_ln172_2_fu_2662_p00 = offset_2_reg_3638_pp0_iter3_reg;
assign mul_ln172_2_fu_2662_p1 = 13'd74;
assign mul_ln172_fu_2620_p0 = mul_ln172_fu_2620_p00;
assign mul_ln172_fu_2620_p00 = offset_reg_3601_pp0_iter3_reg;
assign mul_ln172_fu_2620_p1 = 13'd74;
assign mul_ln331_1_fu_3158_p0 = mul_ln331_1_fu_3158_p00;
assign mul_ln331_1_fu_3158_p00 = add_ln331_1_reg_4107;
assign mul_ln331_1_fu_3158_p1 = 19'd586;
assign mul_ln331_2_fu_3301_p0 = mul_ln331_2_fu_3301_p00;
assign mul_ln331_2_fu_3301_p00 = add_ln331_2_reg_4279;
assign mul_ln331_2_fu_3301_p1 = 19'd586;
assign mul_ln331_fu_3005_p0 = mul_ln331_fu_3005_p00;
assign mul_ln331_fu_3005_p00 = add_ln331_reg_4008;
assign mul_ln331_fu_3005_p1 = 19'd586;
assign mul_ln333_1_fu_3177_p0 = mul_ln333_1_fu_3177_p00;
assign mul_ln333_1_fu_3177_p00 = add_ln333_1_reg_4112;
assign mul_ln333_1_fu_3177_p1 = 19'd586;
assign mul_ln333_2_fu_3320_p0 = mul_ln333_2_fu_3320_p00;
assign mul_ln333_2_fu_3320_p00 = add_ln333_2_reg_4284;
assign mul_ln333_2_fu_3320_p1 = 19'd586;
assign mul_ln333_fu_3024_p0 = mul_ln333_fu_3024_p00;
assign mul_ln333_fu_3024_p00 = add_ln333_reg_4023;
assign mul_ln333_fu_3024_p1 = 19'd586;
assign mul_ln334_1_fu_3202_p0 = mul_ln334_1_fu_3202_p00;
assign mul_ln334_1_fu_3202_p00 = add_ln334_1_fu_3193_p2;
assign mul_ln334_1_fu_3202_p1 = 17'd293;
assign mul_ln334_2_fu_3345_p0 = mul_ln334_2_fu_3345_p00;
assign mul_ln334_2_fu_3345_p00 = add_ln334_2_fu_3336_p2;
assign mul_ln334_2_fu_3345_p1 = 17'd293;
assign mul_ln334_fu_3049_p0 = mul_ln334_fu_3049_p00;
assign mul_ln334_fu_3049_p00 = add_ln334_fu_3040_p2;
assign mul_ln334_fu_3049_p1 = 17'd293;
assign mul_ln335_1_fu_2768_p0 = mul_ln335_1_fu_2768_p00;
assign mul_ln335_1_fu_2768_p00 = $unsigned(sext_ln335_1_fu_2761_p1);
assign mul_ln335_1_fu_2768_p1 = 19'd586;
assign mul_ln335_2_fu_2839_p0 = mul_ln335_2_fu_2839_p00;
assign mul_ln335_2_fu_2839_p00 = $unsigned(sext_ln335_2_fu_2832_p1);
assign mul_ln335_2_fu_2839_p1 = 19'd586;
assign mul_ln335_fu_2716_p0 = mul_ln335_fu_2716_p00;
assign mul_ln335_fu_2716_p00 = $unsigned(sext_ln335_fu_2709_p1);
assign mul_ln335_fu_2716_p1 = 19'd586;
assign offset_1_fu_2548_p3 = {{tmp_s_fu_2539_p4}, {1'd1}};
assign offset_2_fu_2571_p3 = {{tmp_20_fu_2562_p4}, {2'd2}};
assign offset_3_fu_2516_p5 = {{zext_ln326_fu_2496_p1[31:3]}, {or_ln_fu_2508_p3}};
assign offset_fu_2492_p1 = ap_sig_allocacmp_tid_1[5:0];
assign or_ln325_2_fu_2693_p3 = {{tmp_20_reg_3633_pp0_iter3_reg}, {2'd3}};
assign or_ln_fu_2508_p3 = {{tmp_52_fu_2500_p3}, {2'd3}};
assign sext_ln335_1_fu_2761_p1 = $signed(add_ln335_1_reg_3800);
assign sext_ln335_2_fu_2832_p1 = $signed(add_ln335_2_reg_3858);
assign sext_ln335_fu_2709_p1 = $signed(add_ln335_reg_3730);
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = zext_ln172_4_fu_2921_p1;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = DATA_y_load_reg_3719;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = zext_ln172_4_fu_2921_p1;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_d1 = DATA_y_load_reg_3719;
assign smem_2_we0 = smem_2_we0_local;
assign smem_2_we1 = smem_2_we1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = zext_ln172_4_fu_2921_p1;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_d1 = DATA_y_load_reg_3719;
assign smem_3_we0 = smem_3_we0_local;
assign smem_3_we1 = smem_3_we1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = zext_ln172_4_fu_2921_p1;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_d1 = DATA_y_load_reg_3719;
assign smem_4_we0 = smem_4_we0_local;
assign smem_4_we1 = smem_4_we1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = zext_ln172_4_fu_2921_p1;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_d1 = DATA_y_load_reg_3719;
assign smem_5_we0 = smem_5_we0_local;
assign smem_5_we1 = smem_5_we1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = zext_ln172_4_fu_2921_p1;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_d1 = DATA_y_load_reg_3719;
assign smem_6_we0 = smem_6_we0_local;
assign smem_6_we1 = smem_6_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = zext_ln172_4_fu_2921_p1;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = DATA_y_load_reg_3719;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_20_fu_2562_p4 = {{tid_1_reg_3589[5:2]}};
assign tmp_30_fu_2743_p1 = grp_fu_3501_p3;
assign tmp_34_fu_2752_p1 = grp_fu_3510_p3;
assign tmp_35_fu_2811_p1 = grp_fu_3519_p3;
assign tmp_38_fu_2820_p1 = grp_fu_3528_p3;
assign tmp_42_fu_2887_p1 = grp_fu_3537_p3;
assign tmp_43_fu_2896_p1 = grp_fu_3546_p3;
assign tmp_46_fu_2941_p1 = grp_fu_3555_p3;
assign tmp_50_fu_2950_p1 = grp_fu_3564_p3;
assign tmp_51_fu_2989_p1 = grp_fu_3573_p3;
assign tmp_52_fu_2500_p3 = ap_sig_allocacmp_tid_1[32'd2];
assign tmp_s_fu_2539_p4 = {{tid_1_reg_3589[5:1]}};
assign trunc_ln172_1_fu_2599_p1 = grp_fu_2556_p2[2:0];
assign trunc_ln172_2_fu_2603_p1 = grp_fu_2579_p2[2:0];
assign trunc_ln172_3_fu_2998_p1 = grp_fu_2528_p2[2:0];
assign trunc_ln172_fu_2595_p1 = grp_fu_2534_p2[2:0];
assign zext_ln172_11_fu_2784_p1 = offset_2_reg_3638_pp0_iter3_reg;
assign zext_ln172_12_fu_2787_p1 = offset_2_reg_3638_pp0_iter3_reg;
assign zext_ln172_14_fu_2979_p1 = tmp_44_reg_3714;
assign zext_ln172_15_fu_2705_p1 = offset_3_reg_3610_pp0_iter4_reg;
assign zext_ln172_16_fu_3075_p1 = tmp_53_reg_3805;
assign zext_ln172_1_fu_2611_p1 = offset_reg_3601_pp0_iter3_reg;
assign zext_ln172_2_fu_2614_p1 = offset_reg_3601_pp0_iter3_reg;
assign zext_ln172_4_fu_2921_p1 = tmp_28_reg_3683;
assign zext_ln172_6_fu_2686_p1 = offset_1_reg_3623_pp0_iter3_reg;
assign zext_ln172_7_fu_2735_p1 = offset_1_reg_3623_pp0_iter3_reg;
assign zext_ln172_9_fu_2931_p1 = tmp_36_reg_3704;
assign zext_ln325_fu_2607_p1 = tid_1_reg_3589_pp0_iter3_reg;
assign zext_ln326_fu_2496_p1 = offset_fu_2492_p1;
assign zext_ln327_fu_2700_p1 = or_ln325_2_fu_2693_p3;
assign zext_ln328_1_fu_2689_p1 = offset_2_reg_3638_pp0_iter3_reg;
assign zext_ln328_fu_2636_p1 = offset_1_reg_3623_pp0_iter3_reg;
assign zext_ln331_1_fu_3228_p1 = tmp_37_reg_4264;
assign zext_ln331_2_fu_3361_p1 = tmp_45_reg_4366;
assign zext_ln331_3_fu_3431_p1 = tmp_54_reg_3938;
assign zext_ln331_7_fu_2855_p1 = add_ln331_3_reg_3863;
assign zext_ln331_fu_3085_p1 = tmp_29_reg_4092;
assign zext_ln332_1_fu_3238_p1 = tmp_38_reg_3883;
assign zext_ln332_2_fu_3371_p1 = tmp_46_reg_3973;
assign zext_ln332_3_fu_3441_p1 = tmp_55_reg_3943;
assign zext_ln332_7_fu_2859_p1 = add_ln332_3_reg_3868;
assign zext_ln332_fu_3095_p1 = tmp_30_reg_3832;
assign zext_ln333_1_fu_3248_p1 = tmp_39_reg_4269;
assign zext_ln333_2_fu_3381_p1 = tmp_47_reg_4371;
assign zext_ln333_3_fu_3451_p1 = tmp_56_reg_3948;
assign zext_ln333_7_fu_2863_p1 = add_ln333_3_reg_3873;
assign zext_ln333_fu_3105_p1 = tmp_31_reg_4097;
assign zext_ln334_1_fu_3258_p1 = tmp_40_reg_4274;
assign zext_ln334_2_fu_3391_p1 = tmp_48_reg_4376;
assign zext_ln334_3_fu_3461_p1 = tmp_57_reg_3983;
assign zext_ln334_7_fu_2905_p1 = add_ln334_3_reg_3908;
assign zext_ln334_fu_3115_p1 = tmp_32_reg_4102;
assign zext_ln335_1_fu_3268_p1 = tmp_41_reg_3842;
assign zext_ln335_2_fu_3401_p1 = tmp_49_reg_3888;
assign zext_ln335_3_fu_3471_p1 = tmp_58_reg_3988;
assign zext_ln335_7_fu_2909_p1 = add_ln335_3_reg_3913;
assign zext_ln335_fu_3125_p1 = tmp_33_reg_3789;
assign zext_ln336_1_fu_3278_p1 = tmp_42_reg_3928;
assign zext_ln336_2_fu_3411_p1 = tmp_50_reg_3978;
assign zext_ln336_3_fu_3481_p1 = tmp_59_reg_3993;
assign zext_ln336_7_fu_2913_p1 = add_ln336_3_reg_3918;
assign zext_ln336_fu_3135_p1 = tmp_34_reg_3837;
assign zext_ln337_1_fu_3288_p1 = tmp_43_reg_3933;
assign zext_ln337_2_fu_3421_p1 = tmp_51_reg_4083;
assign zext_ln337_3_fu_3491_p1 = tmp_60_reg_3998;
assign zext_ln337_7_fu_2917_p1 = add_ln337_3_reg_3923;
assign zext_ln337_fu_3145_p1 = tmp_35_reg_3878;
always @ (posedge ap_clk) begin
    offset_1_reg_3623[0] <= 1'b1;
    offset_1_reg_3623_pp0_iter1_reg[0] <= 1'b1;
    offset_1_reg_3623_pp0_iter2_reg[0] <= 1'b1;
    offset_1_reg_3623_pp0_iter3_reg[0] <= 1'b1;
    offset_2_reg_3638[1:0] <= 2'b10;
    offset_2_reg_3638_pp0_iter1_reg[1:0] <= 2'b10;
    offset_2_reg_3638_pp0_iter2_reg[1:0] <= 2'b10;
    offset_2_reg_3638_pp0_iter3_reg[1:0] <= 2'b10;
    offset_2_reg_3638_pp0_iter4_reg[1:0] <= 2'b10;
    zext_ln325_reg_3660[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_1_reg_3671[7:6] <= 2'b00;
    zext_ln172_1_reg_3671_pp0_iter5_reg[7:6] <= 2'b00;
    zext_ln172_2_reg_3677[8:6] <= 3'b000;
    zext_ln328_reg_3693[0] <= 1'b1;
    zext_ln328_reg_3693[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln172_6_reg_3735[0] <= 1'b1;
    zext_ln172_6_reg_3735[7:6] <= 2'b00;
    zext_ln172_6_reg_3735_pp0_iter5_reg[0] <= 1'b1;
    zext_ln172_6_reg_3735_pp0_iter5_reg[7:6] <= 2'b00;
    zext_ln328_1_reg_3741[1:0] <= 2'b10;
    zext_ln328_1_reg_3741[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln327_reg_3757[1:0] <= 2'b11;
    zext_ln327_reg_3757[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln172_7_reg_3794[0] <= 1'b1;
    zext_ln172_7_reg_3794[8:6] <= 3'b000;
    add_ln335_1_reg_3800[0] <= 1'b1;
    zext_ln172_11_reg_3847[1:0] <= 2'b10;
    zext_ln172_11_reg_3847[7:6] <= 2'b00;
    zext_ln172_12_reg_3852[1:0] <= 2'b10;
    zext_ln172_12_reg_3852[8:6] <= 3'b000;
    add_ln335_2_reg_3858[1:0] <= 2'b10;
    add_ln331_1_reg_4107[0] <= 1'b1;
    add_ln333_1_reg_4112[0] <= 1'b1;
    add_ln331_2_reg_4279[1:0] <= 2'b10;
    add_ln333_2_reg_4284[1:0] <= 2'b10;
end
endmodule 
