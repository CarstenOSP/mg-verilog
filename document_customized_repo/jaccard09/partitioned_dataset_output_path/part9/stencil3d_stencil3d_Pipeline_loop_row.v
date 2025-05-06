
module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_14_address1,sol_14_ce1,sol_14_we1,sol_14_d1,p_cast31,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_13_address1,sol_13_ce1,sol_13_we1,sol_13_d1,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_12_address1,sol_12_ce1,sol_12_we1,sol_12_d1,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_11_address1,sol_11_ce1,sol_11_we1,sol_11_d1,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_10_address1,sol_10_ce1,sol_10_we1,sol_10_d1,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_9_address1,sol_9_ce1,sol_9_we1,sol_9_d1,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_8_address1,sol_8_ce1,sol_8_we1,sol_8_d1,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_7_address1,sol_7_ce1,sol_7_we1,sol_7_d1,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_6_address1,sol_6_ce1,sol_6_we1,sol_6_d1,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_5_address1,sol_5_ce1,sol_5_we1,sol_5_d1,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_4_address1,sol_4_ce1,sol_4_we1,sol_4_d1,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_15_address1,sol_15_ce1,sol_15_we1,sol_15_d1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_1_load_12,orig_2_load_12,orig_3_load_12,orig_4_load_12,orig_5_load_12,orig_6_load_12,orig_7_load_12,orig_8_load_12,orig_9_load_12,orig_10_load_12,orig_11_load_12,orig_12_load_12,orig_13_load_12,orig_1_load_8,orig_2_load_8,orig_3_load_8,orig_4_load_8,orig_5_load_8,orig_6_load_8,orig_7_load_8,orig_8_load_8,orig_9_load_8,orig_10_load_8,orig_11_load_8,orig_12_load_8,orig_13_load_8,orig_1_load_9,orig_2_load_9,orig_3_load_9,orig_4_load_9,orig_5_load_9,orig_6_load_9,orig_7_load_9,orig_8_load_9,orig_9_load_9,orig_10_load_9,orig_11_load_9,orig_12_load_9,orig_13_load_9,orig_1_load_10,orig_2_load_10,orig_3_load_10,orig_4_load_10,orig_5_load_10,orig_6_load_10,orig_7_load_10,orig_8_load_10,orig_9_load_10,orig_10_load_10,orig_11_load_10,orig_12_load_10,orig_13_load_10,orig_1_load_11,orig_2_load_11,orig_3_load_11,orig_4_load_11,orig_5_load_11,orig_6_load_11,orig_7_load_11,orig_8_load_11,orig_9_load_11,orig_10_load_11,orig_11_load_11,orig_12_load_11,orig_13_load_11,orig_14_load_8,orig_0_load_68,C_load,C_load_1,orig_14_load_9,orig_14_load_10,orig_14_load_11,orig_14_load_12,orig_15_load_68,orig_15_load_69,orig_15_load_70,orig_15_load_71,orig_15_load_72,tmp_17,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,empty_8,empty,tmp_18,tmp_19,orig_1_address0,orig_1_ce0,orig_1_q0);  
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
input  [9:0] p_cast31;
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
output  [9:0] sol_7_address1;
output   sol_7_ce1;
output   sol_7_we1;
output  [31:0] sol_7_d1;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_6_address1;
output   sol_6_ce1;
output   sol_6_we1;
output  [31:0] sol_6_d1;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_5_address1;
output   sol_5_ce1;
output   sol_5_we1;
output  [31:0] sol_5_d1;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_4_address1;
output   sol_4_ce1;
output   sol_4_we1;
output  [31:0] sol_4_d1;
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
input  [31:0] orig_1_load_12;
input  [31:0] orig_2_load_12;
input  [31:0] orig_3_load_12;
input  [31:0] orig_4_load_12;
input  [31:0] orig_5_load_12;
input  [31:0] orig_6_load_12;
input  [31:0] orig_7_load_12;
input  [31:0] orig_8_load_12;
input  [31:0] orig_9_load_12;
input  [31:0] orig_10_load_12;
input  [31:0] orig_11_load_12;
input  [31:0] orig_12_load_12;
input  [31:0] orig_13_load_12;
input  [31:0] orig_1_load_8;
input  [31:0] orig_2_load_8;
input  [31:0] orig_3_load_8;
input  [31:0] orig_4_load_8;
input  [31:0] orig_5_load_8;
input  [31:0] orig_6_load_8;
input  [31:0] orig_7_load_8;
input  [31:0] orig_8_load_8;
input  [31:0] orig_9_load_8;
input  [31:0] orig_10_load_8;
input  [31:0] orig_11_load_8;
input  [31:0] orig_12_load_8;
input  [31:0] orig_13_load_8;
input  [31:0] orig_1_load_9;
input  [31:0] orig_2_load_9;
input  [31:0] orig_3_load_9;
input  [31:0] orig_4_load_9;
input  [31:0] orig_5_load_9;
input  [31:0] orig_6_load_9;
input  [31:0] orig_7_load_9;
input  [31:0] orig_8_load_9;
input  [31:0] orig_9_load_9;
input  [31:0] orig_10_load_9;
input  [31:0] orig_11_load_9;
input  [31:0] orig_12_load_9;
input  [31:0] orig_13_load_9;
input  [31:0] orig_1_load_10;
input  [31:0] orig_2_load_10;
input  [31:0] orig_3_load_10;
input  [31:0] orig_4_load_10;
input  [31:0] orig_5_load_10;
input  [31:0] orig_6_load_10;
input  [31:0] orig_7_load_10;
input  [31:0] orig_8_load_10;
input  [31:0] orig_9_load_10;
input  [31:0] orig_10_load_10;
input  [31:0] orig_11_load_10;
input  [31:0] orig_12_load_10;
input  [31:0] orig_13_load_10;
input  [31:0] orig_1_load_11;
input  [31:0] orig_2_load_11;
input  [31:0] orig_3_load_11;
input  [31:0] orig_4_load_11;
input  [31:0] orig_5_load_11;
input  [31:0] orig_6_load_11;
input  [31:0] orig_7_load_11;
input  [31:0] orig_8_load_11;
input  [31:0] orig_9_load_11;
input  [31:0] orig_10_load_11;
input  [31:0] orig_11_load_11;
input  [31:0] orig_12_load_11;
input  [31:0] orig_13_load_11;
input  [31:0] orig_14_load_8;
input  [31:0] orig_0_load_68;
input  [31:0] C_load;
input  [31:0] C_load_1;
input  [31:0] orig_14_load_9;
input  [31:0] orig_14_load_10;
input  [31:0] orig_14_load_11;
input  [31:0] orig_14_load_12;
input  [31:0] orig_15_load_68;
input  [31:0] orig_15_load_69;
input  [31:0] orig_15_load_70;
input  [31:0] orig_15_load_71;
input  [31:0] orig_15_load_72;
input  [9:0] tmp_17;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
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
input  [9:0] empty_8;
input  [9:0] empty;
input  [9:0] tmp_18;
input  [9:0] tmp_19;
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
reg   [0:0] icmp_ln38_reg_3741;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_1809_p2;
reg   [31:0] reg_1880;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_1813_p2;
reg   [31:0] reg_1884;
wire   [31:0] grp_fu_1821_p29;
reg   [31:0] reg_1888;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] p_cast31_cast_fu_1892_p1;
reg   [63:0] p_cast31_cast_reg_3640;
reg   [4:0] k_1_reg_3659;
wire   [3:0] trunc_ln16_fu_1904_p1;
reg   [3:0] trunc_ln16_reg_3666;
reg   [3:0] trunc_ln16_reg_3666_pp0_iter1_reg;
reg   [3:0] trunc_ln16_reg_3666_pp0_iter2_reg;
wire  signed [31:0] sum0_fu_1908_p29;
reg  signed [31:0] sum0_reg_3686;
wire  signed [31:0] sum0_1_fu_1968_p29;
reg  signed [31:0] sum0_1_reg_3692;
wire   [31:0] tmp_5_fu_2028_p29;
reg   [31:0] tmp_5_reg_3699;
wire  signed [31:0] sum0_2_fu_2088_p29;
reg  signed [31:0] sum0_2_reg_3704;
reg  signed [31:0] sum0_2_reg_3704_pp0_iter1_reg;
wire   [31:0] tmp_1_fu_2194_p29;
reg   [31:0] tmp_1_reg_3711;
wire   [31:0] add_ln48_fu_2332_p2;
reg   [31:0] add_ln48_reg_3716;
wire   [31:0] add_ln48_3_fu_2342_p2;
reg   [31:0] add_ln48_3_reg_3721;
wire   [31:0] tmp_6_fu_2348_p29;
reg   [31:0] tmp_6_reg_3726;
wire   [31:0] add_ln48_6_fu_2532_p2;
reg   [31:0] add_ln48_6_reg_3731;
wire   [31:0] add_ln48_9_fu_2542_p2;
reg   [31:0] add_ln48_9_reg_3736;
wire   [0:0] icmp_ln38_fu_2553_p2;
reg   [0:0] icmp_ln38_reg_3741_pp0_iter1_reg;
reg   [0:0] icmp_ln38_reg_3741_pp0_iter2_reg;
wire   [31:0] tmp_s_fu_2559_p29;
reg   [31:0] tmp_s_reg_3745;
wire   [31:0] tmp_10_fu_2651_p29;
reg   [31:0] tmp_10_reg_3750;
wire   [31:0] tmp_11_fu_2697_p29;
reg   [31:0] tmp_11_reg_3755;
wire   [9:0] zext_ln44_fu_2756_p1;
reg   [9:0] zext_ln44_reg_3760;
wire   [63:0] zext_ln44_1_fu_2765_p1;
reg   [63:0] zext_ln44_1_reg_3768;
reg   [63:0] zext_ln44_1_reg_3768_pp0_iter1_reg;
reg   [63:0] zext_ln44_1_reg_3768_pp0_iter2_reg;
wire   [31:0] add_ln48_12_fu_2782_p2;
reg   [31:0] add_ln48_12_reg_3850;
wire  signed [31:0] add_ln48_4_fu_2791_p2;
reg  signed [31:0] add_ln48_4_reg_3855;
reg   [31:0] mul_ln48_reg_3860;
wire  signed [31:0] add_ln48_10_fu_2800_p2;
reg  signed [31:0] add_ln48_10_reg_3865;
reg   [31:0] mul_ln48_2_reg_3870;
reg   [31:0] orig_0_load_reg_3875;
reg   [31:0] orig_5_load_reg_3880;
reg   [31:0] orig_6_load_reg_3885;
reg   [31:0] orig_7_load_reg_3890;
reg   [31:0] orig_8_load_reg_3895;
reg   [31:0] orig_9_load_reg_3900;
reg   [31:0] orig_10_load_reg_3905;
reg   [31:0] orig_11_load_reg_3910;
reg   [31:0] orig_12_load_reg_3915;
reg   [31:0] orig_13_load_reg_3920;
reg   [31:0] orig_14_load_reg_3925;
reg   [31:0] orig_15_load_reg_3930;
wire  signed [31:0] sum0_3_fu_2805_p29;
reg  signed [31:0] sum0_3_reg_3935;
wire   [31:0] grp_fu_1817_p2;
reg   [31:0] mul_ln48_4_reg_3941;
reg   [31:0] mul_ln48_4_reg_3941_pp0_iter1_reg;
reg   [0:0] tmp_23_reg_4011;
wire   [31:0] add_ln48_15_fu_2907_p2;
reg   [31:0] add_ln48_15_reg_4016;
reg   [31:0] tmp_15_reg_4086;
wire  signed [31:0] add_ln48_16_fu_2937_p2;
reg  signed [31:0] add_ln48_16_reg_4091;
wire   [9:0] add_ln40_fu_2942_p2;
reg   [9:0] add_ln40_reg_4096;
reg   [31:0] mul_ln48_6_reg_4171;
reg   [31:0] mul_ln48_6_reg_4171_pp0_iter2_reg;
reg   [9:0] sol_14_addr_reg_4176;
reg   [9:0] sol_13_addr_reg_4181;
reg   [9:0] sol_12_addr_reg_4186;
reg   [9:0] sol_11_addr_reg_4191;
reg   [9:0] sol_10_addr_reg_4196;
reg   [9:0] sol_9_addr_reg_4201;
reg   [9:0] sol_8_addr_reg_4206;
reg   [9:0] sol_7_addr_reg_4211;
reg   [9:0] sol_6_addr_reg_4216;
reg   [9:0] sol_5_addr_reg_4221;
reg   [9:0] sol_4_addr_reg_4226;
reg   [9:0] sol_3_addr_reg_4231;
reg   [9:0] sol_15_addr_reg_4236;
wire   [31:0] tmp_16_fu_3032_p29;
reg   [31:0] tmp_16_reg_4306;
wire   [31:0] add_ln48_18_fu_3079_p2;
reg   [31:0] add_ln48_18_reg_4311;
wire   [31:0] tmp_12_fu_3084_p29;
reg   [31:0] tmp_12_reg_4316;
wire   [31:0] add_ln48_21_fu_3147_p2;
reg   [31:0] add_ln48_21_reg_4321;
wire  signed [31:0] add_ln48_22_fu_3175_p2;
reg  signed [31:0] add_ln48_22_reg_4326;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln43_fu_2868_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_2916_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln42_fu_2950_p1;
wire   [63:0] zext_ln44_3_fu_2975_p1;
wire   [63:0] zext_ln40_fu_3016_p1;
reg    ap_predicate_pred1117_state11;
reg    ap_predicate_pred1123_state11;
reg    ap_predicate_pred1129_state11;
reg    ap_predicate_pred1135_state11;
reg    ap_predicate_pred1141_state11;
reg    ap_predicate_pred1147_state11;
reg    ap_predicate_pred1153_state11;
reg    ap_predicate_pred1159_state11;
reg    ap_predicate_pred1165_state11;
reg    ap_predicate_pred1171_state11;
reg    ap_predicate_pred1177_state11;
reg    ap_predicate_pred1183_state11;
reg    ap_predicate_pred1201_state11;
reg   [4:0] k_fu_300;
wire   [4:0] add_ln44_3_fu_2885_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_k_1;
reg    orig_0_ce1_local;
reg   [9:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [9:0] orig_0_address0_local;
reg    orig_4_ce1_local;
reg   [9:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [9:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [9:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [9:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
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
reg    sol_12_we0_local;
reg   [31:0] sol_12_d0_local;
wire   [31:0] add_ln48_5_fu_2980_p2;
reg    sol_12_ce0_local;
reg   [9:0] sol_12_address0_local;
wire   [31:0] add_ln48_11_fu_2998_p2;
reg    sol_12_we1_local;
reg    ap_predicate_pred1326_state8;
wire   [31:0] add_ln48_17_fu_3153_p2;
reg    sol_12_ce1_local;
wire   [31:0] add_ln48_23_fu_3180_p2;
reg    sol_13_we0_local;
reg   [31:0] sol_13_d0_local;
reg    sol_13_ce0_local;
reg   [9:0] sol_13_address0_local;
reg    sol_13_we1_local;
reg    ap_predicate_pred1355_state8;
reg    sol_13_ce1_local;
reg    sol_11_we0_local;
reg   [31:0] sol_11_d0_local;
reg    sol_11_ce0_local;
reg   [9:0] sol_11_address0_local;
reg    sol_11_we1_local;
reg    ap_predicate_pred1374_state8;
reg    sol_11_ce1_local;
reg    sol_10_we0_local;
reg   [31:0] sol_10_d0_local;
reg    sol_10_ce0_local;
reg   [9:0] sol_10_address0_local;
reg    sol_10_we1_local;
reg    ap_predicate_pred1393_state8;
reg    sol_10_ce1_local;
reg    sol_9_we0_local;
reg   [31:0] sol_9_d0_local;
reg    sol_9_ce0_local;
reg   [9:0] sol_9_address0_local;
reg    sol_9_we1_local;
reg    ap_predicate_pred1412_state8;
reg    sol_9_ce1_local;
reg    sol_8_we0_local;
reg   [31:0] sol_8_d0_local;
reg    sol_8_ce0_local;
reg   [9:0] sol_8_address0_local;
reg    sol_8_we1_local;
reg    ap_predicate_pred1431_state8;
reg    sol_8_ce1_local;
reg    sol_7_we0_local;
reg   [31:0] sol_7_d0_local;
reg    sol_7_ce0_local;
reg   [9:0] sol_7_address0_local;
reg    sol_7_we1_local;
reg    ap_predicate_pred1450_state8;
reg    sol_7_ce1_local;
reg    sol_6_we0_local;
reg   [31:0] sol_6_d0_local;
reg    sol_6_ce0_local;
reg   [9:0] sol_6_address0_local;
reg    sol_6_we1_local;
reg    ap_predicate_pred1469_state8;
reg    sol_6_ce1_local;
reg    sol_5_we0_local;
reg   [31:0] sol_5_d0_local;
reg    sol_5_ce0_local;
reg   [9:0] sol_5_address0_local;
reg    sol_5_we1_local;
reg    ap_predicate_pred1488_state8;
reg    sol_5_ce1_local;
reg    sol_4_we0_local;
reg   [31:0] sol_4_d0_local;
reg    sol_4_ce0_local;
reg   [9:0] sol_4_address0_local;
reg    sol_4_we1_local;
reg    ap_predicate_pred1507_state8;
reg    sol_4_ce1_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
reg    sol_3_ce0_local;
reg   [9:0] sol_3_address0_local;
reg    ap_predicate_pred1525_state8;
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
reg    ap_predicate_pred1548_state8;
reg    sol_14_ce1_local;
reg    sol_15_we1_local;
reg    ap_predicate_pred1565_state8;
reg    sol_15_ce1_local;
reg    sol_15_we0_local;
reg    sol_15_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg  signed [31:0] grp_fu_1809_p0;
reg  signed [31:0] grp_fu_1809_p1;
reg  signed [31:0] grp_fu_1813_p0;
reg  signed [31:0] grp_fu_1813_p1;
reg  signed [31:0] grp_fu_1817_p1;
wire   [31:0] grp_fu_1821_p27;
reg   [3:0] grp_fu_1821_p28;
wire   [31:0] sum0_fu_1908_p27;
wire   [31:0] sum0_1_fu_1968_p27;
wire   [31:0] tmp_5_fu_2028_p27;
wire   [31:0] sum0_2_fu_2088_p27;
wire   [31:0] tmp_fu_2148_p27;
wire   [31:0] tmp_1_fu_2194_p27;
wire   [31:0] tmp_2_fu_2240_p27;
wire   [31:0] tmp_3_fu_2286_p27;
wire   [31:0] tmp_fu_2148_p29;
wire   [31:0] tmp_2_fu_2240_p29;
wire   [31:0] add_ln48_2_fu_2338_p2;
wire   [31:0] tmp_3_fu_2286_p29;
wire   [31:0] tmp_6_fu_2348_p27;
wire   [31:0] tmp_7_fu_2394_p27;
wire   [31:0] tmp_8_fu_2440_p27;
wire   [31:0] tmp_9_fu_2486_p27;
wire   [31:0] tmp_7_fu_2394_p29;
wire   [31:0] tmp_9_fu_2486_p29;
wire   [31:0] add_ln48_8_fu_2537_p2;
wire   [31:0] tmp_8_fu_2440_p29;
wire   [4:0] add_ln44_fu_2548_p2;
wire   [31:0] tmp_s_fu_2559_p27;
wire   [31:0] tmp_4_fu_2605_p27;
wire   [31:0] tmp_10_fu_2651_p27;
wire   [31:0] tmp_11_fu_2697_p27;
wire   [4:0] add_ln44_1_fu_2743_p2;
wire   [0:0] tmp_22_fu_2748_p3;
wire   [9:0] add_ln44_2_fu_2760_p2;
wire   [31:0] tmp_4_fu_2605_p29;
wire   [31:0] add_ln48_1_fu_2787_p2;
wire   [31:0] add_ln48_7_fu_2796_p2;
wire   [31:0] sum0_3_fu_2805_p27;
wire   [9:0] add_ln43_fu_2864_p2;
wire   [31:0] add_ln48_14_fu_2903_p2;
wire   [9:0] add_ln41_fu_2912_p2;
wire   [31:0] add_ln48_13_fu_2933_p2;
wire   [9:0] add_ln42_fu_2946_p2;
wire   [9:0] zext_ln44_2_fu_2967_p1;
wire   [9:0] add_ln44_4_fu_2970_p2;
wire   [31:0] tmp_16_fu_3032_p27;
wire   [31:0] tmp_12_fu_3084_p27;
wire   [31:0] add_ln48_20_fu_3143_p2;
wire   [31:0] add_ln48_19_fu_3171_p2;
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
reg    ap_condition_1043;
wire  signed [3:0] grp_fu_1821_p1;
wire   [3:0] grp_fu_1821_p3;
wire   [3:0] grp_fu_1821_p5;
wire   [3:0] grp_fu_1821_p7;
wire   [3:0] grp_fu_1821_p9;
wire   [3:0] grp_fu_1821_p11;
wire   [3:0] grp_fu_1821_p13;
wire   [3:0] grp_fu_1821_p15;
wire  signed [3:0] grp_fu_1821_p17;
wire  signed [3:0] grp_fu_1821_p19;
wire  signed [3:0] grp_fu_1821_p21;
wire  signed [3:0] grp_fu_1821_p23;
wire  signed [3:0] grp_fu_1821_p25;
wire   [3:0] sum0_fu_1908_p1;
wire   [3:0] sum0_fu_1908_p3;
wire   [3:0] sum0_fu_1908_p5;
wire   [3:0] sum0_fu_1908_p7;
wire   [3:0] sum0_fu_1908_p9;
wire   [3:0] sum0_fu_1908_p11;
wire   [3:0] sum0_fu_1908_p13;
wire  signed [3:0] sum0_fu_1908_p15;
wire  signed [3:0] sum0_fu_1908_p17;
wire  signed [3:0] sum0_fu_1908_p19;
wire  signed [3:0] sum0_fu_1908_p21;
wire  signed [3:0] sum0_fu_1908_p23;
wire  signed [3:0] sum0_fu_1908_p25;
wire   [3:0] sum0_1_fu_1968_p1;
wire   [3:0] sum0_1_fu_1968_p3;
wire   [3:0] sum0_1_fu_1968_p5;
wire   [3:0] sum0_1_fu_1968_p7;
wire   [3:0] sum0_1_fu_1968_p9;
wire   [3:0] sum0_1_fu_1968_p11;
wire   [3:0] sum0_1_fu_1968_p13;
wire  signed [3:0] sum0_1_fu_1968_p15;
wire  signed [3:0] sum0_1_fu_1968_p17;
wire  signed [3:0] sum0_1_fu_1968_p19;
wire  signed [3:0] sum0_1_fu_1968_p21;
wire  signed [3:0] sum0_1_fu_1968_p23;
wire  signed [3:0] sum0_1_fu_1968_p25;
wire   [3:0] tmp_5_fu_2028_p1;
wire   [3:0] tmp_5_fu_2028_p3;
wire   [3:0] tmp_5_fu_2028_p5;
wire   [3:0] tmp_5_fu_2028_p7;
wire   [3:0] tmp_5_fu_2028_p9;
wire   [3:0] tmp_5_fu_2028_p11;
wire   [3:0] tmp_5_fu_2028_p13;
wire  signed [3:0] tmp_5_fu_2028_p15;
wire  signed [3:0] tmp_5_fu_2028_p17;
wire  signed [3:0] tmp_5_fu_2028_p19;
wire  signed [3:0] tmp_5_fu_2028_p21;
wire  signed [3:0] tmp_5_fu_2028_p23;
wire  signed [3:0] tmp_5_fu_2028_p25;
wire   [3:0] sum0_2_fu_2088_p1;
wire   [3:0] sum0_2_fu_2088_p3;
wire   [3:0] sum0_2_fu_2088_p5;
wire   [3:0] sum0_2_fu_2088_p7;
wire   [3:0] sum0_2_fu_2088_p9;
wire   [3:0] sum0_2_fu_2088_p11;
wire   [3:0] sum0_2_fu_2088_p13;
wire  signed [3:0] sum0_2_fu_2088_p15;
wire  signed [3:0] sum0_2_fu_2088_p17;
wire  signed [3:0] sum0_2_fu_2088_p19;
wire  signed [3:0] sum0_2_fu_2088_p21;
wire  signed [3:0] sum0_2_fu_2088_p23;
wire  signed [3:0] sum0_2_fu_2088_p25;
wire   [3:0] tmp_fu_2148_p1;
wire   [3:0] tmp_fu_2148_p3;
wire   [3:0] tmp_fu_2148_p5;
wire   [3:0] tmp_fu_2148_p7;
wire   [3:0] tmp_fu_2148_p9;
wire   [3:0] tmp_fu_2148_p11;
wire   [3:0] tmp_fu_2148_p13;
wire  signed [3:0] tmp_fu_2148_p15;
wire  signed [3:0] tmp_fu_2148_p17;
wire  signed [3:0] tmp_fu_2148_p19;
wire  signed [3:0] tmp_fu_2148_p21;
wire  signed [3:0] tmp_fu_2148_p23;
wire  signed [3:0] tmp_fu_2148_p25;
wire   [3:0] tmp_1_fu_2194_p1;
wire   [3:0] tmp_1_fu_2194_p3;
wire   [3:0] tmp_1_fu_2194_p5;
wire   [3:0] tmp_1_fu_2194_p7;
wire   [3:0] tmp_1_fu_2194_p9;
wire   [3:0] tmp_1_fu_2194_p11;
wire   [3:0] tmp_1_fu_2194_p13;
wire  signed [3:0] tmp_1_fu_2194_p15;
wire  signed [3:0] tmp_1_fu_2194_p17;
wire  signed [3:0] tmp_1_fu_2194_p19;
wire  signed [3:0] tmp_1_fu_2194_p21;
wire  signed [3:0] tmp_1_fu_2194_p23;
wire  signed [3:0] tmp_1_fu_2194_p25;
wire   [3:0] tmp_2_fu_2240_p1;
wire   [3:0] tmp_2_fu_2240_p3;
wire   [3:0] tmp_2_fu_2240_p5;
wire   [3:0] tmp_2_fu_2240_p7;
wire   [3:0] tmp_2_fu_2240_p9;
wire   [3:0] tmp_2_fu_2240_p11;
wire   [3:0] tmp_2_fu_2240_p13;
wire  signed [3:0] tmp_2_fu_2240_p15;
wire  signed [3:0] tmp_2_fu_2240_p17;
wire  signed [3:0] tmp_2_fu_2240_p19;
wire  signed [3:0] tmp_2_fu_2240_p21;
wire  signed [3:0] tmp_2_fu_2240_p23;
wire  signed [3:0] tmp_2_fu_2240_p25;
wire   [3:0] tmp_3_fu_2286_p1;
wire   [3:0] tmp_3_fu_2286_p3;
wire   [3:0] tmp_3_fu_2286_p5;
wire   [3:0] tmp_3_fu_2286_p7;
wire   [3:0] tmp_3_fu_2286_p9;
wire   [3:0] tmp_3_fu_2286_p11;
wire   [3:0] tmp_3_fu_2286_p13;
wire  signed [3:0] tmp_3_fu_2286_p15;
wire  signed [3:0] tmp_3_fu_2286_p17;
wire  signed [3:0] tmp_3_fu_2286_p19;
wire  signed [3:0] tmp_3_fu_2286_p21;
wire  signed [3:0] tmp_3_fu_2286_p23;
wire  signed [3:0] tmp_3_fu_2286_p25;
wire   [3:0] tmp_6_fu_2348_p1;
wire   [3:0] tmp_6_fu_2348_p3;
wire   [3:0] tmp_6_fu_2348_p5;
wire   [3:0] tmp_6_fu_2348_p7;
wire   [3:0] tmp_6_fu_2348_p9;
wire   [3:0] tmp_6_fu_2348_p11;
wire   [3:0] tmp_6_fu_2348_p13;
wire  signed [3:0] tmp_6_fu_2348_p15;
wire  signed [3:0] tmp_6_fu_2348_p17;
wire  signed [3:0] tmp_6_fu_2348_p19;
wire  signed [3:0] tmp_6_fu_2348_p21;
wire  signed [3:0] tmp_6_fu_2348_p23;
wire  signed [3:0] tmp_6_fu_2348_p25;
wire   [3:0] tmp_7_fu_2394_p1;
wire   [3:0] tmp_7_fu_2394_p3;
wire   [3:0] tmp_7_fu_2394_p5;
wire   [3:0] tmp_7_fu_2394_p7;
wire   [3:0] tmp_7_fu_2394_p9;
wire   [3:0] tmp_7_fu_2394_p11;
wire   [3:0] tmp_7_fu_2394_p13;
wire  signed [3:0] tmp_7_fu_2394_p15;
wire  signed [3:0] tmp_7_fu_2394_p17;
wire  signed [3:0] tmp_7_fu_2394_p19;
wire  signed [3:0] tmp_7_fu_2394_p21;
wire  signed [3:0] tmp_7_fu_2394_p23;
wire  signed [3:0] tmp_7_fu_2394_p25;
wire   [3:0] tmp_8_fu_2440_p1;
wire   [3:0] tmp_8_fu_2440_p3;
wire   [3:0] tmp_8_fu_2440_p5;
wire   [3:0] tmp_8_fu_2440_p7;
wire   [3:0] tmp_8_fu_2440_p9;
wire   [3:0] tmp_8_fu_2440_p11;
wire   [3:0] tmp_8_fu_2440_p13;
wire  signed [3:0] tmp_8_fu_2440_p15;
wire  signed [3:0] tmp_8_fu_2440_p17;
wire  signed [3:0] tmp_8_fu_2440_p19;
wire  signed [3:0] tmp_8_fu_2440_p21;
wire  signed [3:0] tmp_8_fu_2440_p23;
wire  signed [3:0] tmp_8_fu_2440_p25;
wire   [3:0] tmp_9_fu_2486_p1;
wire   [3:0] tmp_9_fu_2486_p3;
wire   [3:0] tmp_9_fu_2486_p5;
wire   [3:0] tmp_9_fu_2486_p7;
wire   [3:0] tmp_9_fu_2486_p9;
wire   [3:0] tmp_9_fu_2486_p11;
wire   [3:0] tmp_9_fu_2486_p13;
wire  signed [3:0] tmp_9_fu_2486_p15;
wire  signed [3:0] tmp_9_fu_2486_p17;
wire  signed [3:0] tmp_9_fu_2486_p19;
wire  signed [3:0] tmp_9_fu_2486_p21;
wire  signed [3:0] tmp_9_fu_2486_p23;
wire  signed [3:0] tmp_9_fu_2486_p25;
wire   [3:0] tmp_s_fu_2559_p1;
wire   [3:0] tmp_s_fu_2559_p3;
wire   [3:0] tmp_s_fu_2559_p5;
wire   [3:0] tmp_s_fu_2559_p7;
wire   [3:0] tmp_s_fu_2559_p9;
wire   [3:0] tmp_s_fu_2559_p11;
wire   [3:0] tmp_s_fu_2559_p13;
wire  signed [3:0] tmp_s_fu_2559_p15;
wire  signed [3:0] tmp_s_fu_2559_p17;
wire  signed [3:0] tmp_s_fu_2559_p19;
wire  signed [3:0] tmp_s_fu_2559_p21;
wire  signed [3:0] tmp_s_fu_2559_p23;
wire  signed [3:0] tmp_s_fu_2559_p25;
wire   [3:0] tmp_4_fu_2605_p1;
wire   [3:0] tmp_4_fu_2605_p3;
wire   [3:0] tmp_4_fu_2605_p5;
wire   [3:0] tmp_4_fu_2605_p7;
wire   [3:0] tmp_4_fu_2605_p9;
wire   [3:0] tmp_4_fu_2605_p11;
wire   [3:0] tmp_4_fu_2605_p13;
wire  signed [3:0] tmp_4_fu_2605_p15;
wire  signed [3:0] tmp_4_fu_2605_p17;
wire  signed [3:0] tmp_4_fu_2605_p19;
wire  signed [3:0] tmp_4_fu_2605_p21;
wire  signed [3:0] tmp_4_fu_2605_p23;
wire  signed [3:0] tmp_4_fu_2605_p25;
wire   [3:0] tmp_10_fu_2651_p1;
wire   [3:0] tmp_10_fu_2651_p3;
wire   [3:0] tmp_10_fu_2651_p5;
wire   [3:0] tmp_10_fu_2651_p7;
wire   [3:0] tmp_10_fu_2651_p9;
wire   [3:0] tmp_10_fu_2651_p11;
wire   [3:0] tmp_10_fu_2651_p13;
wire  signed [3:0] tmp_10_fu_2651_p15;
wire  signed [3:0] tmp_10_fu_2651_p17;
wire  signed [3:0] tmp_10_fu_2651_p19;
wire  signed [3:0] tmp_10_fu_2651_p21;
wire  signed [3:0] tmp_10_fu_2651_p23;
wire  signed [3:0] tmp_10_fu_2651_p25;
wire   [3:0] tmp_11_fu_2697_p1;
wire   [3:0] tmp_11_fu_2697_p3;
wire   [3:0] tmp_11_fu_2697_p5;
wire   [3:0] tmp_11_fu_2697_p7;
wire   [3:0] tmp_11_fu_2697_p9;
wire   [3:0] tmp_11_fu_2697_p11;
wire   [3:0] tmp_11_fu_2697_p13;
wire  signed [3:0] tmp_11_fu_2697_p15;
wire  signed [3:0] tmp_11_fu_2697_p17;
wire  signed [3:0] tmp_11_fu_2697_p19;
wire  signed [3:0] tmp_11_fu_2697_p21;
wire  signed [3:0] tmp_11_fu_2697_p23;
wire  signed [3:0] tmp_11_fu_2697_p25;
wire  signed [3:0] sum0_3_fu_2805_p1;
wire   [3:0] sum0_3_fu_2805_p3;
wire   [3:0] sum0_3_fu_2805_p5;
wire   [3:0] sum0_3_fu_2805_p7;
wire   [3:0] sum0_3_fu_2805_p9;
wire   [3:0] sum0_3_fu_2805_p11;
wire   [3:0] sum0_3_fu_2805_p13;
wire   [3:0] sum0_3_fu_2805_p15;
wire  signed [3:0] sum0_3_fu_2805_p17;
wire  signed [3:0] sum0_3_fu_2805_p19;
wire  signed [3:0] sum0_3_fu_2805_p21;
wire  signed [3:0] sum0_3_fu_2805_p23;
wire  signed [3:0] sum0_3_fu_2805_p25;
wire  signed [3:0] tmp_16_fu_3032_p1;
wire  signed [3:0] tmp_16_fu_3032_p3;
wire   [3:0] tmp_16_fu_3032_p5;
wire   [3:0] tmp_16_fu_3032_p7;
wire   [3:0] tmp_16_fu_3032_p9;
wire   [3:0] tmp_16_fu_3032_p11;
wire   [3:0] tmp_16_fu_3032_p13;
wire   [3:0] tmp_16_fu_3032_p15;
wire   [3:0] tmp_16_fu_3032_p17;
wire  signed [3:0] tmp_16_fu_3032_p19;
wire  signed [3:0] tmp_16_fu_3032_p21;
wire  signed [3:0] tmp_16_fu_3032_p23;
wire  signed [3:0] tmp_16_fu_3032_p25;
wire  signed [3:0] tmp_12_fu_3084_p1;
wire   [3:0] tmp_12_fu_3084_p3;
wire   [3:0] tmp_12_fu_3084_p5;
wire   [3:0] tmp_12_fu_3084_p7;
wire   [3:0] tmp_12_fu_3084_p9;
wire   [3:0] tmp_12_fu_3084_p11;
wire   [3:0] tmp_12_fu_3084_p13;
wire   [3:0] tmp_12_fu_3084_p15;
wire  signed [3:0] tmp_12_fu_3084_p17;
wire  signed [3:0] tmp_12_fu_3084_p19;
wire  signed [3:0] tmp_12_fu_3084_p21;
wire  signed [3:0] tmp_12_fu_3084_p23;
wire  signed [3:0] tmp_12_fu_3084_p25;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_300 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1809_p0),.din1(grp_fu_1809_p1),.ce(1'b1),.dout(grp_fu_1809_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1813_p0),.din1(grp_fu_1813_p1),.ce(1'b1),.dout(grp_fu_1813_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(C_load),.din1(grp_fu_1817_p1),.ce(1'b1),.dout(grp_fu_1817_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U72(.din0(orig_0_q0),.din1(orig_4_q0),.din2(orig_5_q0),.din3(orig_6_q0),.din4(orig_7_q0),.din5(orig_8_q0),.din6(orig_9_q0),.din7(orig_10_q0),.din8(orig_11_q0),.din9(orig_12_q0),.din10(orig_13_q0),.din11(orig_14_q0),.din12(orig_15_q0),.def(grp_fu_1821_p27),.sel(grp_fu_1821_p28),.dout(grp_fu_1821_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U73(.din0(orig_1_load_12),.din1(orig_2_load_12),.din2(orig_3_load_12),.din3(orig_4_load_12),.din4(orig_5_load_12),.din5(orig_6_load_12),.din6(orig_7_load_12),.din7(orig_8_load_12),.din8(orig_9_load_12),.din9(orig_10_load_12),.din10(orig_11_load_12),.din11(orig_12_load_12),.din12(orig_13_load_12),.def(sum0_fu_1908_p27),.sel(trunc_ln16_fu_1904_p1),.dout(sum0_fu_1908_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U74(.din0(orig_2_load_12),.din1(orig_3_load_12),.din2(orig_4_load_12),.din3(orig_5_load_12),.din4(orig_6_load_12),.din5(orig_7_load_12),.din6(orig_8_load_12),.din7(orig_9_load_12),.din8(orig_10_load_12),.din9(orig_11_load_12),.din10(orig_12_load_12),.din11(orig_13_load_12),.din12(orig_14_load_8),.def(sum0_1_fu_1968_p27),.sel(trunc_ln16_fu_1904_p1),.dout(sum0_1_fu_1968_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U75(.din0(orig_0_load_68),.din1(orig_1_load_12),.din2(orig_2_load_12),.din3(orig_3_load_12),.din4(orig_4_load_12),.din5(orig_5_load_12),.din6(orig_6_load_12),.din7(orig_7_load_12),.din8(orig_8_load_12),.din9(orig_9_load_12),.din10(orig_10_load_12),.din11(orig_11_load_12),.din12(orig_12_load_12),.def(tmp_5_fu_2028_p27),.sel(trunc_ln16_fu_1904_p1),.dout(tmp_5_fu_2028_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U76(.din0(orig_3_load_12),.din1(orig_4_load_12),.din2(orig_5_load_12),.din3(orig_6_load_12),.din4(orig_7_load_12),.din5(orig_8_load_12),.din6(orig_9_load_12),.din7(orig_10_load_12),.din8(orig_11_load_12),.din9(orig_12_load_12),.din10(orig_13_load_12),.din11(orig_14_load_8),.din12(orig_15_load_68),.def(sum0_2_fu_2088_p27),.sel(trunc_ln16_fu_1904_p1),.dout(sum0_2_fu_2088_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U77(.din0(orig_1_load_8),.din1(orig_2_load_8),.din2(orig_3_load_8),.din3(orig_4_load_8),.din4(orig_5_load_8),.din5(orig_6_load_8),.din6(orig_7_load_8),.din7(orig_8_load_8),.din8(orig_9_load_8),.din9(orig_10_load_8),.din10(orig_11_load_8),.din11(orig_12_load_8),.din12(orig_13_load_8),.def(tmp_fu_2148_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_fu_2148_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U78(.din0(orig_1_load_9),.din1(orig_2_load_9),.din2(orig_3_load_9),.din3(orig_4_load_9),.din4(orig_5_load_9),.din5(orig_6_load_9),.din6(orig_7_load_9),.din7(orig_8_load_9),.din8(orig_9_load_9),.din9(orig_10_load_9),.din10(orig_11_load_9),.din11(orig_12_load_9),.din12(orig_13_load_9),.def(tmp_1_fu_2194_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_1_fu_2194_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U79(.din0(orig_1_load_10),.din1(orig_2_load_10),.din2(orig_3_load_10),.din3(orig_4_load_10),.din4(orig_5_load_10),.din5(orig_6_load_10),.din6(orig_7_load_10),.din7(orig_8_load_10),.din8(orig_9_load_10),.din9(orig_10_load_10),.din10(orig_11_load_10),.din11(orig_12_load_10),.din12(orig_13_load_10),.def(tmp_2_fu_2240_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_2_fu_2240_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U80(.din0(orig_1_load_11),.din1(orig_2_load_11),.din2(orig_3_load_11),.din3(orig_4_load_11),.din4(orig_5_load_11),.din5(orig_6_load_11),.din6(orig_7_load_11),.din7(orig_8_load_11),.din8(orig_9_load_11),.din9(orig_10_load_11),.din10(orig_11_load_11),.din11(orig_12_load_11),.din12(orig_13_load_11),.def(tmp_3_fu_2286_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_3_fu_2286_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U81(.din0(orig_2_load_8),.din1(orig_3_load_8),.din2(orig_4_load_8),.din3(orig_5_load_8),.din4(orig_6_load_8),.din5(orig_7_load_8),.din6(orig_8_load_8),.din7(orig_9_load_8),.din8(orig_10_load_8),.din9(orig_11_load_8),.din10(orig_12_load_8),.din11(orig_13_load_8),.din12(orig_14_load_9),.def(tmp_6_fu_2348_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_6_fu_2348_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U82(.din0(orig_2_load_9),.din1(orig_3_load_9),.din2(orig_4_load_9),.din3(orig_5_load_9),.din4(orig_6_load_9),.din5(orig_7_load_9),.din6(orig_8_load_9),.din7(orig_9_load_9),.din8(orig_10_load_9),.din9(orig_11_load_9),.din10(orig_12_load_9),.din11(orig_13_load_9),.din12(orig_14_load_10),.def(tmp_7_fu_2394_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_7_fu_2394_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U83(.din0(orig_2_load_10),.din1(orig_3_load_10),.din2(orig_4_load_10),.din3(orig_5_load_10),.din4(orig_6_load_10),.din5(orig_7_load_10),.din6(orig_8_load_10),.din7(orig_9_load_10),.din8(orig_10_load_10),.din9(orig_11_load_10),.din10(orig_12_load_10),.din11(orig_13_load_10),.din12(orig_14_load_11),.def(tmp_8_fu_2440_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_8_fu_2440_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U84(.din0(orig_2_load_11),.din1(orig_3_load_11),.din2(orig_4_load_11),.din3(orig_5_load_11),.din4(orig_6_load_11),.din5(orig_7_load_11),.din6(orig_8_load_11),.din7(orig_9_load_11),.din8(orig_10_load_11),.din9(orig_11_load_11),.din10(orig_12_load_11),.din11(orig_13_load_11),.din12(orig_14_load_12),.def(tmp_9_fu_2486_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_9_fu_2486_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U85(.din0(orig_3_load_8),.din1(orig_4_load_8),.din2(orig_5_load_8),.din3(orig_6_load_8),.din4(orig_7_load_8),.din5(orig_8_load_8),.din6(orig_9_load_8),.din7(orig_10_load_8),.din8(orig_11_load_8),.din9(orig_12_load_8),.din10(orig_13_load_8),.din11(orig_14_load_9),.din12(orig_15_load_69),.def(tmp_s_fu_2559_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_s_fu_2559_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U86(.din0(orig_3_load_9),.din1(orig_4_load_9),.din2(orig_5_load_9),.din3(orig_6_load_9),.din4(orig_7_load_9),.din5(orig_8_load_9),.din6(orig_9_load_9),.din7(orig_10_load_9),.din8(orig_11_load_9),.din9(orig_12_load_9),.din10(orig_13_load_9),.din11(orig_14_load_10),.din12(orig_15_load_70),.def(tmp_4_fu_2605_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_4_fu_2605_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U87(.din0(orig_3_load_10),.din1(orig_4_load_10),.din2(orig_5_load_10),.din3(orig_6_load_10),.din4(orig_7_load_10),.din5(orig_8_load_10),.din6(orig_9_load_10),.din7(orig_10_load_10),.din8(orig_11_load_10),.din9(orig_12_load_10),.din10(orig_13_load_10),.din11(orig_14_load_11),.din12(orig_15_load_71),.def(tmp_10_fu_2651_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_10_fu_2651_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U88(.din0(orig_3_load_11),.din1(orig_4_load_11),.din2(orig_5_load_11),.din3(orig_6_load_11),.din4(orig_7_load_11),.din5(orig_8_load_11),.din6(orig_9_load_11),.din7(orig_10_load_11),.din8(orig_11_load_11),.din9(orig_12_load_11),.din10(orig_13_load_11),.din11(orig_14_load_12),.din12(orig_15_load_72),.def(tmp_11_fu_2697_p27),.sel(trunc_ln16_reg_3666),.dout(tmp_11_fu_2697_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U89(.din0(orig_0_q1),.din1(orig_4_q1),.din2(orig_5_q1),.din3(orig_6_q1),.din4(orig_7_q1),.din5(orig_8_q1),.din6(orig_9_q1),.din7(orig_10_q1),.din8(orig_11_q1),.din9(orig_12_q1),.din10(orig_13_q1),.din11(orig_14_q1),.din12(orig_15_q1),.def(sum0_3_fu_2805_p27),.sel(trunc_ln16_reg_3666),.dout(sum0_3_fu_2805_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'hD ),.din1_WIDTH( 32 ),.CASE2( 4'h1 ),.din2_WIDTH( 32 ),.CASE3( 4'h2 ),.din3_WIDTH( 32 ),.CASE4( 4'h3 ),.din4_WIDTH( 32 ),.CASE5( 4'h4 ),.din5_WIDTH( 32 ),.CASE6( 4'h5 ),.din6_WIDTH( 32 ),.CASE7( 4'h6 ),.din7_WIDTH( 32 ),.CASE8( 4'h7 ),.din8_WIDTH( 32 ),.CASE9( 4'h8 ),.din9_WIDTH( 32 ),.CASE10( 4'h9 ),.din10_WIDTH( 32 ),.CASE11( 4'hA ),.din11_WIDTH( 32 ),.CASE12( 4'hB ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U90(.din0(orig_0_load_reg_3875),.din1(orig_1_q0),.din2(orig_5_load_reg_3880),.din3(orig_6_load_reg_3885),.din4(orig_7_load_reg_3890),.din5(orig_8_load_reg_3895),.din6(orig_9_load_reg_3900),.din7(orig_10_load_reg_3905),.din8(orig_11_load_reg_3910),.din9(orig_12_load_reg_3915),.din10(orig_13_load_reg_3920),.din11(orig_14_load_reg_3925),.din12(orig_15_load_reg_3930),.def(tmp_16_fu_3032_p27),.sel(trunc_ln16_reg_3666_pp0_iter1_reg),.dout(tmp_16_fu_3032_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U91(.din0(orig_0_q1),.din1(orig_4_q1),.din2(orig_5_q1),.din3(orig_6_q1),.din4(orig_7_q1),.din5(orig_8_q1),.din6(orig_9_q1),.din7(orig_10_q1),.din8(orig_11_q1),.din9(orig_12_q1),.din10(orig_13_q1),.din11(orig_14_q1),.din12(orig_15_q1),.def(tmp_12_fu_3084_p27),.sel(trunc_ln16_reg_3666_pp0_iter1_reg),.dout(tmp_12_fu_3084_p29));
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
        k_fu_300 <= 5'd1;
    end else if (((icmp_ln38_reg_3741 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_300 <= add_ln44_3_fu_2885_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln40_reg_4096 <= add_ln40_fu_2942_p2;
        add_ln48_12_reg_3850 <= add_ln48_12_fu_2782_p2;
        add_ln48_16_reg_4091 <= add_ln48_16_fu_2937_p2;
        add_ln48_22_reg_4326 <= add_ln48_22_fu_3175_p2;
        add_ln48_3_reg_3721 <= add_ln48_3_fu_2342_p2;
        add_ln48_6_reg_3731 <= add_ln48_6_fu_2532_p2;
        add_ln48_9_reg_3736 <= add_ln48_9_fu_2542_p2;
        add_ln48_reg_3716 <= add_ln48_fu_2332_p2;
        icmp_ln38_reg_3741 <= icmp_ln38_fu_2553_p2;
        icmp_ln38_reg_3741_pp0_iter1_reg <= icmp_ln38_reg_3741;
        icmp_ln38_reg_3741_pp0_iter2_reg <= icmp_ln38_reg_3741_pp0_iter1_reg;
        mul_ln48_6_reg_4171_pp0_iter2_reg <= mul_ln48_6_reg_4171;
        tmp_10_reg_3750 <= tmp_10_fu_2651_p29;
        tmp_11_reg_3755 <= tmp_11_fu_2697_p29;
        tmp_1_reg_3711 <= tmp_1_fu_2194_p29;
        tmp_6_reg_3726 <= tmp_6_fu_2348_p29;
        tmp_s_reg_3745 <= tmp_s_fu_2559_p29;
        zext_ln44_1_reg_3768[9 : 0] <= zext_ln44_1_fu_2765_p1[9 : 0];
        zext_ln44_1_reg_3768_pp0_iter1_reg[9 : 0] <= zext_ln44_1_reg_3768[9 : 0];
        zext_ln44_1_reg_3768_pp0_iter2_reg[9 : 0] <= zext_ln44_1_reg_3768_pp0_iter1_reg[9 : 0];
        zext_ln44_reg_3760[0] <= zext_ln44_fu_2756_p1[0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_3865 <= add_ln48_10_fu_2800_p2;
        add_ln48_18_reg_4311 <= add_ln48_18_fu_3079_p2;
        add_ln48_4_reg_3855 <= add_ln48_4_fu_2791_p2;
        mul_ln48_4_reg_3941_pp0_iter1_reg <= mul_ln48_4_reg_3941;
        sol_10_addr_reg_4196 <= p_cast31_cast_reg_3640;
        sol_11_addr_reg_4191 <= p_cast31_cast_reg_3640;
        sol_12_addr_reg_4186 <= p_cast31_cast_reg_3640;
        sol_13_addr_reg_4181 <= p_cast31_cast_reg_3640;
        sol_14_addr_reg_4176 <= p_cast31_cast_reg_3640;
        sol_15_addr_reg_4236 <= p_cast31_cast_reg_3640;
        sol_3_addr_reg_4231 <= p_cast31_cast_reg_3640;
        sol_4_addr_reg_4226 <= p_cast31_cast_reg_3640;
        sol_5_addr_reg_4221 <= p_cast31_cast_reg_3640;
        sol_6_addr_reg_4216 <= p_cast31_cast_reg_3640;
        sol_7_addr_reg_4211 <= p_cast31_cast_reg_3640;
        sol_8_addr_reg_4206 <= p_cast31_cast_reg_3640;
        sol_9_addr_reg_4201 <= p_cast31_cast_reg_3640;
        sum0_3_reg_3935 <= sum0_3_fu_2805_p29;
        tmp_16_reg_4306 <= tmp_16_fu_3032_p29;
        tmp_23_reg_4011 <= add_ln44_3_fu_2885_p2[32'd4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_15_reg_4016 <= add_ln48_15_fu_2907_p2;
        add_ln48_21_reg_4321 <= add_ln48_21_fu_3147_p2;
        ap_predicate_pred1117_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd12));
        ap_predicate_pred1123_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd11));
        ap_predicate_pred1129_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd10));
        ap_predicate_pred1135_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd9));
        ap_predicate_pred1141_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd8));
        ap_predicate_pred1147_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd7));
        ap_predicate_pred1153_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd6));
        ap_predicate_pred1159_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd5));
        ap_predicate_pred1165_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd4));
        ap_predicate_pred1171_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd3));
        ap_predicate_pred1177_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd2));
        ap_predicate_pred1183_state11 <= ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd1));
        ap_predicate_pred1201_state11 <= (((((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd14)) | ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd15))) | ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd13))) | ((icmp_ln38_reg_3741_pp0_iter2_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter2_reg == 4'd0)));
        ap_predicate_pred1326_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10));
        ap_predicate_pred1355_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11));
        ap_predicate_pred1374_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9));
        ap_predicate_pred1393_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8));
        ap_predicate_pred1412_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7));
        ap_predicate_pred1431_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6));
        ap_predicate_pred1450_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5));
        ap_predicate_pred1469_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4));
        ap_predicate_pred1488_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3));
        ap_predicate_pred1507_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd2));
        ap_predicate_pred1525_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd1));
        ap_predicate_pred1548_state8 <= ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12));
        ap_predicate_pred1565_state8 <= (((((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd14)) | ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd15))) | ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd13))) | ((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd1) & (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd0)));
        k_1_reg_3659 <= ap_sig_allocacmp_k_1;
        p_cast31_cast_reg_3640[9 : 0] <= p_cast31_cast_fu_1892_p1[9 : 0];
        sum0_1_reg_3692 <= sum0_1_fu_1968_p29;
        sum0_2_reg_3704 <= sum0_2_fu_2088_p29;
        sum0_2_reg_3704_pp0_iter1_reg <= sum0_2_reg_3704;
        sum0_reg_3686 <= sum0_fu_1908_p29;
        tmp_12_reg_4316 <= tmp_12_fu_3084_p29;
        tmp_5_reg_3699 <= tmp_5_fu_2028_p29;
        trunc_ln16_reg_3666 <= trunc_ln16_fu_1904_p1;
        trunc_ln16_reg_3666_pp0_iter1_reg <= trunc_ln16_reg_3666;
        trunc_ln16_reg_3666_pp0_iter2_reg <= trunc_ln16_reg_3666_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_2_reg_3870 <= grp_fu_1813_p2;
        mul_ln48_4_reg_3941 <= grp_fu_1817_p2;
        mul_ln48_reg_3860 <= grp_fu_1809_p2;
        orig_0_load_reg_3875 <= orig_0_q1;
        orig_10_load_reg_3905 <= orig_10_q1;
        orig_11_load_reg_3910 <= orig_11_q1;
        orig_12_load_reg_3915 <= orig_12_q1;
        orig_13_load_reg_3920 <= orig_13_q1;
        orig_14_load_reg_3925 <= orig_14_q1;
        orig_15_load_reg_3930 <= orig_15_q1;
        orig_5_load_reg_3880 <= orig_5_q1;
        orig_6_load_reg_3885 <= orig_6_q1;
        orig_7_load_reg_3890 <= orig_7_q1;
        orig_8_load_reg_3895 <= orig_8_q1;
        orig_9_load_reg_3900 <= orig_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_6_reg_4171 <= grp_fu_1817_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1880 <= grp_fu_1809_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1884 <= grp_fu_1813_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1888 <= grp_fu_1821_p29;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_15_reg_4086 <= grp_fu_1821_p29;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_3741 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_3741_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_k_1 = k_fu_300;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1809_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1809_p0 = C_load;
    end else begin
        grp_fu_1809_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1809_p1 = add_ln48_16_reg_4091;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1809_p1 = add_ln48_4_reg_3855;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1809_p1 = sum0_reg_3686;
    end else begin
        grp_fu_1809_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1813_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1813_p0 = C_load;
    end else begin
        grp_fu_1813_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1813_p1 = add_ln48_22_reg_4326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1813_p1 = add_ln48_10_reg_3865;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1813_p1 = sum0_1_reg_3692;
    end else begin
        grp_fu_1813_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1817_p1 = sum0_3_reg_3935;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1817_p1 = sum0_2_reg_3704;
    end else begin
        grp_fu_1817_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1821_p28 = trunc_ln16_reg_3666_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1821_p28 = trunc_ln16_reg_3666;
    end else begin
        grp_fu_1821_p28 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address1_local = zext_ln44_1_fu_2765_p1;
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
        orig_10_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address1_local = zext_ln44_1_fu_2765_p1;
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
        orig_11_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address1_local = zext_ln44_1_fu_2765_p1;
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
        orig_12_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_12_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_12_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address1_local = zext_ln44_1_fu_2765_p1;
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
        orig_13_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address1_local = zext_ln44_1_fu_2765_p1;
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
        orig_14_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address1_local = zext_ln44_1_fu_2765_p1;
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
        orig_15_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_15_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_15_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address1_local = zext_ln44_1_fu_2765_p1;
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
        orig_4_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address1_local = zext_ln44_1_fu_2765_p1;
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address1_local = zext_ln44_1_fu_2765_p1;
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address1_local = zext_ln44_1_fu_2765_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address1_local = zext_ln44_1_fu_2765_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address1_local = zext_ln44_1_fu_2765_p1;
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
        orig_9_address0_local = zext_ln42_fu_2950_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln41_fu_2916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address0_local = zext_ln43_fu_2868_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address1_local = zext_ln40_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address1_local = zext_ln44_1_fu_2765_p1;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1201_state11 == 1'b1))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_10_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        sol_10_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_10_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_10_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1147_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_10_we0_local = 1'b1;
    end else begin
        sol_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1393_state8 == 1'b1))) begin
        sol_10_we1_local = 1'b1;
    end else begin
        sol_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_11_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_11_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        sol_11_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_11_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_11_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1141_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd10) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1374_state8 == 1'b1))) begin
        sol_11_we1_local = 1'b1;
    end else begin
        sol_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_12_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_12_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        sol_12_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_12_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_12_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1135_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd11) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_12_we0_local = 1'b1;
    end else begin
        sol_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1326_state8 == 1'b1))) begin
        sol_12_we1_local = 1'b1;
    end else begin
        sol_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_13_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd0) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd13) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd14) | (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd15))))) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_13_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd0) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd13) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd14) | (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd15))))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        sol_13_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd0) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd13) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd14) | (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd15)))))) begin
        sol_13_d0_local = add_ln48_5_fu_2980_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_13_d0_local = add_ln48_11_fu_2998_p2;
    end else begin
        sol_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd0) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd13) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd14) | (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd15))))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1129_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd12) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1355_state8 == 1'b1))) begin
        sol_13_we1_local = 1'b1;
    end else begin
        sol_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_14_address0_local = p_cast31_cast_reg_3640;
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
        sol_14_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_14_d0_local = add_ln48_11_fu_2998_p2;
    end else begin
        sol_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd0) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd13) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd14) | (trunc_ln16_reg_3666_pp0_iter1_reg == 4'd15))))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1123_state11 == 1'b1)))) begin
        sol_14_we0_local = 1'b1;
    end else begin
        sol_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1548_state8 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1117_state11 == 1'b1))) begin
        sol_15_we0_local = 1'b1;
    end else begin
        sol_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1565_state8 == 1'b1))) begin
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
    if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1043)) begin
        if ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd1)) begin
            sol_2_d0_local = add_ln48_11_fu_2998_p2;
        end else if ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd2)) begin
            sol_2_d0_local = add_ln48_5_fu_2980_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_3_address0_local = sol_3_addr_reg_4231;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_3_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_3_d0_local = add_ln48_17_fu_3153_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1525_state8 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_4_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_4_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_4_ce1_local = 1'b1;
    end else begin
        sol_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_4_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_4_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_4_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1183_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd3) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1507_state8 == 1'b1))) begin
        sol_4_we1_local = 1'b1;
    end else begin
        sol_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_5_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_5_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_5_ce1_local = 1'b1;
    end else begin
        sol_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_5_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1177_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1488_state8 == 1'b1))) begin
        sol_5_we1_local = 1'b1;
    end else begin
        sol_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_6_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_ce1_local = 1'b1;
    end else begin
        sol_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_6_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_6_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1171_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd5) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1469_state8 == 1'b1))) begin
        sol_6_we1_local = 1'b1;
    end else begin
        sol_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_7_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_ce1_local = 1'b1;
    end else begin
        sol_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_7_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1165_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd6) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1450_state8 == 1'b1))) begin
        sol_7_we1_local = 1'b1;
    end else begin
        sol_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_8_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_8_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        sol_8_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_8_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_8_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1159_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd7) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_8_we0_local = 1'b1;
    end else begin
        sol_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1431_state8 == 1'b1))) begin
        sol_8_we1_local = 1'b1;
    end else begin
        sol_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_9_address0_local = zext_ln44_1_reg_3768_pp0_iter2_reg;
    end else if ((((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_9_address0_local = p_cast31_cast_reg_3640;
    end else begin
        sol_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        sol_9_d0_local = add_ln48_23_fu_3180_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_d0_local = add_ln48_11_fu_2998_p2;
    end else if (((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_d0_local = add_ln48_5_fu_2980_p2;
    end else begin
        sol_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1153_state11 == 1'b1)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((trunc_ln16_reg_3666_pp0_iter1_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1412_state8 == 1'b1))) begin
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
assign add_ln40_fu_2942_p2 = (zext_ln44_reg_3760 + empty_8);
assign add_ln41_fu_2912_p2 = (zext_ln44_reg_3760 + empty);
assign add_ln42_fu_2946_p2 = (zext_ln44_reg_3760 + tmp_18);
assign add_ln43_fu_2864_p2 = (zext_ln44_reg_3760 + tmp_19);
assign add_ln44_1_fu_2743_p2 = (k_1_reg_3659 + 5'd3);
assign add_ln44_2_fu_2760_p2 = (zext_ln44_fu_2756_p1 + tmp_17);
assign add_ln44_3_fu_2885_p2 = (k_1_reg_3659 + 5'd4);
assign add_ln44_4_fu_2970_p2 = (zext_ln44_2_fu_2967_p1 + tmp_17);
assign add_ln44_fu_2548_p2 = (k_1_reg_3659 + 5'd2);
assign add_ln48_10_fu_2800_p2 = (add_ln48_9_reg_3736 + add_ln48_7_fu_2796_p2);
assign add_ln48_11_fu_2998_p2 = (reg_1884 + mul_ln48_2_reg_3870);
assign add_ln48_12_fu_2782_p2 = ($signed(sum0_1_reg_3692) + $signed(tmp_4_fu_2605_p29));
assign add_ln48_13_fu_2933_p2 = (add_ln48_12_reg_3850 + tmp_s_reg_3745);
assign add_ln48_14_fu_2903_p2 = ($signed(tmp_11_reg_3755) + $signed(sum0_3_reg_3935));
assign add_ln48_15_fu_2907_p2 = (add_ln48_14_fu_2903_p2 + tmp_10_reg_3750);
assign add_ln48_16_fu_2937_p2 = (add_ln48_15_reg_4016 + add_ln48_13_fu_2933_p2);
assign add_ln48_17_fu_3153_p2 = (reg_1880 + mul_ln48_4_reg_3941_pp0_iter1_reg);
assign add_ln48_18_fu_3079_p2 = ($signed(sum0_2_reg_3704_pp0_iter1_reg) + $signed(reg_1888));
assign add_ln48_19_fu_3171_p2 = (add_ln48_18_reg_4311 + tmp_12_reg_4316);
assign add_ln48_1_fu_2787_p2 = (add_ln48_reg_3716 + tmp_1_reg_3711);
assign add_ln48_20_fu_3143_p2 = (tmp_15_reg_4086 + tmp_16_reg_4306);
assign add_ln48_21_fu_3147_p2 = (add_ln48_20_fu_3143_p2 + reg_1888);
assign add_ln48_22_fu_3175_p2 = (add_ln48_21_reg_4321 + add_ln48_19_fu_3171_p2);
assign add_ln48_23_fu_3180_p2 = (reg_1884 + mul_ln48_6_reg_4171_pp0_iter2_reg);
assign add_ln48_2_fu_2338_p2 = ($signed(sum0_1_reg_3692) + $signed(tmp_5_reg_3699));
assign add_ln48_3_fu_2342_p2 = (add_ln48_2_fu_2338_p2 + tmp_3_fu_2286_p29);
assign add_ln48_4_fu_2791_p2 = (add_ln48_3_reg_3721 + add_ln48_1_fu_2787_p2);
assign add_ln48_5_fu_2980_p2 = (reg_1880 + mul_ln48_reg_3860);
assign add_ln48_6_fu_2532_p2 = ($signed(sum0_reg_3686) + $signed(tmp_7_fu_2394_p29));
assign add_ln48_7_fu_2796_p2 = (add_ln48_6_reg_3731 + tmp_6_reg_3726);
assign add_ln48_8_fu_2537_p2 = ($signed(tmp_9_fu_2486_p29) + $signed(sum0_2_reg_3704));
assign add_ln48_9_fu_2542_p2 = (add_ln48_8_fu_2537_p2 + tmp_8_fu_2440_p29);
assign add_ln48_fu_2332_p2 = (tmp_fu_2148_p29 + tmp_2_fu_2240_p29);
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
    ap_condition_1043 = ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_1821_p27 = 'bx;
assign icmp_ln38_fu_2553_p2 = ((add_ln44_fu_2548_p2 < 5'd15) ? 1'b1 : 1'b0);
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
assign orig_1_address0 = zext_ln44_3_fu_2975_p1;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign orig_8_address0 = orig_8_address0_local;
assign orig_8_address1 = orig_8_address1_local;
assign orig_8_ce0 = orig_8_ce0_local;
assign orig_8_ce1 = orig_8_ce1_local;
assign orig_9_address0 = orig_9_address0_local;
assign orig_9_address1 = orig_9_address1_local;
assign orig_9_ce0 = orig_9_ce0_local;
assign orig_9_ce1 = orig_9_ce1_local;
assign p_cast31_cast_fu_1892_p1 = p_cast31;
assign sol_0_address0 = zext_ln44_1_reg_3768_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_23_fu_3180_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_10_address0 = sol_10_address0_local;
assign sol_10_address1 = sol_10_addr_reg_4196;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_ce1 = sol_10_ce1_local;
assign sol_10_d0 = sol_10_d0_local;
assign sol_10_d1 = add_ln48_17_fu_3153_p2;
assign sol_10_we0 = sol_10_we0_local;
assign sol_10_we1 = sol_10_we1_local;
assign sol_11_address0 = sol_11_address0_local;
assign sol_11_address1 = sol_11_addr_reg_4191;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_ce1 = sol_11_ce1_local;
assign sol_11_d0 = sol_11_d0_local;
assign sol_11_d1 = add_ln48_17_fu_3153_p2;
assign sol_11_we0 = sol_11_we0_local;
assign sol_11_we1 = sol_11_we1_local;
assign sol_12_address0 = sol_12_address0_local;
assign sol_12_address1 = sol_12_addr_reg_4186;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_ce1 = sol_12_ce1_local;
assign sol_12_d0 = sol_12_d0_local;
assign sol_12_d1 = add_ln48_17_fu_3153_p2;
assign sol_12_we0 = sol_12_we0_local;
assign sol_12_we1 = sol_12_we1_local;
assign sol_13_address0 = sol_13_address0_local;
assign sol_13_address1 = sol_13_addr_reg_4181;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_ce1 = sol_13_ce1_local;
assign sol_13_d0 = sol_13_d0_local;
assign sol_13_d1 = add_ln48_17_fu_3153_p2;
assign sol_13_we0 = sol_13_we0_local;
assign sol_13_we1 = sol_13_we1_local;
assign sol_14_address0 = sol_14_address0_local;
assign sol_14_address1 = sol_14_addr_reg_4176;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_ce1 = sol_14_ce1_local;
assign sol_14_d0 = sol_14_d0_local;
assign sol_14_d1 = add_ln48_17_fu_3153_p2;
assign sol_14_we0 = sol_14_we0_local;
assign sol_14_we1 = sol_14_we1_local;
assign sol_15_address0 = zext_ln44_1_reg_3768_pp0_iter2_reg;
assign sol_15_address1 = sol_15_addr_reg_4236;
assign sol_15_ce0 = sol_15_ce0_local;
assign sol_15_ce1 = sol_15_ce1_local;
assign sol_15_d0 = add_ln48_23_fu_3180_p2;
assign sol_15_d1 = add_ln48_17_fu_3153_p2;
assign sol_15_we0 = sol_15_we0_local;
assign sol_15_we1 = sol_15_we1_local;
assign sol_1_address0 = p_cast31_cast_reg_3640;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_2980_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = p_cast31_cast_reg_3640;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = sol_4_address0_local;
assign sol_4_address1 = sol_4_addr_reg_4226;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_ce1 = sol_4_ce1_local;
assign sol_4_d0 = sol_4_d0_local;
assign sol_4_d1 = add_ln48_17_fu_3153_p2;
assign sol_4_we0 = sol_4_we0_local;
assign sol_4_we1 = sol_4_we1_local;
assign sol_5_address0 = sol_5_address0_local;
assign sol_5_address1 = sol_5_addr_reg_4221;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_ce1 = sol_5_ce1_local;
assign sol_5_d0 = sol_5_d0_local;
assign sol_5_d1 = add_ln48_17_fu_3153_p2;
assign sol_5_we0 = sol_5_we0_local;
assign sol_5_we1 = sol_5_we1_local;
assign sol_6_address0 = sol_6_address0_local;
assign sol_6_address1 = sol_6_addr_reg_4216;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_ce1 = sol_6_ce1_local;
assign sol_6_d0 = sol_6_d0_local;
assign sol_6_d1 = add_ln48_17_fu_3153_p2;
assign sol_6_we0 = sol_6_we0_local;
assign sol_6_we1 = sol_6_we1_local;
assign sol_7_address0 = sol_7_address0_local;
assign sol_7_address1 = sol_7_addr_reg_4211;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_ce1 = sol_7_ce1_local;
assign sol_7_d0 = sol_7_d0_local;
assign sol_7_d1 = add_ln48_17_fu_3153_p2;
assign sol_7_we0 = sol_7_we0_local;
assign sol_7_we1 = sol_7_we1_local;
assign sol_8_address0 = sol_8_address0_local;
assign sol_8_address1 = sol_8_addr_reg_4206;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_ce1 = sol_8_ce1_local;
assign sol_8_d0 = sol_8_d0_local;
assign sol_8_d1 = add_ln48_17_fu_3153_p2;
assign sol_8_we0 = sol_8_we0_local;
assign sol_8_we1 = sol_8_we1_local;
assign sol_9_address0 = sol_9_address0_local;
assign sol_9_address1 = sol_9_addr_reg_4201;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_ce1 = sol_9_ce1_local;
assign sol_9_d0 = sol_9_d0_local;
assign sol_9_d1 = add_ln48_17_fu_3153_p2;
assign sol_9_we0 = sol_9_we0_local;
assign sol_9_we1 = sol_9_we1_local;
assign sum0_1_fu_1968_p27 = 'bx;
assign sum0_2_fu_2088_p27 = 'bx;
assign sum0_3_fu_2805_p27 = 'bx;
assign sum0_fu_1908_p27 = 'bx;
assign tmp_10_fu_2651_p27 = 'bx;
assign tmp_11_fu_2697_p27 = 'bx;
assign tmp_12_fu_3084_p27 = 'bx;
assign tmp_16_fu_3032_p27 = 'bx;
assign tmp_1_fu_2194_p27 = 'bx;
assign tmp_22_fu_2748_p3 = add_ln44_1_fu_2743_p2[32'd4];
assign tmp_2_fu_2240_p27 = 'bx;
assign tmp_3_fu_2286_p27 = 'bx;
assign tmp_4_fu_2605_p27 = 'bx;
assign tmp_5_fu_2028_p27 = 'bx;
assign tmp_6_fu_2348_p27 = 'bx;
assign tmp_7_fu_2394_p27 = 'bx;
assign tmp_8_fu_2440_p27 = 'bx;
assign tmp_9_fu_2486_p27 = 'bx;
assign tmp_fu_2148_p27 = 'bx;
assign tmp_s_fu_2559_p27 = 'bx;
assign trunc_ln16_fu_1904_p1 = ap_sig_allocacmp_k_1[3:0];
assign zext_ln40_fu_3016_p1 = add_ln40_reg_4096;
assign zext_ln41_fu_2916_p1 = add_ln41_fu_2912_p2;
assign zext_ln42_fu_2950_p1 = add_ln42_fu_2946_p2;
assign zext_ln43_fu_2868_p1 = add_ln43_fu_2864_p2;
assign zext_ln44_1_fu_2765_p1 = add_ln44_2_fu_2760_p2;
assign zext_ln44_2_fu_2967_p1 = tmp_23_reg_4011;
assign zext_ln44_3_fu_2975_p1 = add_ln44_4_fu_2970_p2;
assign zext_ln44_fu_2756_p1 = tmp_22_fu_2748_p3;
always @ (posedge ap_clk) begin
    p_cast31_cast_reg_3640[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_3760[9:1] <= 9'b000000000;
    zext_ln44_1_reg_3768[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_3768_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_3768_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
