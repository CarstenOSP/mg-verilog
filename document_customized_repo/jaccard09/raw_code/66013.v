module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 26'd1;
parameter    ap_ST_fsm_state2 = 26'd2;
parameter    ap_ST_fsm_state3 = 26'd4;
parameter    ap_ST_fsm_state4 = 26'd8;
parameter    ap_ST_fsm_state5 = 26'd16;
parameter    ap_ST_fsm_state6 = 26'd32;
parameter    ap_ST_fsm_state7 = 26'd64;
parameter    ap_ST_fsm_state8 = 26'd128;
parameter    ap_ST_fsm_state9 = 26'd256;
parameter    ap_ST_fsm_state10 = 26'd512;
parameter    ap_ST_fsm_state11 = 26'd1024;
parameter    ap_ST_fsm_state12 = 26'd2048;
parameter    ap_ST_fsm_state13 = 26'd4096;
parameter    ap_ST_fsm_state14 = 26'd8192;
parameter    ap_ST_fsm_state15 = 26'd16384;
parameter    ap_ST_fsm_state16 = 26'd32768;
parameter    ap_ST_fsm_state17 = 26'd65536;
parameter    ap_ST_fsm_state18 = 26'd131072;
parameter    ap_ST_fsm_state19 = 26'd262144;
parameter    ap_ST_fsm_state20 = 26'd524288;
parameter    ap_ST_fsm_state21 = 26'd1048576;
parameter    ap_ST_fsm_state22 = 26'd2097152;
parameter    ap_ST_fsm_state23 = 26'd4194304;
parameter    ap_ST_fsm_state24 = 26'd8388608;
parameter    ap_ST_fsm_state25 = 26'd16777216;
parameter    ap_ST_fsm_state26 = 26'd33554432;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] obs_0_address0;
output   obs_0_ce0;
input  [7:0] obs_0_q0;
output  [5:0] obs_1_address0;
output   obs_1_ce0;
input  [7:0] obs_1_q0;
output  [5:0] obs_2_address0;
output   obs_2_ce0;
input  [7:0] obs_2_q0;
output  [5:0] obs_3_address0;
output   obs_3_ce0;
input  [7:0] obs_3_q0;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [9:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [5:0] path_0_address0;
output   path_0_ce0;
output   path_0_we0;
output  [7:0] path_0_d0;
input  [7:0] path_0_q0;
output  [5:0] path_1_address0;
output   path_1_ce0;
output   path_1_we0;
output  [7:0] path_1_d0;
input  [7:0] path_1_q0;
output  [5:0] path_2_address0;
output   path_2_ce0;
output   path_2_we0;
output  [7:0] path_2_d0;
input  [7:0] path_2_q0;
output  [5:0] path_3_address0;
output   path_3_ce0;
output   path_3_we0;
output  [7:0] path_3_d0;
input  [7:0] path_3_q0;
output  [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] transition_0_address0;
reg transition_0_ce0;
reg[9:0] transition_0_address1;
reg transition_0_ce1;
reg[9:0] transition_1_address0;
reg transition_1_ce0;
reg[9:0] transition_1_address1;
reg transition_1_ce1;
reg[9:0] transition_2_address0;
reg transition_2_ce0;
reg[9:0] transition_2_address1;
reg transition_2_ce1;
reg[9:0] transition_3_address0;
reg transition_3_ce0;
reg[9:0] transition_3_address1;
reg transition_3_ce1;
reg[9:0] emission_0_address0;
reg emission_0_ce0;
reg[9:0] emission_1_address0;
reg emission_1_ce0;
reg[9:0] emission_2_address0;
reg emission_2_ce0;
reg[9:0] emission_3_address0;
reg emission_3_ce0;
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_526;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
wire   [1:0] empty_fu_537_p1;
reg   [1:0] empty_reg_905;
wire    ap_CS_fsm_state2;
reg   [5:0] conv3_udiv_reg_910;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_920;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_29_fu_597_p2;
reg   [7:0] empty_29_reg_957;
wire    ap_CS_fsm_state6;
wire   [1:0] empty_30_fu_626_p1;
reg   [1:0] empty_30_reg_969;
reg   [5:0] conv32_udiv_reg_974;
wire   [10:0] tmp_s_fu_640_p3;
reg   [10:0] tmp_s_reg_979;
wire    ap_CS_fsm_state7;
wire   [10:0] tmp_319_fu_648_p3;
reg   [10:0] tmp_319_reg_984;
wire   [10:0] tmp_320_fu_656_p3;
reg   [10:0] tmp_320_reg_989;
wire   [10:0] tmp_321_fu_664_p3;
reg   [10:0] tmp_321_reg_994;
wire   [10:0] tmp_322_fu_672_p3;
reg   [10:0] tmp_322_reg_999;
wire   [10:0] tmp_323_fu_680_p3;
reg   [10:0] tmp_323_reg_1004;
wire   [10:0] tmp_324_fu_688_p3;
reg   [10:0] tmp_324_reg_1009;
wire   [10:0] tmp_325_fu_696_p3;
reg   [10:0] tmp_325_reg_1014;
wire   [7:0] trunc_ln50_fu_719_p1;
reg   [7:0] trunc_ln50_reg_1025;
wire    ap_CS_fsm_state13;
wire   [10:0] tmp_326_fu_747_p3;
reg   [10:0] tmp_326_reg_1051;
wire    ap_CS_fsm_state14;
wire   [1:0] trunc_ln50_1_fu_759_p1;
reg   [1:0] trunc_ln50_1_reg_1061;
wire   [1:0] trunc_ln52_fu_786_p1;
reg   [1:0] trunc_ln52_reg_1065;
wire   [5:0] lshr_ln52_1_fu_790_p4;
reg   [5:0] lshr_ln52_1_reg_1071;
wire   [63:0] tmp_68_fu_824_p11;
reg   [63:0] tmp_68_reg_1096;
wire   [63:0] grp_fu_522_p2;
reg   [63:0] min_p_240_reg_1101;
wire    ap_CS_fsm_state23;
reg   [10:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [10:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg   [10:0] llike_1_address1;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
reg   [10:0] llike_2_address0;
reg    llike_2_ce0;
reg    llike_2_we0;
reg   [63:0] llike_2_d0;
wire   [63:0] llike_2_q0;
reg   [10:0] llike_2_address1;
reg    llike_2_ce1;
wire   [63:0] llike_2_q1;
reg   [10:0] llike_3_address0;
reg    llike_3_ce0;
reg    llike_3_we0;
reg   [63:0] llike_3_d0;
wire   [63:0] llike_3_q0;
reg   [10:0] llike_3_address1;
reg    llike_3_ce1;
wire   [63:0] llike_3_q1;
reg   [10:0] llike_4_address0;
reg    llike_4_ce0;
reg    llike_4_we0;
reg   [63:0] llike_4_d0;
wire   [63:0] llike_4_q0;
reg   [10:0] llike_4_address1;
reg    llike_4_ce1;
wire   [63:0] llike_4_q1;
reg   [10:0] llike_5_address0;
reg    llike_5_ce0;
reg    llike_5_we0;
reg   [63:0] llike_5_d0;
wire   [63:0] llike_5_q0;
reg   [10:0] llike_5_address1;
reg    llike_5_ce1;
wire   [63:0] llike_5_q1;
reg   [10:0] llike_6_address0;
reg    llike_6_ce0;
reg    llike_6_we0;
reg   [63:0] llike_6_d0;
wire   [63:0] llike_6_q0;
reg   [10:0] llike_6_address1;
reg    llike_6_ce1;
wire   [63:0] llike_6_q1;
reg   [10:0] llike_7_address0;
reg    llike_7_ce0;
reg    llike_7_we0;
reg   [63:0] llike_7_d0;
wire   [63:0] llike_7_q0;
reg   [10:0] llike_7_address1;
reg    llike_7_ce1;
wire   [63:0] llike_7_q1;
wire    grp_viterbi_Pipeline_L_init_fu_413_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_413_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_413_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_413_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_413_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_413_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_413_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_413_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_413_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_413_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_413_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_413_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_7_d0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_413_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_init_0_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_413_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_init_1_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_413_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_init_2_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_413_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_init_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_413_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_413_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_413_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_413_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_emission_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_emission_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_emission_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_443_emission_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_482_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_482_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_482_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_482_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_1_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_2_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_3_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_4_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_5_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_6_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_7_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_7_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_482_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_482_min_s_16_out;
wire    grp_viterbi_Pipeline_L_end_fu_482_min_s_16_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_496_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_496_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_496_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_496_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_4_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_4_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_5_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_5_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_6_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_6_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_7_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_7_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_7_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_496_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_496_transition_0_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_496_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_496_transition_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_496_transition_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_496_transition_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_496_transition_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_496_transition_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_496_transition_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_496_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_496_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_496_min_s_34_out;
wire    grp_viterbi_Pipeline_L_state_fu_496_min_s_34_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg   [7:0] min_s_16_loc_fu_148;
reg    grp_viterbi_Pipeline_L_state_fu_496_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
reg   [7:0] min_s_34_loc_fu_144;
wire   [63:0] zext_ln6_fu_570_p1;
wire   [0:0] icmp_ln18_fu_554_p2;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln52_fu_739_p1;
wire   [0:0] tmp_fu_711_p3;
wire   [63:0] zext_ln52_2_fu_754_p1;
wire   [63:0] zext_ln52_1_fu_800_p1;
wire   [63:0] zext_ln6_1_fu_856_p1;
wire    ap_CS_fsm_state26;
reg   [7:0] t_fu_140;
wire   [7:0] add_ln18_fu_578_p2;
reg   [8:0] t_1_fu_184;
wire   [8:0] add_ln50_fu_871_p2;
reg    obs_0_ce0_local;
reg   [5:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    obs_2_ce0_local;
reg    obs_3_ce0_local;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    path_3_we0_local;
reg   [7:0] path_3_d0_local;
reg    path_3_ce0_local;
reg   [5:0] path_3_address0_local;
reg    path_0_ce0_local;
reg   [5:0] path_0_address0_local;
reg    path_0_we0_local;
reg    path_1_ce0_local;
reg   [5:0] path_1_address0_local;
reg    path_1_we0_local;
reg    path_2_ce0_local;
reg   [5:0] path_2_address0_local;
reg    path_2_we0_local;
reg    transition_0_ce0_local;
reg    transition_1_ce0_local;
reg    transition_2_ce0_local;
reg    transition_3_ce0_local;
reg   [63:0] grp_fu_522_p0;
reg   [63:0] grp_fu_522_p1;
wire    ap_CS_fsm_state16;
wire   [5:0] lshr_ln6_fu_560_p4;
wire   [7:0] tmp_2_fu_602_p9;
wire   [1:0] tmp_2_fu_602_p10;
wire   [7:0] tmp_2_fu_602_p11;
wire   [7:0] add_ln52_fu_723_p2;
wire   [5:0] lshr_ln1_fu_729_p4;
wire   [7:0] tmp_67_fu_762_p9;
wire   [1:0] tmp_67_fu_762_p10;
wire   [7:0] tmp_67_fu_762_p11;
wire   [63:0] tmp_68_fu_824_p2;
wire   [63:0] tmp_68_fu_824_p4;
wire   [63:0] tmp_68_fu_824_p6;
wire   [63:0] tmp_68_fu_824_p8;
wire   [63:0] tmp_68_fu_824_p9;
wire   [5:0] lshr_ln6_1_fu_847_p4;
reg    grp_fu_522_ce;
wire   [0:0] grp_fu_1106_p2;
reg   [63:0] grp_fu_1106_p0;
reg   [63:0] grp_fu_1106_p1;
reg    grp_fu_1106_ce;
reg   [4:0] grp_fu_1106_opcode;
reg   [25:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
reg    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire   [1:0] tmp_2_fu_602_p1;
wire   [1:0] tmp_2_fu_602_p3;
wire  signed [1:0] tmp_2_fu_602_p5;
wire  signed [1:0] tmp_2_fu_602_p7;
wire  signed [1:0] tmp_67_fu_762_p1;
wire   [1:0] tmp_67_fu_762_p3;
wire   [1:0] tmp_67_fu_762_p5;
wire  signed [1:0] tmp_67_fu_762_p7;
wire   [1:0] tmp_68_fu_824_p1;
wire   [1:0] tmp_68_fu_824_p3;
wire  signed [1:0] tmp_68_fu_824_p5;
wire  signed [1:0] tmp_68_fu_824_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_496_ap_start_reg = 1'b0;
#0 t_fu_140 = 8'd0;
#0 t_1_fu_184 = 9'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0),.address1(llike_4_address1),.ce1(llike_4_ce1),.q1(llike_4_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0),.address1(llike_5_address1),.ce1(llike_5_ce1),.q1(llike_5_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0),.address1(llike_6_address1),.ce1(llike_6_ce1),.q1(llike_6_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0),.address1(llike_7_address1),.ce1(llike_7_ce1),.q1(llike_7_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_413(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_413_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_413_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_413_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_413_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_7_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_413_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_413_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_413_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_413_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_413_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_413_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_413_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_413_init_3_ce0),.init_3_q0(init_3_q0),.conv3_udiv_cast(conv3_udiv_reg_910),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_413_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_413_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_413_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_413_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_413_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_413_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_413_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_413_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_reg_905),.grp_fu_522_p_din0(grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_443(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_443_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_443_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_443_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_ce1),.llike_q1(llike_q1),.empty_8(tmp_s_reg_979),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_d0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_d0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_d0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_d0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_d0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_d0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_ce1),.llike_7_q1(llike_7_q1),.empty_9(tmp_319_reg_984),.empty_10(tmp_320_reg_989),.empty_11(tmp_321_reg_994),.empty_12(tmp_322_reg_999),.empty_13(tmp_323_reg_1004),.empty_14(tmp_324_reg_1009),.empty_15(tmp_325_reg_1014),.t(t_2_reg_920),.transition_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_ce1),.transition_3_q1(transition_3_q1),.conv32_udiv_cast(conv32_udiv_reg_974),.emission_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_443_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_443_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_30_reg_969),.grp_fu_522_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_ce),.grp_fu_1106_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_din0),.grp_fu_1106_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_din1),.grp_fu_1106_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_opcode),.grp_fu_1106_p_dout0(grp_fu_1106_p2),.grp_fu_1106_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_482(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_482_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_482_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_482_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_482_ap_ready),.min_p(reg_526),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_7_ce1),.llike_7_q1(llike_7_q1),.llike_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_ce0),.llike_q0(llike_q0),.min_s_16_out(grp_viterbi_Pipeline_L_end_fu_482_min_s_16_out),.min_s_16_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_482_min_s_16_out_ap_vld),.grp_fu_1106_p_din0(grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_din0),.grp_fu_1106_p_din1(grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_din1),.grp_fu_1106_p_opcode(grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_opcode),.grp_fu_1106_p_dout0(grp_fu_1106_p2),.grp_fu_1106_p_ce(grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_496(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_496_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_496_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_496_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_496_ap_ready),.min_p_161(min_p_240_reg_1101),.t_1(trunc_ln50_reg_1025),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_496_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_496_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_state_fu_496_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_state_fu_496_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_state_fu_496_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_state_fu_496_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_state_fu_496_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_state_fu_496_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_state_fu_496_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_state_fu_496_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_state_fu_496_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_state_fu_496_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_state_fu_496_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_state_fu_496_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_state_fu_496_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_state_fu_496_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_state_fu_496_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_state_fu_496_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_state_fu_496_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_state_fu_496_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_state_fu_496_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_state_fu_496_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_state_fu_496_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_state_fu_496_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_state_fu_496_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_state_fu_496_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_state_fu_496_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_state_fu_496_llike_7_ce1),.llike_7_q1(llike_7_q1),.zext_ln52_2(lshr_ln52_1_reg_1071),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_496_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_496_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_state_fu_496_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_state_fu_496_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_496_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_496_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_state_fu_496_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_state_fu_496_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_state_fu_496_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_state_fu_496_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_state_fu_496_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_state_fu_496_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_state_fu_496_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_state_fu_496_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_state_fu_496_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_state_fu_496_transition_3_ce1),.transition_3_q1(transition_3_q1),.empty(trunc_ln52_reg_1065),.llike_address0(grp_viterbi_Pipeline_L_state_fu_496_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_496_llike_ce0),.llike_q0(llike_q0),.zext_ln52_3(tmp_326_reg_1051),.min_s_34_out(grp_viterbi_Pipeline_L_state_fu_496_min_s_34_out),.min_s_34_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_496_min_s_34_out_ap_vld),.grp_fu_522_p_din0(grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_ce),.grp_fu_1106_p_din0(grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_din0),.grp_fu_1106_p_din1(grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_din1),.grp_fu_1106_p_opcode(grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_opcode),.grp_fu_1106_p_dout0(grp_fu_1106_p2),.grp_fu_1106_p_ce(grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U169(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_522_p0),.din1(grp_fu_522_p1),.ce(grp_fu_522_ce),.dout(grp_fu_522_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U170(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.def(tmp_2_fu_602_p9),.sel(tmp_2_fu_602_p10),.dout(tmp_2_fu_602_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U171(.din0(path_0_q0),.din1(path_1_q0),.din2(path_2_q0),.din3(path_3_q0),.def(tmp_67_fu_762_p9),.sel(tmp_67_fu_762_p10),.dout(tmp_67_fu_762_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U172(.din0(tmp_68_fu_824_p2),.din1(tmp_68_fu_824_p4),.din2(tmp_68_fu_824_p6),.din3(tmp_68_fu_824_p8),.def(tmp_68_fu_824_p9),.sel(trunc_ln52_reg_1065),.dout(tmp_68_fu_824_p11));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U173(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1106_p0),.din1(grp_fu_1106_p1),.ce(grp_fu_1106_ce),.opcode(grp_fu_1106_opcode),.dout(grp_fu_1106_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_443_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_482_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_413_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_496_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_viterbi_Pipeline_L_state_fu_496_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_496_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_496_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_554_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_184 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        t_1_fu_184 <= add_ln50_fu_871_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_140 <= 8'd1;
    end else if (((icmp_ln18_fu_554_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_140 <= add_ln18_fu_578_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_reg_974 <= {{tmp_2_fu_602_p11[7:2]}};
        empty_29_reg_957 <= empty_29_fu_597_p2;
        empty_30_reg_969 <= empty_30_fu_626_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_910 <= {{obs_0_q0[7:2]}};
        empty_reg_905 <= empty_fu_537_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        lshr_ln52_1_reg_1071 <= {{tmp_67_fu_762_p11[7:2]}};
        tmp_326_reg_1051[10 : 3] <= tmp_326_fu_747_p3[10 : 3];
        trunc_ln50_1_reg_1061 <= trunc_ln50_1_fu_759_p1;
        trunc_ln52_reg_1065 <= trunc_ln52_fu_786_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        min_p_240_reg_1101 <= grp_fu_522_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_482_min_s_16_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        min_s_16_loc_fu_148 <= grp_viterbi_Pipeline_L_end_fu_482_min_s_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_496_min_s_34_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
        min_s_34_loc_fu_144 <= grp_viterbi_Pipeline_L_state_fu_496_min_s_34_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_526 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_920 <= t_fu_140;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_319_reg_984[10 : 3] <= tmp_319_fu_648_p3[10 : 3];
        tmp_320_reg_989[10 : 3] <= tmp_320_fu_656_p3[10 : 3];
        tmp_321_reg_994[10 : 3] <= tmp_321_fu_664_p3[10 : 3];
        tmp_322_reg_999[10 : 3] <= tmp_322_fu_672_p3[10 : 3];
        tmp_323_reg_1004[10 : 3] <= tmp_323_fu_680_p3[10 : 3];
        tmp_324_reg_1009[10 : 3] <= tmp_324_fu_688_p3[10 : 3];
        tmp_325_reg_1014[10 : 3] <= tmp_325_fu_696_p3[10 : 3];
        tmp_s_reg_979[10 : 3] <= tmp_s_fu_640_p3[10 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_68_reg_1096 <= tmp_68_fu_824_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        trunc_ln50_reg_1025 <= trunc_ln50_fu_719_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_482_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_state_fu_496_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_413_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_443_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_711_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_711_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_413_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_413_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_413_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_413_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_413_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_413_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_413_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_413_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1106_ce = grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1106_ce = grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1106_ce = grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_ce;
    end else begin
        grp_fu_1106_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1106_opcode = grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1106_opcode = grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1106_opcode = grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_opcode;
    end else begin
        grp_fu_1106_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1106_p0 = grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1106_p0 = grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1106_p0 = grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_din0;
    end else begin
        grp_fu_1106_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1106_p1 = grp_viterbi_Pipeline_L_state_fu_496_grp_fu_1106_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1106_p1 = grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1106_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1106_p1 = grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_1106_p_din1;
    end else begin
        grp_fu_1106_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_522_ce = grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_522_ce = grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_522_ce = grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_ce;
    end else begin
        grp_fu_522_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_522_p0 = grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_522_p0 = grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_522_p0 = grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_522_p0 = reg_526;
    end else begin
        grp_fu_522_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_522_p1 = grp_viterbi_Pipeline_L_state_fu_496_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_522_p1 = grp_viterbi_Pipeline_L_curr_state_fu_443_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_522_p1 = grp_viterbi_Pipeline_L_init_fu_413_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_522_p1 = tmp_68_reg_1096;
    end else begin
        grp_fu_522_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_496_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_state_fu_496_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_496_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_state_fu_496_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_state_fu_496_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_2_address0;
    end else begin
        llike_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_state_fu_496_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_address1;
    end else begin
        llike_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_state_fu_496_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_2_ce0;
    end else begin
        llike_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_state_fu_496_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_2_d0;
    end else begin
        llike_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_2_we0;
    end else begin
        llike_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_state_fu_496_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_3_address0;
    end else begin
        llike_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_state_fu_496_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_address1;
    end else begin
        llike_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_state_fu_496_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_3_ce0;
    end else begin
        llike_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_state_fu_496_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_3_d0;
    end else begin
        llike_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_3_we0;
    end else begin
        llike_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_state_fu_496_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_4_address0;
    end else begin
        llike_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_state_fu_496_llike_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_address1;
    end else begin
        llike_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_state_fu_496_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_4_ce0;
    end else begin
        llike_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_state_fu_496_llike_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_4_d0;
    end else begin
        llike_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_4_we0;
    end else begin
        llike_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_state_fu_496_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_5_address0;
    end else begin
        llike_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_state_fu_496_llike_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_address1;
    end else begin
        llike_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_state_fu_496_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_5_ce0;
    end else begin
        llike_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_state_fu_496_llike_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_5_d0;
    end else begin
        llike_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_5_we0;
    end else begin
        llike_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_state_fu_496_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_6_address0;
    end else begin
        llike_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_state_fu_496_llike_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_address1;
    end else begin
        llike_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_state_fu_496_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_6_ce0;
    end else begin
        llike_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_state_fu_496_llike_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_6_d0;
    end else begin
        llike_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_6_we0;
    end else begin
        llike_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_state_fu_496_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_7_address0;
    end else begin
        llike_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_state_fu_496_llike_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_address1;
    end else begin
        llike_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_state_fu_496_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_7_ce0;
    end else begin
        llike_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_state_fu_496_llike_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_7_d0;
    end else begin
        llike_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_7_we0;
    end else begin
        llike_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_496_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0_local = zext_ln52_2_fu_754_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd1112;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_496_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_443_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_570_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        obs_0_address0_local = 64'd0;
    end else begin
        obs_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        obs_0_ce0_local = 1'b1;
    end else begin
        obs_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_1_ce0_local = 1'b1;
    end else begin
        obs_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_2_ce0_local = 1'b1;
    end else begin
        obs_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_3_ce0_local = 1'b1;
    end else begin
        obs_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_0_address0_local = zext_ln6_1_fu_856_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_0_address0_local = zext_ln52_fu_739_p1;
    end else begin
        path_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state13))) begin
        path_0_ce0_local = 1'b1;
    end else begin
        path_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1061 == 2'd0) & (1'b1 == ap_CS_fsm_state26))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_1_address0_local = zext_ln6_1_fu_856_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_1_address0_local = zext_ln52_fu_739_p1;
    end else begin
        path_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state13))) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1061 == 2'd1) & (1'b1 == ap_CS_fsm_state26))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_2_address0_local = zext_ln6_1_fu_856_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_2_address0_local = zext_ln52_fu_739_p1;
    end else begin
        path_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state13))) begin
        path_2_ce0_local = 1'b1;
    end else begin
        path_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1061 == 2'd2) & (1'b1 == ap_CS_fsm_state26))) begin
        path_2_we0_local = 1'b1;
    end else begin
        path_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_3_address0_local = zext_ln6_1_fu_856_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_3_address0_local = zext_ln52_fu_739_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_address0_local = 64'd34;
    end else begin
        path_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13))) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_3_d0_local = min_s_34_loc_fu_144;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_d0_local = min_s_16_loc_fu_148;
    end else begin
        path_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((trunc_ln50_1_reg_1061 == 2'd3) & (1'b1 == ap_CS_fsm_state26)))) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_496_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln52_1_fu_800_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_state_fu_496_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_496_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_ce0;
    end else begin
        transition_0_ce0 = transition_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_state_fu_496_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_496_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln52_1_fu_800_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_state_fu_496_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_496_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_ce0;
    end else begin
        transition_1_ce0 = transition_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_state_fu_496_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_state_fu_496_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_address0;
    end else begin
        transition_2_address0 = zext_ln52_1_fu_800_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_state_fu_496_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_state_fu_496_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_ce0;
    end else begin
        transition_2_ce0 = transition_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_state_fu_496_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_state_fu_496_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_address0;
    end else begin
        transition_3_address0 = zext_ln52_1_fu_800_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_state_fu_496_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_state_fu_496_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_ce0;
    end else begin
        transition_3_ce0 = transition_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_state_fu_496_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_443_transition_3_ce1;
    end else begin
        transition_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_viterbi_Pipeline_L_init_fu_413_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_554_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_viterbi_Pipeline_L_curr_state_fu_443_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_viterbi_Pipeline_L_end_fu_482_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((tmp_fu_711_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((grp_viterbi_Pipeline_L_state_fu_496_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_578_p2 = (t_fu_140 + 8'd1);
assign add_ln50_fu_871_p2 = ($signed(t_1_fu_184) + $signed(9'd511));
assign add_ln52_fu_723_p2 = (trunc_ln50_fu_719_p1 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign empty_29_fu_597_p2 = ($signed(t_2_reg_920) + $signed(8'd255));
assign empty_30_fu_626_p1 = tmp_2_fu_602_p11[1:0];
assign empty_fu_537_p1 = obs_0_q0[1:0];
assign grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_443_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_482_ap_start = grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_413_ap_start = grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_496_ap_start = grp_viterbi_Pipeline_L_state_fu_496_ap_start_reg;
assign icmp_ln18_fu_554_p2 = ((t_fu_140 == 8'd140) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_413_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_413_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_413_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_413_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_413_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_413_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_413_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_413_init_3_ce0;
assign lshr_ln1_fu_729_p4 = {{add_ln52_fu_723_p2[7:2]}};
assign lshr_ln52_1_fu_790_p4 = {{tmp_67_fu_762_p11[7:2]}};
assign lshr_ln6_1_fu_847_p4 = {{t_1_fu_184[7:2]}};
assign lshr_ln6_fu_560_p4 = {{t_fu_140[7:2]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_570_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_570_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_570_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_34_loc_fu_144;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = min_s_34_loc_fu_144;
assign path_1_we0 = path_1_we0_local;
assign path_2_address0 = path_2_address0_local;
assign path_2_ce0 = path_2_ce0_local;
assign path_2_d0 = min_s_34_loc_fu_144;
assign path_2_we0 = path_2_we0_local;
assign path_3_address0 = path_3_address0_local;
assign path_3_ce0 = path_3_ce0_local;
assign path_3_d0 = path_3_d0_local;
assign path_3_we0 = path_3_we0_local;
assign tmp_2_fu_602_p10 = t_2_reg_920[1:0];
assign tmp_2_fu_602_p9 = 'bx;
assign tmp_319_fu_648_p3 = {{empty_29_reg_957}, {3'd1}};
assign tmp_320_fu_656_p3 = {{empty_29_reg_957}, {3'd2}};
assign tmp_321_fu_664_p3 = {{empty_29_reg_957}, {3'd3}};
assign tmp_322_fu_672_p3 = {{empty_29_reg_957}, {3'd4}};
assign tmp_323_fu_680_p3 = {{empty_29_reg_957}, {3'd5}};
assign tmp_324_fu_688_p3 = {{empty_29_reg_957}, {3'd6}};
assign tmp_325_fu_696_p3 = {{empty_29_reg_957}, {3'd7}};
assign tmp_326_fu_747_p3 = {{trunc_ln50_reg_1025}, {3'd0}};
assign tmp_67_fu_762_p10 = t_1_fu_184[1:0];
assign tmp_67_fu_762_p9 = 'bx;
assign tmp_68_fu_824_p2 = transition_0_q0;
assign tmp_68_fu_824_p4 = transition_1_q0;
assign tmp_68_fu_824_p6 = transition_2_q0;
assign tmp_68_fu_824_p8 = transition_3_q0;
assign tmp_68_fu_824_p9 = 'bx;
assign tmp_fu_711_p3 = t_1_fu_184[32'd8];
assign tmp_s_fu_640_p3 = {{empty_29_reg_957}, {3'd0}};
assign trunc_ln50_1_fu_759_p1 = t_1_fu_184[1:0];
assign trunc_ln50_fu_719_p1 = t_1_fu_184[7:0];
assign trunc_ln52_fu_786_p1 = tmp_67_fu_762_p11[1:0];
assign zext_ln52_1_fu_800_p1 = lshr_ln52_1_fu_790_p4;
assign zext_ln52_2_fu_754_p1 = tmp_326_fu_747_p3;
assign zext_ln52_fu_739_p1 = lshr_ln1_fu_729_p4;
assign zext_ln6_1_fu_856_p1 = lshr_ln6_1_fu_847_p4;
assign zext_ln6_fu_570_p1 = lshr_ln6_fu_560_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_979[2:0] <= 3'b000;
    tmp_319_reg_984[2:0] <= 3'b001;
    tmp_320_reg_989[2:0] <= 3'b010;
    tmp_321_reg_994[2:0] <= 3'b011;
    tmp_322_reg_999[2:0] <= 3'b100;
    tmp_323_reg_1004[2:0] <= 3'b101;
    tmp_324_reg_1009[2:0] <= 3'b110;
    tmp_325_reg_1014[2:0] <= 3'b111;
    tmp_326_reg_1051[2:0] <= 3'b000;
end
endmodule 