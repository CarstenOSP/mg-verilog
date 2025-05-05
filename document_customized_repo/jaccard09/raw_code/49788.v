module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,obs_4_address0,obs_4_ce0,obs_4_q0,obs_5_address0,obs_5_ce0,obs_5_q0,obs_6_address0,obs_6_ce0,obs_6_q0,obs_7_address0,obs_7_ce0,obs_7_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,init_4_address0,init_4_ce0,init_4_q0,init_5_address0,init_5_ce0,init_5_q0,init_6_address0,init_6_ce0,init_6_q0,init_7_address0,init_7_ce0,init_7_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,emission_4_address0,emission_4_ce0,emission_4_q0,emission_5_address0,emission_5_ce0,emission_5_q0,emission_6_address0,emission_6_ce0,emission_6_q0,emission_7_address0,emission_7_ce0,emission_7_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,path_4_address0,path_4_ce0,path_4_we0,path_4_d0,path_4_q0,path_5_address0,path_5_ce0,path_5_we0,path_5_d0,path_5_q0,path_6_address0,path_6_ce0,path_6_we0,path_6_d0,path_6_q0,path_7_address0,path_7_ce0,path_7_we0,path_7_d0,path_7_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] obs_0_address0;
output   obs_0_ce0;
input  [7:0] obs_0_q0;
output  [4:0] obs_1_address0;
output   obs_1_ce0;
input  [7:0] obs_1_q0;
output  [4:0] obs_2_address0;
output   obs_2_ce0;
input  [7:0] obs_2_q0;
output  [4:0] obs_3_address0;
output   obs_3_ce0;
input  [7:0] obs_3_q0;
output  [4:0] obs_4_address0;
output   obs_4_ce0;
input  [7:0] obs_4_q0;
output  [4:0] obs_5_address0;
output   obs_5_ce0;
input  [7:0] obs_5_q0;
output  [4:0] obs_6_address0;
output   obs_6_ce0;
input  [7:0] obs_6_q0;
output  [4:0] obs_7_address0;
output   obs_7_ce0;
input  [7:0] obs_7_q0;
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_4_address1;
output   transition_4_ce1;
input  [63:0] transition_4_q1;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_5_address1;
output   transition_5_ce1;
input  [63:0] transition_5_q1;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_6_address1;
output   transition_6_ce1;
input  [63:0] transition_6_q1;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
output  [8:0] transition_7_address1;
output   transition_7_ce1;
input  [63:0] transition_7_q1;
output  [8:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
output  [4:0] path_0_address0;
output   path_0_ce0;
output   path_0_we0;
output  [7:0] path_0_d0;
input  [7:0] path_0_q0;
output  [4:0] path_1_address0;
output   path_1_ce0;
output   path_1_we0;
output  [7:0] path_1_d0;
input  [7:0] path_1_q0;
output  [4:0] path_2_address0;
output   path_2_ce0;
output   path_2_we0;
output  [7:0] path_2_d0;
input  [7:0] path_2_q0;
output  [4:0] path_3_address0;
output   path_3_ce0;
output   path_3_we0;
output  [7:0] path_3_d0;
input  [7:0] path_3_q0;
output  [4:0] path_4_address0;
output   path_4_ce0;
output   path_4_we0;
output  [7:0] path_4_d0;
input  [7:0] path_4_q0;
output  [4:0] path_5_address0;
output   path_5_ce0;
output   path_5_we0;
output  [7:0] path_5_d0;
input  [7:0] path_5_q0;
output  [4:0] path_6_address0;
output   path_6_ce0;
output   path_6_we0;
output  [7:0] path_6_d0;
input  [7:0] path_6_q0;
output  [4:0] path_7_address0;
output   path_7_ce0;
output   path_7_we0;
output  [7:0] path_7_d0;
input  [7:0] path_7_q0;
output  [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[8:0] transition_0_address0;
reg transition_0_ce0;
reg[8:0] transition_0_address1;
reg transition_0_ce1;
reg[8:0] transition_1_address0;
reg transition_1_ce0;
reg[8:0] transition_1_address1;
reg transition_1_ce1;
reg[8:0] transition_2_address0;
reg transition_2_ce0;
reg[8:0] transition_2_address1;
reg transition_2_ce1;
reg[8:0] transition_3_address0;
reg transition_3_ce0;
reg[8:0] transition_3_address1;
reg transition_3_ce1;
reg[8:0] transition_4_address0;
reg transition_4_ce0;
reg[8:0] transition_4_address1;
reg transition_4_ce1;
reg[8:0] transition_5_address0;
reg transition_5_ce0;
reg[8:0] transition_5_address1;
reg transition_5_ce1;
reg[8:0] transition_6_address0;
reg transition_6_ce0;
reg[8:0] transition_6_address1;
reg transition_6_ce1;
reg[8:0] transition_7_address0;
reg transition_7_ce0;
reg[8:0] transition_7_address1;
reg transition_7_ce1;
reg[8:0] emission_0_address0;
reg emission_0_ce0;
reg[8:0] emission_1_address0;
reg emission_1_ce0;
reg[8:0] emission_2_address0;
reg emission_2_ce0;
reg[8:0] emission_3_address0;
reg emission_3_ce0;
reg[8:0] emission_4_address0;
reg emission_4_ce0;
reg[8:0] emission_5_address0;
reg emission_5_ce0;
reg[8:0] emission_6_address0;
reg emission_6_ce0;
reg[8:0] emission_7_address0;
reg emission_7_ce0;
reg[4:0] path_3_address0;
reg path_3_ce0;
reg path_3_we0;
reg[7:0] path_3_d0;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] empty_fu_539_p1;
reg   [2:0] empty_reg_935;
wire    ap_CS_fsm_state2;
reg   [4:0] conv3_udiv_reg_940;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_950;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_50_fu_598_p2;
reg   [7:0] empty_50_reg_1000;
wire    ap_CS_fsm_state6;
wire   [2:0] empty_51_fu_643_p1;
reg   [2:0] empty_51_reg_1036;
reg   [4:0] conv32_udiv_reg_1041;
wire   [12:0] tmp_s_fu_657_p3;
reg   [12:0] tmp_s_reg_1046;
wire    ap_CS_fsm_state7;
wire   [12:0] tmp_509_fu_665_p3;
reg   [12:0] tmp_509_reg_1051;
wire   [12:0] tmp_510_fu_673_p3;
reg   [12:0] tmp_510_reg_1056;
wire   [12:0] tmp_511_fu_681_p3;
reg   [12:0] tmp_511_reg_1061;
wire   [12:0] tmp_512_fu_689_p3;
reg   [12:0] tmp_512_reg_1066;
wire   [12:0] tmp_513_fu_697_p3;
reg   [12:0] tmp_513_reg_1071;
wire   [12:0] tmp_514_fu_705_p3;
reg   [12:0] tmp_514_reg_1076;
wire   [12:0] tmp_515_fu_713_p3;
reg   [12:0] tmp_515_reg_1081;
wire   [12:0] tmp_516_fu_721_p3;
reg   [12:0] tmp_516_reg_1086;
wire   [12:0] tmp_517_fu_729_p3;
reg   [12:0] tmp_517_reg_1091;
wire   [12:0] tmp_518_fu_737_p3;
reg   [12:0] tmp_518_reg_1096;
wire   [12:0] tmp_519_fu_745_p3;
reg   [12:0] tmp_519_reg_1101;
wire   [12:0] tmp_520_fu_753_p3;
reg   [12:0] tmp_520_reg_1106;
wire   [12:0] tmp_521_fu_761_p3;
reg   [12:0] tmp_521_reg_1111;
wire   [12:0] tmp_522_fu_769_p3;
reg   [12:0] tmp_522_reg_1116;
wire   [12:0] tmp_523_fu_777_p3;
reg   [12:0] tmp_523_reg_1121;
wire   [12:0] tmp_524_fu_785_p3;
reg   [12:0] tmp_524_reg_1126;
wire   [12:0] tmp_525_fu_793_p3;
reg   [12:0] tmp_525_reg_1131;
wire   [12:0] tmp_526_fu_801_p3;
reg   [12:0] tmp_526_reg_1136;
wire   [12:0] tmp_527_fu_809_p3;
reg   [12:0] tmp_527_reg_1141;
wire   [12:0] tmp_528_fu_817_p3;
reg   [12:0] tmp_528_reg_1146;
wire   [12:0] tmp_529_fu_825_p3;
reg   [12:0] tmp_529_reg_1151;
wire   [12:0] tmp_530_fu_833_p3;
reg   [12:0] tmp_530_reg_1156;
wire   [12:0] tmp_531_fu_841_p3;
reg   [12:0] tmp_531_reg_1161;
wire   [12:0] tmp_532_fu_849_p3;
reg   [12:0] tmp_532_reg_1166;
wire   [12:0] tmp_533_fu_857_p3;
reg   [12:0] tmp_533_reg_1171;
wire   [12:0] tmp_534_fu_865_p3;
reg   [12:0] tmp_534_reg_1176;
wire   [12:0] tmp_535_fu_873_p3;
reg   [12:0] tmp_535_reg_1181;
wire   [12:0] tmp_536_fu_881_p3;
reg   [12:0] tmp_536_reg_1186;
wire   [12:0] tmp_537_fu_889_p3;
reg   [12:0] tmp_537_reg_1191;
wire   [12:0] tmp_538_fu_897_p3;
reg   [12:0] tmp_538_reg_1196;
wire   [12:0] tmp_539_fu_905_p3;
reg   [12:0] tmp_539_reg_1201;
reg   [63:0] min_p_reg_1206;
wire    ap_CS_fsm_state9;
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
wire    grp_viterbi_Pipeline_L_init_fu_375_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_375_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_375_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_375_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_375_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_375_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_375_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_375_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_375_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_375_llike_1_d0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_375_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_init_0_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_375_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_init_1_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_375_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_init_2_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_375_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_init_3_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_375_init_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_init_4_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_375_init_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_init_5_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_375_init_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_init_6_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_375_init_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_init_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_375_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_emission_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_375_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_emission_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_375_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_emission_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_375_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_emission_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_375_emission_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_emission_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_375_emission_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_emission_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_375_emission_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_emission_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_375_emission_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_375_emission_7_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_415_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_415_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_415_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_emission_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_emission_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_emission_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_emission_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_emission_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_emission_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_emission_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_emission_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_emission_4_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_emission_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_emission_5_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_emission_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_emission_6_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_emission_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_415_emission_7_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_emission_7_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_488_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_488_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_488_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_488_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_488_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_488_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_488_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_488_llike_1_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_488_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_488_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_ap_ready;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_d0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_496_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_496_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_ce1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_d0;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_d0;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_d0;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_d0;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_d0;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_d0;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_d0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_375_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_488_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln6_fu_572_p1;
wire   [0:0] icmp_ln18_fu_556_p2;
wire    ap_CS_fsm_state12;
reg   [7:0] t_fu_220;
wire   [7:0] add_ln18_fu_584_p2;
reg    obs_0_ce0_local;
reg   [4:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    obs_2_ce0_local;
reg    obs_3_ce0_local;
reg    obs_4_ce0_local;
reg    obs_5_ce0_local;
reg    obs_6_ce0_local;
reg    obs_7_ce0_local;
reg    llike_ce0_local;
reg    path_3_we0_local;
reg    path_3_ce0_local;
wire   [4:0] lshr_ln6_fu_562_p4;
wire   [7:0] tmp_2_fu_603_p17;
wire   [2:0] tmp_2_fu_603_p18;
wire   [7:0] tmp_2_fu_603_p19;
wire   [63:0] grp_fu_1211_p2;
reg   [63:0] grp_fu_1211_p0;
reg   [63:0] grp_fu_1211_p1;
reg    grp_fu_1211_ce;
wire   [0:0] grp_fu_1215_p2;
reg   [63:0] grp_fu_1215_p0;
reg   [63:0] grp_fu_1215_p1;
reg    grp_fu_1215_ce;
reg   [4:0] grp_fu_1215_opcode;
reg   [13:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state14_blk;
wire   [2:0] tmp_2_fu_603_p1;
wire   [2:0] tmp_2_fu_603_p3;
wire   [2:0] tmp_2_fu_603_p5;
wire   [2:0] tmp_2_fu_603_p7;
wire  signed [2:0] tmp_2_fu_603_p9;
wire  signed [2:0] tmp_2_fu_603_p11;
wire  signed [2:0] tmp_2_fu_603_p13;
wire  signed [2:0] tmp_2_fu_603_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_viterbi_Pipeline_L_init_fu_375_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_488_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start_reg = 1'b0;
#0 t_fu_220 = 8'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_375(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_375_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_375_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_375_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_375_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_375_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_375_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_375_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_375_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_375_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_375_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_375_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_375_llike_1_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_375_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_375_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_375_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_375_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_375_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_375_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_375_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_375_init_3_ce0),.init_3_q0(init_3_q0),.init_4_address0(grp_viterbi_Pipeline_L_init_fu_375_init_4_address0),.init_4_ce0(grp_viterbi_Pipeline_L_init_fu_375_init_4_ce0),.init_4_q0(init_4_q0),.init_5_address0(grp_viterbi_Pipeline_L_init_fu_375_init_5_address0),.init_5_ce0(grp_viterbi_Pipeline_L_init_fu_375_init_5_ce0),.init_5_q0(init_5_q0),.init_6_address0(grp_viterbi_Pipeline_L_init_fu_375_init_6_address0),.init_6_ce0(grp_viterbi_Pipeline_L_init_fu_375_init_6_ce0),.init_6_q0(init_6_q0),.init_7_address0(grp_viterbi_Pipeline_L_init_fu_375_init_7_address0),.init_7_ce0(grp_viterbi_Pipeline_L_init_fu_375_init_7_ce0),.init_7_q0(init_7_q0),.conv3_udiv_cast(conv3_udiv_reg_940),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_375_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_375_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_375_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_375_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_375_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_375_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_375_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_375_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_4_address0(grp_viterbi_Pipeline_L_init_fu_375_emission_4_address0),.emission_4_ce0(grp_viterbi_Pipeline_L_init_fu_375_emission_4_ce0),.emission_4_q0(emission_4_q0),.emission_5_address0(grp_viterbi_Pipeline_L_init_fu_375_emission_5_address0),.emission_5_ce0(grp_viterbi_Pipeline_L_init_fu_375_emission_5_ce0),.emission_5_q0(emission_5_q0),.emission_6_address0(grp_viterbi_Pipeline_L_init_fu_375_emission_6_address0),.emission_6_ce0(grp_viterbi_Pipeline_L_init_fu_375_emission_6_ce0),.emission_6_q0(emission_6_q0),.emission_7_address0(grp_viterbi_Pipeline_L_init_fu_375_emission_7_address0),.emission_7_ce0(grp_viterbi_Pipeline_L_init_fu_375_emission_7_ce0),.emission_7_q0(emission_7_q0),.empty(empty_reg_935),.grp_fu_1211_p_din0(grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_din0),.grp_fu_1211_p_din1(grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_din1),.grp_fu_1211_p_opcode(grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_opcode),.grp_fu_1211_p_dout0(grp_fu_1211_p2),.grp_fu_1211_p_ce(grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_415(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_415_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_415_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_415_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_ce1),.llike_q1(llike_q1),.empty_7(tmp_s_reg_1046),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_ce1),.llike_1_q1(llike_1_q1),.empty_8(tmp_509_reg_1051),.empty_9(tmp_510_reg_1056),.empty_10(tmp_511_reg_1061),.empty_11(tmp_512_reg_1066),.empty_12(tmp_513_reg_1071),.empty_13(tmp_514_reg_1076),.empty_14(tmp_515_reg_1081),.empty_15(tmp_516_reg_1086),.empty_16(tmp_517_reg_1091),.empty_17(tmp_518_reg_1096),.empty_18(tmp_519_reg_1101),.empty_19(tmp_520_reg_1106),.empty_20(tmp_521_reg_1111),.empty_21(tmp_522_reg_1116),.empty_22(tmp_523_reg_1121),.empty_23(tmp_524_reg_1126),.empty_24(tmp_525_reg_1131),.empty_25(tmp_526_reg_1136),.empty_26(tmp_527_reg_1141),.empty_27(tmp_528_reg_1146),.empty_28(tmp_529_reg_1151),.empty_29(tmp_530_reg_1156),.empty_30(tmp_531_reg_1161),.empty_31(tmp_532_reg_1166),.empty_32(tmp_533_reg_1171),.empty_33(tmp_534_reg_1176),.empty_34(tmp_535_reg_1181),.empty_35(tmp_536_reg_1186),.empty_36(tmp_537_reg_1191),.empty_37(tmp_538_reg_1196),.empty_38(tmp_539_reg_1201),.t(t_2_reg_950),.transition_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_ce1),.transition_3_q1(transition_3_q1),.transition_4_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_address0),.transition_4_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_ce0),.transition_4_q0(transition_4_q0),.transition_4_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_address1),.transition_4_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_ce1),.transition_4_q1(transition_4_q1),.transition_5_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_address0),.transition_5_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_ce0),.transition_5_q0(transition_5_q0),.transition_5_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_address1),.transition_5_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_ce1),.transition_5_q1(transition_5_q1),.transition_6_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_address0),.transition_6_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_ce0),.transition_6_q0(transition_6_q0),.transition_6_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_address1),.transition_6_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_ce1),.transition_6_q1(transition_6_q1),.transition_7_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_address0),.transition_7_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_ce0),.transition_7_q0(transition_7_q0),.transition_7_address1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_address1),.transition_7_ce1(grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_ce1),.transition_7_q1(transition_7_q1),.conv32_udiv_cast(conv32_udiv_reg_1041),.emission_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_4_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_4_address0),.emission_4_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_4_ce0),.emission_4_q0(emission_4_q0),.emission_5_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_5_address0),.emission_5_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_5_ce0),.emission_5_q0(emission_5_q0),.emission_6_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_6_address0),.emission_6_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_6_ce0),.emission_6_q0(emission_6_q0),.emission_7_address0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_7_address0),.emission_7_ce0(grp_viterbi_Pipeline_L_curr_state_fu_415_emission_7_ce0),.emission_7_q0(emission_7_q0),.empty(empty_51_reg_1036),.grp_fu_1211_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_din0),.grp_fu_1211_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_din1),.grp_fu_1211_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_opcode),.grp_fu_1211_p_dout0(grp_fu_1211_p2),.grp_fu_1211_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_ce),.grp_fu_1215_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_din0),.grp_fu_1215_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_din1),.grp_fu_1215_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_opcode),.grp_fu_1215_p_dout0(grp_fu_1215_p2),.grp_fu_1215_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_488(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_488_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_488_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_488_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_488_ap_ready),.min_p(min_p_reg_1206),.llike_address0(grp_viterbi_Pipeline_L_end_fu_488_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_488_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_488_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_488_llike_1_ce0),.llike_1_q0(llike_1_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_488_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_488_min_s_out_ap_vld),.grp_fu_1215_p_din0(grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_din0),.grp_fu_1215_p_din1(grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_din1),.grp_fu_1215_p_opcode(grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_opcode),.grp_fu_1215_p_dout0(grp_fu_1215_p2),.grp_fu_1215_p_ce(grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_496(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_496_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_496_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_496_ap_ready),.path_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_address0),.path_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_ce0),.path_0_we0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_we0),.path_0_d0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_d0),.path_0_q0(path_0_q0),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_ce1),.llike_1_q1(llike_1_q1),.path_7_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_address0),.path_7_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_ce0),.path_7_we0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_we0),.path_7_d0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_d0),.path_7_q0(path_7_q0),.path_6_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_address0),.path_6_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_ce0),.path_6_we0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_we0),.path_6_d0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_d0),.path_6_q0(path_6_q0),.path_5_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_address0),.path_5_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_ce0),.path_5_we0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_we0),.path_5_d0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_d0),.path_5_q0(path_5_q0),.path_4_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_address0),.path_4_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_ce0),.path_4_we0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_we0),.path_4_d0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_d0),.path_4_q0(path_4_q0),.path_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_address0),.path_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_ce0),.path_3_we0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_we0),.path_3_d0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_d0),.path_3_q0(path_3_q0),.path_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_address0),.path_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_ce0),.path_2_we0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_we0),.path_2_d0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_d0),.path_2_q0(path_2_q0),.path_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_address0),.path_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_ce0),.path_1_we0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_we0),.path_1_d0(grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_d0),.path_1_q0(path_1_q0),.transition_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_ce1),.transition_3_q1(transition_3_q1),.transition_4_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_address0),.transition_4_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_ce0),.transition_4_q0(transition_4_q0),.transition_4_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_address1),.transition_4_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_ce1),.transition_4_q1(transition_4_q1),.transition_5_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_address0),.transition_5_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_ce0),.transition_5_q0(transition_5_q0),.transition_5_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_address1),.transition_5_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_ce1),.transition_5_q1(transition_5_q1),.transition_6_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_address0),.transition_6_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_ce0),.transition_6_q0(transition_6_q0),.transition_6_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_address1),.transition_6_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_ce1),.transition_6_q1(transition_6_q1),.transition_7_address0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_address0),.transition_7_ce0(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_ce0),.transition_7_q0(transition_7_q0),.transition_7_address1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_address1),.transition_7_ce1(grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_ce1),.transition_7_q1(transition_7_q1),.grp_fu_1211_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_din0),.grp_fu_1211_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_din1),.grp_fu_1211_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_opcode),.grp_fu_1211_p_dout0(grp_fu_1211_p2),.grp_fu_1211_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_ce),.grp_fu_1215_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_din0),.grp_fu_1215_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_din1),.grp_fu_1215_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_opcode),.grp_fu_1215_p_dout0(grp_fu_1215_p2),.grp_fu_1215_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_ce));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_x_U241(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.din4(obs_4_q0),.din5(obs_5_q0),.din6(obs_6_q0),.din7(obs_7_q0),.def(tmp_2_fu_603_p17),.sel(tmp_2_fu_603_p18),.dout(tmp_2_fu_603_p19));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U242(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1211_p0),.din1(grp_fu_1211_p1),.ce(grp_fu_1211_ce),.dout(grp_fu_1211_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U243(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1215_p0),.din1(grp_fu_1215_p1),.ce(grp_fu_1215_ce),.opcode(grp_fu_1215_opcode),.dout(grp_fu_1215_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_496_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_415_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_488_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_488_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_488_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_488_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_375_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_375_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_375_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_375_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        t_fu_220 <= 8'd1;
    end else if (((icmp_ln18_fu_556_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_220 <= add_ln18_fu_584_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_reg_1041 <= {{tmp_2_fu_603_p19[7:3]}};
        empty_50_reg_1000 <= empty_50_fu_598_p2;
        empty_51_reg_1036 <= empty_51_fu_643_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_940 <= {{obs_0_q0[7:3]}};
        empty_reg_935 <= empty_fu_539_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        min_p_reg_1206 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_950 <= t_fu_220;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_509_reg_1051[12 : 5] <= tmp_509_fu_665_p3[12 : 5];
        tmp_510_reg_1056[12 : 5] <= tmp_510_fu_673_p3[12 : 5];
        tmp_511_reg_1061[12 : 5] <= tmp_511_fu_681_p3[12 : 5];
        tmp_512_reg_1066[12 : 5] <= tmp_512_fu_689_p3[12 : 5];
        tmp_513_reg_1071[12 : 5] <= tmp_513_fu_697_p3[12 : 5];
        tmp_514_reg_1076[12 : 5] <= tmp_514_fu_705_p3[12 : 5];
        tmp_515_reg_1081[12 : 5] <= tmp_515_fu_713_p3[12 : 5];
        tmp_516_reg_1086[12 : 5] <= tmp_516_fu_721_p3[12 : 5];
        tmp_517_reg_1091[12 : 5] <= tmp_517_fu_729_p3[12 : 5];
        tmp_518_reg_1096[12 : 5] <= tmp_518_fu_737_p3[12 : 5];
        tmp_519_reg_1101[12 : 5] <= tmp_519_fu_745_p3[12 : 5];
        tmp_520_reg_1106[12 : 5] <= tmp_520_fu_753_p3[12 : 5];
        tmp_521_reg_1111[12 : 5] <= tmp_521_fu_761_p3[12 : 5];
        tmp_522_reg_1116[12 : 5] <= tmp_522_fu_769_p3[12 : 5];
        tmp_523_reg_1121[12 : 5] <= tmp_523_fu_777_p3[12 : 5];
        tmp_524_reg_1126[12 : 5] <= tmp_524_fu_785_p3[12 : 5];
        tmp_525_reg_1131[12 : 5] <= tmp_525_fu_793_p3[12 : 5];
        tmp_526_reg_1136[12 : 5] <= tmp_526_fu_801_p3[12 : 5];
        tmp_527_reg_1141[12 : 5] <= tmp_527_fu_809_p3[12 : 5];
        tmp_528_reg_1146[12 : 5] <= tmp_528_fu_817_p3[12 : 5];
        tmp_529_reg_1151[12 : 5] <= tmp_529_fu_825_p3[12 : 5];
        tmp_530_reg_1156[12 : 5] <= tmp_530_fu_833_p3[12 : 5];
        tmp_531_reg_1161[12 : 5] <= tmp_531_fu_841_p3[12 : 5];
        tmp_532_reg_1166[12 : 5] <= tmp_532_fu_849_p3[12 : 5];
        tmp_533_reg_1171[12 : 5] <= tmp_533_fu_857_p3[12 : 5];
        tmp_534_reg_1176[12 : 5] <= tmp_534_fu_865_p3[12 : 5];
        tmp_535_reg_1181[12 : 5] <= tmp_535_fu_873_p3[12 : 5];
        tmp_536_reg_1186[12 : 5] <= tmp_536_fu_881_p3[12 : 5];
        tmp_537_reg_1191[12 : 5] <= tmp_537_fu_889_p3[12 : 5];
        tmp_538_reg_1196[12 : 5] <= tmp_538_fu_897_p3[12 : 5];
        tmp_539_reg_1201[12 : 5] <= tmp_539_fu_905_p3[12 : 5];
        tmp_s_reg_1046[12 : 5] <= tmp_s_fu_657_p3[12 : 5];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_488_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_496_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
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
    if ((grp_viterbi_Pipeline_L_init_fu_375_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_415_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_496_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_496_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_375_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_375_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_375_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_375_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_375_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_375_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_375_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_375_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_4_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_address0 = grp_viterbi_Pipeline_L_init_fu_375_emission_4_address0;
    end else begin
        emission_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_4_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_ce0 = grp_viterbi_Pipeline_L_init_fu_375_emission_4_ce0;
    end else begin
        emission_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_5_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_address0 = grp_viterbi_Pipeline_L_init_fu_375_emission_5_address0;
    end else begin
        emission_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_5_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_ce0 = grp_viterbi_Pipeline_L_init_fu_375_emission_5_ce0;
    end else begin
        emission_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_6_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_address0 = grp_viterbi_Pipeline_L_init_fu_375_emission_6_address0;
    end else begin
        emission_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_6_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_ce0 = grp_viterbi_Pipeline_L_init_fu_375_emission_6_ce0;
    end else begin
        emission_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_7_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_address0 = grp_viterbi_Pipeline_L_init_fu_375_emission_7_address0;
    end else begin
        emission_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_7_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_emission_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_ce0 = grp_viterbi_Pipeline_L_init_fu_375_emission_7_ce0;
    end else begin
        emission_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1211_ce = grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1211_ce = grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1211_ce = grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_ce;
    end else begin
        grp_fu_1211_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1211_p0 = grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1211_p0 = grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1211_p0 = grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_din0;
    end else begin
        grp_fu_1211_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1211_p1 = grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1211_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1211_p1 = grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1211_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1211_p1 = grp_viterbi_Pipeline_L_init_fu_375_grp_fu_1211_p_din1;
    end else begin
        grp_fu_1211_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1215_ce = grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1215_ce = grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1215_ce = grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_ce;
    end else begin
        grp_fu_1215_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1215_opcode = grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1215_opcode = grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1215_opcode = grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_opcode;
    end else begin
        grp_fu_1215_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1215_p0 = grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1215_p0 = grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1215_p0 = grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_din0;
    end else begin
        grp_fu_1215_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1215_p1 = grp_viterbi_Pipeline_L_backtrack_fu_496_grp_fu_1215_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1215_p1 = grp_viterbi_Pipeline_L_end_fu_488_grp_fu_1215_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1215_p1 = grp_viterbi_Pipeline_L_curr_state_fu_415_grp_fu_1215_p_din1;
    end else begin
        grp_fu_1215_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_488_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_375_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_488_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_375_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_375_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_375_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_488_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_375_llike_address0;
    end else begin
        llike_address0 = 64'd4448;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_488_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_375_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_375_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_415_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_375_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_572_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        obs_0_address0_local = 64'd0;
    end else begin
        obs_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_4_ce0_local = 1'b1;
    end else begin
        obs_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_5_ce0_local = 1'b1;
    end else begin
        obs_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_6_ce0_local = 1'b1;
    end else begin
        obs_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_7_ce0_local = 1'b1;
    end else begin
        obs_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_address0;
    end else begin
        path_3_address0 = 64'd17;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_ce0;
    end else begin
        path_3_ce0 = path_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_3_d0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_d0;
    end else begin
        path_3_d0 = grp_viterbi_Pipeline_L_end_fu_488_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_3_we0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_3_we0;
    end else begin
        path_3_we0 = path_3_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_address0;
    end else begin
        transition_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_ce0;
    end else begin
        transition_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_address0;
    end else begin
        transition_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_ce0;
    end else begin
        transition_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_address0;
    end else begin
        transition_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_ce0;
    end else begin
        transition_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_address0;
    end else begin
        transition_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_ce0;
    end else begin
        transition_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_3_ce1;
    end else begin
        transition_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_4_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_4_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_address0;
    end else begin
        transition_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_4_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_4_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_address1;
    end else begin
        transition_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_4_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_4_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_ce0;
    end else begin
        transition_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_4_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_4_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_4_ce1;
    end else begin
        transition_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_5_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_5_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_address0;
    end else begin
        transition_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_5_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_5_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_address1;
    end else begin
        transition_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_5_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_5_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_ce0;
    end else begin
        transition_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_5_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_5_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_5_ce1;
    end else begin
        transition_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_6_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_6_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_address0;
    end else begin
        transition_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_6_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_6_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_address1;
    end else begin
        transition_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_6_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_6_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_ce0;
    end else begin
        transition_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_6_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_6_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_6_ce1;
    end else begin
        transition_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_7_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_7_address0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_address0;
    end else begin
        transition_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_7_address1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_7_address1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_address1;
    end else begin
        transition_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_7_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_7_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_ce0;
    end else begin
        transition_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_7_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_496_transition_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_7_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_415_transition_7_ce1;
    end else begin
        transition_7_ce1 = 1'b0;
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
            if (((grp_viterbi_Pipeline_L_init_fu_375_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_556_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_viterbi_Pipeline_L_curr_state_fu_415_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_488_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_viterbi_Pipeline_L_backtrack_fu_496_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_584_p2 = (t_fu_220 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign empty_50_fu_598_p2 = ($signed(t_2_reg_950) + $signed(8'd255));
assign empty_51_fu_643_p1 = tmp_2_fu_603_p19[2:0];
assign empty_fu_539_p1 = obs_0_q0[2:0];
assign grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_496_ap_start_reg;
assign grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_415_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_488_ap_start = grp_viterbi_Pipeline_L_end_fu_488_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_375_ap_start = grp_viterbi_Pipeline_L_init_fu_375_ap_start_reg;
assign icmp_ln18_fu_556_p2 = ((t_fu_220 == 8'd140) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_375_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_375_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_375_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_375_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_375_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_375_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_375_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_375_init_3_ce0;
assign init_4_address0 = grp_viterbi_Pipeline_L_init_fu_375_init_4_address0;
assign init_4_ce0 = grp_viterbi_Pipeline_L_init_fu_375_init_4_ce0;
assign init_5_address0 = grp_viterbi_Pipeline_L_init_fu_375_init_5_address0;
assign init_5_ce0 = grp_viterbi_Pipeline_L_init_fu_375_init_5_ce0;
assign init_6_address0 = grp_viterbi_Pipeline_L_init_fu_375_init_6_address0;
assign init_6_ce0 = grp_viterbi_Pipeline_L_init_fu_375_init_6_ce0;
assign init_7_address0 = grp_viterbi_Pipeline_L_init_fu_375_init_7_address0;
assign init_7_ce0 = grp_viterbi_Pipeline_L_init_fu_375_init_7_ce0;
assign lshr_ln6_fu_562_p4 = {{t_fu_220[7:3]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_572_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_572_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_572_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign obs_4_address0 = zext_ln6_fu_572_p1;
assign obs_4_ce0 = obs_4_ce0_local;
assign obs_5_address0 = zext_ln6_fu_572_p1;
assign obs_5_ce0 = obs_5_ce0_local;
assign obs_6_address0 = zext_ln6_fu_572_p1;
assign obs_6_ce0 = obs_6_ce0_local;
assign obs_7_address0 = zext_ln6_fu_572_p1;
assign obs_7_ce0 = obs_7_ce0_local;
assign path_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_address0;
assign path_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_ce0;
assign path_0_d0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_d0;
assign path_0_we0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_0_we0;
assign path_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_address0;
assign path_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_ce0;
assign path_1_d0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_d0;
assign path_1_we0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_1_we0;
assign path_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_address0;
assign path_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_ce0;
assign path_2_d0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_d0;
assign path_2_we0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_2_we0;
assign path_4_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_address0;
assign path_4_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_ce0;
assign path_4_d0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_d0;
assign path_4_we0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_4_we0;
assign path_5_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_address0;
assign path_5_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_ce0;
assign path_5_d0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_d0;
assign path_5_we0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_5_we0;
assign path_6_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_address0;
assign path_6_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_ce0;
assign path_6_d0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_d0;
assign path_6_we0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_6_we0;
assign path_7_address0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_address0;
assign path_7_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_ce0;
assign path_7_d0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_d0;
assign path_7_we0 = grp_viterbi_Pipeline_L_backtrack_fu_496_path_7_we0;
assign tmp_2_fu_603_p17 = 'bx;
assign tmp_2_fu_603_p18 = t_2_reg_950[2:0];
assign tmp_509_fu_665_p3 = {{empty_50_reg_1000}, {5'd1}};
assign tmp_510_fu_673_p3 = {{empty_50_reg_1000}, {5'd2}};
assign tmp_511_fu_681_p3 = {{empty_50_reg_1000}, {5'd3}};
assign tmp_512_fu_689_p3 = {{empty_50_reg_1000}, {5'd4}};
assign tmp_513_fu_697_p3 = {{empty_50_reg_1000}, {5'd5}};
assign tmp_514_fu_705_p3 = {{empty_50_reg_1000}, {5'd6}};
assign tmp_515_fu_713_p3 = {{empty_50_reg_1000}, {5'd7}};
assign tmp_516_fu_721_p3 = {{empty_50_reg_1000}, {5'd8}};
assign tmp_517_fu_729_p3 = {{empty_50_reg_1000}, {5'd9}};
assign tmp_518_fu_737_p3 = {{empty_50_reg_1000}, {5'd10}};
assign tmp_519_fu_745_p3 = {{empty_50_reg_1000}, {5'd11}};
assign tmp_520_fu_753_p3 = {{empty_50_reg_1000}, {5'd12}};
assign tmp_521_fu_761_p3 = {{empty_50_reg_1000}, {5'd13}};
assign tmp_522_fu_769_p3 = {{empty_50_reg_1000}, {5'd14}};
assign tmp_523_fu_777_p3 = {{empty_50_reg_1000}, {5'd15}};
assign tmp_524_fu_785_p3 = {{empty_50_reg_1000}, {5'd16}};
assign tmp_525_fu_793_p3 = {{empty_50_reg_1000}, {5'd17}};
assign tmp_526_fu_801_p3 = {{empty_50_reg_1000}, {5'd18}};
assign tmp_527_fu_809_p3 = {{empty_50_reg_1000}, {5'd19}};
assign tmp_528_fu_817_p3 = {{empty_50_reg_1000}, {5'd20}};
assign tmp_529_fu_825_p3 = {{empty_50_reg_1000}, {5'd21}};
assign tmp_530_fu_833_p3 = {{empty_50_reg_1000}, {5'd22}};
assign tmp_531_fu_841_p3 = {{empty_50_reg_1000}, {5'd23}};
assign tmp_532_fu_849_p3 = {{empty_50_reg_1000}, {5'd24}};
assign tmp_533_fu_857_p3 = {{empty_50_reg_1000}, {5'd25}};
assign tmp_534_fu_865_p3 = {{empty_50_reg_1000}, {5'd26}};
assign tmp_535_fu_873_p3 = {{empty_50_reg_1000}, {5'd27}};
assign tmp_536_fu_881_p3 = {{empty_50_reg_1000}, {5'd28}};
assign tmp_537_fu_889_p3 = {{empty_50_reg_1000}, {5'd29}};
assign tmp_538_fu_897_p3 = {{empty_50_reg_1000}, {5'd30}};
assign tmp_539_fu_905_p3 = {{empty_50_reg_1000}, {5'd31}};
assign tmp_s_fu_657_p3 = {{empty_50_reg_1000}, {5'd0}};
assign zext_ln6_fu_572_p1 = lshr_ln6_fu_562_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_1046[4:0] <= 5'b00000;
    tmp_509_reg_1051[4:0] <= 5'b00001;
    tmp_510_reg_1056[4:0] <= 5'b00010;
    tmp_511_reg_1061[4:0] <= 5'b00011;
    tmp_512_reg_1066[4:0] <= 5'b00100;
    tmp_513_reg_1071[4:0] <= 5'b00101;
    tmp_514_reg_1076[4:0] <= 5'b00110;
    tmp_515_reg_1081[4:0] <= 5'b00111;
    tmp_516_reg_1086[4:0] <= 5'b01000;
    tmp_517_reg_1091[4:0] <= 5'b01001;
    tmp_518_reg_1096[4:0] <= 5'b01010;
    tmp_519_reg_1101[4:0] <= 5'b01011;
    tmp_520_reg_1106[4:0] <= 5'b01100;
    tmp_521_reg_1111[4:0] <= 5'b01101;
    tmp_522_reg_1116[4:0] <= 5'b01110;
    tmp_523_reg_1121[4:0] <= 5'b01111;
    tmp_524_reg_1126[4:0] <= 5'b10000;
    tmp_525_reg_1131[4:0] <= 5'b10001;
    tmp_526_reg_1136[4:0] <= 5'b10010;
    tmp_527_reg_1141[4:0] <= 5'b10011;
    tmp_528_reg_1146[4:0] <= 5'b10100;
    tmp_529_reg_1151[4:0] <= 5'b10101;
    tmp_530_reg_1156[4:0] <= 5'b10110;
    tmp_531_reg_1161[4:0] <= 5'b10111;
    tmp_532_reg_1166[4:0] <= 5'b11000;
    tmp_533_reg_1171[4:0] <= 5'b11001;
    tmp_534_reg_1176[4:0] <= 5'b11010;
    tmp_535_reg_1181[4:0] <= 5'b11011;
    tmp_536_reg_1186[4:0] <= 5'b11100;
    tmp_537_reg_1191[4:0] <= 5'b11101;
    tmp_538_reg_1196[4:0] <= 5'b11110;
    tmp_539_reg_1201[4:0] <= 5'b11111;
end
endmodule 