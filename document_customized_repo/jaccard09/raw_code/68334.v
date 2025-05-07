module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_14_address1,sol_14_ce1,sol_14_we1,sol_14_d1,p_cast40,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_13_address1,sol_13_ce1,sol_13_we1,sol_13_d1,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_12_address1,sol_12_ce1,sol_12_we1,sol_12_d1,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_11_address1,sol_11_ce1,sol_11_we1,sol_11_d1,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_10_address1,sol_10_ce1,sol_10_we1,sol_10_d1,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_9_address1,sol_9_ce1,sol_9_we1,sol_9_d1,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_8_address1,sol_8_ce1,sol_8_we1,sol_8_d1,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_15_address1,sol_15_ce1,sol_15_we1,sol_15_d1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_1_load_8,orig_2_load_8,orig_3_load_8,orig_4_load_8,orig_5_load_8,orig_6_load_8,orig_7_load_8,orig_8_load_8,orig_9_load_8,orig_1_load_4,orig_2_load_4,orig_3_load_4,orig_4_load_4,orig_5_load_4,orig_6_load_4,orig_7_load_4,orig_8_load_4,orig_9_load_4,orig_1_load_5,orig_2_load_5,orig_3_load_5,orig_4_load_5,orig_5_load_5,orig_6_load_5,orig_7_load_5,orig_8_load_5,orig_9_load_5,orig_1_load_6,orig_2_load_6,orig_3_load_6,orig_4_load_6,orig_5_load_6,orig_6_load_6,orig_7_load_6,orig_8_load_6,orig_9_load_6,orig_1_load_7,orig_2_load_7,orig_3_load_7,orig_4_load_7,orig_5_load_7,orig_6_load_7,orig_7_load_7,orig_8_load_7,orig_9_load_7,orig_10_load_4,orig_0_load_5,C_load,C_load_1,orig_10_load_5,orig_10_load_6,orig_10_load_7,orig_10_load_8,orig_11_load_4,orig_11_load_5,orig_11_load_6,orig_11_load_7,orig_11_load_8,orig_12_load_4,orig_12_load_5,orig_12_load_6,orig_12_load_7,orig_12_load_8,orig_13_load_4,orig_13_load_5,orig_13_load_6,orig_13_load_7,orig_13_load_8,orig_14_load_4,orig_14_load_5,orig_14_load_6,orig_14_load_7,orig_14_load_8,orig_15_load_5,orig_15_load_6,orig_15_load_7,orig_15_load_8,orig_15_load_9,tmp_33,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,empty_7,empty,tmp_34,tmp_35,orig_1_address0,orig_1_ce0,orig_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [9:0] sol_14_address1;
output   sol_14_ce1;
output   sol_14_we1;
output  [31:0] sol_14_d1;
input  [9:0] p_cast40;
output  [9:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [9:0] sol_13_address1;
output   sol_13_ce1;
output   sol_13_we1;
output  [31:0] sol_13_d1;
output  [9:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [9:0] sol_12_address1;
output   sol_12_ce1;
output   sol_12_we1;
output  [31:0] sol_12_d1;
output  [9:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [9:0] sol_11_address1;
output   sol_11_ce1;
output   sol_11_we1;
output  [31:0] sol_11_d1;
output  [9:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [9:0] sol_10_address1;
output   sol_10_ce1;
output   sol_10_we1;
output  [31:0] sol_10_d1;
output  [9:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [9:0] sol_9_address1;
output   sol_9_ce1;
output   sol_9_we1;
output  [31:0] sol_9_d1;
output  [9:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [9:0] sol_8_address1;
output   sol_8_ce1;
output   sol_8_we1;
output  [31:0] sol_8_d1;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_15_address0;
output   sol_15_ce0;
output   sol_15_we0;
output  [31:0] sol_15_d0;
output  [9:0] sol_15_address1;
output   sol_15_ce1;
output   sol_15_we1;
output  [31:0] sol_15_d1;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [31:0] orig_1_load_8;
input  [31:0] orig_2_load_8;
input  [31:0] orig_3_load_8;
input  [31:0] orig_4_load_8;
input  [31:0] orig_5_load_8;
input  [31:0] orig_6_load_8;
input  [31:0] orig_7_load_8;
input  [31:0] orig_8_load_8;
input  [31:0] orig_9_load_8;
input  [31:0] orig_1_load_4;
input  [31:0] orig_2_load_4;
input  [31:0] orig_3_load_4;
input  [31:0] orig_4_load_4;
input  [31:0] orig_5_load_4;
input  [31:0] orig_6_load_4;
input  [31:0] orig_7_load_4;
input  [31:0] orig_8_load_4;
input  [31:0] orig_9_load_4;
input  [31:0] orig_1_load_5;
input  [31:0] orig_2_load_5;
input  [31:0] orig_3_load_5;
input  [31:0] orig_4_load_5;
input  [31:0] orig_5_load_5;
input  [31:0] orig_6_load_5;
input  [31:0] orig_7_load_5;
input  [31:0] orig_8_load_5;
input  [31:0] orig_9_load_5;
input  [31:0] orig_1_load_6;
input  [31:0] orig_2_load_6;
input  [31:0] orig_3_load_6;
input  [31:0] orig_4_load_6;
input  [31:0] orig_5_load_6;
input  [31:0] orig_6_load_6;
input  [31:0] orig_7_load_6;
input  [31:0] orig_8_load_6;
input  [31:0] orig_9_load_6;
input  [31:0] orig_1_load_7;
input  [31:0] orig_2_load_7;
input  [31:0] orig_3_load_7;
input  [31:0] orig_4_load_7;
input  [31:0] orig_5_load_7;
input  [31:0] orig_6_load_7;
input  [31:0] orig_7_load_7;
input  [31:0] orig_8_load_7;
input  [31:0] orig_9_load_7;
input  [31:0] orig_10_load_4;
input  [31:0] orig_0_load_5;
input  [31:0] C_load;
input  [31:0] C_load_1;
input  [31:0] orig_10_load_5;
input  [31:0] orig_10_load_6;
input  [31:0] orig_10_load_7;
input  [31:0] orig_10_load_8;
input  [31:0] orig_11_load_4;
input  [31:0] orig_11_load_5;
input  [31:0] orig_11_load_6;
input  [31:0] orig_11_load_7;
input  [31:0] orig_11_load_8;
input  [31:0] orig_12_load_4;
input  [31:0] orig_12_load_5;
input  [31:0] orig_12_load_6;
input  [31:0] orig_12_load_7;
input  [31:0] orig_12_load_8;
input  [31:0] orig_13_load_4;
input  [31:0] orig_13_load_5;
input  [31:0] orig_13_load_6;
input  [31:0] orig_13_load_7;
input  [31:0] orig_13_load_8;
input  [31:0] orig_14_load_4;
input  [31:0] orig_14_load_5;
input  [31:0] orig_14_load_6;
input  [31:0] orig_14_load_7;
input  [31:0] orig_14_load_8;
input  [31:0] orig_15_load_5;
input  [31:0] orig_15_load_6;
input  [31:0] orig_15_load_7;
input  [31:0] orig_15_load_8;
input  [31:0] orig_15_load_9;
input  [9:0] tmp_33;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [9:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [9:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [9:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [9:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [9:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [9:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [9:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [9:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [9:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [9:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [9:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [9:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [9:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [9:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [9:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
input  [9:0] empty_7;
input  [9:0] empty;
input  [9:0] tmp_34;
input  [9:0] tmp_35;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln38_reg_4240;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_1553_p2;
reg   [31:0] reg_1616;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_1561_p2;
reg   [31:0] reg_1620;
wire   [31:0] grp_fu_1573_p21;
reg   [31:0] reg_1624;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] p_cast40_cast_fu_1628_p1;
reg   [63:0] p_cast40_cast_reg_4060;
reg   [4:0] k_1_reg_4079;
wire   [3:0] trunc_ln10_fu_1640_p1;
reg   [3:0] trunc_ln10_reg_4086;
reg   [3:0] trunc_ln10_reg_4086_pp0_iter1_reg;
reg   [3:0] trunc_ln10_reg_4086_pp0_iter2_reg;
wire  signed [31:0] sum0_fu_1644_p21;
reg  signed [31:0] sum0_reg_4122;
wire  signed [31:0] sum0_1_fu_1688_p21;
reg  signed [31:0] sum0_1_reg_4128;
wire   [31:0] tmp_5_fu_1732_p21;
reg   [31:0] tmp_5_reg_4135;
wire  signed [31:0] sum0_2_fu_1776_p21;
reg  signed [31:0] sum0_2_reg_4140;
wire  signed [31:0] sum0_3_fu_1820_p21;
reg  signed [31:0] sum0_3_reg_4147;
wire  signed [31:0] sum0_4_fu_1864_p21;
reg  signed [31:0] sum0_4_reg_4154;
wire  signed [31:0] sum0_5_fu_1908_p21;
reg  signed [31:0] sum0_5_reg_4161;
wire  signed [31:0] sum0_6_fu_1952_p21;
reg  signed [31:0] sum0_6_reg_4168;
reg  signed [31:0] sum0_6_reg_4168_pp0_iter1_reg;
wire   [31:0] tmp_1_fu_2030_p21;
reg   [31:0] tmp_1_reg_4175;
wire   [31:0] add_ln48_fu_2132_p2;
reg   [31:0] add_ln48_reg_4180;
wire   [31:0] add_ln48_3_fu_2142_p2;
reg   [31:0] add_ln48_3_reg_4185;
wire   [31:0] add_ln48_6_fu_2250_p2;
reg   [31:0] add_ln48_6_reg_4190;
wire   [31:0] add_ln48_9_fu_2260_p2;
reg   [31:0] add_ln48_9_reg_4195;
wire   [31:0] add_ln48_12_fu_2368_p2;
reg   [31:0] add_ln48_12_reg_4200;
wire   [31:0] add_ln48_15_fu_2378_p2;
reg   [31:0] add_ln48_15_reg_4205;
wire   [31:0] add_ln48_18_fu_2486_p2;
reg   [31:0] add_ln48_18_reg_4210;
wire   [31:0] add_ln48_21_fu_2496_p2;
reg   [31:0] add_ln48_21_reg_4215;
wire   [31:0] add_ln48_24_fu_2604_p2;
reg   [31:0] add_ln48_24_reg_4220;
wire   [31:0] add_ln48_27_fu_2614_p2;
reg   [31:0] add_ln48_27_reg_4225;
wire   [31:0] add_ln48_30_fu_2722_p2;
reg   [31:0] add_ln48_30_reg_4230;
wire   [31:0] add_ln48_33_fu_2732_p2;
reg   [31:0] add_ln48_33_reg_4235;
wire   [0:0] icmp_ln38_fu_2743_p2;
reg   [0:0] icmp_ln38_reg_4240_pp0_iter1_reg;
reg   [0:0] icmp_ln38_reg_4240_pp0_iter2_reg;
wire   [31:0] tmp_26_fu_2783_p21;
reg   [31:0] tmp_26_reg_4244;
wire   [31:0] tmp_27_fu_2817_p21;
reg   [31:0] tmp_27_reg_4249;
wire   [9:0] zext_ln44_fu_2864_p1;
reg   [9:0] zext_ln44_reg_4254;
wire   [63:0] zext_ln44_1_fu_2873_p1;
reg   [63:0] zext_ln44_1_reg_4262;
reg   [63:0] zext_ln44_1_reg_4262_pp0_iter1_reg;
reg   [63:0] zext_ln44_1_reg_4262_pp0_iter2_reg;
wire   [31:0] add_ln48_36_fu_2886_p2;
reg   [31:0] add_ln48_36_reg_4320;
wire  signed [31:0] add_ln48_4_fu_2895_p2;
reg  signed [31:0] add_ln48_4_reg_4325;
wire   [31:0] grp_fu_1549_p2;
reg   [31:0] mul_ln48_reg_4330;
wire  signed [31:0] add_ln48_10_fu_2939_p2;
reg  signed [31:0] add_ln48_10_reg_4335;
reg   [31:0] mul_ln48_2_reg_4340;
wire  signed [31:0] add_ln48_16_fu_2983_p2;
reg  signed [31:0] add_ln48_16_reg_4345;
wire   [31:0] grp_fu_1557_p2;
reg   [31:0] mul_ln48_4_reg_4350;
wire  signed [31:0] add_ln48_22_fu_3027_p2;
reg  signed [31:0] add_ln48_22_reg_4355;
reg   [31:0] mul_ln48_6_reg_4360;
wire  signed [31:0] add_ln48_28_fu_3071_p2;
reg  signed [31:0] add_ln48_28_reg_4365;
wire   [31:0] grp_fu_1565_p2;
reg   [31:0] mul_ln48_8_reg_4370;
wire  signed [31:0] add_ln48_34_fu_3115_p2;
reg  signed [31:0] add_ln48_34_reg_4375;
wire   [31:0] grp_fu_1569_p2;
reg   [31:0] mul_ln48_10_reg_4380;
wire   [31:0] tmp_24_fu_3120_p21;
reg   [31:0] tmp_24_reg_4385;
reg   [31:0] orig_0_load_reg_4390;
reg   [31:0] orig_8_load_reg_4396;
reg   [31:0] orig_9_load_reg_4401;
reg   [31:0] orig_10_load_reg_4407;
reg   [31:0] orig_11_load_reg_4413;
reg   [31:0] orig_12_load_reg_4419;
reg   [31:0] orig_13_load_reg_4425;
reg   [31:0] orig_14_load_reg_4431;
reg   [31:0] orig_15_load_reg_4437;
reg   [0:0] tmp_39_reg_4488;
wire  signed [31:0] sum0_7_fu_3189_p21;
reg  signed [31:0] sum0_7_reg_4493;
wire   [31:0] add_ln48_39_fu_3228_p2;
reg   [31:0] add_ln48_39_reg_4498;
reg   [31:0] mul_ln48_12_reg_4503;
reg   [31:0] mul_ln48_12_reg_4503_pp0_iter2_reg;
reg   [31:0] tmp_31_reg_4553;
reg   [31:0] mul_ln48_1_reg_4558;
reg   [31:0] mul_ln48_5_reg_4563;
reg   [31:0] mul_ln48_9_reg_4568;
reg   [31:0] mul_ln48_11_reg_4573;
wire  signed [31:0] add_ln48_40_fu_3254_p2;
reg  signed [31:0] add_ln48_40_reg_4578;
wire   [9:0] add_ln40_fu_3259_p2;
reg   [9:0] add_ln40_reg_4583;
reg   [9:0] sol_14_addr_reg_4638;
reg   [9:0] sol_13_addr_reg_4643;
reg   [9:0] sol_12_addr_reg_4648;
reg   [9:0] sol_11_addr_reg_4653;
reg   [9:0] sol_10_addr_reg_4658;
reg   [9:0] sol_9_addr_reg_4663;
reg   [9:0] sol_8_addr_reg_4668;
reg   [9:0] sol_7_addr_reg_4673;
reg   [9:0] sol_15_addr_reg_4678;
wire   [31:0] tmp_32_fu_3385_p21;
reg   [31:0] tmp_32_reg_4728;
wire   [31:0] add_ln48_42_fu_3420_p2;
reg   [31:0] add_ln48_42_reg_4733;
wire   [31:0] tmp_28_fu_3425_p21;
reg   [31:0] tmp_28_reg_4738;
wire   [31:0] add_ln48_45_fu_3472_p2;
reg   [31:0] add_ln48_45_reg_4743;
reg   [31:0] mul_ln48_14_reg_4748;
reg   [31:0] mul_ln48_14_reg_4748_pp0_iter3_reg;
wire  signed [31:0] add_ln48_46_fu_3496_p2;
reg  signed [31:0] add_ln48_46_reg_4753;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln43_fu_3158_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_3237_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln42_fu_3267_p1;
wire   [63:0] zext_ln44_3_fu_3288_p1;
wire   [63:0] zext_ln40_fu_3373_p1;
reg    ap_predicate_pred996_state11;
reg    ap_predicate_pred1002_state11;
reg    ap_predicate_pred1008_state11;
reg    ap_predicate_pred1014_state11;
reg    ap_predicate_pred1020_state11;
reg    ap_predicate_pred1026_state11;
reg    ap_predicate_pred1032_state11;
reg    ap_predicate_pred1038_state11;
reg    ap_predicate_pred1058_state11;
reg   [4:0] k_fu_284;
wire   [4:0] add_ln44_3_fu_3171_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_k_1;
reg    orig_0_ce1_local;
reg   [9:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [9:0] orig_0_address0_local;
reg    orig_8_ce1_local;
reg   [9:0] orig_8_address1_local;
reg    orig_8_ce0_local;
reg   [9:0] orig_8_address0_local;
reg    orig_9_ce1_local;
reg   [9:0] orig_9_address1_local;
reg    orig_9_ce0_local;
reg   [9:0] orig_9_address0_local;
reg    orig_10_ce1_local;
reg   [9:0] orig_10_address1_local;
reg    orig_10_ce0_local;
reg   [9:0] orig_10_address0_local;
reg    orig_11_ce1_local;
reg   [9:0] orig_11_address1_local;
reg    orig_11_ce0_local;
reg   [9:0] orig_11_address0_local;
reg    orig_12_ce1_local;
reg   [9:0] orig_12_address1_local;
reg    orig_12_ce0_local;
reg   [9:0] orig_12_address0_local;
reg    orig_13_ce1_local;
reg   [9:0] orig_13_address1_local;
reg    orig_13_ce0_local;
reg   [9:0] orig_13_address0_local;
reg    orig_14_ce1_local;
reg   [9:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [9:0] orig_14_address0_local;
reg    orig_15_ce1_local;
reg   [9:0] orig_15_address1_local;
reg    orig_15_ce0_local;
reg   [9:0] orig_15_address0_local;
reg    orig_1_ce0_local;
reg    sol_8_we0_local;
reg   [31:0] sol_8_d0_local;
wire   [31:0] add_ln48_5_fu_3293_p2;
reg    sol_8_ce0_local;
reg   [9:0] sol_8_address0_local;
wire   [31:0] add_ln48_11_fu_3306_p2;
wire   [31:0] add_ln48_17_fu_3320_p2;
wire   [31:0] add_ln48_23_fu_3333_p2;
wire   [31:0] add_ln48_29_fu_3347_p2;
wire   [31:0] add_ln48_35_fu_3360_p2;
reg    sol_8_we1_local;
reg    ap_predicate_pred1182_state8;
wire   [31:0] add_ln48_41_fu_3478_p2;
reg    sol_8_ce1_local;
wire   [31:0] add_ln48_47_fu_3501_p2;
reg    sol_9_we0_local;
reg   [31:0] sol_9_d0_local;
reg    sol_9_ce0_local;
reg   [9:0] sol_9_address0_local;
reg    sol_9_we1_local;
reg    ap_predicate_pred1220_state8;
reg    sol_9_ce1_local;
reg    sol_10_we0_local;
reg   [31:0] sol_10_d0_local;
reg    sol_10_ce0_local;
reg   [9:0] sol_10_address0_local;
reg    sol_10_we1_local;
reg    ap_predicate_pred1237_state8;
reg    sol_10_ce1_local;
reg    sol_11_we0_local;
reg   [31:0] sol_11_d0_local;
reg    sol_11_ce0_local;
reg   [9:0] sol_11_address0_local;
reg    sol_11_we1_local;
reg    ap_predicate_pred1254_state8;
reg    sol_11_ce1_local;
reg    sol_12_we0_local;
reg   [31:0] sol_12_d0_local;
reg    sol_12_ce0_local;
reg   [9:0] sol_12_address0_local;
reg    sol_12_we1_local;
reg    ap_predicate_pred1271_state8;
reg    sol_12_ce1_local;
reg    sol_13_we0_local;
reg   [31:0] sol_13_d0_local;
reg    sol_13_ce0_local;
reg   [9:0] sol_13_address0_local;
reg    sol_13_we1_local;
reg    ap_predicate_pred1288_state8;
reg    sol_13_ce1_local;
reg    sol_7_we0_local;
reg   [31:0] sol_7_d0_local;
reg    sol_7_ce0_local;
reg   [9:0] sol_7_address0_local;
reg    ap_predicate_pred1314_state8;
reg    sol_6_we0_local;
reg   [31:0] sol_6_d0_local;
reg    sol_6_ce0_local;
reg    sol_5_we0_local;
reg   [31:0] sol_5_d0_local;
reg    sol_5_ce0_local;
reg    sol_4_we0_local;
reg   [31:0] sol_4_d0_local;
reg    sol_4_ce0_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
reg    sol_3_ce0_local;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_14_we0_local;
reg   [31:0] sol_14_d0_local;
reg    sol_14_ce0_local;
reg   [9:0] sol_14_address0_local;
reg    sol_14_we1_local;
reg    ap_predicate_pred1381_state8;
reg    sol_14_ce1_local;
reg    sol_15_we1_local;
reg    ap_predicate_pred1392_state8;
reg    sol_15_ce1_local;
reg    sol_15_we0_local;
reg    sol_15_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg  signed [31:0] grp_fu_1549_p0;
reg  signed [31:0] grp_fu_1549_p1;
reg  signed [31:0] grp_fu_1553_p0;
reg  signed [31:0] grp_fu_1553_p1;
reg  signed [31:0] grp_fu_1557_p0;
reg  signed [31:0] grp_fu_1557_p1;
reg  signed [31:0] grp_fu_1561_p0;
reg  signed [31:0] grp_fu_1561_p1;
reg  signed [31:0] grp_fu_1565_p0;
reg  signed [31:0] grp_fu_1565_p1;
reg  signed [31:0] grp_fu_1569_p0;
reg  signed [31:0] grp_fu_1569_p1;
wire   [31:0] grp_fu_1573_p19;
reg   [3:0] grp_fu_1573_p20;
wire   [31:0] sum0_fu_1644_p19;
wire   [31:0] sum0_1_fu_1688_p19;
wire   [31:0] tmp_5_fu_1732_p19;
wire   [31:0] sum0_2_fu_1776_p19;
wire   [31:0] sum0_3_fu_1820_p19;
wire   [31:0] sum0_4_fu_1864_p19;
wire   [31:0] sum0_5_fu_1908_p19;
wire   [31:0] sum0_6_fu_1952_p19;
wire   [31:0] tmp_fu_1996_p19;
wire   [31:0] tmp_1_fu_2030_p19;
wire   [31:0] tmp_2_fu_2064_p19;
wire   [31:0] tmp_3_fu_2098_p19;
wire   [31:0] tmp_fu_1996_p21;
wire   [31:0] tmp_2_fu_2064_p21;
wire   [31:0] add_ln48_2_fu_2138_p2;
wire   [31:0] tmp_3_fu_2098_p21;
wire   [31:0] tmp_7_fu_2148_p19;
wire   [31:0] tmp_8_fu_2182_p19;
wire   [31:0] tmp_9_fu_2216_p19;
wire   [31:0] tmp_7_fu_2148_p21;
wire   [31:0] tmp_9_fu_2216_p21;
wire   [31:0] add_ln48_8_fu_2255_p2;
wire   [31:0] tmp_8_fu_2182_p21;
wire   [31:0] tmp_4_fu_2266_p19;
wire   [31:0] tmp_10_fu_2300_p19;
wire   [31:0] tmp_11_fu_2334_p19;
wire   [31:0] tmp_4_fu_2266_p21;
wire   [31:0] tmp_11_fu_2334_p21;
wire   [31:0] add_ln48_14_fu_2373_p2;
wire   [31:0] tmp_10_fu_2300_p21;
wire   [31:0] tmp_13_fu_2384_p19;
wire   [31:0] tmp_14_fu_2418_p19;
wire   [31:0] tmp_15_fu_2452_p19;
wire   [31:0] tmp_13_fu_2384_p21;
wire   [31:0] tmp_15_fu_2452_p21;
wire   [31:0] add_ln48_20_fu_2491_p2;
wire   [31:0] tmp_14_fu_2418_p21;
wire   [31:0] tmp_17_fu_2502_p19;
wire   [31:0] tmp_18_fu_2536_p19;
wire   [31:0] tmp_19_fu_2570_p19;
wire   [31:0] tmp_17_fu_2502_p21;
wire   [31:0] tmp_19_fu_2570_p21;
wire   [31:0] add_ln48_26_fu_2609_p2;
wire   [31:0] tmp_18_fu_2536_p21;
wire   [31:0] tmp_21_fu_2620_p19;
wire   [31:0] tmp_22_fu_2654_p19;
wire   [31:0] tmp_23_fu_2688_p19;
wire   [31:0] tmp_21_fu_2620_p21;
wire   [31:0] tmp_23_fu_2688_p21;
wire   [31:0] add_ln48_32_fu_2727_p2;
wire   [31:0] tmp_22_fu_2654_p21;
wire   [4:0] add_ln44_fu_2738_p2;
wire   [31:0] tmp_25_fu_2749_p19;
wire   [31:0] tmp_26_fu_2783_p19;
wire   [31:0] tmp_27_fu_2817_p19;
wire   [4:0] add_ln44_1_fu_2851_p2;
wire   [0:0] tmp_38_fu_2856_p3;
wire   [9:0] add_ln44_2_fu_2868_p2;
wire   [31:0] tmp_25_fu_2749_p21;
wire   [31:0] add_ln48_1_fu_2891_p2;
wire   [31:0] tmp_6_fu_2900_p19;
wire   [31:0] tmp_6_fu_2900_p21;
wire   [31:0] add_ln48_7_fu_2934_p2;
wire   [31:0] tmp_s_fu_2944_p19;
wire   [31:0] tmp_s_fu_2944_p21;
wire   [31:0] add_ln48_13_fu_2978_p2;
wire   [31:0] tmp_12_fu_2988_p19;
wire   [31:0] tmp_12_fu_2988_p21;
wire   [31:0] add_ln48_19_fu_3022_p2;
wire   [31:0] tmp_16_fu_3032_p19;
wire   [31:0] tmp_16_fu_3032_p21;
wire   [31:0] add_ln48_25_fu_3066_p2;
wire   [31:0] tmp_20_fu_3076_p19;
wire   [31:0] tmp_20_fu_3076_p21;
wire   [31:0] add_ln48_31_fu_3110_p2;
wire   [31:0] tmp_24_fu_3120_p19;
wire   [9:0] add_ln43_fu_3154_p2;
wire   [31:0] sum0_7_fu_3189_p19;
wire   [31:0] add_ln48_38_fu_3223_p2;
wire   [9:0] add_ln41_fu_3233_p2;
wire   [31:0] add_ln48_37_fu_3250_p2;
wire   [9:0] add_ln42_fu_3263_p2;
wire   [9:0] zext_ln44_2_fu_3280_p1;
wire   [9:0] add_ln44_4_fu_3283_p2;
wire   [31:0] tmp_32_fu_3385_p19;
wire   [31:0] tmp_28_fu_3425_p19;
wire   [31:0] add_ln48_44_fu_3468_p2;
wire   [31:0] add_ln48_43_fu_3492_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_938;
wire  signed [3:0] grp_fu_1573_p1;
wire   [3:0] grp_fu_1573_p3;
wire   [3:0] grp_fu_1573_p5;
wire   [3:0] grp_fu_1573_p7;
wire   [3:0] grp_fu_1573_p9;
wire   [3:0] grp_fu_1573_p11;
wire   [3:0] grp_fu_1573_p13;
wire   [3:0] grp_fu_1573_p15;
wire  signed [3:0] grp_fu_1573_p17;
wire   [3:0] sum0_fu_1644_p1;
wire   [3:0] sum0_fu_1644_p3;
wire   [3:0] sum0_fu_1644_p5;
wire   [3:0] sum0_fu_1644_p7;
wire   [3:0] sum0_fu_1644_p9;
wire   [3:0] sum0_fu_1644_p11;
wire   [3:0] sum0_fu_1644_p13;
wire  signed [3:0] sum0_fu_1644_p15;
wire  signed [3:0] sum0_fu_1644_p17;
wire   [3:0] sum0_1_fu_1688_p1;
wire   [3:0] sum0_1_fu_1688_p3;
wire   [3:0] sum0_1_fu_1688_p5;
wire   [3:0] sum0_1_fu_1688_p7;
wire   [3:0] sum0_1_fu_1688_p9;
wire   [3:0] sum0_1_fu_1688_p11;
wire   [3:0] sum0_1_fu_1688_p13;
wire  signed [3:0] sum0_1_fu_1688_p15;
wire  signed [3:0] sum0_1_fu_1688_p17;
wire   [3:0] tmp_5_fu_1732_p1;
wire   [3:0] tmp_5_fu_1732_p3;
wire   [3:0] tmp_5_fu_1732_p5;
wire   [3:0] tmp_5_fu_1732_p7;
wire   [3:0] tmp_5_fu_1732_p9;
wire   [3:0] tmp_5_fu_1732_p11;
wire   [3:0] tmp_5_fu_1732_p13;
wire  signed [3:0] tmp_5_fu_1732_p15;
wire  signed [3:0] tmp_5_fu_1732_p17;
wire   [3:0] sum0_2_fu_1776_p1;
wire   [3:0] sum0_2_fu_1776_p3;
wire   [3:0] sum0_2_fu_1776_p5;
wire   [3:0] sum0_2_fu_1776_p7;
wire   [3:0] sum0_2_fu_1776_p9;
wire   [3:0] sum0_2_fu_1776_p11;
wire   [3:0] sum0_2_fu_1776_p13;
wire  signed [3:0] sum0_2_fu_1776_p15;
wire  signed [3:0] sum0_2_fu_1776_p17;
wire   [3:0] sum0_3_fu_1820_p1;
wire   [3:0] sum0_3_fu_1820_p3;
wire   [3:0] sum0_3_fu_1820_p5;
wire   [3:0] sum0_3_fu_1820_p7;
wire   [3:0] sum0_3_fu_1820_p9;
wire   [3:0] sum0_3_fu_1820_p11;
wire   [3:0] sum0_3_fu_1820_p13;
wire  signed [3:0] sum0_3_fu_1820_p15;
wire  signed [3:0] sum0_3_fu_1820_p17;
wire   [3:0] sum0_4_fu_1864_p1;
wire   [3:0] sum0_4_fu_1864_p3;
wire   [3:0] sum0_4_fu_1864_p5;
wire   [3:0] sum0_4_fu_1864_p7;
wire   [3:0] sum0_4_fu_1864_p9;
wire   [3:0] sum0_4_fu_1864_p11;
wire   [3:0] sum0_4_fu_1864_p13;
wire  signed [3:0] sum0_4_fu_1864_p15;
wire  signed [3:0] sum0_4_fu_1864_p17;
wire   [3:0] sum0_5_fu_1908_p1;
wire   [3:0] sum0_5_fu_1908_p3;
wire   [3:0] sum0_5_fu_1908_p5;
wire   [3:0] sum0_5_fu_1908_p7;
wire   [3:0] sum0_5_fu_1908_p9;
wire   [3:0] sum0_5_fu_1908_p11;
wire   [3:0] sum0_5_fu_1908_p13;
wire  signed [3:0] sum0_5_fu_1908_p15;
wire  signed [3:0] sum0_5_fu_1908_p17;
wire   [3:0] sum0_6_fu_1952_p1;
wire   [3:0] sum0_6_fu_1952_p3;
wire   [3:0] sum0_6_fu_1952_p5;
wire   [3:0] sum0_6_fu_1952_p7;
wire   [3:0] sum0_6_fu_1952_p9;
wire   [3:0] sum0_6_fu_1952_p11;
wire   [3:0] sum0_6_fu_1952_p13;
wire  signed [3:0] sum0_6_fu_1952_p15;
wire  signed [3:0] sum0_6_fu_1952_p17;
wire   [3:0] tmp_fu_1996_p1;
wire   [3:0] tmp_fu_1996_p3;
wire   [3:0] tmp_fu_1996_p5;
wire   [3:0] tmp_fu_1996_p7;
wire   [3:0] tmp_fu_1996_p9;
wire   [3:0] tmp_fu_1996_p11;
wire   [3:0] tmp_fu_1996_p13;
wire  signed [3:0] tmp_fu_1996_p15;
wire  signed [3:0] tmp_fu_1996_p17;
wire   [3:0] tmp_1_fu_2030_p1;
wire   [3:0] tmp_1_fu_2030_p3;
wire   [3:0] tmp_1_fu_2030_p5;
wire   [3:0] tmp_1_fu_2030_p7;
wire   [3:0] tmp_1_fu_2030_p9;
wire   [3:0] tmp_1_fu_2030_p11;
wire   [3:0] tmp_1_fu_2030_p13;
wire  signed [3:0] tmp_1_fu_2030_p15;
wire  signed [3:0] tmp_1_fu_2030_p17;
wire   [3:0] tmp_2_fu_2064_p1;
wire   [3:0] tmp_2_fu_2064_p3;
wire   [3:0] tmp_2_fu_2064_p5;
wire   [3:0] tmp_2_fu_2064_p7;
wire   [3:0] tmp_2_fu_2064_p9;
wire   [3:0] tmp_2_fu_2064_p11;
wire   [3:0] tmp_2_fu_2064_p13;
wire  signed [3:0] tmp_2_fu_2064_p15;
wire  signed [3:0] tmp_2_fu_2064_p17;
wire   [3:0] tmp_3_fu_2098_p1;
wire   [3:0] tmp_3_fu_2098_p3;
wire   [3:0] tmp_3_fu_2098_p5;
wire   [3:0] tmp_3_fu_2098_p7;
wire   [3:0] tmp_3_fu_2098_p9;
wire   [3:0] tmp_3_fu_2098_p11;
wire   [3:0] tmp_3_fu_2098_p13;
wire  signed [3:0] tmp_3_fu_2098_p15;
wire  signed [3:0] tmp_3_fu_2098_p17;
wire   [3:0] tmp_7_fu_2148_p1;
wire   [3:0] tmp_7_fu_2148_p3;
wire   [3:0] tmp_7_fu_2148_p5;
wire   [3:0] tmp_7_fu_2148_p7;
wire   [3:0] tmp_7_fu_2148_p9;
wire   [3:0] tmp_7_fu_2148_p11;
wire   [3:0] tmp_7_fu_2148_p13;
wire  signed [3:0] tmp_7_fu_2148_p15;
wire  signed [3:0] tmp_7_fu_2148_p17;
wire   [3:0] tmp_8_fu_2182_p1;
wire   [3:0] tmp_8_fu_2182_p3;
wire   [3:0] tmp_8_fu_2182_p5;
wire   [3:0] tmp_8_fu_2182_p7;
wire   [3:0] tmp_8_fu_2182_p9;
wire   [3:0] tmp_8_fu_2182_p11;
wire   [3:0] tmp_8_fu_2182_p13;
wire  signed [3:0] tmp_8_fu_2182_p15;
wire  signed [3:0] tmp_8_fu_2182_p17;
wire   [3:0] tmp_9_fu_2216_p1;
wire   [3:0] tmp_9_fu_2216_p3;
wire   [3:0] tmp_9_fu_2216_p5;
wire   [3:0] tmp_9_fu_2216_p7;
wire   [3:0] tmp_9_fu_2216_p9;
wire   [3:0] tmp_9_fu_2216_p11;
wire   [3:0] tmp_9_fu_2216_p13;
wire  signed [3:0] tmp_9_fu_2216_p15;
wire  signed [3:0] tmp_9_fu_2216_p17;
wire   [3:0] tmp_4_fu_2266_p1;
wire   [3:0] tmp_4_fu_2266_p3;
wire   [3:0] tmp_4_fu_2266_p5;
wire   [3:0] tmp_4_fu_2266_p7;
wire   [3:0] tmp_4_fu_2266_p9;
wire   [3:0] tmp_4_fu_2266_p11;
wire   [3:0] tmp_4_fu_2266_p13;
wire  signed [3:0] tmp_4_fu_2266_p15;
wire  signed [3:0] tmp_4_fu_2266_p17;
wire   [3:0] tmp_10_fu_2300_p1;
wire   [3:0] tmp_10_fu_2300_p3;
wire   [3:0] tmp_10_fu_2300_p5;
wire   [3:0] tmp_10_fu_2300_p7;
wire   [3:0] tmp_10_fu_2300_p9;
wire   [3:0] tmp_10_fu_2300_p11;
wire   [3:0] tmp_10_fu_2300_p13;
wire  signed [3:0] tmp_10_fu_2300_p15;
wire  signed [3:0] tmp_10_fu_2300_p17;
wire   [3:0] tmp_11_fu_2334_p1;
wire   [3:0] tmp_11_fu_2334_p3;
wire   [3:0] tmp_11_fu_2334_p5;
wire   [3:0] tmp_11_fu_2334_p7;
wire   [3:0] tmp_11_fu_2334_p9;
wire   [3:0] tmp_11_fu_2334_p11;
wire   [3:0] tmp_11_fu_2334_p13;
wire  signed [3:0] tmp_11_fu_2334_p15;
wire  signed [3:0] tmp_11_fu_2334_p17;
wire   [3:0] tmp_13_fu_2384_p1;
wire   [3:0] tmp_13_fu_2384_p3;
wire   [3:0] tmp_13_fu_2384_p5;
wire   [3:0] tmp_13_fu_2384_p7;
wire   [3:0] tmp_13_fu_2384_p9;
wire   [3:0] tmp_13_fu_2384_p11;
wire   [3:0] tmp_13_fu_2384_p13;
wire  signed [3:0] tmp_13_fu_2384_p15;
wire  signed [3:0] tmp_13_fu_2384_p17;
wire   [3:0] tmp_14_fu_2418_p1;
wire   [3:0] tmp_14_fu_2418_p3;
wire   [3:0] tmp_14_fu_2418_p5;
wire   [3:0] tmp_14_fu_2418_p7;
wire   [3:0] tmp_14_fu_2418_p9;
wire   [3:0] tmp_14_fu_2418_p11;
wire   [3:0] tmp_14_fu_2418_p13;
wire  signed [3:0] tmp_14_fu_2418_p15;
wire  signed [3:0] tmp_14_fu_2418_p17;
wire   [3:0] tmp_15_fu_2452_p1;
wire   [3:0] tmp_15_fu_2452_p3;
wire   [3:0] tmp_15_fu_2452_p5;
wire   [3:0] tmp_15_fu_2452_p7;
wire   [3:0] tmp_15_fu_2452_p9;
wire   [3:0] tmp_15_fu_2452_p11;
wire   [3:0] tmp_15_fu_2452_p13;
wire  signed [3:0] tmp_15_fu_2452_p15;
wire  signed [3:0] tmp_15_fu_2452_p17;
wire   [3:0] tmp_17_fu_2502_p1;
wire   [3:0] tmp_17_fu_2502_p3;
wire   [3:0] tmp_17_fu_2502_p5;
wire   [3:0] tmp_17_fu_2502_p7;
wire   [3:0] tmp_17_fu_2502_p9;
wire   [3:0] tmp_17_fu_2502_p11;
wire   [3:0] tmp_17_fu_2502_p13;
wire  signed [3:0] tmp_17_fu_2502_p15;
wire  signed [3:0] tmp_17_fu_2502_p17;
wire   [3:0] tmp_18_fu_2536_p1;
wire   [3:0] tmp_18_fu_2536_p3;
wire   [3:0] tmp_18_fu_2536_p5;
wire   [3:0] tmp_18_fu_2536_p7;
wire   [3:0] tmp_18_fu_2536_p9;
wire   [3:0] tmp_18_fu_2536_p11;
wire   [3:0] tmp_18_fu_2536_p13;
wire  signed [3:0] tmp_18_fu_2536_p15;
wire  signed [3:0] tmp_18_fu_2536_p17;
wire   [3:0] tmp_19_fu_2570_p1;
wire   [3:0] tmp_19_fu_2570_p3;
wire   [3:0] tmp_19_fu_2570_p5;
wire   [3:0] tmp_19_fu_2570_p7;
wire   [3:0] tmp_19_fu_2570_p9;
wire   [3:0] tmp_19_fu_2570_p11;
wire   [3:0] tmp_19_fu_2570_p13;
wire  signed [3:0] tmp_19_fu_2570_p15;
wire  signed [3:0] tmp_19_fu_2570_p17;
wire   [3:0] tmp_21_fu_2620_p1;
wire   [3:0] tmp_21_fu_2620_p3;
wire   [3:0] tmp_21_fu_2620_p5;
wire   [3:0] tmp_21_fu_2620_p7;
wire   [3:0] tmp_21_fu_2620_p9;
wire   [3:0] tmp_21_fu_2620_p11;
wire   [3:0] tmp_21_fu_2620_p13;
wire  signed [3:0] tmp_21_fu_2620_p15;
wire  signed [3:0] tmp_21_fu_2620_p17;
wire   [3:0] tmp_22_fu_2654_p1;
wire   [3:0] tmp_22_fu_2654_p3;
wire   [3:0] tmp_22_fu_2654_p5;
wire   [3:0] tmp_22_fu_2654_p7;
wire   [3:0] tmp_22_fu_2654_p9;
wire   [3:0] tmp_22_fu_2654_p11;
wire   [3:0] tmp_22_fu_2654_p13;
wire  signed [3:0] tmp_22_fu_2654_p15;
wire  signed [3:0] tmp_22_fu_2654_p17;
wire   [3:0] tmp_23_fu_2688_p1;
wire   [3:0] tmp_23_fu_2688_p3;
wire   [3:0] tmp_23_fu_2688_p5;
wire   [3:0] tmp_23_fu_2688_p7;
wire   [3:0] tmp_23_fu_2688_p9;
wire   [3:0] tmp_23_fu_2688_p11;
wire   [3:0] tmp_23_fu_2688_p13;
wire  signed [3:0] tmp_23_fu_2688_p15;
wire  signed [3:0] tmp_23_fu_2688_p17;
wire   [3:0] tmp_25_fu_2749_p1;
wire   [3:0] tmp_25_fu_2749_p3;
wire   [3:0] tmp_25_fu_2749_p5;
wire   [3:0] tmp_25_fu_2749_p7;
wire   [3:0] tmp_25_fu_2749_p9;
wire   [3:0] tmp_25_fu_2749_p11;
wire   [3:0] tmp_25_fu_2749_p13;
wire  signed [3:0] tmp_25_fu_2749_p15;
wire  signed [3:0] tmp_25_fu_2749_p17;
wire   [3:0] tmp_26_fu_2783_p1;
wire   [3:0] tmp_26_fu_2783_p3;
wire   [3:0] tmp_26_fu_2783_p5;
wire   [3:0] tmp_26_fu_2783_p7;
wire   [3:0] tmp_26_fu_2783_p9;
wire   [3:0] tmp_26_fu_2783_p11;
wire   [3:0] tmp_26_fu_2783_p13;
wire  signed [3:0] tmp_26_fu_2783_p15;
wire  signed [3:0] tmp_26_fu_2783_p17;
wire   [3:0] tmp_27_fu_2817_p1;
wire   [3:0] tmp_27_fu_2817_p3;
wire   [3:0] tmp_27_fu_2817_p5;
wire   [3:0] tmp_27_fu_2817_p7;
wire   [3:0] tmp_27_fu_2817_p9;
wire   [3:0] tmp_27_fu_2817_p11;
wire   [3:0] tmp_27_fu_2817_p13;
wire  signed [3:0] tmp_27_fu_2817_p15;
wire  signed [3:0] tmp_27_fu_2817_p17;
wire   [3:0] tmp_6_fu_2900_p1;
wire   [3:0] tmp_6_fu_2900_p3;
wire   [3:0] tmp_6_fu_2900_p5;
wire   [3:0] tmp_6_fu_2900_p7;
wire   [3:0] tmp_6_fu_2900_p9;
wire   [3:0] tmp_6_fu_2900_p11;
wire   [3:0] tmp_6_fu_2900_p13;
wire  signed [3:0] tmp_6_fu_2900_p15;
wire  signed [3:0] tmp_6_fu_2900_p17;
wire   [3:0] tmp_s_fu_2944_p1;
wire   [3:0] tmp_s_fu_2944_p3;
wire   [3:0] tmp_s_fu_2944_p5;
wire   [3:0] tmp_s_fu_2944_p7;
wire   [3:0] tmp_s_fu_2944_p9;
wire   [3:0] tmp_s_fu_2944_p11;
wire   [3:0] tmp_s_fu_2944_p13;
wire  signed [3:0] tmp_s_fu_2944_p15;
wire  signed [3:0] tmp_s_fu_2944_p17;
wire   [3:0] tmp_12_fu_2988_p1;
wire   [3:0] tmp_12_fu_2988_p3;
wire   [3:0] tmp_12_fu_2988_p5;
wire   [3:0] tmp_12_fu_2988_p7;
wire   [3:0] tmp_12_fu_2988_p9;
wire   [3:0] tmp_12_fu_2988_p11;
wire   [3:0] tmp_12_fu_2988_p13;
wire  signed [3:0] tmp_12_fu_2988_p15;
wire  signed [3:0] tmp_12_fu_2988_p17;
wire   [3:0] tmp_16_fu_3032_p1;
wire   [3:0] tmp_16_fu_3032_p3;
wire   [3:0] tmp_16_fu_3032_p5;
wire   [3:0] tmp_16_fu_3032_p7;
wire   [3:0] tmp_16_fu_3032_p9;
wire   [3:0] tmp_16_fu_3032_p11;
wire   [3:0] tmp_16_fu_3032_p13;
wire  signed [3:0] tmp_16_fu_3032_p15;
wire  signed [3:0] tmp_16_fu_3032_p17;
wire   [3:0] tmp_20_fu_3076_p1;
wire   [3:0] tmp_20_fu_3076_p3;
wire   [3:0] tmp_20_fu_3076_p5;
wire   [3:0] tmp_20_fu_3076_p7;
wire   [3:0] tmp_20_fu_3076_p9;
wire   [3:0] tmp_20_fu_3076_p11;
wire   [3:0] tmp_20_fu_3076_p13;
wire  signed [3:0] tmp_20_fu_3076_p15;
wire  signed [3:0] tmp_20_fu_3076_p17;
wire   [3:0] tmp_24_fu_3120_p1;
wire   [3:0] tmp_24_fu_3120_p3;
wire   [3:0] tmp_24_fu_3120_p5;
wire   [3:0] tmp_24_fu_3120_p7;
wire   [3:0] tmp_24_fu_3120_p9;
wire   [3:0] tmp_24_fu_3120_p11;
wire   [3:0] tmp_24_fu_3120_p13;
wire  signed [3:0] tmp_24_fu_3120_p15;
wire  signed [3:0] tmp_24_fu_3120_p17;
wire  signed [3:0] sum0_7_fu_3189_p1;
wire   [3:0] sum0_7_fu_3189_p3;
wire   [3:0] sum0_7_fu_3189_p5;
wire   [3:0] sum0_7_fu_3189_p7;
wire   [3:0] sum0_7_fu_3189_p9;
wire   [3:0] sum0_7_fu_3189_p11;
wire   [3:0] sum0_7_fu_3189_p13;
wire   [3:0] sum0_7_fu_3189_p15;
wire  signed [3:0] sum0_7_fu_3189_p17;
wire  signed [3:0] tmp_32_fu_3385_p1;
wire  signed [3:0] tmp_32_fu_3385_p3;
wire   [3:0] tmp_32_fu_3385_p5;
wire   [3:0] tmp_32_fu_3385_p7;
wire   [3:0] tmp_32_fu_3385_p9;
wire   [3:0] tmp_32_fu_3385_p11;
wire   [3:0] tmp_32_fu_3385_p13;
wire   [3:0] tmp_32_fu_3385_p15;
wire   [3:0] tmp_32_fu_3385_p17;
wire  signed [3:0] tmp_28_fu_3425_p1;
wire   [3:0] tmp_28_fu_3425_p3;
wire   [3:0] tmp_28_fu_3425_p5;
wire   [3:0] tmp_28_fu_3425_p7;
wire   [3:0] tmp_28_fu_3425_p9;
wire   [3:0] tmp_28_fu_3425_p11;
wire   [3:0] tmp_28_fu_3425_p13;
wire   [3:0] tmp_28_fu_3425_p15;
wire  signed [3:0] tmp_28_fu_3425_p17;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_284 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1549_p0),.din1(grp_fu_1549_p1),.ce(1'b1),.dout(grp_fu_1549_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1553_p0),.din1(grp_fu_1553_p1),.ce(1'b1),.dout(grp_fu_1553_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1557_p0),.din1(grp_fu_1557_p1),.ce(1'b1),.dout(grp_fu_1557_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1561_p0),.din1(grp_fu_1561_p1),.ce(1'b1),.dout(grp_fu_1561_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U73(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1565_p0),.din1(grp_fu_1565_p1),.ce(1'b1),.dout(grp_fu_1565_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1569_p0),.din1(grp_fu_1569_p1),.ce(1'b1),.dout(grp_fu_1569_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U75(.din0(orig_0_q0),.din1(orig_8_q0),.din2(orig_9_q0),.din3(orig_10_q0),.din4(orig_11_q0),.din5(orig_12_q0),.din6(orig_13_q0),.din7(orig_14_q0),.din8(orig_15_q0),.def(grp_fu_1573_p19),.sel(grp_fu_1573_p20),.dout(grp_fu_1573_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U76(.din0(orig_1_load_8),.din1(orig_2_load_8),.din2(orig_3_load_8),.din3(orig_4_load_8),.din4(orig_5_load_8),.din5(orig_6_load_8),.din6(orig_7_load_8),.din7(orig_8_load_8),.din8(orig_9_load_8),.def(sum0_fu_1644_p19),.sel(trunc_ln10_fu_1640_p1),.dout(sum0_fu_1644_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U77(.din0(orig_2_load_8),.din1(orig_3_load_8),.din2(orig_4_load_8),.din3(orig_5_load_8),.din4(orig_6_load_8),.din5(orig_7_load_8),.din6(orig_8_load_8),.din7(orig_9_load_8),.din8(orig_10_load_4),.def(sum0_1_fu_1688_p19),.sel(trunc_ln10_fu_1640_p1),.dout(sum0_1_fu_1688_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U78(.din0(orig_0_load_5),.din1(orig_1_load_8),.din2(orig_2_load_8),.din3(orig_3_load_8),.din4(orig_4_load_8),.din5(orig_5_load_8),.din6(orig_6_load_8),.din7(orig_7_load_8),.din8(orig_8_load_8),.def(tmp_5_fu_1732_p19),.sel(trunc_ln10_fu_1640_p1),.dout(tmp_5_fu_1732_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U79(.din0(orig_3_load_8),.din1(orig_4_load_8),.din2(orig_5_load_8),.din3(orig_6_load_8),.din4(orig_7_load_8),.din5(orig_8_load_8),.din6(orig_9_load_8),.din7(orig_10_load_4),.din8(orig_11_load_4),.def(sum0_2_fu_1776_p19),.sel(trunc_ln10_fu_1640_p1),.dout(sum0_2_fu_1776_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U80(.din0(orig_4_load_8),.din1(orig_5_load_8),.din2(orig_6_load_8),.din3(orig_7_load_8),.din4(orig_8_load_8),.din5(orig_9_load_8),.din6(orig_10_load_4),.din7(orig_11_load_4),.din8(orig_12_load_4),.def(sum0_3_fu_1820_p19),.sel(trunc_ln10_fu_1640_p1),.dout(sum0_3_fu_1820_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U81(.din0(orig_5_load_8),.din1(orig_6_load_8),.din2(orig_7_load_8),.din3(orig_8_load_8),.din4(orig_9_load_8),.din5(orig_10_load_4),.din6(orig_11_load_4),.din7(orig_12_load_4),.din8(orig_13_load_4),.def(sum0_4_fu_1864_p19),.sel(trunc_ln10_fu_1640_p1),.dout(sum0_4_fu_1864_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U82(.din0(orig_6_load_8),.din1(orig_7_load_8),.din2(orig_8_load_8),.din3(orig_9_load_8),.din4(orig_10_load_4),.din5(orig_11_load_4),.din6(orig_12_load_4),.din7(orig_13_load_4),.din8(orig_14_load_4),.def(sum0_5_fu_1908_p19),.sel(trunc_ln10_fu_1640_p1),.dout(sum0_5_fu_1908_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U83(.din0(orig_7_load_8),.din1(orig_8_load_8),.din2(orig_9_load_8),.din3(orig_10_load_4),.din4(orig_11_load_4),.din5(orig_12_load_4),.din6(orig_13_load_4),.din7(orig_14_load_4),.din8(orig_15_load_5),.def(sum0_6_fu_1952_p19),.sel(trunc_ln10_fu_1640_p1),.dout(sum0_6_fu_1952_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U84(.din0(orig_1_load_4),.din1(orig_2_load_4),.din2(orig_3_load_4),.din3(orig_4_load_4),.din4(orig_5_load_4),.din5(orig_6_load_4),.din6(orig_7_load_4),.din7(orig_8_load_4),.din8(orig_9_load_4),.def(tmp_fu_1996_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_fu_1996_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U85(.din0(orig_1_load_5),.din1(orig_2_load_5),.din2(orig_3_load_5),.din3(orig_4_load_5),.din4(orig_5_load_5),.din5(orig_6_load_5),.din6(orig_7_load_5),.din7(orig_8_load_5),.din8(orig_9_load_5),.def(tmp_1_fu_2030_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_1_fu_2030_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U86(.din0(orig_1_load_6),.din1(orig_2_load_6),.din2(orig_3_load_6),.din3(orig_4_load_6),.din4(orig_5_load_6),.din5(orig_6_load_6),.din6(orig_7_load_6),.din7(orig_8_load_6),.din8(orig_9_load_6),.def(tmp_2_fu_2064_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_2_fu_2064_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U87(.din0(orig_1_load_7),.din1(orig_2_load_7),.din2(orig_3_load_7),.din3(orig_4_load_7),.din4(orig_5_load_7),.din5(orig_6_load_7),.din6(orig_7_load_7),.din7(orig_8_load_7),.din8(orig_9_load_7),.def(tmp_3_fu_2098_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_3_fu_2098_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U88(.din0(orig_2_load_5),.din1(orig_3_load_5),.din2(orig_4_load_5),.din3(orig_5_load_5),.din4(orig_6_load_5),.din5(orig_7_load_5),.din6(orig_8_load_5),.din7(orig_9_load_5),.din8(orig_10_load_6),.def(tmp_7_fu_2148_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_7_fu_2148_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U89(.din0(orig_2_load_6),.din1(orig_3_load_6),.din2(orig_4_load_6),.din3(orig_5_load_6),.din4(orig_6_load_6),.din5(orig_7_load_6),.din6(orig_8_load_6),.din7(orig_9_load_6),.din8(orig_10_load_7),.def(tmp_8_fu_2182_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_8_fu_2182_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U90(.din0(orig_2_load_7),.din1(orig_3_load_7),.din2(orig_4_load_7),.din3(orig_5_load_7),.din4(orig_6_load_7),.din5(orig_7_load_7),.din6(orig_8_load_7),.din7(orig_9_load_7),.din8(orig_10_load_8),.def(tmp_9_fu_2216_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_9_fu_2216_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U91(.din0(orig_3_load_5),.din1(orig_4_load_5),.din2(orig_5_load_5),.din3(orig_6_load_5),.din4(orig_7_load_5),.din5(orig_8_load_5),.din6(orig_9_load_5),.din7(orig_10_load_6),.din8(orig_11_load_6),.def(tmp_4_fu_2266_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_4_fu_2266_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U92(.din0(orig_3_load_6),.din1(orig_4_load_6),.din2(orig_5_load_6),.din3(orig_6_load_6),.din4(orig_7_load_6),.din5(orig_8_load_6),.din6(orig_9_load_6),.din7(orig_10_load_7),.din8(orig_11_load_7),.def(tmp_10_fu_2300_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_10_fu_2300_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U93(.din0(orig_3_load_7),.din1(orig_4_load_7),.din2(orig_5_load_7),.din3(orig_6_load_7),.din4(orig_7_load_7),.din5(orig_8_load_7),.din6(orig_9_load_7),.din7(orig_10_load_8),.din8(orig_11_load_8),.def(tmp_11_fu_2334_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_11_fu_2334_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U94(.din0(orig_4_load_5),.din1(orig_5_load_5),.din2(orig_6_load_5),.din3(orig_7_load_5),.din4(orig_8_load_5),.din5(orig_9_load_5),.din6(orig_10_load_6),.din7(orig_11_load_6),.din8(orig_12_load_6),.def(tmp_13_fu_2384_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_13_fu_2384_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U95(.din0(orig_4_load_6),.din1(orig_5_load_6),.din2(orig_6_load_6),.din3(orig_7_load_6),.din4(orig_8_load_6),.din5(orig_9_load_6),.din6(orig_10_load_7),.din7(orig_11_load_7),.din8(orig_12_load_7),.def(tmp_14_fu_2418_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_14_fu_2418_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U96(.din0(orig_4_load_7),.din1(orig_5_load_7),.din2(orig_6_load_7),.din3(orig_7_load_7),.din4(orig_8_load_7),.din5(orig_9_load_7),.din6(orig_10_load_8),.din7(orig_11_load_8),.din8(orig_12_load_8),.def(tmp_15_fu_2452_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_15_fu_2452_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U97(.din0(orig_5_load_5),.din1(orig_6_load_5),.din2(orig_7_load_5),.din3(orig_8_load_5),.din4(orig_9_load_5),.din5(orig_10_load_6),.din6(orig_11_load_6),.din7(orig_12_load_6),.din8(orig_13_load_6),.def(tmp_17_fu_2502_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_17_fu_2502_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U98(.din0(orig_5_load_6),.din1(orig_6_load_6),.din2(orig_7_load_6),.din3(orig_8_load_6),.din4(orig_9_load_6),.din5(orig_10_load_7),.din6(orig_11_load_7),.din7(orig_12_load_7),.din8(orig_13_load_7),.def(tmp_18_fu_2536_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_18_fu_2536_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U99(.din0(orig_5_load_7),.din1(orig_6_load_7),.din2(orig_7_load_7),.din3(orig_8_load_7),.din4(orig_9_load_7),.din5(orig_10_load_8),.din6(orig_11_load_8),.din7(orig_12_load_8),.din8(orig_13_load_8),.def(tmp_19_fu_2570_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_19_fu_2570_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U100(.din0(orig_6_load_5),.din1(orig_7_load_5),.din2(orig_8_load_5),.din3(orig_9_load_5),.din4(orig_10_load_6),.din5(orig_11_load_6),.din6(orig_12_load_6),.din7(orig_13_load_6),.din8(orig_14_load_6),.def(tmp_21_fu_2620_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_21_fu_2620_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U101(.din0(orig_6_load_6),.din1(orig_7_load_6),.din2(orig_8_load_6),.din3(orig_9_load_6),.din4(orig_10_load_7),.din5(orig_11_load_7),.din6(orig_12_load_7),.din7(orig_13_load_7),.din8(orig_14_load_7),.def(tmp_22_fu_2654_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_22_fu_2654_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U102(.din0(orig_6_load_7),.din1(orig_7_load_7),.din2(orig_8_load_7),.din3(orig_9_load_7),.din4(orig_10_load_8),.din5(orig_11_load_8),.din6(orig_12_load_8),.din7(orig_13_load_8),.din8(orig_14_load_8),.def(tmp_23_fu_2688_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_23_fu_2688_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U103(.din0(orig_7_load_5),.din1(orig_8_load_5),.din2(orig_9_load_5),.din3(orig_10_load_6),.din4(orig_11_load_6),.din5(orig_12_load_6),.din6(orig_13_load_6),.din7(orig_14_load_6),.din8(orig_15_load_7),.def(tmp_25_fu_2749_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_25_fu_2749_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U104(.din0(orig_7_load_6),.din1(orig_8_load_6),.din2(orig_9_load_6),.din3(orig_10_load_7),.din4(orig_11_load_7),.din5(orig_12_load_7),.din6(orig_13_load_7),.din7(orig_14_load_7),.din8(orig_15_load_8),.def(tmp_26_fu_2783_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_26_fu_2783_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U105(.din0(orig_7_load_7),.din1(orig_8_load_7),.din2(orig_9_load_7),.din3(orig_10_load_8),.din4(orig_11_load_8),.din5(orig_12_load_8),.din6(orig_13_load_8),.din7(orig_14_load_8),.din8(orig_15_load_9),.def(tmp_27_fu_2817_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_27_fu_2817_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U106(.din0(orig_2_load_4),.din1(orig_3_load_4),.din2(orig_4_load_4),.din3(orig_5_load_4),.din4(orig_6_load_4),.din5(orig_7_load_4),.din6(orig_8_load_4),.din7(orig_9_load_4),.din8(orig_10_load_5),.def(tmp_6_fu_2900_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_6_fu_2900_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U107(.din0(orig_3_load_4),.din1(orig_4_load_4),.din2(orig_5_load_4),.din3(orig_6_load_4),.din4(orig_7_load_4),.din5(orig_8_load_4),.din6(orig_9_load_4),.din7(orig_10_load_5),.din8(orig_11_load_5),.def(tmp_s_fu_2944_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_s_fu_2944_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U108(.din0(orig_4_load_4),.din1(orig_5_load_4),.din2(orig_6_load_4),.din3(orig_7_load_4),.din4(orig_8_load_4),.din5(orig_9_load_4),.din6(orig_10_load_5),.din7(orig_11_load_5),.din8(orig_12_load_5),.def(tmp_12_fu_2988_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_12_fu_2988_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U109(.din0(orig_5_load_4),.din1(orig_6_load_4),.din2(orig_7_load_4),.din3(orig_8_load_4),.din4(orig_9_load_4),.din5(orig_10_load_5),.din6(orig_11_load_5),.din7(orig_12_load_5),.din8(orig_13_load_5),.def(tmp_16_fu_3032_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_16_fu_3032_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U110(.din0(orig_6_load_4),.din1(orig_7_load_4),.din2(orig_8_load_4),.din3(orig_9_load_4),.din4(orig_10_load_5),.din5(orig_11_load_5),.din6(orig_12_load_5),.din7(orig_13_load_5),.din8(orig_14_load_5),.def(tmp_20_fu_3076_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_20_fu_3076_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U111(.din0(orig_7_load_4),.din1(orig_8_load_4),.din2(orig_9_load_4),.din3(orig_10_load_5),.din4(orig_11_load_5),.din5(orig_12_load_5),.din6(orig_13_load_5),.din7(orig_14_load_5),.din8(orig_15_load_6),.def(tmp_24_fu_3120_p19),.sel(trunc_ln10_reg_4086),.dout(tmp_24_fu_3120_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U112(.din0(orig_0_load_reg_4390),.din1(orig_8_load_reg_4396),.din2(orig_9_load_reg_4401),.din3(orig_10_load_reg_4407),.din4(orig_11_load_reg_4413),.din5(orig_12_load_reg_4419),.din6(orig_13_load_reg_4425),.din7(orig_14_load_reg_4431),.din8(orig_15_load_reg_4437),.def(sum0_7_fu_3189_p19),.sel(trunc_ln10_reg_4086),.dout(sum0_7_fu_3189_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'h9 ),.din1_WIDTH( 32 ),.CASE2( 4'h1 ),.din2_WIDTH( 32 ),.CASE3( 4'h2 ),.din3_WIDTH( 32 ),.CASE4( 4'h3 ),.din4_WIDTH( 32 ),.CASE5( 4'h4 ),.din5_WIDTH( 32 ),.CASE6( 4'h5 ),.din6_WIDTH( 32 ),.CASE7( 4'h6 ),.din7_WIDTH( 32 ),.CASE8( 4'h7 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U113(.din0(orig_0_load_reg_4390),.din1(orig_1_q0),.din2(orig_9_load_reg_4401),.din3(orig_10_load_reg_4407),.din4(orig_11_load_reg_4413),.din5(orig_12_load_reg_4419),.din6(orig_13_load_reg_4425),.din7(orig_14_load_reg_4431),.din8(orig_15_load_reg_4437),.def(tmp_32_fu_3385_p19),.sel(trunc_ln10_reg_4086_pp0_iter1_reg),.dout(tmp_32_fu_3385_p21));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_19_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_19_4_32_1_1_U114(.din0(orig_0_q1),.din1(orig_8_q1),.din2(orig_9_q1),.din3(orig_10_q1),.din4(orig_11_q1),.din5(orig_12_q1),.din6(orig_13_q1),.din7(orig_14_q1),.din8(orig_15_q1),.def(tmp_28_fu_3425_p19),.sel(trunc_ln10_reg_4086_pp0_iter1_reg),.dout(tmp_28_fu_3425_p21));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage2)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        k_fu_284 <= 5'd1;
    end else if (((icmp_ln38_reg_4240 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_284 <= add_ln44_3_fu_3171_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln40_reg_4583 <= add_ln40_fu_3259_p2;
        add_ln48_12_reg_4200 <= add_ln48_12_fu_2368_p2;
        add_ln48_15_reg_4205 <= add_ln48_15_fu_2378_p2;
        add_ln48_18_reg_4210 <= add_ln48_18_fu_2486_p2;
        add_ln48_21_reg_4215 <= add_ln48_21_fu_2496_p2;
        add_ln48_24_reg_4220 <= add_ln48_24_fu_2604_p2;
        add_ln48_27_reg_4225 <= add_ln48_27_fu_2614_p2;
        add_ln48_30_reg_4230 <= add_ln48_30_fu_2722_p2;
        add_ln48_33_reg_4235 <= add_ln48_33_fu_2732_p2;
        add_ln48_36_reg_4320 <= add_ln48_36_fu_2886_p2;
        add_ln48_3_reg_4185 <= add_ln48_3_fu_2142_p2;
        add_ln48_40_reg_4578 <= add_ln48_40_fu_3254_p2;
        add_ln48_46_reg_4753 <= add_ln48_46_fu_3496_p2;
        add_ln48_6_reg_4190 <= add_ln48_6_fu_2250_p2;
        add_ln48_9_reg_4195 <= add_ln48_9_fu_2260_p2;
        add_ln48_reg_4180 <= add_ln48_fu_2132_p2;
        icmp_ln38_reg_4240 <= icmp_ln38_fu_2743_p2;
        icmp_ln38_reg_4240_pp0_iter1_reg <= icmp_ln38_reg_4240;
        icmp_ln38_reg_4240_pp0_iter2_reg <= icmp_ln38_reg_4240_pp0_iter1_reg;
        tmp_1_reg_4175 <= tmp_1_fu_2030_p21;
        tmp_26_reg_4244 <= tmp_26_fu_2783_p21;
        tmp_27_reg_4249 <= tmp_27_fu_2817_p21;
        zext_ln44_1_reg_4262[9 : 0] <= zext_ln44_1_fu_2873_p1[9 : 0];
        zext_ln44_1_reg_4262_pp0_iter1_reg[9 : 0] <= zext_ln44_1_reg_4262[9 : 0];
        zext_ln44_1_reg_4262_pp0_iter2_reg[9 : 0] <= zext_ln44_1_reg_4262_pp0_iter1_reg[9 : 0];
        zext_ln44_reg_4254[0] <= zext_ln44_fu_2864_p1[0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_4335 <= add_ln48_10_fu_2939_p2;
        add_ln48_16_reg_4345 <= add_ln48_16_fu_2983_p2;
        add_ln48_22_reg_4355 <= add_ln48_22_fu_3027_p2;
        add_ln48_28_reg_4365 <= add_ln48_28_fu_3071_p2;
        add_ln48_34_reg_4375 <= add_ln48_34_fu_3115_p2;
        add_ln48_42_reg_4733 <= add_ln48_42_fu_3420_p2;
        add_ln48_4_reg_4325 <= add_ln48_4_fu_2895_p2;
        sol_10_addr_reg_4658 <= p_cast40_cast_reg_4060;
        sol_11_addr_reg_4653 <= p_cast40_cast_reg_4060;
        sol_12_addr_reg_4648 <= p_cast40_cast_reg_4060;
        sol_13_addr_reg_4643 <= p_cast40_cast_reg_4060;
        sol_14_addr_reg_4638 <= p_cast40_cast_reg_4060;
        sol_15_addr_reg_4678 <= p_cast40_cast_reg_4060;
        sol_7_addr_reg_4673 <= p_cast40_cast_reg_4060;
        sol_8_addr_reg_4668 <= p_cast40_cast_reg_4060;
        sol_9_addr_reg_4663 <= p_cast40_cast_reg_4060;
        tmp_24_reg_4385 <= tmp_24_fu_3120_p21;
        tmp_32_reg_4728 <= tmp_32_fu_3385_p21;
        tmp_39_reg_4488 <= add_ln44_3_fu_3171_p2[32'd4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_39_reg_4498 <= add_ln48_39_fu_3228_p2;
        add_ln48_45_reg_4743 <= add_ln48_45_fu_3472_p2;
        ap_predicate_pred1002_state11 <= ((icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter2_reg == 4'd7));
        ap_predicate_pred1008_state11 <= ((icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter2_reg == 4'd6));
        ap_predicate_pred1014_state11 <= ((icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter2_reg == 4'd5));
        ap_predicate_pred1020_state11 <= ((icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter2_reg == 4'd4));
        ap_predicate_pred1026_state11 <= ((icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter2_reg == 4'd3));
        ap_predicate_pred1032_state11 <= ((icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter2_reg == 4'd2));
        ap_predicate_pred1038_state11 <= ((icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter2_reg == 4'd1));
        ap_predicate_pred1058_state11 <= (~(trunc_ln10_reg_4086_pp0_iter2_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter2_reg == 4'd1) & ~(trunc_ln10_reg_4086_pp0_iter2_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter2_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter2_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter2_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter2_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter2_reg == 4'd7) & (icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1));
        ap_predicate_pred1182_state8 <= ((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2));
        ap_predicate_pred1220_state8 <= ((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3));
        ap_predicate_pred1237_state8 <= ((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4));
        ap_predicate_pred1254_state8 <= ((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5));
        ap_predicate_pred1271_state8 <= ((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6));
        ap_predicate_pred1288_state8 <= ((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7));
        ap_predicate_pred1314_state8 <= ((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1));
        ap_predicate_pred1381_state8 <= ((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8));
        ap_predicate_pred1392_state8 <= (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (icmp_ln38_reg_4240_pp0_iter1_reg == 1'd1));
        ap_predicate_pred996_state11 <= ((icmp_ln38_reg_4240_pp0_iter2_reg == 1'd1) & (trunc_ln10_reg_4086_pp0_iter2_reg == 4'd8));
        k_1_reg_4079 <= ap_sig_allocacmp_k_1;
        mul_ln48_12_reg_4503_pp0_iter2_reg <= mul_ln48_12_reg_4503;
        mul_ln48_14_reg_4748_pp0_iter3_reg <= mul_ln48_14_reg_4748;
        p_cast40_cast_reg_4060[9 : 0] <= p_cast40_cast_fu_1628_p1[9 : 0];
        sum0_1_reg_4128 <= sum0_1_fu_1688_p21;
        sum0_2_reg_4140 <= sum0_2_fu_1776_p21;
        sum0_3_reg_4147 <= sum0_3_fu_1820_p21;
        sum0_4_reg_4154 <= sum0_4_fu_1864_p21;
        sum0_5_reg_4161 <= sum0_5_fu_1908_p21;
        sum0_6_reg_4168 <= sum0_6_fu_1952_p21;
        sum0_6_reg_4168_pp0_iter1_reg <= sum0_6_reg_4168;
        sum0_7_reg_4493 <= sum0_7_fu_3189_p21;
        sum0_reg_4122 <= sum0_fu_1644_p21;
        tmp_28_reg_4738 <= tmp_28_fu_3425_p21;
        tmp_5_reg_4135 <= tmp_5_fu_1732_p21;
        trunc_ln10_reg_4086 <= trunc_ln10_fu_1640_p1;
        trunc_ln10_reg_4086_pp0_iter1_reg <= trunc_ln10_reg_4086;
        trunc_ln10_reg_4086_pp0_iter2_reg <= trunc_ln10_reg_4086_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_10_reg_4380 <= grp_fu_1569_p2;
        mul_ln48_2_reg_4340 <= grp_fu_1553_p2;
        mul_ln48_4_reg_4350 <= grp_fu_1557_p2;
        mul_ln48_6_reg_4360 <= grp_fu_1561_p2;
        mul_ln48_8_reg_4370 <= grp_fu_1565_p2;
        mul_ln48_reg_4330 <= grp_fu_1549_p2;
        orig_0_load_reg_4390 <= orig_0_q1;
        orig_10_load_reg_4407 <= orig_10_q1;
        orig_11_load_reg_4413 <= orig_11_q1;
        orig_12_load_reg_4419 <= orig_12_q1;
        orig_13_load_reg_4425 <= orig_13_q1;
        orig_14_load_reg_4431 <= orig_14_q1;
        orig_15_load_reg_4437 <= orig_15_q1;
        orig_8_load_reg_4396 <= orig_8_q1;
        orig_9_load_reg_4401 <= orig_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_11_reg_4573 <= grp_fu_1569_p2;
        mul_ln48_1_reg_4558 <= grp_fu_1549_p2;
        mul_ln48_5_reg_4563 <= grp_fu_1557_p2;
        mul_ln48_9_reg_4568 <= grp_fu_1565_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_12_reg_4503 <= grp_fu_1549_p2;
        tmp_31_reg_4553 <= grp_fu_1573_p21;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_14_reg_4748 <= grp_fu_1557_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1616 <= grp_fu_1553_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1620 <= grp_fu_1561_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1624 <= grp_fu_1573_p21;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_4240 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_4240_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_k_1 = 5'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_284;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1549_p0 = C_load_1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1549_p0 = C_load;
    end else begin
        grp_fu_1549_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1549_p1 = add_ln48_4_reg_4325;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1549_p1 = sum0_6_reg_4168;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1549_p1 = sum0_reg_4122;
    end else begin
        grp_fu_1549_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1553_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1553_p0 = C_load;
    end else begin
        grp_fu_1553_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1553_p1 = add_ln48_40_reg_4578;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1553_p1 = add_ln48_10_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1553_p1 = sum0_1_reg_4128;
    end else begin
        grp_fu_1553_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1557_p0 = C_load_1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1557_p0 = C_load;
    end else begin
        grp_fu_1557_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1557_p1 = sum0_7_reg_4493;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1557_p1 = add_ln48_16_reg_4345;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1557_p1 = sum0_2_reg_4140;
    end else begin
        grp_fu_1557_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1561_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1561_p0 = C_load;
    end else begin
        grp_fu_1561_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1561_p1 = add_ln48_46_reg_4753;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1561_p1 = add_ln48_22_reg_4355;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1561_p1 = sum0_3_reg_4147;
    end else begin
        grp_fu_1561_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1565_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1565_p0 = C_load;
    end else begin
        grp_fu_1565_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1565_p1 = add_ln48_28_reg_4365;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1565_p1 = sum0_4_reg_4154;
    end else begin
        grp_fu_1565_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1569_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1569_p0 = C_load;
    end else begin
        grp_fu_1569_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1569_p1 = add_ln48_34_reg_4375;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1569_p1 = sum0_5_reg_4161;
    end else begin
        grp_fu_1569_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1573_p20 = trunc_ln10_reg_4086_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1573_p20 = trunc_ln10_reg_4086;
    end else begin
        grp_fu_1573_p20 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_12_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_12_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_15_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_15_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_15_ce1_local = 1'b1;
    end else begin
        orig_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln42_fu_3267_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln41_fu_3237_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address0_local = zext_ln43_fu_3158_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address1_local = zext_ln40_fu_3373_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address1_local = zext_ln44_1_fu_2873_p1;
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1058_state11 == 1'b1))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_address0_local = zext_ln44_1_reg_4262_pp0_iter2_reg;
end else if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_10_address0_local = p_cast40_cast_reg_4060;
    end else begin
        sol_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg== 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_10_ce0_local = 1'b1;
    end else begin
        sol_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_ce1_local = 1'b1;
    end else begin
        sol_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_d0_local = add_ln48_47_fu_3501_p2;
    end else if ((~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_10_d0_local = add_ln48_11_fu_3306_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_10_d0_local = add_ln48_35_fu_3360_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_10_d0_local = add_ln48_29_fu_3347_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_10_d0_local = add_ln48_23_fu_3333_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_10_d0_local = add_ln48_17_fu_3320_p2;
    end else begin
        sol_10_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1026_state11 == 1'b1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg== 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_10_we0_local = 1'b1;
    end else begin
        sol_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1237_state8 == 1'b1))) begin
        sol_10_we1_local = 1'b1;
    end else begin
        sol_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_11_address0_local = zext_ln44_1_reg_4262_pp0_iter2_reg;
    end else if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_11_address0_local = p_cast40_cast_reg_4060;
    end else begin
        sol_11_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_11_ce0_local = 1'b1;
    end else begin
        sol_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_11_ce1_local = 1'b1;
    end else begin
        sol_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_11_d0_local = add_ln48_47_fu_3501_p2;
    end else if ((~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_11_d0_local = add_ln48_17_fu_3320_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_11_d0_local = add_ln48_35_fu_3360_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_11_d0_local = add_ln48_29_fu_3347_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_11_d0_local = add_ln48_23_fu_3333_p2;
    end else begin
        sol_11_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1020_state11 == 1'b1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1254_state8 == 1'b1))) begin
        sol_11_we1_local = 1'b1;
    end else begin
        sol_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_12_address0_local = zext_ln44_1_reg_4262_pp0_iter2_reg;
    end else if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_12_address0_local = p_cast40_cast_reg_4060;
    end else begin
        sol_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_12_ce0_local = 1'b1;
    end else begin
        sol_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_12_ce1_local = 1'b1;
    end else begin
        sol_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_12_d0_local = add_ln48_47_fu_3501_p2;
    end else if ((~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_12_d0_local = add_ln48_23_fu_3333_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_12_d0_local = add_ln48_35_fu_3360_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_12_d0_local = add_ln48_29_fu_3347_p2;
    end else begin
        sol_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1014_state11 == 1'b1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_12_we0_local = 1'b1;
    end else begin
        sol_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1271_state8 == 1'b1))) begin
        sol_12_we1_local = 1'b1;
    end else begin
        sol_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_13_address0_local = zext_ln44_1_reg_4262_pp0_iter2_reg;
    end else if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_13_address0_local = p_cast40_cast_reg_4060;
    end else begin
        sol_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_13_ce0_local = 1'b1;
    end else begin
        sol_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_13_ce1_local = 1'b1;
    end else begin
        sol_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_13_d0_local = add_ln48_47_fu_3501_p2;
    end else if ((~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_13_d0_local = add_ln48_29_fu_3347_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_13_d0_local = add_ln48_35_fu_3360_p2;
    end else begin
        sol_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1008_state11 == 1'b1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1288_state8 == 1'b1))) begin
        sol_13_we1_local = 1'b1;
    end else begin
        sol_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_address0_local = zext_ln44_1_reg_4262_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_14_address0_local = p_cast40_cast_reg_4060;
    end else begin
        sol_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_14_ce0_local = 1'b1;
    end else begin
        sol_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_ce1_local = 1'b1;
    end else begin
        sol_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_d0_local = add_ln48_47_fu_3501_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_14_d0_local = add_ln48_35_fu_3360_p2;
    end else begin
        sol_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1002_state11 == 1'b1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_14_we0_local = 1'b1;
    end else begin
        sol_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1381_state8 == 1'b1))) begin
        sol_14_we1_local = 1'b1;
    end else begin
        sol_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_15_ce0_local = 1'b1;
    end else begin
        sol_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_15_ce1_local = 1'b1;
    end else begin
        sol_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred996_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_15_we0_local = 1'b1;
    end else begin
        sol_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1392_state8 == 1'b1))) begin
        sol_15_we1_local = 1'b1;
    end else begin
        sol_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_938)) begin
        if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1)) begin
            sol_2_d0_local = add_ln48_11_fu_3306_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2)) begin
            sol_2_d0_local = add_ln48_5_fu_3293_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_938)) begin
        if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1)) begin
            sol_3_d0_local = add_ln48_17_fu_3320_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2)) begin
            sol_3_d0_local = add_ln48_11_fu_3306_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3)) begin
            sol_3_d0_local = add_ln48_5_fu_3293_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_938)) begin
        if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1)) begin
            sol_4_d0_local = add_ln48_23_fu_3333_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2)) begin
            sol_4_d0_local = add_ln48_17_fu_3320_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3)) begin
            sol_4_d0_local = add_ln48_11_fu_3306_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4)) begin
            sol_4_d0_local = add_ln48_5_fu_3293_p2;
        end else begin
            sol_4_d0_local = 'bx;
        end
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_938)) begin
        if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1)) begin
            sol_5_d0_local = add_ln48_29_fu_3347_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2)) begin
            sol_5_d0_local = add_ln48_23_fu_3333_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3)) begin
            sol_5_d0_local = add_ln48_17_fu_3320_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4)) begin
            sol_5_d0_local = add_ln48_11_fu_3306_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5)) begin
            sol_5_d0_local = add_ln48_5_fu_3293_p2;
        end else begin
            sol_5_d0_local = 'bx;
        end
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_938)) begin
        if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1)) begin
            sol_6_d0_local = add_ln48_35_fu_3360_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2)) begin
            sol_6_d0_local = add_ln48_29_fu_3347_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3)) begin
            sol_6_d0_local = add_ln48_23_fu_3333_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4)) begin
            sol_6_d0_local = add_ln48_17_fu_3320_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5)) begin
            sol_6_d0_local = add_ln48_11_fu_3306_p2;
        end else if ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6)) begin
            sol_6_d0_local = add_ln48_5_fu_3293_p2;
        end else begin
            sol_6_d0_local = 'bx;
        end
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_address0_local = sol_7_addr_reg_4673;
    end else if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_7_address0_local = p_cast40_cast_reg_4060;
    end else begin
        sol_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_d0_local = add_ln48_41_fu_3478_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_d0_local = add_ln48_35_fu_3360_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_d0_local = add_ln48_29_fu_3347_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_d0_local = add_ln48_23_fu_3333_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_d0_local = add_ln48_17_fu_3320_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_d0_local = add_ln48_11_fu_3306_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_d0_local = add_ln48_5_fu_3293_p2;
    end else begin
        sol_7_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)& (ap_predicate_pred1314_state8 == 1'b1)))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_8_address0_local = zext_ln44_1_reg_4262_pp0_iter2_reg;
    end else if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_8_address0_local = p_cast40_cast_reg_4060;
    end else begin
        sol_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_8_ce0_local = 1'b1;
    end else begin
        sol_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_8_ce1_local = 1'b1;
    end else begin
        sol_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_8_d0_local = add_ln48_47_fu_3501_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_8_d0_local = add_ln48_35_fu_3360_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_8_d0_local = add_ln48_29_fu_3347_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_8_d0_local = add_ln48_23_fu_3333_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_8_d0_local = add_ln48_17_fu_3320_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_8_d0_local = add_ln48_11_fu_3306_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_8_d0_local = add_ln48_5_fu_3293_p2;
    end else begin
        sol_8_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)& (ap_predicate_pred1038_state11 == 1'b1)))) begin
        sol_8_we0_local = 1'b1;
    end else begin
        sol_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1182_state8 == 1'b1))) begin
        sol_8_we1_local = 1'b1;
    end else begin
        sol_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_9_address0_local = zext_ln44_1_reg_4262_pp0_iter2_reg;
end else if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3)& ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_9_address0_local = p_cast40_cast_reg_4060;
    end else begin
        sol_9_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6)& ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_9_ce0_local = 1'b1;
    end else begin
        sol_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_9_ce1_local = 1'b1;
    end else begin
        sol_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_9_d0_local = add_ln48_47_fu_3501_p2;
    end else if ((~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_d0_local = add_ln48_5_fu_3293_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_d0_local = add_ln48_35_fu_3360_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_d0_local = add_ln48_29_fu_3347_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_d0_local = add_ln48_23_fu_3333_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_d0_local = add_ln48_17_fu_3320_p2;
    end else if (((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_d0_local = add_ln48_11_fu_3306_p2;
    end else begin
        sol_9_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1032_state11 == 1'b1)) | (~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd8) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd7) & ~(trunc_ln10_reg_4086_pp0_iter1_reg== 4'd6) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd5) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd4) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd3) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd2) & ~(trunc_ln10_reg_4086_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1220_state8 == 1'b1))) begin
        sol_9_we1_local = 1'b1;
    end else begin
        sol_9_we1_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_fu_3259_p2 = (zext_ln44_reg_4254 + empty_7);
assign add_ln41_fu_3233_p2 = (zext_ln44_reg_4254 + empty);
assign add_ln42_fu_3263_p2 = (zext_ln44_reg_4254 + tmp_34);
assign add_ln43_fu_3154_p2 = (zext_ln44_reg_4254 + tmp_35);
assign add_ln44_1_fu_2851_p2 = (k_1_reg_4079 + 5'd7);
assign add_ln44_2_fu_2868_p2 = (zext_ln44_fu_2864_p1 + tmp_33);
assign add_ln44_3_fu_3171_p2 = (k_1_reg_4079 + 5'd8);
assign add_ln44_4_fu_3283_p2 = (zext_ln44_2_fu_3280_p1 + tmp_33);
assign add_ln44_fu_2738_p2 = (k_1_reg_4079 + 5'd6);
assign add_ln48_10_fu_2939_p2 = (add_ln48_9_reg_4195 + add_ln48_7_fu_2934_p2);
assign add_ln48_11_fu_3306_p2 = (reg_1616 + mul_ln48_2_reg_4340);
assign add_ln48_12_fu_2368_p2 = ($signed(sum0_1_reg_4128) + $signed(tmp_4_fu_2266_p21));
assign add_ln48_13_fu_2978_p2 = (add_ln48_12_reg_4200 + tmp_s_fu_2944_p21);
assign add_ln48_14_fu_2373_p2 = ($signed(tmp_11_fu_2334_p21) + $signed(sum0_3_reg_4147));
assign add_ln48_15_fu_2378_p2 = (add_ln48_14_fu_2373_p2 + tmp_10_fu_2300_p21);
assign add_ln48_16_fu_2983_p2 = (add_ln48_15_reg_4205 + add_ln48_13_fu_2978_p2);
assign add_ln48_17_fu_3320_p2 = (mul_ln48_5_reg_4563 + mul_ln48_4_reg_4350);
assign add_ln48_18_fu_2486_p2 = ($signed(sum0_2_reg_4140) + $signed(tmp_13_fu_2384_p21));
assign add_ln48_19_fu_3022_p2 = (add_ln48_18_reg_4210 + tmp_12_fu_2988_p21);
assign add_ln48_1_fu_2891_p2 = (add_ln48_reg_4180 + tmp_1_reg_4175);
assign add_ln48_20_fu_2491_p2 = ($signed(tmp_15_fu_2452_p21) + $signed(sum0_4_reg_4154));
assign add_ln48_21_fu_2496_p2 = (add_ln48_20_fu_2491_p2 + tmp_14_fu_2418_p21);
assign add_ln48_22_fu_3027_p2 = (add_ln48_21_reg_4215 + add_ln48_19_fu_3022_p2);
assign add_ln48_23_fu_3333_p2 = (reg_1620 + mul_ln48_6_reg_4360);
assign add_ln48_24_fu_2604_p2 = ($signed(sum0_3_reg_4147) + $signed(tmp_17_fu_2502_p21));
assign add_ln48_25_fu_3066_p2 = (add_ln48_24_reg_4220 + tmp_16_fu_3032_p21);
assign add_ln48_26_fu_2609_p2 = ($signed(tmp_19_fu_2570_p21) + $signed(sum0_5_reg_4161));
assign add_ln48_27_fu_2614_p2 = (add_ln48_26_fu_2609_p2 + tmp_18_fu_2536_p21);
assign add_ln48_28_fu_3071_p2 = (add_ln48_27_reg_4225 + add_ln48_25_fu_3066_p2);
assign add_ln48_29_fu_3347_p2 = (mul_ln48_9_reg_4568 + mul_ln48_8_reg_4370);
assign add_ln48_2_fu_2138_p2 = ($signed(sum0_1_reg_4128) + $signed(tmp_5_reg_4135));
assign add_ln48_30_fu_2722_p2 = ($signed(sum0_4_reg_4154) + $signed(tmp_21_fu_2620_p21));
assign add_ln48_31_fu_3110_p2 = (add_ln48_30_reg_4230 + tmp_20_fu_3076_p21);
assign add_ln48_32_fu_2727_p2 = ($signed(tmp_23_fu_2688_p21) + $signed(sum0_6_reg_4168));
assign add_ln48_33_fu_2732_p2 = (add_ln48_32_fu_2727_p2 + tmp_22_fu_2654_p21);
assign add_ln48_34_fu_3115_p2 = (add_ln48_33_reg_4235 + add_ln48_31_fu_3110_p2);
assign add_ln48_35_fu_3360_p2 = (mul_ln48_11_reg_4573 + mul_ln48_10_reg_4380);
assign add_ln48_36_fu_2886_p2 = ($signed(sum0_5_reg_4161) + $signed(tmp_25_fu_2749_p21));
assign add_ln48_37_fu_3250_p2 = (add_ln48_36_reg_4320 + tmp_24_reg_4385);
assign add_ln48_38_fu_3223_p2 = ($signed(tmp_27_reg_4249) + $signed(sum0_7_fu_3189_p21));
assign add_ln48_39_fu_3228_p2 = (add_ln48_38_fu_3223_p2 + tmp_26_reg_4244);
assign add_ln48_3_fu_2142_p2 = (add_ln48_2_fu_2138_p2 + tmp_3_fu_2098_p21);
assign add_ln48_40_fu_3254_p2 = (add_ln48_39_reg_4498 + add_ln48_37_fu_3250_p2);
assign add_ln48_41_fu_3478_p2 = (reg_1616 + mul_ln48_12_reg_4503_pp0_iter2_reg);
assign add_ln48_42_fu_3420_p2 = ($signed(sum0_6_reg_4168_pp0_iter1_reg) + $signed(reg_1624));
assign add_ln48_43_fu_3492_p2 = (add_ln48_42_reg_4733 + tmp_28_reg_4738);
assign add_ln48_44_fu_3468_p2 = (tmp_31_reg_4553 + tmp_32_reg_4728);
assign add_ln48_45_fu_3472_p2 = (add_ln48_44_fu_3468_p2 + reg_1624);
assign add_ln48_46_fu_3496_p2 = (add_ln48_45_reg_4743 + add_ln48_43_fu_3492_p2);
assign add_ln48_47_fu_3501_p2 = (reg_1620 + mul_ln48_14_reg_4748_pp0_iter3_reg);
assign add_ln48_4_fu_2895_p2 = (add_ln48_3_reg_4185 + add_ln48_1_fu_2891_p2);
assign add_ln48_5_fu_3293_p2 = (mul_ln48_1_reg_4558 + mul_ln48_reg_4330);
assign add_ln48_6_fu_2250_p2 = ($signed(sum0_reg_4122) + $signed(tmp_7_fu_2148_p21));
assign add_ln48_7_fu_2934_p2 = (add_ln48_6_reg_4190 + tmp_6_fu_2900_p21);
assign add_ln48_8_fu_2255_p2 = ($signed(tmp_9_fu_2216_p21) + $signed(sum0_2_reg_4140));
assign add_ln48_9_fu_2260_p2 = (add_ln48_8_fu_2255_p2 + tmp_8_fu_2182_p21);
assign add_ln48_fu_2132_p2 = (tmp_fu_1996_p21 + tmp_2_fu_2064_p21);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_938 = ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_1573_p19 = 'bx;
assign icmp_ln38_fu_2743_p2 = ((add_ln44_fu_2738_p2 < 5'd15) ? 1'b1 : 1'b0);
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_10_address0 = orig_10_address0_local;
assign orig_10_address1 = orig_10_address1_local;
assign orig_10_ce0 = orig_10_ce0_local;
assign orig_10_ce1 = orig_10_ce1_local;
assign orig_11_address0 = orig_11_address0_local;
assign orig_11_address1 = orig_11_address1_local;
assign orig_11_ce0 = orig_11_ce0_local;
assign orig_11_ce1 = orig_11_ce1_local;
assign orig_12_address0 = orig_12_address0_local;
assign orig_12_address1 = orig_12_address1_local;
assign orig_12_ce0 = orig_12_ce0_local;
assign orig_12_ce1 = orig_12_ce1_local;
assign orig_13_address0 = orig_13_address0_local;
assign orig_13_address1 = orig_13_address1_local;
assign orig_13_ce0 = orig_13_ce0_local;
assign orig_13_ce1 = orig_13_ce1_local;
assign orig_14_address0 = orig_14_address0_local;
assign orig_14_address1 = orig_14_address1_local;
assign orig_14_ce0 = orig_14_ce0_local;
assign orig_14_ce1 = orig_14_ce1_local;
assign orig_15_address0 = orig_15_address0_local;
assign orig_15_address1 = orig_15_address1_local;
assign orig_15_ce0 = orig_15_ce0_local;
assign orig_15_ce1 = orig_15_ce1_local;
assign orig_1_address0 = zext_ln44_3_fu_3288_p1;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_8_address0 = orig_8_address0_local;
assign orig_8_address1 = orig_8_address1_local;
assign orig_8_ce0 = orig_8_ce0_local;
assign orig_8_ce1 = orig_8_ce1_local;
assign orig_9_address0 = orig_9_address0_local;
assign orig_9_address1 = orig_9_address1_local;
assign orig_9_ce0 = orig_9_ce0_local;
assign orig_9_ce1 = orig_9_ce1_local;
assign p_cast40_cast_fu_1628_p1 = p_cast40;
assign sol_0_address0 = zext_ln44_1_reg_4262_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_47_fu_3501_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_10_address0 = sol_10_address0_local;
assign sol_10_address1 = sol_10_addr_reg_4658;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_ce1 = sol_10_ce1_local;
assign sol_10_d0 = sol_10_d0_local;
assign sol_10_d1 = add_ln48_41_fu_3478_p2;
assign sol_10_we0 = sol_10_we0_local;
assign sol_10_we1 = sol_10_we1_local;
assign sol_11_address0 = sol_11_address0_local;
assign sol_11_address1 = sol_11_addr_reg_4653;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_ce1 = sol_11_ce1_local;
assign sol_11_d0 = sol_11_d0_local;
assign sol_11_d1 = add_ln48_41_fu_3478_p2;
assign sol_11_we0 = sol_11_we0_local;
assign sol_11_we1 = sol_11_we1_local;
assign sol_12_address0 = sol_12_address0_local;
assign sol_12_address1 = sol_12_addr_reg_4648;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_ce1 = sol_12_ce1_local;
assign sol_12_d0 = sol_12_d0_local;
assign sol_12_d1 = add_ln48_41_fu_3478_p2;
assign sol_12_we0 = sol_12_we0_local;
assign sol_12_we1 = sol_12_we1_local;
assign sol_13_address0 = sol_13_address0_local;
assign sol_13_address1 = sol_13_addr_reg_4643;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_ce1 = sol_13_ce1_local;
assign sol_13_d0 = sol_13_d0_local;
assign sol_13_d1 = add_ln48_41_fu_3478_p2;
assign sol_13_we0 = sol_13_we0_local;
assign sol_13_we1 = sol_13_we1_local;
assign sol_14_address0 = sol_14_address0_local;
assign sol_14_address1 = sol_14_addr_reg_4638;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_ce1 = sol_14_ce1_local;
assign sol_14_d0 = sol_14_d0_local;
assign sol_14_d1 = add_ln48_41_fu_3478_p2;
assign sol_14_we0 = sol_14_we0_local;
assign sol_14_we1 = sol_14_we1_local;
assign sol_15_address0 = zext_ln44_1_reg_4262_pp0_iter2_reg;
assign sol_15_address1 = sol_15_addr_reg_4678;
assign sol_15_ce0 = sol_15_ce0_local;
assign sol_15_ce1 = sol_15_ce1_local;
assign sol_15_d0 = add_ln48_47_fu_3501_p2;
assign sol_15_d1 = add_ln48_41_fu_3478_p2;
assign sol_15_we0 = sol_15_we0_local;
assign sol_15_we1 = sol_15_we1_local;
assign sol_1_address0 = p_cast40_cast_reg_4060;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_3293_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = p_cast40_cast_reg_4060;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = p_cast40_cast_reg_4060;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = p_cast40_cast_reg_4060;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = sol_4_d0_local;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = p_cast40_cast_reg_4060;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = sol_5_d0_local;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = p_cast40_cast_reg_4060;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = sol_6_d0_local;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = sol_7_address0_local;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = sol_7_d0_local;
assign sol_7_we0 = sol_7_we0_local;
assign sol_8_address0 = sol_8_address0_local;
assign sol_8_address1 = sol_8_addr_reg_4668;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_ce1 = sol_8_ce1_local;
assign sol_8_d0 = sol_8_d0_local;
assign sol_8_d1 = add_ln48_41_fu_3478_p2;
assign sol_8_we0 = sol_8_we0_local;
assign sol_8_we1 = sol_8_we1_local;
assign sol_9_address0 = sol_9_address0_local;
assign sol_9_address1 = sol_9_addr_reg_4663;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_ce1 = sol_9_ce1_local;
assign sol_9_d0 = sol_9_d0_local;
assign sol_9_d1 = add_ln48_41_fu_3478_p2;
assign sol_9_we0 = sol_9_we0_local;
assign sol_9_we1 = sol_9_we1_local;
assign sum0_1_fu_1688_p19 = 'bx;
assign sum0_2_fu_1776_p19 = 'bx;
assign sum0_3_fu_1820_p19 = 'bx;
assign sum0_4_fu_1864_p19 = 'bx;
assign sum0_5_fu_1908_p19 = 'bx;
assign sum0_6_fu_1952_p19 = 'bx;
assign sum0_7_fu_3189_p19 = 'bx;
assign sum0_fu_1644_p19 = 'bx;
assign tmp_10_fu_2300_p19 = 'bx;
assign tmp_11_fu_2334_p19 = 'bx;
assign tmp_12_fu_2988_p19 = 'bx;
assign tmp_13_fu_2384_p19 = 'bx;
assign tmp_14_fu_2418_p19 = 'bx;
assign tmp_15_fu_2452_p19 = 'bx;
assign tmp_16_fu_3032_p19 = 'bx;
assign tmp_17_fu_2502_p19 = 'bx;
assign tmp_18_fu_2536_p19 = 'bx;
assign tmp_19_fu_2570_p19 = 'bx;
assign tmp_1_fu_2030_p19 = 'bx;
assign tmp_20_fu_3076_p19 = 'bx;
assign tmp_21_fu_2620_p19 = 'bx;
assign tmp_22_fu_2654_p19 = 'bx;
assign tmp_23_fu_2688_p19 = 'bx;
assign tmp_24_fu_3120_p19 = 'bx;
assign tmp_25_fu_2749_p19 = 'bx;
assign tmp_26_fu_2783_p19 = 'bx;
assign tmp_27_fu_2817_p19 = 'bx;
assign tmp_28_fu_3425_p19 = 'bx;
assign tmp_2_fu_2064_p19 = 'bx;
assign tmp_32_fu_3385_p19 = 'bx;
assign tmp_38_fu_2856_p3 = add_ln44_1_fu_2851_p2[32'd4];
assign tmp_3_fu_2098_p19 = 'bx;
assign tmp_4_fu_2266_p19 = 'bx;
assign tmp_5_fu_1732_p19 = 'bx;
assign tmp_6_fu_2900_p19 = 'bx;
assign tmp_7_fu_2148_p19 = 'bx;
assign tmp_8_fu_2182_p19 = 'bx;
assign tmp_9_fu_2216_p19 = 'bx;
assign tmp_fu_1996_p19 = 'bx;
assign tmp_s_fu_2944_p19 = 'bx;
assign trunc_ln10_fu_1640_p1 = ap_sig_allocacmp_k_1[3:0];
assign zext_ln40_fu_3373_p1 = add_ln40_reg_4583;
assign zext_ln41_fu_3237_p1 = add_ln41_fu_3233_p2;
assign zext_ln42_fu_3267_p1 = add_ln42_fu_3263_p2;
assign zext_ln43_fu_3158_p1 = add_ln43_fu_3154_p2;
assign zext_ln44_1_fu_2873_p1 = add_ln44_2_fu_2868_p2;
assign zext_ln44_2_fu_3280_p1 = tmp_39_reg_4488;
assign zext_ln44_3_fu_3288_p1 = add_ln44_4_fu_3283_p2;
assign zext_ln44_fu_2864_p1 = tmp_38_fu_2856_p3;
always @ (posedge ap_clk) begin
    p_cast40_cast_reg_4060[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_4254[9:1] <= 9'b000000000;
    zext_ln44_1_reg_4262[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_4262_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_4262_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 