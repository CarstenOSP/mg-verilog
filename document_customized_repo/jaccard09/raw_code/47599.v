module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,ap_return); 
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
reg[5:0] path_3_address0;
reg path_3_ce0;
reg path_3_we0;
reg[7:0] path_3_d0;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] empty_fu_391_p1;
reg   [1:0] empty_reg_767;
wire    ap_CS_fsm_state2;
reg   [5:0] conv3_udiv_reg_772;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_782;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_50_fu_446_p2;
reg   [7:0] empty_50_reg_812;
wire    ap_CS_fsm_state6;
wire   [1:0] empty_51_fu_475_p1;
reg   [1:0] empty_51_reg_848;
reg   [5:0] conv32_udiv_reg_853;
wire   [12:0] tmp_s_fu_489_p3;
reg   [12:0] tmp_s_reg_858;
wire    ap_CS_fsm_state7;
wire   [12:0] tmp_509_fu_497_p3;
reg   [12:0] tmp_509_reg_863;
wire   [12:0] tmp_510_fu_505_p3;
reg   [12:0] tmp_510_reg_868;
wire   [12:0] tmp_511_fu_513_p3;
reg   [12:0] tmp_511_reg_873;
wire   [12:0] tmp_512_fu_521_p3;
reg   [12:0] tmp_512_reg_878;
wire   [12:0] tmp_513_fu_529_p3;
reg   [12:0] tmp_513_reg_883;
wire   [12:0] tmp_514_fu_537_p3;
reg   [12:0] tmp_514_reg_888;
wire   [12:0] tmp_515_fu_545_p3;
reg   [12:0] tmp_515_reg_893;
wire   [12:0] tmp_516_fu_553_p3;
reg   [12:0] tmp_516_reg_898;
wire   [12:0] tmp_517_fu_561_p3;
reg   [12:0] tmp_517_reg_903;
wire   [12:0] tmp_518_fu_569_p3;
reg   [12:0] tmp_518_reg_908;
wire   [12:0] tmp_519_fu_577_p3;
reg   [12:0] tmp_519_reg_913;
wire   [12:0] tmp_520_fu_585_p3;
reg   [12:0] tmp_520_reg_918;
wire   [12:0] tmp_521_fu_593_p3;
reg   [12:0] tmp_521_reg_923;
wire   [12:0] tmp_522_fu_601_p3;
reg   [12:0] tmp_522_reg_928;
wire   [12:0] tmp_523_fu_609_p3;
reg   [12:0] tmp_523_reg_933;
wire   [12:0] tmp_524_fu_617_p3;
reg   [12:0] tmp_524_reg_938;
wire   [12:0] tmp_525_fu_625_p3;
reg   [12:0] tmp_525_reg_943;
wire   [12:0] tmp_526_fu_633_p3;
reg   [12:0] tmp_526_reg_948;
wire   [12:0] tmp_527_fu_641_p3;
reg   [12:0] tmp_527_reg_953;
wire   [12:0] tmp_528_fu_649_p3;
reg   [12:0] tmp_528_reg_958;
wire   [12:0] tmp_529_fu_657_p3;
reg   [12:0] tmp_529_reg_963;
wire   [12:0] tmp_530_fu_665_p3;
reg   [12:0] tmp_530_reg_968;
wire   [12:0] tmp_531_fu_673_p3;
reg   [12:0] tmp_531_reg_973;
wire   [12:0] tmp_532_fu_681_p3;
reg   [12:0] tmp_532_reg_978;
wire   [12:0] tmp_533_fu_689_p3;
reg   [12:0] tmp_533_reg_983;
wire   [12:0] tmp_534_fu_697_p3;
reg   [12:0] tmp_534_reg_988;
wire   [12:0] tmp_535_fu_705_p3;
reg   [12:0] tmp_535_reg_993;
wire   [12:0] tmp_536_fu_713_p3;
reg   [12:0] tmp_536_reg_998;
wire   [12:0] tmp_537_fu_721_p3;
reg   [12:0] tmp_537_reg_1003;
wire   [12:0] tmp_538_fu_729_p3;
reg   [12:0] tmp_538_reg_1008;
wire   [12:0] tmp_539_fu_737_p3;
reg   [12:0] tmp_539_reg_1013;
reg   [63:0] min_p_reg_1018;
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
wire    grp_viterbi_Pipeline_L_init_fu_275_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_275_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_275_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_275_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_275_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_275_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_275_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_275_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_275_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_275_llike_1_d0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_275_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_init_0_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_275_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_init_1_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_275_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_init_2_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_275_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_init_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_275_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_275_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_275_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_275_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_275_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_299_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_299_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_299_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_emission_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_emission_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_emission_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_299_emission_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_356_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_356_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_356_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_356_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_356_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_356_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_1_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_356_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_356_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_ap_ready;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_d0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_364_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_llike_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_364_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_ce1;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_d0;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_d0;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_d0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_275_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln6_fu_424_p1;
wire   [0:0] icmp_ln18_fu_408_p2;
wire    ap_CS_fsm_state12;
reg   [7:0] t_fu_172;
wire   [7:0] add_ln18_fu_432_p2;
reg    obs_0_ce0_local;
reg   [5:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    obs_2_ce0_local;
reg    obs_3_ce0_local;
reg    llike_ce0_local;
reg    path_3_we0_local;
reg    path_3_ce0_local;
wire   [5:0] lshr_ln6_fu_414_p4;
wire   [7:0] tmp_2_fu_451_p9;
wire   [1:0] tmp_2_fu_451_p10;
wire   [7:0] tmp_2_fu_451_p11;
wire   [63:0] grp_fu_1023_p2;
reg   [63:0] grp_fu_1023_p0;
reg   [63:0] grp_fu_1023_p1;
reg    grp_fu_1023_ce;
wire   [0:0] grp_fu_1027_p2;
reg   [63:0] grp_fu_1027_p0;
reg   [63:0] grp_fu_1027_p1;
reg    grp_fu_1027_ce;
reg   [4:0] grp_fu_1027_opcode;
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
wire   [1:0] tmp_2_fu_451_p1;
wire   [1:0] tmp_2_fu_451_p3;
wire  signed [1:0] tmp_2_fu_451_p5;
wire  signed [1:0] tmp_2_fu_451_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_viterbi_Pipeline_L_init_fu_275_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start_reg = 1'b0;
#0 t_fu_172 = 8'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_275(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_275_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_275_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_275_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_275_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_275_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_275_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_275_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_275_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_275_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_275_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_275_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_275_llike_1_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_275_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_275_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_275_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_275_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_275_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_275_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_275_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_275_init_3_ce0),.init_3_q0(init_3_q0),.conv3_udiv_cast(conv3_udiv_reg_772),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_275_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_275_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_275_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_275_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_275_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_275_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_275_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_275_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_reg_767),.grp_fu_1023_p_din0(grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_din0),.grp_fu_1023_p_din1(grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_din1),.grp_fu_1023_p_opcode(grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_opcode),.grp_fu_1023_p_dout0(grp_fu_1023_p2),.grp_fu_1023_p_ce(grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_299(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_299_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_299_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_299_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_ce1),.llike_q1(llike_q1),.empty_7(tmp_s_reg_858),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_ce1),.llike_1_q1(llike_1_q1),.empty_8(tmp_509_reg_863),.empty_9(tmp_510_reg_868),.empty_10(tmp_511_reg_873),.empty_11(tmp_512_reg_878),.empty_12(tmp_513_reg_883),.empty_13(tmp_514_reg_888),.empty_14(tmp_515_reg_893),.empty_15(tmp_516_reg_898),.empty_16(tmp_517_reg_903),.empty_17(tmp_518_reg_908),.empty_18(tmp_519_reg_913),.empty_19(tmp_520_reg_918),.empty_20(tmp_521_reg_923),.empty_21(tmp_522_reg_928),.empty_22(tmp_523_reg_933),.empty_23(tmp_524_reg_938),.empty_24(tmp_525_reg_943),.empty_25(tmp_526_reg_948),.empty_26(tmp_527_reg_953),.empty_27(tmp_528_reg_958),.empty_28(tmp_529_reg_963),.empty_29(tmp_530_reg_968),.empty_30(tmp_531_reg_973),.empty_31(tmp_532_reg_978),.empty_32(tmp_533_reg_983),.empty_33(tmp_534_reg_988),.empty_34(tmp_535_reg_993),.empty_35(tmp_536_reg_998),.empty_36(tmp_537_reg_1003),.empty_37(tmp_538_reg_1008),.empty_38(tmp_539_reg_1013),.t(t_2_reg_782),.transition_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_ce1),.transition_3_q1(transition_3_q1),.conv32_udiv_cast(conv32_udiv_reg_853),.emission_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_299_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_299_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_51_reg_848),.grp_fu_1023_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_din0),.grp_fu_1023_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_din1),.grp_fu_1023_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_opcode),.grp_fu_1023_p_dout0(grp_fu_1023_p2),.grp_fu_1023_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_ce),.grp_fu_1027_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_din0),.grp_fu_1027_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_din1),.grp_fu_1027_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_opcode),.grp_fu_1027_p_dout0(grp_fu_1027_p2),.grp_fu_1027_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_356(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_356_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_356_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_356_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_356_ap_ready),.min_p(min_p_reg_1018),.llike_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_1_ce0),.llike_1_q0(llike_1_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_356_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_356_min_s_out_ap_vld),.grp_fu_1027_p_din0(grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_din0),.grp_fu_1027_p_din1(grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_din1),.grp_fu_1027_p_opcode(grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_opcode),.grp_fu_1027_p_dout0(grp_fu_1027_p2),.grp_fu_1027_p_ce(grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_364(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_364_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_364_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_364_ap_ready),.path_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_address0),.path_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_ce0),.path_0_we0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_we0),.path_0_d0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_d0),.path_0_q0(path_0_q0),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_364_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_364_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_ce1),.llike_1_q1(llike_1_q1),.path_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_address0),.path_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_ce0),.path_3_we0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_we0),.path_3_d0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_d0),.path_3_q0(path_3_q0),.path_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_address0),.path_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_ce0),.path_2_we0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_we0),.path_2_d0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_d0),.path_2_q0(path_2_q0),.path_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_address0),.path_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_ce0),.path_1_we0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_we0),.path_1_d0(grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_d0),.path_1_q0(path_1_q0),.transition_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_ce1),.transition_3_q1(transition_3_q1),.grp_fu_1023_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_din0),.grp_fu_1023_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_din1),.grp_fu_1023_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_opcode),.grp_fu_1023_p_dout0(grp_fu_1023_p2),.grp_fu_1023_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_ce),.grp_fu_1027_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_din0),.grp_fu_1027_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_din1),.grp_fu_1027_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_opcode),.grp_fu_1027_p_dout0(grp_fu_1027_p2),.grp_fu_1027_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_ce));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U217(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.def(tmp_2_fu_451_p9),.sel(tmp_2_fu_451_p10),.dout(tmp_2_fu_451_p11));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U218(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1023_p0),.din1(grp_fu_1023_p1),.ce(grp_fu_1023_ce),.dout(grp_fu_1023_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U219(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1027_p0),.din1(grp_fu_1027_p1),.ce(grp_fu_1027_ce),.opcode(grp_fu_1027_opcode),.dout(grp_fu_1027_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_364_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_299_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_356_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_275_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_275_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_275_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_275_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        t_fu_172 <= 8'd1;
    end else if (((icmp_ln18_fu_408_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_172 <= add_ln18_fu_432_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_reg_853 <= {{tmp_2_fu_451_p11[7:2]}};
        empty_50_reg_812 <= empty_50_fu_446_p2;
        empty_51_reg_848 <= empty_51_fu_475_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_772 <= {{obs_0_q0[7:2]}};
        empty_reg_767 <= empty_fu_391_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        min_p_reg_1018 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_782 <= t_fu_172;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_509_reg_863[12 : 5] <= tmp_509_fu_497_p3[12 : 5];
        tmp_510_reg_868[12 : 5] <= tmp_510_fu_505_p3[12 : 5];
        tmp_511_reg_873[12 : 5] <= tmp_511_fu_513_p3[12 : 5];
        tmp_512_reg_878[12 : 5] <= tmp_512_fu_521_p3[12 : 5];
        tmp_513_reg_883[12 : 5] <= tmp_513_fu_529_p3[12 : 5];
        tmp_514_reg_888[12 : 5] <= tmp_514_fu_537_p3[12 : 5];
        tmp_515_reg_893[12 : 5] <= tmp_515_fu_545_p3[12 : 5];
        tmp_516_reg_898[12 : 5] <= tmp_516_fu_553_p3[12 : 5];
        tmp_517_reg_903[12 : 5] <= tmp_517_fu_561_p3[12 : 5];
        tmp_518_reg_908[12 : 5] <= tmp_518_fu_569_p3[12 : 5];
        tmp_519_reg_913[12 : 5] <= tmp_519_fu_577_p3[12 : 5];
        tmp_520_reg_918[12 : 5] <= tmp_520_fu_585_p3[12 : 5];
        tmp_521_reg_923[12 : 5] <= tmp_521_fu_593_p3[12 : 5];
        tmp_522_reg_928[12 : 5] <= tmp_522_fu_601_p3[12 : 5];
        tmp_523_reg_933[12 : 5] <= tmp_523_fu_609_p3[12 : 5];
        tmp_524_reg_938[12 : 5] <= tmp_524_fu_617_p3[12 : 5];
        tmp_525_reg_943[12 : 5] <= tmp_525_fu_625_p3[12 : 5];
        tmp_526_reg_948[12 : 5] <= tmp_526_fu_633_p3[12 : 5];
        tmp_527_reg_953[12 : 5] <= tmp_527_fu_641_p3[12 : 5];
        tmp_528_reg_958[12 : 5] <= tmp_528_fu_649_p3[12 : 5];
        tmp_529_reg_963[12 : 5] <= tmp_529_fu_657_p3[12 : 5];
        tmp_530_reg_968[12 : 5] <= tmp_530_fu_665_p3[12 : 5];
        tmp_531_reg_973[12 : 5] <= tmp_531_fu_673_p3[12 : 5];
        tmp_532_reg_978[12 : 5] <= tmp_532_fu_681_p3[12 : 5];
        tmp_533_reg_983[12 : 5] <= tmp_533_fu_689_p3[12 : 5];
        tmp_534_reg_988[12 : 5] <= tmp_534_fu_697_p3[12 : 5];
        tmp_535_reg_993[12 : 5] <= tmp_535_fu_705_p3[12 : 5];
        tmp_536_reg_998[12 : 5] <= tmp_536_fu_713_p3[12 : 5];
        tmp_537_reg_1003[12 : 5] <= tmp_537_fu_721_p3[12 : 5];
        tmp_538_reg_1008[12 : 5] <= tmp_538_fu_729_p3[12 : 5];
        tmp_539_reg_1013[12 : 5] <= tmp_539_fu_737_p3[12 : 5];
        tmp_s_reg_858[12 : 5] <= tmp_s_fu_489_p3[12 : 5];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_356_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_364_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_init_fu_275_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_299_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_364_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_364_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_275_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_275_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_275_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_275_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_275_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_275_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_275_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_275_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1023_ce = grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1023_ce = grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1023_ce = grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_ce;
    end else begin
        grp_fu_1023_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1023_p0 = grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1023_p0 = grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1023_p0 = grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_din0;
    end else begin
        grp_fu_1023_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1023_p1 = grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1023_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1023_p1 = grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1023_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1023_p1 = grp_viterbi_Pipeline_L_init_fu_275_grp_fu_1023_p_din1;
    end else begin
        grp_fu_1023_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1027_ce = grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1027_ce = grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1027_ce = grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_ce;
    end else begin
        grp_fu_1027_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1027_opcode = grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1027_opcode = grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1027_opcode = grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_opcode;
    end else begin
        grp_fu_1027_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1027_p0 = grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1027_p0 = grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1027_p0 = grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_din0;
    end else begin
        grp_fu_1027_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_1027_p1 = grp_viterbi_Pipeline_L_backtrack_fu_364_grp_fu_1027_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1027_p1 = grp_viterbi_Pipeline_L_end_fu_356_grp_fu_1027_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1027_p1 = grp_viterbi_Pipeline_L_curr_state_fu_299_grp_fu_1027_p_din1;
    end else begin
        grp_fu_1027_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_275_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_275_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_364_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_275_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_275_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_275_llike_address0;
    end else begin
        llike_address0 = 64'd4448;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address1 = grp_viterbi_Pipeline_L_backtrack_fu_364_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address1 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_275_llike_ce0;
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
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_364_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_275_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_299_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_275_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_424_p1;
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
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_address0;
    end else begin
        path_3_address0 = 64'd34;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_ce0;
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
        path_3_d0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_d0;
    end else begin
        path_3_d0 = grp_viterbi_Pipeline_L_end_fu_356_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        path_3_we0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_3_we0;
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
        transition_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_address0;
    end else begin
        transition_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_ce0;
    end else begin
        transition_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_address0;
    end else begin
        transition_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_ce0;
    end else begin
        transition_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_address0;
    end else begin
        transition_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_ce0;
    end else begin
        transition_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_address0;
    end else begin
        transition_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_ce0;
    end else begin
        transition_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_364_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_299_transition_3_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_275_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_408_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_viterbi_Pipeline_L_curr_state_fu_299_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_356_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
            if (((grp_viterbi_Pipeline_L_backtrack_fu_364_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
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
assign add_ln18_fu_432_p2 = (t_fu_172 + 8'd1);
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
assign empty_50_fu_446_p2 = ($signed(t_2_reg_782) + $signed(8'd255));
assign empty_51_fu_475_p1 = tmp_2_fu_451_p11[1:0];
assign empty_fu_391_p1 = obs_0_q0[1:0];
assign grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_364_ap_start_reg;
assign grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_299_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_356_ap_start = grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_275_ap_start = grp_viterbi_Pipeline_L_init_fu_275_ap_start_reg;
assign icmp_ln18_fu_408_p2 = ((t_fu_172 == 8'd140) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_275_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_275_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_275_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_275_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_275_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_275_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_275_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_275_init_3_ce0;
assign lshr_ln6_fu_414_p4 = {{t_fu_172[7:2]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_424_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_424_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_424_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign path_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_address0;
assign path_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_ce0;
assign path_0_d0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_d0;
assign path_0_we0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_0_we0;
assign path_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_address0;
assign path_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_ce0;
assign path_1_d0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_d0;
assign path_1_we0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_1_we0;
assign path_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_address0;
assign path_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_ce0;
assign path_2_d0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_d0;
assign path_2_we0 = grp_viterbi_Pipeline_L_backtrack_fu_364_path_2_we0;
assign tmp_2_fu_451_p10 = t_2_reg_782[1:0];
assign tmp_2_fu_451_p9 = 'bx;
assign tmp_509_fu_497_p3 = {{empty_50_reg_812}, {5'd1}};
assign tmp_510_fu_505_p3 = {{empty_50_reg_812}, {5'd2}};
assign tmp_511_fu_513_p3 = {{empty_50_reg_812}, {5'd3}};
assign tmp_512_fu_521_p3 = {{empty_50_reg_812}, {5'd4}};
assign tmp_513_fu_529_p3 = {{empty_50_reg_812}, {5'd5}};
assign tmp_514_fu_537_p3 = {{empty_50_reg_812}, {5'd6}};
assign tmp_515_fu_545_p3 = {{empty_50_reg_812}, {5'd7}};
assign tmp_516_fu_553_p3 = {{empty_50_reg_812}, {5'd8}};
assign tmp_517_fu_561_p3 = {{empty_50_reg_812}, {5'd9}};
assign tmp_518_fu_569_p3 = {{empty_50_reg_812}, {5'd10}};
assign tmp_519_fu_577_p3 = {{empty_50_reg_812}, {5'd11}};
assign tmp_520_fu_585_p3 = {{empty_50_reg_812}, {5'd12}};
assign tmp_521_fu_593_p3 = {{empty_50_reg_812}, {5'd13}};
assign tmp_522_fu_601_p3 = {{empty_50_reg_812}, {5'd14}};
assign tmp_523_fu_609_p3 = {{empty_50_reg_812}, {5'd15}};
assign tmp_524_fu_617_p3 = {{empty_50_reg_812}, {5'd16}};
assign tmp_525_fu_625_p3 = {{empty_50_reg_812}, {5'd17}};
assign tmp_526_fu_633_p3 = {{empty_50_reg_812}, {5'd18}};
assign tmp_527_fu_641_p3 = {{empty_50_reg_812}, {5'd19}};
assign tmp_528_fu_649_p3 = {{empty_50_reg_812}, {5'd20}};
assign tmp_529_fu_657_p3 = {{empty_50_reg_812}, {5'd21}};
assign tmp_530_fu_665_p3 = {{empty_50_reg_812}, {5'd22}};
assign tmp_531_fu_673_p3 = {{empty_50_reg_812}, {5'd23}};
assign tmp_532_fu_681_p3 = {{empty_50_reg_812}, {5'd24}};
assign tmp_533_fu_689_p3 = {{empty_50_reg_812}, {5'd25}};
assign tmp_534_fu_697_p3 = {{empty_50_reg_812}, {5'd26}};
assign tmp_535_fu_705_p3 = {{empty_50_reg_812}, {5'd27}};
assign tmp_536_fu_713_p3 = {{empty_50_reg_812}, {5'd28}};
assign tmp_537_fu_721_p3 = {{empty_50_reg_812}, {5'd29}};
assign tmp_538_fu_729_p3 = {{empty_50_reg_812}, {5'd30}};
assign tmp_539_fu_737_p3 = {{empty_50_reg_812}, {5'd31}};
assign tmp_s_fu_489_p3 = {{empty_50_reg_812}, {5'd0}};
assign zext_ln6_fu_424_p1 = lshr_ln6_fu_414_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_858[4:0] <= 5'b00000;
    tmp_509_reg_863[4:0] <= 5'b00001;
    tmp_510_reg_868[4:0] <= 5'b00010;
    tmp_511_reg_873[4:0] <= 5'b00011;
    tmp_512_reg_878[4:0] <= 5'b00100;
    tmp_513_reg_883[4:0] <= 5'b00101;
    tmp_514_reg_888[4:0] <= 5'b00110;
    tmp_515_reg_893[4:0] <= 5'b00111;
    tmp_516_reg_898[4:0] <= 5'b01000;
    tmp_517_reg_903[4:0] <= 5'b01001;
    tmp_518_reg_908[4:0] <= 5'b01010;
    tmp_519_reg_913[4:0] <= 5'b01011;
    tmp_520_reg_918[4:0] <= 5'b01100;
    tmp_521_reg_923[4:0] <= 5'b01101;
    tmp_522_reg_928[4:0] <= 5'b01110;
    tmp_523_reg_933[4:0] <= 5'b01111;
    tmp_524_reg_938[4:0] <= 5'b10000;
    tmp_525_reg_943[4:0] <= 5'b10001;
    tmp_526_reg_948[4:0] <= 5'b10010;
    tmp_527_reg_953[4:0] <= 5'b10011;
    tmp_528_reg_958[4:0] <= 5'b10100;
    tmp_529_reg_963[4:0] <= 5'b10101;
    tmp_530_reg_968[4:0] <= 5'b10110;
    tmp_531_reg_973[4:0] <= 5'b10111;
    tmp_532_reg_978[4:0] <= 5'b11000;
    tmp_533_reg_983[4:0] <= 5'b11001;
    tmp_534_reg_988[4:0] <= 5'b11010;
    tmp_535_reg_993[4:0] <= 5'b11011;
    tmp_536_reg_998[4:0] <= 5'b11100;
    tmp_537_reg_1003[4:0] <= 5'b11101;
    tmp_538_reg_1008[4:0] <= 5'b11110;
    tmp_539_reg_1013[4:0] <= 5'b11111;
end
endmodule 