module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 25'd1;
parameter    ap_ST_fsm_state2 = 25'd2;
parameter    ap_ST_fsm_state3 = 25'd4;
parameter    ap_ST_fsm_state4 = 25'd8;
parameter    ap_ST_fsm_state5 = 25'd16;
parameter    ap_ST_fsm_state6 = 25'd32;
parameter    ap_ST_fsm_state7 = 25'd64;
parameter    ap_ST_fsm_state8 = 25'd128;
parameter    ap_ST_fsm_state9 = 25'd256;
parameter    ap_ST_fsm_state10 = 25'd512;
parameter    ap_ST_fsm_state11 = 25'd1024;
parameter    ap_ST_fsm_state12 = 25'd2048;
parameter    ap_ST_fsm_state13 = 25'd4096;
parameter    ap_ST_fsm_state14 = 25'd8192;
parameter    ap_ST_fsm_state15 = 25'd16384;
parameter    ap_ST_fsm_state16 = 25'd32768;
parameter    ap_ST_fsm_state17 = 25'd65536;
parameter    ap_ST_fsm_state18 = 25'd131072;
parameter    ap_ST_fsm_state19 = 25'd262144;
parameter    ap_ST_fsm_state20 = 25'd524288;
parameter    ap_ST_fsm_state21 = 25'd1048576;
parameter    ap_ST_fsm_state22 = 25'd2097152;
parameter    ap_ST_fsm_state23 = 25'd4194304;
parameter    ap_ST_fsm_state24 = 25'd8388608;
parameter    ap_ST_fsm_state25 = 25'd16777216;
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
(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_405;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state14;
wire   [1:0] empty_fu_416_p1;
reg   [1:0] empty_reg_631;
wire    ap_CS_fsm_state2;
reg   [5:0] conv3_udiv_reg_636;
wire    ap_CS_fsm_state7;
wire   [7:0] trunc_ln50_fu_445_p1;
reg   [7:0] trunc_ln50_reg_652;
wire    ap_CS_fsm_state12;
wire   [12:0] tmp_s_fu_473_p3;
reg   [12:0] tmp_s_reg_678;
wire    ap_CS_fsm_state13;
wire   [1:0] trunc_ln50_1_fu_485_p1;
reg   [1:0] trunc_ln50_1_reg_688;
wire   [1:0] trunc_ln52_fu_512_p1;
reg   [1:0] trunc_ln52_reg_692;
wire   [5:0] lshr_ln52_1_fu_516_p4;
reg   [5:0] lshr_ln52_1_reg_698;
wire   [63:0] tmp_68_fu_550_p11;
reg   [63:0] tmp_68_reg_723;
wire   [63:0] grp_fu_401_p2;
reg   [63:0] min_p_194_reg_728;
wire    ap_CS_fsm_state22;
reg   [12:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg   [12:0] llike_address1;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [12:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg   [12:0] llike_1_address1;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
wire    grp_viterbi_Pipeline_L_init_fu_319_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_319_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_319_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_319_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_319_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_319_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_319_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_319_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_319_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_319_llike_1_d0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_319_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_init_0_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_319_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_init_1_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_319_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_init_2_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_319_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_init_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_319_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_319_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_319_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_319_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_319_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_ce;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_done;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_idle;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_d0;
wire   [12:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_ce1;
wire   [5:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_0_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_1_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_2_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_373_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_373_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_373_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_373_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_373_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_373_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_373_llike_1_address1;
wire    grp_viterbi_Pipeline_L_end_fu_373_llike_1_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_373_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_373_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_373_llike_address1;
wire    grp_viterbi_Pipeline_L_end_fu_373_llike_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_373_min_s_16_out;
wire    grp_viterbi_Pipeline_L_end_fu_373_min_s_16_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_381_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_381_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_381_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_381_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_381_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_381_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_381_llike_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_381_llike_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_381_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_381_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_381_transition_0_address1;
wire    grp_viterbi_Pipeline_L_state_fu_381_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_381_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_381_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_381_transition_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_381_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_381_transition_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_381_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_381_transition_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_381_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_381_transition_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_381_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_381_transition_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_381_transition_3_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_381_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_381_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_381_llike_address1;
wire    grp_viterbi_Pipeline_L_state_fu_381_llike_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_381_min_s_34_out;
wire    grp_viterbi_Pipeline_L_state_fu_381_min_s_34_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_319_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_viterbi_Pipeline_L_end_fu_373_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [7:0] min_s_16_loc_fu_128;
reg    grp_viterbi_Pipeline_L_state_fu_381_ap_start_reg;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
reg   [7:0] min_s_34_loc_fu_124;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln52_fu_465_p1;
wire   [0:0] tmp_fu_437_p3;
wire   [63:0] zext_ln52_2_fu_480_p1;
wire   [63:0] zext_ln52_1_fu_526_p1;
wire   [63:0] zext_ln6_fu_582_p1;
wire    ap_CS_fsm_state25;
reg   [8:0] t_fu_120;
wire   [8:0] add_ln50_fu_597_p2;
reg    obs_0_ce0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
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
reg   [63:0] grp_fu_401_p0;
reg   [63:0] grp_fu_401_p1;
wire    ap_CS_fsm_state15;
wire   [7:0] add_ln52_fu_449_p2;
wire   [5:0] lshr_ln1_fu_455_p4;
wire   [7:0] tmp_67_fu_488_p9;
wire   [1:0] tmp_67_fu_488_p10;
wire   [7:0] tmp_67_fu_488_p11;
wire   [63:0] tmp_68_fu_550_p2;
wire   [63:0] tmp_68_fu_550_p4;
wire   [63:0] tmp_68_fu_550_p6;
wire   [63:0] tmp_68_fu_550_p8;
wire   [63:0] tmp_68_fu_550_p9;
wire   [5:0] lshr_ln6_1_fu_573_p4;
reg    grp_fu_401_ce;
wire   [0:0] grp_fu_733_p2;
reg   [63:0] grp_fu_733_p0;
reg   [63:0] grp_fu_733_p1;
reg    grp_fu_733_ce;
reg   [4:0] grp_fu_733_opcode;
reg   [24:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire  signed [1:0] tmp_67_fu_488_p1;
wire   [1:0] tmp_67_fu_488_p3;
wire   [1:0] tmp_67_fu_488_p5;
wire  signed [1:0] tmp_67_fu_488_p7;
wire   [1:0] tmp_68_fu_550_p1;
wire   [1:0] tmp_68_fu_550_p3;
wire  signed [1:0] tmp_68_fu_550_p5;
wire  signed [1:0] tmp_68_fu_550_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 25'd1;
#0 grp_viterbi_Pipeline_L_init_fu_319_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_373_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_381_ap_start_reg = 1'b0;
#0 t_fu_120 = 9'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_319(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_319_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_319_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_319_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_319_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_319_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_319_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_319_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_319_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_319_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_319_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_319_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_319_llike_1_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_319_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_319_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_319_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_319_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_319_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_319_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_319_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_319_init_3_ce0),.init_3_q0(init_3_q0),.conv3_udiv_cast(conv3_udiv_reg_636),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_319_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_319_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_319_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_319_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_319_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_319_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_319_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_319_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_reg_631),.grp_fu_401_p_din0(grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_din0),.grp_fu_401_p_din1(grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_din1),.grp_fu_401_p_opcode(grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_opcode),.grp_fu_401_p_dout0(grp_fu_401_p2),.grp_fu_401_p_ce(grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_ce));
viterbi_viterbi_Pipeline_L_timestep_L_curr_state grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start),.ap_done(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_done),.ap_idle(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_ce1),.llike_1_q1(llike_1_q1),.obs_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_0_address0),.obs_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_0_ce0),.obs_0_q0(obs_0_q0),.obs_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_1_address0),.obs_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_1_ce0),.obs_1_q0(obs_1_q0),.obs_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_2_address0),.obs_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_2_ce0),.obs_2_q0(obs_2_q0),.obs_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_3_address0),.obs_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_3_ce0),.obs_3_q0(obs_3_q0),.transition_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_ce1),.transition_3_q1(transition_3_q1),.emission_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_3_ce0),.emission_3_q0(emission_3_q0),.grp_fu_401_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_din0),.grp_fu_401_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_din1),.grp_fu_401_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_opcode),.grp_fu_401_p_dout0(grp_fu_401_p2),.grp_fu_401_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_ce),.grp_fu_733_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_din0),.grp_fu_733_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_din1),.grp_fu_733_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_opcode),.grp_fu_733_p_dout0(grp_fu_733_p2),.grp_fu_733_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_373(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_373_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_373_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_373_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_373_ap_ready),.min_p(reg_405),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_373_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_373_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_end_fu_373_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_end_fu_373_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_address0(grp_viterbi_Pipeline_L_end_fu_373_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_373_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_end_fu_373_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_end_fu_373_llike_ce1),.llike_q1(llike_q1),.min_s_16_out(grp_viterbi_Pipeline_L_end_fu_373_min_s_16_out),.min_s_16_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_373_min_s_16_out_ap_vld),.grp_fu_733_p_din0(grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_din0),.grp_fu_733_p_din1(grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_din1),.grp_fu_733_p_opcode(grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_opcode),.grp_fu_733_p_dout0(grp_fu_733_p2),.grp_fu_733_p_ce(grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_381(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_381_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_381_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_381_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_381_ap_ready),.min_p_195(min_p_194_reg_728),.t_1(trunc_ln50_reg_652),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_381_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_381_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_state_fu_381_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_state_fu_381_llike_1_ce1),.llike_1_q1(llike_1_q1),.zext_ln52_2(lshr_ln52_1_reg_698),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_381_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_381_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_state_fu_381_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_state_fu_381_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_381_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_381_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_state_fu_381_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_state_fu_381_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_state_fu_381_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_state_fu_381_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_state_fu_381_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_state_fu_381_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_state_fu_381_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_state_fu_381_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_state_fu_381_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_state_fu_381_transition_3_ce1),.transition_3_q1(transition_3_q1),.empty(trunc_ln52_reg_692),.llike_address0(grp_viterbi_Pipeline_L_state_fu_381_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_381_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_state_fu_381_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_state_fu_381_llike_ce1),.llike_q1(llike_q1),.zext_ln52_3(tmp_s_reg_678),.min_s_34_out(grp_viterbi_Pipeline_L_state_fu_381_min_s_34_out),.min_s_34_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_381_min_s_34_out_ap_vld),.grp_fu_401_p_din0(grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_din0),.grp_fu_401_p_din1(grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_din1),.grp_fu_401_p_opcode(grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_opcode),.grp_fu_401_p_dout0(grp_fu_401_p2),.grp_fu_401_p_ce(grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_ce),.grp_fu_733_p_din0(grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_din0),.grp_fu_733_p_din1(grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_din1),.grp_fu_733_p_opcode(grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_opcode),.grp_fu_733_p_dout0(grp_fu_733_p2),.grp_fu_733_p_ce(grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_401_p0),.din1(grp_fu_401_p1),.ce(grp_fu_401_ce),.dout(grp_fu_401_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U141(.din0(path_0_q0),.din1(path_1_q0),.din2(path_2_q0),.din3(path_3_q0),.def(tmp_67_fu_488_p9),.sel(tmp_67_fu_488_p10),.dout(tmp_67_fu_488_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U142(.din0(tmp_68_fu_550_p2),.din1(tmp_68_fu_550_p4),.din2(tmp_68_fu_550_p6),.din3(tmp_68_fu_550_p8),.def(tmp_68_fu_550_p9),.sel(trunc_ln52_reg_692),.dout(tmp_68_fu_550_p11));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_733_p0),.din1(grp_fu_733_p1),.ce(grp_fu_733_ce),.opcode(grp_fu_733_opcode),.dout(grp_fu_733_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_373_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_viterbi_Pipeline_L_end_fu_373_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_373_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_373_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_319_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_319_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_319_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_319_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_381_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            grp_viterbi_Pipeline_L_state_fu_381_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_381_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_381_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_120 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        t_fu_120 <= add_ln50_fu_597_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_636 <= {{obs_0_q0[7:2]}};
        empty_reg_631 <= empty_fu_416_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        lshr_ln52_1_reg_698 <= {{tmp_67_fu_488_p11[7:2]}};
        tmp_s_reg_678[12 : 5] <= tmp_s_fu_473_p3[12 : 5];
        trunc_ln50_1_reg_688 <= trunc_ln50_1_fu_485_p1;
        trunc_ln52_reg_692 <= trunc_ln52_fu_512_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        min_p_194_reg_728 <= grp_fu_401_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_373_min_s_16_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        min_s_16_loc_fu_128 <= grp_viterbi_Pipeline_L_end_fu_373_min_s_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_381_min_s_34_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
        min_s_34_loc_fu_124 <= grp_viterbi_Pipeline_L_state_fu_381_min_s_34_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_405 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        tmp_68_reg_723 <= tmp_68_fu_550_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        trunc_ln50_reg_652 <= trunc_ln50_fu_445_p1;
    end
end
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_373_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
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
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_state_fu_381_ap_done == 1'b0)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
    end
end
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_319_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_437_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
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
    if (((tmp_fu_437_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_319_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_319_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_319_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_319_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_319_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_319_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_319_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_319_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_401_ce = grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_401_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_401_ce = grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_ce;
    end else begin
        grp_fu_401_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_401_p0 = grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_401_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_401_p0 = grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_401_p0 = reg_405;
    end else begin
        grp_fu_401_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_401_p1 = grp_viterbi_Pipeline_L_state_fu_381_grp_fu_401_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_401_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_401_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_401_p1 = grp_viterbi_Pipeline_L_init_fu_319_grp_fu_401_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_401_p1 = tmp_68_reg_723;
    end else begin
        grp_fu_401_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_733_ce = grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_733_ce = grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_733_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_ce;
    end else begin
        grp_fu_733_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_733_opcode = grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_733_opcode = grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_733_opcode = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_opcode;
    end else begin
        grp_fu_733_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_733_p0 = grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_733_p0 = grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_733_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_din0;
    end else begin
        grp_fu_733_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_733_p1 = grp_viterbi_Pipeline_L_state_fu_381_grp_fu_733_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_733_p1 = grp_viterbi_Pipeline_L_end_fu_373_grp_fu_733_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_733_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_grp_fu_733_p_din1;
    end else begin
        grp_fu_733_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_381_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_373_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_319_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_state_fu_381_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_end_fu_373_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_381_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_373_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_319_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_state_fu_381_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_end_fu_373_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_319_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_319_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_381_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_373_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_319_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_address0_local = zext_ln52_2_fu_480_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = 64'd4448;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_address1 = grp_viterbi_Pipeline_L_state_fu_381_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_address1 = grp_viterbi_Pipeline_L_end_fu_373_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_381_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_373_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_319_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_state_fu_381_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_end_fu_373_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_319_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_319_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_0_address0;
    end else begin
        obs_0_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_0_ce0;
    end else begin
        obs_0_ce0 = obs_0_ce0_local;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        obs_0_ce0_local = 1'b1;
    end else begin
        obs_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_0_address0_local = zext_ln6_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_0_address0_local = zext_ln52_fu_465_p1;
    end else begin
        path_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state12))) begin
        path_0_ce0_local = 1'b1;
    end else begin
        path_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_688 == 2'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_1_address0_local = zext_ln6_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_1_address0_local = zext_ln52_fu_465_p1;
    end else begin
        path_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state12))) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_688 == 2'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_2_address0_local = zext_ln6_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_2_address0_local = zext_ln52_fu_465_p1;
    end else begin
        path_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state12))) begin
        path_2_ce0_local = 1'b1;
    end else begin
        path_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_688 == 2'd2) & (1'b1 == ap_CS_fsm_state25))) begin
        path_2_we0_local = 1'b1;
    end else begin
        path_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_3_address0_local = zext_ln6_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_address0_local = zext_ln52_fu_465_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        path_3_address0_local = 64'd34;
    end else begin
        path_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12))) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_3_d0_local = min_s_34_loc_fu_124;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        path_3_d0_local = min_s_16_loc_fu_128;
    end else begin
        path_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((trunc_ln50_1_reg_688 == 2'd3) & (1'b1 == ap_CS_fsm_state25)))) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_381_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln52_1_fu_526_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_state_fu_381_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_381_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_ce0;
    end else begin
        transition_0_ce0 = transition_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_state_fu_381_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_381_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln52_1_fu_526_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_state_fu_381_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_381_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_ce0;
    end else begin
        transition_1_ce0 = transition_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_state_fu_381_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_state_fu_381_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_address0;
    end else begin
        transition_2_address0 = zext_ln52_1_fu_526_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_state_fu_381_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_state_fu_381_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_ce0;
    end else begin
        transition_2_ce0 = transition_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_state_fu_381_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_state_fu_381_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_address0;
    end else begin
        transition_3_address0 = zext_ln52_1_fu_526_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_state_fu_381_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_state_fu_381_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_ce0;
    end else begin
        transition_3_ce0 = transition_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_state_fu_381_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_transition_3_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_319_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_373_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((tmp_fu_437_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
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
            if (((grp_viterbi_Pipeline_L_state_fu_381_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln50_fu_597_p2 = ($signed(t_fu_120) + $signed(9'd511));
assign add_ln52_fu_449_p2 = (trunc_ln50_fu_445_p1 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign empty_fu_416_p1 = obs_0_q0[1:0];
assign grp_viterbi_Pipeline_L_end_fu_373_ap_start = grp_viterbi_Pipeline_L_end_fu_373_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_319_ap_start = grp_viterbi_Pipeline_L_init_fu_319_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_381_ap_start = grp_viterbi_Pipeline_L_state_fu_381_ap_start_reg;
assign grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_ap_start_reg;
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_319_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_319_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_319_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_319_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_319_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_319_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_319_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_319_init_3_ce0;
assign lshr_ln1_fu_455_p4 = {{add_ln52_fu_449_p2[7:2]}};
assign lshr_ln52_1_fu_516_p4 = {{tmp_67_fu_488_p11[7:2]}};
assign lshr_ln6_1_fu_573_p4 = {{t_fu_120[7:2]}};
assign obs_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_1_address0;
assign obs_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_1_ce0;
assign obs_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_2_address0;
assign obs_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_2_ce0;
assign obs_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_3_address0;
assign obs_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_343_obs_3_ce0;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_34_loc_fu_124;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = min_s_34_loc_fu_124;
assign path_1_we0 = path_1_we0_local;
assign path_2_address0 = path_2_address0_local;
assign path_2_ce0 = path_2_ce0_local;
assign path_2_d0 = min_s_34_loc_fu_124;
assign path_2_we0 = path_2_we0_local;
assign path_3_address0 = path_3_address0_local;
assign path_3_ce0 = path_3_ce0_local;
assign path_3_d0 = path_3_d0_local;
assign path_3_we0 = path_3_we0_local;
assign tmp_67_fu_488_p10 = t_fu_120[1:0];
assign tmp_67_fu_488_p9 = 'bx;
assign tmp_68_fu_550_p2 = transition_0_q0;
assign tmp_68_fu_550_p4 = transition_1_q0;
assign tmp_68_fu_550_p6 = transition_2_q0;
assign tmp_68_fu_550_p8 = transition_3_q0;
assign tmp_68_fu_550_p9 = 'bx;
assign tmp_fu_437_p3 = t_fu_120[32'd8];
assign tmp_s_fu_473_p3 = {{trunc_ln50_reg_652}, {5'd0}};
assign trunc_ln50_1_fu_485_p1 = t_fu_120[1:0];
assign trunc_ln50_fu_445_p1 = t_fu_120[7:0];
assign trunc_ln52_fu_512_p1 = tmp_67_fu_488_p11[1:0];
assign zext_ln52_1_fu_526_p1 = lshr_ln52_1_fu_516_p4;
assign zext_ln52_2_fu_480_p1 = tmp_s_fu_473_p3;
assign zext_ln52_fu_465_p1 = lshr_ln1_fu_455_p4;
assign zext_ln6_fu_582_p1 = lshr_ln6_1_fu_573_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_678[4:0] <= 5'b00000;
end
endmodule 