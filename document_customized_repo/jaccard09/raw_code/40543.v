module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,ap_return); 
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
output  [6:0] obs_0_address0;
output   obs_0_ce0;
input  [7:0] obs_0_q0;
output  [6:0] obs_1_address0;
output   obs_1_ce0;
input  [7:0] obs_1_q0;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [6:0] path_0_address0;
output   path_0_ce0;
output   path_0_we0;
output  [7:0] path_0_d0;
input  [7:0] path_0_q0;
output  [6:0] path_1_address0;
output   path_1_ce0;
output   path_1_we0;
output  [7:0] path_1_d0;
input  [7:0] path_1_q0;
output  [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] transition_0_address0;
reg transition_0_ce0;
reg[10:0] transition_0_address1;
reg transition_0_ce1;
reg[10:0] transition_1_address0;
reg transition_1_ce0;
reg[10:0] transition_1_address1;
reg transition_1_ce1;
reg[10:0] emission_0_address0;
reg emission_0_ce0;
reg[10:0] emission_1_address0;
reg emission_1_ce0;
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_374;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
wire   [0:0] empty_fu_385_p1;
reg   [0:0] empty_reg_683;
wire    ap_CS_fsm_state2;
reg   [6:0] conv3_udiv_reg_688;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_698;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_29_fu_443_p2;
reg   [7:0] empty_29_reg_725;
wire    ap_CS_fsm_state6;
wire   [0:0] empty_30_fu_456_p1;
reg   [0:0] empty_30_reg_737;
reg   [6:0] conv32_udiv_reg_742;
wire   [10:0] tmp_s_fu_470_p3;
reg   [10:0] tmp_s_reg_747;
wire    ap_CS_fsm_state7;
wire   [10:0] tmp_237_fu_478_p3;
reg   [10:0] tmp_237_reg_752;
wire   [10:0] tmp_238_fu_486_p3;
reg   [10:0] tmp_238_reg_757;
wire   [10:0] tmp_239_fu_494_p3;
reg   [10:0] tmp_239_reg_762;
wire   [10:0] tmp_240_fu_502_p3;
reg   [10:0] tmp_240_reg_767;
wire   [10:0] tmp_241_fu_510_p3;
reg   [10:0] tmp_241_reg_772;
wire   [10:0] tmp_242_fu_518_p3;
reg   [10:0] tmp_242_reg_777;
wire   [10:0] tmp_243_fu_526_p3;
reg   [10:0] tmp_243_reg_782;
wire   [7:0] trunc_ln50_fu_549_p1;
reg   [7:0] trunc_ln50_reg_793;
wire    ap_CS_fsm_state13;
wire   [10:0] tmp_244_fu_575_p3;
reg   [10:0] tmp_244_reg_809;
wire    ap_CS_fsm_state14;
wire   [0:0] trunc_ln50_1_fu_587_p1;
reg   [0:0] trunc_ln50_1_reg_819;
wire   [0:0] trunc_ln52_fu_598_p1;
reg   [0:0] trunc_ln52_reg_823;
wire   [6:0] lshr_ln52_1_fu_602_p4;
reg   [6:0] lshr_ln52_1_reg_829;
wire   [63:0] select_ln52_1_fu_618_p3;
reg   [63:0] select_ln52_1_reg_844;
wire   [63:0] bitcast_ln52_fu_625_p1;
wire    ap_CS_fsm_state16;
wire   [63:0] grp_fu_370_p2;
reg   [63:0] min_p_240_reg_854;
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
wire    grp_viterbi_Pipeline_L_init_fu_281_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_281_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_281_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_281_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_281_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_llike_7_d0;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_281_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_init_0_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_281_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_init_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_emission_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_281_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_281_emission_1_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_d0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_emission_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_emission_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_curr_state_fu_303_emission_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_emission_1_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_334_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_334_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_334_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_334_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_1_address1;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_2_address1;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_3_address1;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_4_address1;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_5_address1;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_6_address1;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_7_address1;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_7_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_334_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_334_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_334_min_s_16_out;
wire    grp_viterbi_Pipeline_L_end_fu_334_min_s_16_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_348_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_348_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_348_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_348_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_4_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_4_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_5_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_5_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_6_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_6_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_7_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_7_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_7_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_transition_0_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_transition_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_348_transition_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_348_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_348_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_348_min_s_34_out;
wire    grp_viterbi_Pipeline_L_state_fu_348_min_s_34_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_281_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_334_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg   [7:0] min_s_16_loc_fu_110;
reg    grp_viterbi_Pipeline_L_state_fu_348_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
reg   [7:0] min_s_34_loc_fu_106;
wire   [63:0] zext_ln6_fu_418_p1;
wire   [0:0] icmp_ln18_fu_402_p2;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln52_fu_569_p1;
wire   [0:0] tmp_fu_541_p3;
wire   [63:0] zext_ln52_2_fu_582_p1;
wire   [63:0] zext_ln52_1_fu_612_p1;
wire   [63:0] zext_ln6_1_fu_638_p1;
wire    ap_CS_fsm_state26;
reg   [7:0] t_fu_102;
wire   [7:0] add_ln18_fu_424_p2;
reg   [8:0] t_1_fu_146;
wire   [8:0] add_ln50_fu_649_p2;
reg    obs_0_ce0_local;
reg   [6:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    path_1_we0_local;
reg   [7:0] path_1_d0_local;
reg    path_1_ce0_local;
reg   [6:0] path_1_address0_local;
reg    path_0_ce0_local;
reg   [6:0] path_0_address0_local;
reg    path_0_we0_local;
reg    transition_0_ce0_local;
reg    transition_1_ce0_local;
reg   [63:0] grp_fu_370_p0;
reg   [63:0] grp_fu_370_p1;
wire   [6:0] lshr_ln6_fu_408_p4;
wire   [0:0] trunc_ln18_fu_440_p1;
wire   [7:0] tmp_2_fu_448_p3;
wire   [7:0] add_ln52_fu_553_p2;
wire   [6:0] lshr_ln1_fu_559_p4;
wire   [7:0] select_ln52_fu_590_p3;
wire   [6:0] lshr_ln6_1_fu_629_p4;
reg    grp_fu_370_ce;
wire   [0:0] grp_fu_859_p2;
reg   [63:0] grp_fu_859_p0;
reg   [63:0] grp_fu_859_p1;
reg    grp_fu_859_ce;
reg   [4:0] grp_fu_859_opcode;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_viterbi_Pipeline_L_init_fu_281_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_334_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_348_ap_start_reg = 1'b0;
#0 t_fu_102 = 8'd0;
#0 t_1_fu_146 = 9'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
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
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_281(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_281_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_281_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_281_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_281_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_281_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_281_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_281_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_281_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_281_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_281_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_281_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_281_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_281_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_281_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_281_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_281_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_281_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_281_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_281_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_281_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_281_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_281_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_281_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_281_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_281_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_281_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_281_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_281_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_281_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_281_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_281_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_281_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_281_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_281_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_281_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_281_llike_7_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_281_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_281_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_281_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_281_init_1_ce0),.init_1_q0(init_1_q0),.conv3_udiv_cast(conv3_udiv_reg_688),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_281_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_281_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_281_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_281_emission_1_ce0),.emission_1_q0(emission_1_q0),.empty(empty_reg_683),.grp_fu_370_p_din0(grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_din1),.grp_fu_370_p_opcode(grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_opcode),.grp_fu_370_p_dout0(grp_fu_370_p2),.grp_fu_370_p_ce(grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_303(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_303_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_303_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_303_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_ce1),.llike_q1(llike_q1),.empty_8(tmp_s_reg_747),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_d0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_d0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_d0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_d0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_d0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_d0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_ce1),.llike_7_q1(llike_7_q1),.empty_9(tmp_237_reg_752),.empty_10(tmp_238_reg_757),.empty_11(tmp_239_reg_762),.empty_12(tmp_240_reg_767),.empty_13(tmp_241_reg_772),.empty_14(tmp_242_reg_777),.empty_15(tmp_243_reg_782),.t(t_2_reg_698),.transition_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_ce1),.transition_1_q1(transition_1_q1),.conv32_udiv_cast(conv32_udiv_reg_742),.emission_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_303_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_303_emission_1_ce0),.emission_1_q0(emission_1_q0),.empty(empty_30_reg_737),.grp_fu_370_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_din1),.grp_fu_370_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_opcode),.grp_fu_370_p_dout0(grp_fu_370_p2),.grp_fu_370_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_ce),.grp_fu_859_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_din0),.grp_fu_859_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_din1),.grp_fu_859_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_opcode),.grp_fu_859_p_dout0(grp_fu_859_p2),.grp_fu_859_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_334(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_334_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_334_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_334_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_334_ap_ready),.min_p(reg_374),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_334_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_334_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_end_fu_334_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_end_fu_334_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_334_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_334_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_end_fu_334_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_end_fu_334_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_334_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_334_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_end_fu_334_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_end_fu_334_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_334_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_334_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_end_fu_334_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_end_fu_334_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_334_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_334_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_end_fu_334_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_end_fu_334_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_334_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_334_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_end_fu_334_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_end_fu_334_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_334_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_334_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_end_fu_334_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_end_fu_334_llike_7_ce1),.llike_7_q1(llike_7_q1),.llike_address0(grp_viterbi_Pipeline_L_end_fu_334_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_334_llike_ce0),.llike_q0(llike_q0),.min_s_16_out(grp_viterbi_Pipeline_L_end_fu_334_min_s_16_out),.min_s_16_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_334_min_s_16_out_ap_vld),.grp_fu_859_p_din0(grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_din0),.grp_fu_859_p_din1(grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_din1),.grp_fu_859_p_opcode(grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_opcode),.grp_fu_859_p_dout0(grp_fu_859_p2),.grp_fu_859_p_ce(grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_348(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_348_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_348_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_348_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_348_ap_ready),.min_p_161(min_p_240_reg_854),.t_1(trunc_ln50_reg_793),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_348_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_348_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_state_fu_348_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_state_fu_348_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_state_fu_348_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_state_fu_348_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_state_fu_348_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_state_fu_348_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_state_fu_348_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_state_fu_348_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_state_fu_348_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_state_fu_348_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_state_fu_348_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_state_fu_348_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_state_fu_348_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_state_fu_348_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_state_fu_348_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_state_fu_348_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_state_fu_348_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_state_fu_348_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_state_fu_348_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_state_fu_348_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_state_fu_348_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_state_fu_348_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_state_fu_348_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_state_fu_348_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_state_fu_348_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_state_fu_348_llike_7_ce1),.llike_7_q1(llike_7_q1),.zext_ln52_2(lshr_ln52_1_reg_829),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_348_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_348_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_state_fu_348_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_state_fu_348_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_348_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_348_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_state_fu_348_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_state_fu_348_transition_1_ce1),.transition_1_q1(transition_1_q1),.empty(trunc_ln52_reg_823),.llike_address0(grp_viterbi_Pipeline_L_state_fu_348_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_348_llike_ce0),.llike_q0(llike_q0),.zext_ln52_3(tmp_244_reg_809),.min_s_34_out(grp_viterbi_Pipeline_L_state_fu_348_min_s_34_out),.min_s_34_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_348_min_s_34_out_ap_vld),.grp_fu_370_p_din0(grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_din1),.grp_fu_370_p_opcode(grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_opcode),.grp_fu_370_p_dout0(grp_fu_370_p2),.grp_fu_370_p_ce(grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_ce),.grp_fu_859_p_din0(grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_din0),.grp_fu_859_p_din1(grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_din1),.grp_fu_859_p_opcode(grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_opcode),.grp_fu_859_p_dout0(grp_fu_859_p2),.grp_fu_859_p_ce(grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_370_p0),.din1(grp_fu_370_p1),.ce(grp_fu_370_ce),.dout(grp_fu_370_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_859_p0),.din1(grp_fu_859_p1),.ce(grp_fu_859_ce),.opcode(grp_fu_859_opcode),.dout(grp_fu_859_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_303_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_334_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_334_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_334_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_334_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_281_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_281_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_281_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_281_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_348_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_viterbi_Pipeline_L_state_fu_348_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_348_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_348_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_402_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_146 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        t_1_fu_146 <= add_ln50_fu_649_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_102 <= 8'd1;
    end else if (((icmp_ln18_fu_402_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_102 <= add_ln18_fu_424_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_reg_742 <= {{tmp_2_fu_448_p3[7:1]}};
        empty_29_reg_725 <= empty_29_fu_443_p2;
        empty_30_reg_737 <= empty_30_fu_456_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_688 <= {{obs_0_q0[7:1]}};
        empty_reg_683 <= empty_fu_385_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        lshr_ln52_1_reg_829 <= {{select_ln52_fu_590_p3[7:1]}};
        tmp_244_reg_809[10 : 3] <= tmp_244_fu_575_p3[10 : 3];
        trunc_ln50_1_reg_819 <= trunc_ln50_1_fu_587_p1;
        trunc_ln52_reg_823 <= trunc_ln52_fu_598_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        min_p_240_reg_854 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_334_min_s_16_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        min_s_16_loc_fu_110 <= grp_viterbi_Pipeline_L_end_fu_334_min_s_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_348_min_s_34_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
        min_s_34_loc_fu_106 <= grp_viterbi_Pipeline_L_state_fu_348_min_s_34_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_374 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        select_ln52_1_reg_844 <= select_ln52_1_fu_618_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_698 <= t_fu_102;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_237_reg_752[10 : 3] <= tmp_237_fu_478_p3[10 : 3];
        tmp_238_reg_757[10 : 3] <= tmp_238_fu_486_p3[10 : 3];
        tmp_239_reg_762[10 : 3] <= tmp_239_fu_494_p3[10 : 3];
        tmp_240_reg_767[10 : 3] <= tmp_240_fu_502_p3[10 : 3];
        tmp_241_reg_772[10 : 3] <= tmp_241_fu_510_p3[10 : 3];
        tmp_242_reg_777[10 : 3] <= tmp_242_fu_518_p3[10 : 3];
        tmp_243_reg_782[10 : 3] <= tmp_243_fu_526_p3[10 : 3];
        tmp_s_reg_747[10 : 3] <= tmp_s_fu_470_p3[10 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        trunc_ln50_reg_793 <= trunc_ln50_fu_549_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_334_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_state_fu_348_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_281_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_303_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_541_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
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
    if (((tmp_fu_541_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_281_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_281_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_281_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_281_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_370_ce = grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_370_ce = grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_370_ce = grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_ce;
    end else begin
        grp_fu_370_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_370_p0 = grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_370_p0 = grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_370_p0 = grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_370_p0 = reg_374;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_370_p1 = grp_viterbi_Pipeline_L_state_fu_348_grp_fu_370_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_370_p1 = grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_370_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_370_p1 = grp_viterbi_Pipeline_L_init_fu_281_grp_fu_370_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_370_p1 = bitcast_ln52_fu_625_p1;
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_859_ce = grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_859_ce = grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_859_ce = grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_ce;
    end else begin
        grp_fu_859_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_859_opcode = grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_859_opcode = grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_859_opcode = grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_opcode;
    end else begin
        grp_fu_859_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_859_p0 = grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_859_p0 = grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_859_p0 = grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_din0;
    end else begin
        grp_fu_859_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_859_p1 = grp_viterbi_Pipeline_L_state_fu_348_grp_fu_859_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_859_p1 = grp_viterbi_Pipeline_L_end_fu_334_grp_fu_859_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_859_p1 = grp_viterbi_Pipeline_L_curr_state_fu_303_grp_fu_859_p_din1;
    end else begin
        grp_fu_859_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_348_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_334_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_281_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_state_fu_348_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_end_fu_334_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_348_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_334_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_281_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_state_fu_348_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_end_fu_334_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_281_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_281_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_state_fu_348_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_334_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_281_llike_2_address0;
    end else begin
        llike_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_state_fu_348_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_end_fu_334_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_address1;
    end else begin
        llike_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_state_fu_348_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_334_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_281_llike_2_ce0;
    end else begin
        llike_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_state_fu_348_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_end_fu_334_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_281_llike_2_d0;
    end else begin
        llike_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_281_llike_2_we0;
    end else begin
        llike_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_state_fu_348_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_334_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_281_llike_3_address0;
    end else begin
        llike_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_state_fu_348_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_end_fu_334_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_address1;
    end else begin
        llike_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_state_fu_348_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_334_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_281_llike_3_ce0;
    end else begin
        llike_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_state_fu_348_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_end_fu_334_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_281_llike_3_d0;
    end else begin
        llike_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_281_llike_3_we0;
    end else begin
        llike_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_state_fu_348_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_334_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_281_llike_4_address0;
    end else begin
        llike_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_state_fu_348_llike_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_end_fu_334_llike_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_address1;
    end else begin
        llike_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_state_fu_348_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_334_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_281_llike_4_ce0;
    end else begin
        llike_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_state_fu_348_llike_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_end_fu_334_llike_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_281_llike_4_d0;
    end else begin
        llike_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_281_llike_4_we0;
    end else begin
        llike_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_state_fu_348_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_334_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_281_llike_5_address0;
    end else begin
        llike_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_state_fu_348_llike_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_end_fu_334_llike_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_address1;
    end else begin
        llike_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_state_fu_348_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_334_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_281_llike_5_ce0;
    end else begin
        llike_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_state_fu_348_llike_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_end_fu_334_llike_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_281_llike_5_d0;
    end else begin
        llike_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_281_llike_5_we0;
    end else begin
        llike_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_state_fu_348_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_334_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_281_llike_6_address0;
    end else begin
        llike_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_state_fu_348_llike_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_end_fu_334_llike_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_address1;
    end else begin
        llike_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_state_fu_348_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_334_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_281_llike_6_ce0;
    end else begin
        llike_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_state_fu_348_llike_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_end_fu_334_llike_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_281_llike_6_d0;
    end else begin
        llike_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_281_llike_6_we0;
    end else begin
        llike_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_state_fu_348_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_334_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_281_llike_7_address0;
    end else begin
        llike_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_state_fu_348_llike_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_end_fu_334_llike_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_address1;
    end else begin
        llike_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_state_fu_348_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_334_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_281_llike_7_ce0;
    end else begin
        llike_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_state_fu_348_llike_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_end_fu_334_llike_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_281_llike_7_d0;
    end else begin
        llike_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_281_llike_7_we0;
    end else begin
        llike_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_348_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_334_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_281_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0_local = zext_ln52_2_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd1112;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_348_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_334_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_281_llike_ce0;
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
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_281_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_303_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_281_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_418_p1;
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
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_0_address0_local = zext_ln6_1_fu_638_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_0_address0_local = zext_ln52_fu_569_p1;
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
    if (((trunc_ln50_1_reg_819 == 1'd0) & (1'b1 == ap_CS_fsm_state26))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_1_address0_local = zext_ln6_1_fu_638_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_1_address0_local = zext_ln52_fu_569_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_1_address0_local = 64'd69;
    end else begin
        path_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13))) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_1_d0_local = min_s_34_loc_fu_106;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_1_d0_local = min_s_16_loc_fu_110;
    end else begin
        path_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((trunc_ln50_1_reg_819 == 1'd1) & (1'b1 == ap_CS_fsm_state26)))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_348_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln52_1_fu_612_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_state_fu_348_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_348_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_ce0;
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
        transition_0_ce1 = grp_viterbi_Pipeline_L_state_fu_348_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_348_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln52_1_fu_612_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_state_fu_348_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_348_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_ce0;
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
        transition_1_ce1 = grp_viterbi_Pipeline_L_state_fu_348_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_303_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
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
            if (((grp_viterbi_Pipeline_L_init_fu_281_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_402_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_viterbi_Pipeline_L_curr_state_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_334_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((tmp_fu_541_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_viterbi_Pipeline_L_state_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
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
assign add_ln18_fu_424_p2 = (t_fu_102 + 8'd1);
assign add_ln50_fu_649_p2 = ($signed(t_1_fu_146) + $signed(9'd511));
assign add_ln52_fu_553_p2 = (trunc_ln50_fu_549_p1 + 8'd1);
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
assign bitcast_ln52_fu_625_p1 = select_ln52_1_reg_844;
assign empty_29_fu_443_p2 = ($signed(t_2_reg_698) + $signed(8'd255));
assign empty_30_fu_456_p1 = tmp_2_fu_448_p3[0:0];
assign empty_fu_385_p1 = obs_0_q0[0:0];
assign grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_303_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_334_ap_start = grp_viterbi_Pipeline_L_end_fu_334_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_281_ap_start = grp_viterbi_Pipeline_L_init_fu_281_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_348_ap_start = grp_viterbi_Pipeline_L_state_fu_348_ap_start_reg;
assign icmp_ln18_fu_402_p2 = ((t_fu_102 == 8'd140) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_281_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_281_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_281_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_281_init_1_ce0;
assign lshr_ln1_fu_559_p4 = {{add_ln52_fu_553_p2[7:1]}};
assign lshr_ln52_1_fu_602_p4 = {{select_ln52_fu_590_p3[7:1]}};
assign lshr_ln6_1_fu_629_p4 = {{t_1_fu_146[7:1]}};
assign lshr_ln6_fu_408_p4 = {{t_fu_102[7:1]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_418_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_34_loc_fu_106;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = path_1_d0_local;
assign path_1_we0 = path_1_we0_local;
assign select_ln52_1_fu_618_p3 = ((trunc_ln52_reg_823[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign select_ln52_fu_590_p3 = ((trunc_ln50_1_fu_587_p1[0:0] == 1'b1) ? path_0_q0 : path_1_q0);
assign tmp_237_fu_478_p3 = {{empty_29_reg_725}, {3'd1}};
assign tmp_238_fu_486_p3 = {{empty_29_reg_725}, {3'd2}};
assign tmp_239_fu_494_p3 = {{empty_29_reg_725}, {3'd3}};
assign tmp_240_fu_502_p3 = {{empty_29_reg_725}, {3'd4}};
assign tmp_241_fu_510_p3 = {{empty_29_reg_725}, {3'd5}};
assign tmp_242_fu_518_p3 = {{empty_29_reg_725}, {3'd6}};
assign tmp_243_fu_526_p3 = {{empty_29_reg_725}, {3'd7}};
assign tmp_244_fu_575_p3 = {{trunc_ln50_reg_793}, {3'd0}};
assign tmp_2_fu_448_p3 = ((trunc_ln18_fu_440_p1[0:0] == 1'b1) ? obs_1_q0 : obs_0_q0);
assign tmp_fu_541_p3 = t_1_fu_146[32'd8];
assign tmp_s_fu_470_p3 = {{empty_29_reg_725}, {3'd0}};
assign trunc_ln18_fu_440_p1 = t_2_reg_698[0:0];
assign trunc_ln50_1_fu_587_p1 = t_1_fu_146[0:0];
assign trunc_ln50_fu_549_p1 = t_1_fu_146[7:0];
assign trunc_ln52_fu_598_p1 = select_ln52_fu_590_p3[0:0];
assign zext_ln52_1_fu_612_p1 = lshr_ln52_1_fu_602_p4;
assign zext_ln52_2_fu_582_p1 = tmp_244_fu_575_p3;
assign zext_ln52_fu_569_p1 = lshr_ln1_fu_559_p4;
assign zext_ln6_1_fu_638_p1 = lshr_ln6_1_fu_629_p4;
assign zext_ln6_fu_418_p1 = lshr_ln6_fu_408_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_747[2:0] <= 3'b000;
    tmp_237_reg_752[2:0] <= 3'b001;
    tmp_238_reg_757[2:0] <= 3'b010;
    tmp_239_reg_762[2:0] <= 3'b011;
    tmp_240_reg_767[2:0] <= 3'b100;
    tmp_241_reg_772[2:0] <= 3'b101;
    tmp_242_reg_777[2:0] <= 3'b110;
    tmp_243_reg_782[2:0] <= 3'b111;
    tmp_244_reg_809[2:0] <= 3'b000;
end
endmodule 