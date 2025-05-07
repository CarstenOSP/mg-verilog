module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_address0,obs_ce0,obs_q0,init_address0,init_ce0,init_q0,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,emission_address0,emission_ce0,emission_q0,path_address0,path_ce0,path_we0,path_d0,ap_return); 
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
output  [7:0] obs_address0;
output   obs_ce0;
input  [7:0] obs_q0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [7:0] path_address0;
output   path_ce0;
output   path_we0;
output  [7:0] path_d0;
output  [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] obs_address0;
reg obs_ce0;
reg[11:0] transition_address0;
reg transition_ce0;
reg[11:0] transition_address1;
reg transition_ce1;
reg[11:0] emission_address0;
reg emission_ce0;
reg[7:0] path_address0;
reg path_ce0;
reg path_we0;
reg[7:0] path_d0;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] obs_load_reg_264;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state7;
reg   [63:0] min_p_reg_274;
wire    ap_CS_fsm_state8;
reg   [9:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg   [9:0] llike_address1;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [9:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg   [9:0] llike_1_address1;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
reg   [9:0] llike_2_address0;
reg    llike_2_ce0;
reg    llike_2_we0;
reg   [63:0] llike_2_d0;
wire   [63:0] llike_2_q0;
reg   [9:0] llike_2_address1;
reg    llike_2_ce1;
wire   [63:0] llike_2_q1;
reg   [9:0] llike_3_address0;
reg    llike_3_ce0;
reg    llike_3_we0;
reg   [63:0] llike_3_d0;
wire   [63:0] llike_3_q0;
reg   [9:0] llike_3_address1;
reg    llike_3_ce1;
wire   [63:0] llike_3_q1;
reg   [9:0] llike_4_address0;
reg    llike_4_ce0;
reg    llike_4_we0;
reg   [63:0] llike_4_d0;
wire   [63:0] llike_4_q0;
reg   [9:0] llike_4_address1;
reg    llike_4_ce1;
wire   [63:0] llike_4_q1;
reg   [9:0] llike_5_address0;
reg    llike_5_ce0;
reg    llike_5_we0;
reg   [63:0] llike_5_d0;
wire   [63:0] llike_5_q0;
reg   [9:0] llike_5_address1;
reg    llike_5_ce1;
wire   [63:0] llike_5_q1;
reg   [9:0] llike_6_address0;
reg    llike_6_ce0;
reg    llike_6_we0;
reg   [63:0] llike_6_d0;
wire   [63:0] llike_6_q0;
reg   [9:0] llike_6_address1;
reg    llike_6_ce1;
wire   [63:0] llike_6_q1;
reg   [9:0] llike_7_address0;
reg    llike_7_ce0;
reg    llike_7_we0;
reg   [63:0] llike_7_d0;
wire   [63:0] llike_7_q0;
reg   [9:0] llike_7_address1;
reg    llike_7_ce1;
wire   [63:0] llike_7_q1;
reg   [9:0] llike_8_address0;
reg    llike_8_ce0;
reg    llike_8_we0;
reg   [63:0] llike_8_d0;
wire   [63:0] llike_8_q0;
reg   [9:0] llike_8_address1;
reg    llike_8_ce1;
wire   [63:0] llike_8_q1;
reg   [9:0] llike_9_address0;
reg    llike_9_ce0;
reg    llike_9_we0;
reg   [63:0] llike_9_d0;
wire   [63:0] llike_9_q0;
reg   [9:0] llike_9_address1;
reg    llike_9_ce1;
wire   [63:0] llike_9_q1;
reg   [9:0] llike_10_address0;
reg    llike_10_ce0;
reg    llike_10_we0;
reg   [63:0] llike_10_d0;
wire   [63:0] llike_10_q0;
reg   [9:0] llike_10_address1;
reg    llike_10_ce1;
wire   [63:0] llike_10_q1;
reg   [9:0] llike_11_address0;
reg    llike_11_ce0;
reg    llike_11_we0;
reg   [63:0] llike_11_d0;
wire   [63:0] llike_11_q0;
reg   [9:0] llike_11_address1;
reg    llike_11_ce1;
wire   [63:0] llike_11_q1;
reg   [9:0] llike_12_address0;
reg    llike_12_ce0;
reg    llike_12_we0;
reg   [63:0] llike_12_d0;
wire   [63:0] llike_12_q0;
reg   [9:0] llike_12_address1;
reg    llike_12_ce1;
wire   [63:0] llike_12_q1;
reg   [9:0] llike_13_address0;
reg    llike_13_ce0;
reg    llike_13_we0;
reg   [63:0] llike_13_d0;
wire   [63:0] llike_13_q0;
reg   [9:0] llike_13_address1;
reg    llike_13_ce1;
wire   [63:0] llike_13_q1;
reg   [9:0] llike_14_address0;
reg    llike_14_ce0;
reg    llike_14_we0;
reg   [63:0] llike_14_d0;
wire   [63:0] llike_14_q0;
reg   [9:0] llike_14_address1;
reg    llike_14_ce1;
wire   [63:0] llike_14_q1;
reg   [9:0] llike_15_address0;
reg    llike_15_ce0;
reg    llike_15_we0;
reg   [63:0] llike_15_d0;
wire   [63:0] llike_15_q0;
reg   [9:0] llike_15_address1;
reg    llike_15_ce1;
wire   [63:0] llike_15_q1;
wire    grp_viterbi_Pipeline_L_init_fu_151_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_151_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_151_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_151_ap_ready;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_1_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_2_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_3_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_4_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_5_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_6_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_7_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_8_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_8_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_8_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_8_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_9_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_9_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_9_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_9_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_10_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_10_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_10_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_10_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_11_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_11_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_11_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_11_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_12_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_12_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_12_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_12_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_13_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_13_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_13_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_13_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_14_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_14_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_14_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_14_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_151_llike_15_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_15_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_151_llike_15_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_llike_15_d0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_151_init_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_init_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_151_emission_address0;
wire    grp_viterbi_Pipeline_L_init_fu_151_emission_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_ce;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_done;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_idle;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_ready;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_d0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_obs_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_obs_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_emission_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_emission_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_202_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_202_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_202_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_202_ap_ready;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_4_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_5_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_6_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_7_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_8_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_8_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_9_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_9_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_10_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_10_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_11_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_11_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_12_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_12_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_13_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_13_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_14_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_14_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_202_llike_15_address0;
wire    grp_viterbi_Pipeline_L_end_fu_202_llike_15_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_202_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_202_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_ap_ready;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_backtrack_fu_224_transition_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_backtrack_fu_224_transition_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_transition_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_224_path_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_path_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_path_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_224_path_d0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_151_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_viterbi_Pipeline_L_end_fu_202_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg    grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state11;
reg    obs_ce0_local;
reg    llike_ce0_local;
reg    path_we0_local;
reg    path_ce0_local;
wire   [63:0] grp_fu_282_p2;
reg   [63:0] grp_fu_282_p0;
reg   [63:0] grp_fu_282_p1;
reg    grp_fu_282_ce;
wire   [63:0] grp_fu_286_p2;
reg   [63:0] grp_fu_286_p0;
reg   [63:0] grp_fu_286_p1;
reg    grp_fu_286_ce;
wire   [0:0] grp_fu_290_p2;
reg   [63:0] grp_fu_290_p0;
reg   [63:0] grp_fu_290_p1;
reg    grp_fu_290_ce;
reg   [4:0] grp_fu_290_opcode;
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
#0 grp_viterbi_Pipeline_L_init_fu_151_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_202_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start_reg = 1'b0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0),.address1(llike_4_address1),.ce1(llike_4_ce1),.q1(llike_4_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0),.address1(llike_5_address1),.ce1(llike_5_ce1),.q1(llike_5_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0),.address1(llike_6_address1),.ce1(llike_6_ce1),.q1(llike_6_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0),.address1(llike_7_address1),.ce1(llike_7_ce1),.q1(llike_7_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_8_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_8_address0),.ce0(llike_8_ce0),.we0(llike_8_we0),.d0(llike_8_d0),.q0(llike_8_q0),.address1(llike_8_address1),.ce1(llike_8_ce1),.q1(llike_8_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_9_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_9_address0),.ce0(llike_9_ce0),.we0(llike_9_we0),.d0(llike_9_d0),.q0(llike_9_q0),.address1(llike_9_address1),.ce1(llike_9_ce1),.q1(llike_9_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_10_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_10_address0),.ce0(llike_10_ce0),.we0(llike_10_we0),.d0(llike_10_d0),.q0(llike_10_q0),.address1(llike_10_address1),.ce1(llike_10_ce1),.q1(llike_10_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_11_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_11_address0),.ce0(llike_11_ce0),.we0(llike_11_we0),.d0(llike_11_d0),.q0(llike_11_q0),.address1(llike_11_address1),.ce1(llike_11_ce1),.q1(llike_11_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_12_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_12_address0),.ce0(llike_12_ce0),.we0(llike_12_we0),.d0(llike_12_d0),.q0(llike_12_q0),.address1(llike_12_address1),.ce1(llike_12_ce1),.q1(llike_12_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_13_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_13_address0),.ce0(llike_13_ce0),.we0(llike_13_we0),.d0(llike_13_d0),.q0(llike_13_q0),.address1(llike_13_address1),.ce1(llike_13_ce1),.q1(llike_13_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_14_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_14_address0),.ce0(llike_14_ce0),.we0(llike_14_we0),.d0(llike_14_d0),.q0(llike_14_q0),.address1(llike_14_address1),.ce1(llike_14_ce1),.q1(llike_14_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_15_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_15_address0),.ce0(llike_15_ce0),.we0(llike_15_we0),.d0(llike_15_d0),.q0(llike_15_q0),.address1(llike_15_address1),.ce1(llike_15_ce1),.q1(llike_15_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_151(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_151_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_151_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_151_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_151_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_7_d0),.llike_8_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_8_ce0),.llike_8_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_8_we0),.llike_8_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_8_d0),.llike_9_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_9_ce0),.llike_9_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_9_we0),.llike_9_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_9_d0),.llike_10_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_10_ce0),.llike_10_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_10_we0),.llike_10_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_10_d0),.llike_11_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_11_ce0),.llike_11_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_11_we0),.llike_11_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_11_d0),.llike_12_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_12_ce0),.llike_12_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_12_we0),.llike_12_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_12_d0),.llike_13_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_13_ce0),.llike_13_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_13_we0),.llike_13_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_13_d0),.llike_14_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_14_ce0),.llike_14_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_14_we0),.llike_14_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_14_d0),.llike_15_address0(grp_viterbi_Pipeline_L_init_fu_151_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_init_fu_151_llike_15_ce0),.llike_15_we0(grp_viterbi_Pipeline_L_init_fu_151_llike_15_we0),.llike_15_d0(grp_viterbi_Pipeline_L_init_fu_151_llike_15_d0),.init_address0(grp_viterbi_Pipeline_L_init_fu_151_init_address0),.init_ce0(grp_viterbi_Pipeline_L_init_fu_151_init_ce0),.init_q0(init_q0),.zext_ln13(obs_load_reg_264),.emission_address0(grp_viterbi_Pipeline_L_init_fu_151_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_init_fu_151_emission_ce0),.emission_q0(emission_q0),.grp_fu_282_p_din0(grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_din0),.grp_fu_282_p_din1(grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_din1),.grp_fu_282_p_opcode(grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_opcode),.grp_fu_282_p_dout0(grp_fu_282_p2),.grp_fu_282_p_ce(grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_ce));
viterbi_viterbi_Pipeline_L_timestep_L_curr_state grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start),.ap_done(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_done),.ap_idle(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_d0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_d0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_d0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_d0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_d0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_d0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_ce1),.llike_7_q1(llike_7_q1),.llike_8_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_ce0),.llike_8_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_we0),.llike_8_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_d0),.llike_8_q0(llike_8_q0),.llike_8_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_address1),.llike_8_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_ce1),.llike_8_q1(llike_8_q1),.llike_9_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_ce0),.llike_9_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_we0),.llike_9_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_d0),.llike_9_q0(llike_9_q0),.llike_9_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_address1),.llike_9_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_ce1),.llike_9_q1(llike_9_q1),.llike_10_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_ce0),.llike_10_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_we0),.llike_10_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_d0),.llike_10_q0(llike_10_q0),.llike_10_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_address1),.llike_10_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_ce1),.llike_10_q1(llike_10_q1),.llike_11_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_ce0),.llike_11_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_we0),.llike_11_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_d0),.llike_11_q0(llike_11_q0),.llike_11_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_address1),.llike_11_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_ce1),.llike_11_q1(llike_11_q1),.llike_12_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_ce0),.llike_12_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_we0),.llike_12_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_d0),.llike_12_q0(llike_12_q0),.llike_12_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_address1),.llike_12_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_ce1),.llike_12_q1(llike_12_q1),.llike_13_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_ce0),.llike_13_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_we0),.llike_13_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_d0),.llike_13_q0(llike_13_q0),.llike_13_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_address1),.llike_13_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_ce1),.llike_13_q1(llike_13_q1),.llike_14_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_ce0),.llike_14_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_we0),.llike_14_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_d0),.llike_14_q0(llike_14_q0),.llike_14_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_address1),.llike_14_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_ce1),.llike_14_q1(llike_14_q1),.llike_15_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_ce0),.llike_15_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_we0),.llike_15_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_d0),.llike_15_q0(llike_15_q0),.llike_15_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_address1),.llike_15_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_ce1),.llike_15_q1(llike_15_q1),.obs_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_obs_address0),.obs_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_obs_ce0),.obs_q0(obs_q0),.transition_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_ce1),.transition_q1(transition_q1),.emission_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_emission_ce0),.emission_q0(emission_q0),.grp_fu_282_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_din0),.grp_fu_282_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_din1),.grp_fu_282_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_opcode),.grp_fu_282_p_dout0(grp_fu_282_p2),.grp_fu_282_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_ce),.grp_fu_286_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_din0),.grp_fu_286_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_din1),.grp_fu_286_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_opcode),.grp_fu_286_p_dout0(grp_fu_286_p2),.grp_fu_286_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_ce),.grp_fu_290_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_din0),.grp_fu_290_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_din1),.grp_fu_290_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_opcode),.grp_fu_290_p_dout0(grp_fu_290_p2),.grp_fu_290_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_202(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_202_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_202_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_202_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_202_ap_ready),.min_p(min_p_reg_274),.llike_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_end_fu_202_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_end_fu_202_llike_15_ce0),.llike_15_q0(llike_15_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_202_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_202_min_s_out_ap_vld),.grp_fu_290_p_din0(grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_din0),.grp_fu_290_p_din1(grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_din1),.grp_fu_290_p_opcode(grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_opcode),.grp_fu_290_p_dout0(grp_fu_290_p2),.grp_fu_290_p_ce(grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_224(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_224_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_224_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_224_ap_ready),.min_s_reload(grp_viterbi_Pipeline_L_end_fu_202_min_s_out),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_ce1),.llike_7_q1(llike_7_q1),.llike_8_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_8_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_address1),.llike_8_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_ce1),.llike_8_q1(llike_8_q1),.llike_9_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_9_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_address1),.llike_9_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_ce1),.llike_9_q1(llike_9_q1),.llike_10_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_10_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_address1),.llike_10_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_ce1),.llike_10_q1(llike_10_q1),.llike_11_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_11_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_address1),.llike_11_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_ce1),.llike_11_q1(llike_11_q1),.llike_12_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_12_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_address1),.llike_12_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_ce1),.llike_12_q1(llike_12_q1),.llike_13_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_13_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_address1),.llike_13_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_ce1),.llike_13_q1(llike_13_q1),.llike_14_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_14_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_address1),.llike_14_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_ce1),.llike_14_q1(llike_14_q1),.llike_15_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_15_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_address1),.llike_15_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_ce1),.llike_15_q1(llike_15_q1),.transition_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_backtrack_fu_224_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_backtrack_fu_224_transition_ce1),.transition_q1(transition_q1),.path_address0(grp_viterbi_Pipeline_L_backtrack_fu_224_path_address0),.path_ce0(grp_viterbi_Pipeline_L_backtrack_fu_224_path_ce0),.path_we0(grp_viterbi_Pipeline_L_backtrack_fu_224_path_we0),.path_d0(grp_viterbi_Pipeline_L_backtrack_fu_224_path_d0),.grp_fu_282_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_din0),.grp_fu_282_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_din1),.grp_fu_282_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_opcode),.grp_fu_282_p_dout0(grp_fu_282_p2),.grp_fu_282_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_ce),.grp_fu_286_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_din0),.grp_fu_286_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_din1),.grp_fu_286_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_opcode),.grp_fu_286_p_dout0(grp_fu_286_p2),.grp_fu_286_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_ce),.grp_fu_290_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_din0),.grp_fu_290_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_din1),.grp_fu_290_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_opcode),.grp_fu_290_p_dout0(grp_fu_290_p2),.grp_fu_290_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_282_p0),.din1(grp_fu_282_p1),.ce(grp_fu_282_ce),.dout(grp_fu_282_p2));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_286_p0),.din1(grp_fu_286_p1),.ce(grp_fu_286_ce),.dout(grp_fu_286_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_290_p0),.din1(grp_fu_290_p1),.ce(grp_fu_290_ce),.opcode(grp_fu_290_opcode),.dout(grp_fu_290_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_224_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_202_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_viterbi_Pipeline_L_end_fu_202_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_202_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_202_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_151_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_151_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_151_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_151_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        min_p_reg_274 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        obs_load_reg_264 <= obs_q0;
    end
end
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_202_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_224_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_init_fu_151_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_emission_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_address0 = grp_viterbi_Pipeline_L_init_fu_151_emission_address0;
    end else begin
        emission_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_emission_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_init_fu_151_emission_ce0;
    end else begin
        emission_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_282_ce = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_282_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_282_ce = grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_ce;
    end else begin
        grp_fu_282_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_282_p0 = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_282_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_282_p0 = grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_din0;
    end else begin
        grp_fu_282_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_282_p1 = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_282_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_282_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_282_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_282_p1 = grp_viterbi_Pipeline_L_init_fu_151_grp_fu_282_p_din1;
    end else begin
        grp_fu_282_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_286_ce = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_286_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_ce;
    end else begin
        grp_fu_286_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_286_p0 = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_286_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_din0;
    end else begin
        grp_fu_286_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_286_p1 = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_286_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_286_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_286_p_din1;
    end else begin
        grp_fu_286_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_290_ce = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_290_ce = grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_290_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_ce;
    end else begin
        grp_fu_290_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_290_opcode = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_290_opcode = grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_290_opcode = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_opcode;
    end else begin
        grp_fu_290_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_290_p0 = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_290_p0 = grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_290_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_din0;
    end else begin
        grp_fu_290_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_290_p1 = grp_viterbi_Pipeline_L_backtrack_fu_224_grp_fu_290_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_290_p1 = grp_viterbi_Pipeline_L_end_fu_202_grp_fu_290_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_290_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_grp_fu_290_p_din1;
    end else begin
        grp_fu_290_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_10_address0;
    end else begin
        llike_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_10_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_address1;
    end else begin
        llike_10_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_10_ce0;
    end else begin
        llike_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_10_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_ce1;
    end else begin
        llike_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_10_d0;
    end else begin
        llike_10_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_10_we0;
    end else begin
        llike_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_11_address0;
    end else begin
        llike_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_11_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_address1;
    end else begin
        llike_11_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_11_ce0;
    end else begin
        llike_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_11_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_ce1;
    end else begin
        llike_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_11_d0;
    end else begin
        llike_11_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_11_we0;
    end else begin
        llike_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_12_address0;
    end else begin
        llike_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_12_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_address1;
    end else begin
        llike_12_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_12_ce0;
    end else begin
        llike_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_12_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_ce1;
    end else begin
        llike_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_12_d0;
    end else begin
        llike_12_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_12_we0;
    end else begin
        llike_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_13_address0;
    end else begin
        llike_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_13_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_address1;
    end else begin
        llike_13_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_13_ce0;
    end else begin
        llike_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_13_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_ce1;
    end else begin
        llike_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_13_d0;
    end else begin
        llike_13_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_13_we0;
    end else begin
        llike_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_14_address0;
    end else begin
        llike_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_14_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_address1;
    end else begin
        llike_14_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_14_ce0;
    end else begin
        llike_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_14_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_ce1;
    end else begin
        llike_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_14_d0;
    end else begin
        llike_14_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_14_we0;
    end else begin
        llike_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_15_address0;
    end else begin
        llike_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_15_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_address1;
    end else begin
        llike_15_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_15_ce0;
    end else begin
        llike_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_15_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_ce1;
    end else begin
        llike_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_15_d0;
    end else begin
        llike_15_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_15_we0;
    end else begin
        llike_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_2_address0;
    end else begin
        llike_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_address1;
    end else begin
        llike_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_2_ce0;
    end else begin
        llike_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_2_d0;
    end else begin
        llike_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_2_we0;
    end else begin
        llike_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_3_address0;
    end else begin
        llike_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_address1;
    end else begin
        llike_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_3_ce0;
    end else begin
        llike_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_3_d0;
    end else begin
        llike_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_3_we0;
    end else begin
        llike_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_4_address0;
    end else begin
        llike_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_address1;
    end else begin
        llike_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_4_ce0;
    end else begin
        llike_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_4_d0;
    end else begin
        llike_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_4_we0;
    end else begin
        llike_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_5_address0;
    end else begin
        llike_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_address1;
    end else begin
        llike_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_5_ce0;
    end else begin
        llike_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_5_d0;
    end else begin
        llike_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_5_we0;
    end else begin
        llike_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_6_address0;
    end else begin
        llike_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_address1;
    end else begin
        llike_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_6_ce0;
    end else begin
        llike_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_6_d0;
    end else begin
        llike_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_6_we0;
    end else begin
        llike_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_7_address0;
    end else begin
        llike_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_address1;
    end else begin
        llike_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_7_ce0;
    end else begin
        llike_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_7_d0;
    end else begin
        llike_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_7_we0;
    end else begin
        llike_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_8_address0;
    end else begin
        llike_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_8_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_address1;
    end else begin
        llike_8_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_8_ce0;
    end else begin
        llike_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_8_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_ce1;
    end else begin
        llike_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_8_d0;
    end else begin
        llike_8_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_8_we0;
    end else begin
        llike_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_9_address0;
    end else begin
        llike_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_9_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_address1;
    end else begin
        llike_9_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_9_ce0;
    end else begin
        llike_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_9_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_ce1;
    end else begin
        llike_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_9_d0;
    end else begin
        llike_9_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_9_we0;
    end else begin
        llike_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_202_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_151_llike_address0;
    end else begin
        llike_address0 = 64'd556;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_202_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_151_llike_ce0;
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
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_151_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_151_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_obs_address0;
    end else begin
        obs_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_obs_ce0;
    end else begin
        obs_ce0 = obs_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        obs_ce0_local = 1'b1;
    end else begin
        obs_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        path_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_path_address0;
    end else begin
        path_address0 = 64'd139;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        path_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_path_ce0;
    end else begin
        path_ce0 = path_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        path_ce0_local = 1'b1;
    end else begin
        path_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        path_d0 = grp_viterbi_Pipeline_L_backtrack_fu_224_path_d0;
    end else begin
        path_d0 = grp_viterbi_Pipeline_L_end_fu_202_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        path_we0 = grp_viterbi_Pipeline_L_backtrack_fu_224_path_we0;
    end else begin
        path_we0 = path_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        path_we0_local = 1'b1;
    end else begin
        path_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_address0 = grp_viterbi_Pipeline_L_backtrack_fu_224_transition_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_address0;
    end else begin
        transition_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_address1 = grp_viterbi_Pipeline_L_backtrack_fu_224_transition_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_address1;
    end else begin
        transition_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_224_transition_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_ce0;
    end else begin
        transition_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_224_transition_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_transition_ce1;
    end else begin
        transition_ce1 = 1'b0;
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
            if (((grp_viterbi_Pipeline_L_init_fu_151_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_202_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((grp_viterbi_Pipeline_L_backtrack_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_224_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_202_ap_start = grp_viterbi_Pipeline_L_end_fu_202_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_151_ap_start = grp_viterbi_Pipeline_L_init_fu_151_ap_start_reg;
assign grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_176_ap_start_reg;
assign init_address0 = grp_viterbi_Pipeline_L_init_fu_151_init_address0;
assign init_ce0 = grp_viterbi_Pipeline_L_init_fu_151_init_ce0;
endmodule 