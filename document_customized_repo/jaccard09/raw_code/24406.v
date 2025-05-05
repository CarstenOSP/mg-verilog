module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
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
reg[5:0] obs_0_address0;
reg obs_0_ce0;
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
reg[5:0] path_3_address0;
reg path_3_ce0;
reg path_3_we0;
reg[7:0] path_3_d0;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] empty_fu_263_p1;
reg   [1:0] empty_reg_292;
wire    ap_CS_fsm_state2;
reg   [5:0] conv3_udiv_reg_297;
wire    ap_CS_fsm_state7;
reg   [63:0] min_p_reg_307;
wire    ap_CS_fsm_state8;
reg   [10:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg   [10:0] llike_address1;
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
wire    grp_viterbi_Pipeline_L_init_fu_155_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_155_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_155_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_155_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_155_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_155_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_155_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_155_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_155_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_155_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_155_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_155_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_155_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_llike_7_d0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_155_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_init_0_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_155_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_init_1_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_155_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_init_2_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_155_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_init_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_155_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_155_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_155_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_155_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_155_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_ce;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_done;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_idle;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_d0;
wire   [10:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_ce1;
wire   [5:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_0_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_1_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_2_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_221_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_221_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_221_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_221_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_221_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_221_llike_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_221_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_221_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_221_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_221_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_221_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_221_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_221_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_221_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_221_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_221_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_221_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_221_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_221_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_221_llike_7_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_221_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_221_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_ap_ready;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_d0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_ce1;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_d0;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_d0;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_d0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_viterbi_Pipeline_L_end_fu_221_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg    grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state11;
reg    obs_0_ce0_local;
reg    llike_ce0_local;
reg    path_3_we0_local;
reg    path_3_ce0_local;
wire   [63:0] grp_fu_312_p2;
reg   [63:0] grp_fu_312_p0;
reg   [63:0] grp_fu_312_p1;
reg    grp_fu_312_ce;
wire   [0:0] grp_fu_316_p2;
reg   [63:0] grp_fu_316_p0;
reg   [63:0] grp_fu_316_p1;
reg    grp_fu_316_ce;
reg   [4:0] grp_fu_316_opcode;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_221_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start_reg = 1'b0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
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
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_155(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_155_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_155_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_155_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_155_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_155_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_155_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_155_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_155_llike_7_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_155_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_155_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_155_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_155_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_155_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_155_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_155_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_155_init_3_ce0),.init_3_q0(init_3_q0),.conv3_udiv_cast(conv3_udiv_reg_297),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_155_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_155_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_155_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_155_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_155_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_155_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_155_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_155_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_reg_292),.grp_fu_312_p_din0(grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_ce));
viterbi_viterbi_Pipeline_L_timestep_L_curr_state grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start),.ap_done(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_done),.ap_idle(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_d0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_d0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_d0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_d0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_d0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_d0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_ce1),.llike_7_q1(llike_7_q1),.obs_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_0_address0),.obs_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_0_ce0),.obs_0_q0(obs_0_q0),.obs_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_1_address0),.obs_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_1_ce0),.obs_1_q0(obs_1_q0),.obs_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_2_address0),.obs_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_2_ce0),.obs_2_q0(obs_2_q0),.obs_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_3_address0),.obs_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_3_ce0),.obs_3_q0(obs_3_q0),.transition_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_ce1),.transition_3_q1(transition_3_q1),.emission_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_3_ce0),.emission_3_q0(emission_3_q0),.grp_fu_312_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_din1),.grp_fu_316_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_opcode),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_221(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_221_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_221_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_221_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_221_ap_ready),.min_p(min_p_reg_307),.llike_address0(grp_viterbi_Pipeline_L_end_fu_221_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_221_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_221_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_221_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_221_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_221_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_221_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_221_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_221_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_221_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_221_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_221_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_221_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_221_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_221_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_221_llike_7_ce0),.llike_7_q0(llike_7_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_221_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_221_min_s_out_ap_vld),.grp_fu_316_p_din0(grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_din1),.grp_fu_316_p_opcode(grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_opcode),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_235(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_235_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_235_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_235_ap_ready),.path_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_address0),.path_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_ce0),.path_0_we0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_we0),.path_0_d0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_d0),.path_0_q0(path_0_q0),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_ce1),.llike_7_q1(llike_7_q1),.path_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_address0),.path_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_ce0),.path_3_we0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_we0),.path_3_d0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_d0),.path_3_q0(path_3_q0),.path_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_address0),.path_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_ce0),.path_2_we0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_we0),.path_2_d0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_d0),.path_2_q0(path_2_q0),.path_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_address0),.path_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_ce0),.path_1_we0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_we0),.path_1_d0(grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_d0),.path_1_q0(path_1_q0),.transition_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_ce1),.transition_3_q1(transition_3_q1),.grp_fu_312_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_din1),.grp_fu_316_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_opcode),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U214(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_312_p0),.din1(grp_fu_312_p1),.ce(grp_fu_312_ce),.dout(grp_fu_312_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U215(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_316_p0),.din1(grp_fu_316_p1),.ce(grp_fu_316_ce),.opcode(grp_fu_316_opcode),.dout(grp_fu_316_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_235_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_221_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_viterbi_Pipeline_L_end_fu_221_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_221_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_221_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_155_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_297 <= {{obs_0_q0[7:2]}};
        empty_reg_292 <= empty_fu_263_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        min_p_reg_307 <= llike_q0;
    end
end
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_221_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_235_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_155_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_235_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_235_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_155_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_155_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_155_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_155_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_155_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_155_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_155_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_155_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_312_ce = grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_312_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_ce = grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_ce;
    end else begin
        grp_fu_312_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_312_p0 = grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_312_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p0 = grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_din0;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_312_p1 = grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_312_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p1 = grp_viterbi_Pipeline_L_init_fu_155_grp_fu_312_p_din1;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_316_ce = grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_316_ce = grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_316_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_ce;
    end else begin
        grp_fu_316_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_316_opcode = grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_316_opcode = grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_316_opcode = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_opcode;
    end else begin
        grp_fu_316_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_316_p0 = grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_316_p0 = grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_316_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_din0;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_316_p1 = grp_viterbi_Pipeline_L_backtrack_fu_235_grp_fu_316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_316_p1 = grp_viterbi_Pipeline_L_end_fu_221_grp_fu_316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_316_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_grp_fu_316_p_din1;
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_221_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_221_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_221_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_2_address0;
    end else begin
        llike_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_address1;
    end else begin
        llike_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_221_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_2_ce0;
    end else begin
        llike_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_2_d0;
    end else begin
        llike_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_2_we0;
    end else begin
        llike_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_221_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_3_address0;
    end else begin
        llike_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_address1;
    end else begin
        llike_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_221_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_3_ce0;
    end else begin
        llike_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_3_d0;
    end else begin
        llike_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_3_we0;
    end else begin
        llike_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_221_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_4_address0;
    end else begin
        llike_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_address1;
    end else begin
        llike_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_221_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_4_ce0;
    end else begin
        llike_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_4_d0;
    end else begin
        llike_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_4_we0;
    end else begin
        llike_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_221_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_5_address0;
    end else begin
        llike_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_address1;
    end else begin
        llike_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_221_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_5_ce0;
    end else begin
        llike_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_5_d0;
    end else begin
        llike_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_5_we0;
    end else begin
        llike_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_221_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_6_address0;
    end else begin
        llike_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_address1;
    end else begin
        llike_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_221_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_6_ce0;
    end else begin
        llike_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_6_d0;
    end else begin
        llike_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_6_we0;
    end else begin
        llike_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_221_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_7_address0;
    end else begin
        llike_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_address1;
    end else begin
        llike_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_221_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_7_ce0;
    end else begin
        llike_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_7_d0;
    end else begin
        llike_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_7_we0;
    end else begin
        llike_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_221_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_155_llike_address0;
    end else begin
        llike_address0 = 64'd1112;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_221_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_155_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_155_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_155_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_0_address0;
    end else begin
        obs_0_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_0_ce0;
    end else begin
        obs_0_ce0 = obs_0_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        obs_0_ce0_local = 1'b1;
    end else begin
        obs_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        path_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_address0;
    end else begin
        path_3_address0 = 64'd34;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        path_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_ce0;
    end else begin
        path_3_ce0 = path_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        path_3_d0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_d0;
    end else begin
        path_3_d0 = grp_viterbi_Pipeline_L_end_fu_221_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        path_3_we0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_3_we0;
    end else begin
        path_3_we0 = path_3_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_address0;
    end else begin
        transition_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_ce0;
    end else begin
        transition_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_address0;
    end else begin
        transition_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_ce0;
    end else begin
        transition_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_address0;
    end else begin
        transition_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_ce0;
    end else begin
        transition_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_address0;
    end else begin
        transition_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_ce0;
    end else begin
        transition_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_235_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_transition_3_ce1;
    end else begin
        transition_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((grp_viterbi_Pipeline_L_init_fu_155_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_viterbi_Pipeline_L_end_fu_221_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_viterbi_Pipeline_L_backtrack_fu_235_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign empty_fu_263_p1 = obs_0_q0[1:0];
assign grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_235_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_221_ap_start = grp_viterbi_Pipeline_L_end_fu_221_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_155_ap_start = grp_viterbi_Pipeline_L_init_fu_155_ap_start_reg;
assign grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_ap_start_reg;
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_155_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_155_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_155_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_155_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_155_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_155_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_155_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_155_init_3_ce0;
assign obs_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_1_address0;
assign obs_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_1_ce0;
assign obs_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_2_address0;
assign obs_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_2_ce0;
assign obs_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_3_address0;
assign obs_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_185_obs_3_ce0;
assign path_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_address0;
assign path_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_ce0;
assign path_0_d0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_d0;
assign path_0_we0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_0_we0;
assign path_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_address0;
assign path_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_ce0;
assign path_1_d0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_d0;
assign path_1_we0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_1_we0;
assign path_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_address0;
assign path_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_ce0;
assign path_2_d0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_d0;
assign path_2_we0 = grp_viterbi_Pipeline_L_backtrack_fu_235_path_2_we0;
endmodule 