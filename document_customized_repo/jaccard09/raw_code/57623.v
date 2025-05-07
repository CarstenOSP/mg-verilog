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
reg   [63:0] reg_518;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
wire   [1:0] empty_fu_529_p1;
reg   [1:0] empty_reg_961;
wire    ap_CS_fsm_state2;
reg   [5:0] conv3_udiv_reg_966;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_976;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_37_fu_589_p2;
reg   [7:0] empty_37_reg_1013;
wire    ap_CS_fsm_state6;
wire   [1:0] empty_38_fu_618_p1;
reg   [1:0] empty_38_reg_1033;
reg   [5:0] conv32_udiv_reg_1038;
wire   [11:0] tmp_s_fu_632_p3;
reg   [11:0] tmp_s_reg_1043;
wire    ap_CS_fsm_state7;
wire   [11:0] tmp_273_fu_640_p3;
reg   [11:0] tmp_273_reg_1048;
wire   [11:0] tmp_274_fu_648_p3;
reg   [11:0] tmp_274_reg_1053;
wire   [11:0] tmp_275_fu_656_p3;
reg   [11:0] tmp_275_reg_1058;
wire   [11:0] tmp_276_fu_664_p3;
reg   [11:0] tmp_276_reg_1063;
wire   [11:0] tmp_277_fu_672_p3;
reg   [11:0] tmp_277_reg_1068;
wire   [11:0] tmp_278_fu_680_p3;
reg   [11:0] tmp_278_reg_1073;
wire   [11:0] tmp_279_fu_688_p3;
reg   [11:0] tmp_279_reg_1078;
wire   [11:0] tmp_280_fu_696_p3;
reg   [11:0] tmp_280_reg_1083;
wire   [11:0] tmp_281_fu_704_p3;
reg   [11:0] tmp_281_reg_1088;
wire   [11:0] tmp_282_fu_712_p3;
reg   [11:0] tmp_282_reg_1093;
wire   [11:0] tmp_283_fu_720_p3;
reg   [11:0] tmp_283_reg_1098;
wire   [11:0] tmp_284_fu_728_p3;
reg   [11:0] tmp_284_reg_1103;
wire   [11:0] tmp_285_fu_736_p3;
reg   [11:0] tmp_285_reg_1108;
wire   [11:0] tmp_286_fu_744_p3;
reg   [11:0] tmp_286_reg_1113;
wire   [11:0] tmp_287_fu_752_p3;
reg   [11:0] tmp_287_reg_1118;
wire   [7:0] trunc_ln50_fu_775_p1;
reg   [7:0] trunc_ln50_reg_1129;
wire    ap_CS_fsm_state13;
wire   [11:0] tmp_288_fu_803_p3;
reg   [11:0] tmp_288_reg_1155;
wire    ap_CS_fsm_state14;
wire   [1:0] trunc_ln50_1_fu_815_p1;
reg   [1:0] trunc_ln50_1_reg_1165;
wire   [1:0] trunc_ln52_fu_842_p1;
reg   [1:0] trunc_ln52_reg_1169;
wire   [5:0] lshr_ln52_1_fu_846_p4;
reg   [5:0] lshr_ln52_1_reg_1175;
wire   [63:0] tmp_68_fu_880_p11;
reg   [63:0] tmp_68_reg_1200;
wire   [63:0] grp_fu_514_p2;
reg   [63:0] min_p_216_reg_1205;
wire    ap_CS_fsm_state23;
reg   [11:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [11:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg   [11:0] llike_1_address1;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
reg   [11:0] llike_2_address0;
reg    llike_2_ce0;
reg    llike_2_we0;
reg   [63:0] llike_2_d0;
wire   [63:0] llike_2_q0;
reg   [11:0] llike_2_address1;
reg    llike_2_ce1;
wire   [63:0] llike_2_q1;
reg   [11:0] llike_3_address0;
reg    llike_3_ce0;
reg    llike_3_we0;
reg   [63:0] llike_3_d0;
wire   [63:0] llike_3_q0;
reg   [11:0] llike_3_address1;
reg    llike_3_ce1;
wire   [63:0] llike_3_q1;
wire    grp_viterbi_Pipeline_L_init_fu_413_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_413_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_413_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_413_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_413_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_413_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_1_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_413_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_2_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_413_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_413_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_llike_3_d0;
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
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_d0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_d0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_d0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_d0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_emission_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_emission_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_emission_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_439_emission_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_482_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_482_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_482_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_482_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_482_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_482_llike_1_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_482_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_482_llike_2_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_482_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_482_llike_3_address1;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_482_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_482_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_482_min_s_8_out;
wire    grp_viterbi_Pipeline_L_end_fu_482_min_s_8_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_492_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_492_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_492_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_492_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_492_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_492_llike_1_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_492_llike_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_492_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_492_llike_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_492_llike_2_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_492_llike_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_492_llike_2_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_492_llike_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_492_llike_3_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_492_llike_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_492_llike_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_492_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_492_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_492_transition_0_address1;
wire    grp_viterbi_Pipeline_L_state_fu_492_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_492_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_492_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_492_transition_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_492_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_492_transition_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_492_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_492_transition_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_492_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_492_transition_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_492_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_492_transition_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_492_transition_3_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_492_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_492_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_492_min_s_18_out;
wire    grp_viterbi_Pipeline_L_state_fu_492_min_s_18_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg   [7:0] min_s_8_loc_fu_164;
reg    grp_viterbi_Pipeline_L_state_fu_492_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
reg   [7:0] min_s_18_loc_fu_160;
wire   [63:0] zext_ln6_fu_562_p1;
wire   [0:0] icmp_ln18_fu_546_p2;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln52_fu_795_p1;
wire   [0:0] tmp_fu_767_p3;
wire   [63:0] zext_ln52_2_fu_810_p1;
wire   [63:0] zext_ln52_1_fu_856_p1;
wire   [63:0] zext_ln6_1_fu_912_p1;
wire    ap_CS_fsm_state26;
reg   [7:0] t_fu_156;
wire   [7:0] add_ln18_fu_570_p2;
reg   [8:0] t_1_fu_184;
wire   [8:0] add_ln50_fu_927_p2;
reg    obs_0_ce0_local;
reg   [5:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    obs_2_ce0_local;
reg    obs_3_ce0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
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
reg   [63:0] grp_fu_514_p0;
reg   [63:0] grp_fu_514_p1;
wire    ap_CS_fsm_state16;
wire   [5:0] lshr_ln6_fu_552_p4;
wire   [7:0] tmp_2_fu_594_p9;
wire   [1:0] tmp_2_fu_594_p10;
wire   [7:0] tmp_2_fu_594_p11;
wire   [7:0] add_ln52_fu_779_p2;
wire   [5:0] lshr_ln_fu_785_p4;
wire   [7:0] tmp_67_fu_818_p9;
wire   [1:0] tmp_67_fu_818_p10;
wire   [7:0] tmp_67_fu_818_p11;
wire   [63:0] tmp_68_fu_880_p2;
wire   [63:0] tmp_68_fu_880_p4;
wire   [63:0] tmp_68_fu_880_p6;
wire   [63:0] tmp_68_fu_880_p8;
wire   [63:0] tmp_68_fu_880_p9;
wire   [5:0] lshr_ln6_1_fu_903_p4;
reg    grp_fu_514_ce;
wire   [0:0] grp_fu_1210_p2;
reg   [63:0] grp_fu_1210_p0;
reg   [63:0] grp_fu_1210_p1;
reg    grp_fu_1210_ce;
reg   [4:0] grp_fu_1210_opcode;
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
wire   [1:0] tmp_2_fu_594_p1;
wire   [1:0] tmp_2_fu_594_p3;
wire  signed [1:0] tmp_2_fu_594_p5;
wire  signed [1:0] tmp_2_fu_594_p7;
wire  signed [1:0] tmp_67_fu_818_p1;
wire   [1:0] tmp_67_fu_818_p3;
wire   [1:0] tmp_67_fu_818_p5;
wire  signed [1:0] tmp_67_fu_818_p7;
wire   [1:0] tmp_68_fu_880_p1;
wire   [1:0] tmp_68_fu_880_p3;
wire  signed [1:0] tmp_68_fu_880_p5;
wire  signed [1:0] tmp_68_fu_880_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_492_ap_start_reg = 1'b0;
#0 t_fu_156 = 8'd0;
#0 t_1_fu_184 = 9'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_413(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_413_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_413_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_413_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_413_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_413_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_413_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_413_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_413_llike_3_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_413_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_413_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_413_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_413_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_413_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_413_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_413_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_413_init_3_ce0),.init_3_q0(init_3_q0),.conv3_udiv_cast(conv3_udiv_reg_966),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_413_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_413_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_413_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_413_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_413_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_413_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_413_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_413_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_reg_961),.grp_fu_514_p_din0(grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_din0),.grp_fu_514_p_din1(grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_din1),.grp_fu_514_p_opcode(grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_opcode),.grp_fu_514_p_dout0(grp_fu_514_p2),.grp_fu_514_p_ce(grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_439(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_439_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_439_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_439_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_ce1),.llike_q1(llike_q1),.empty_8(tmp_s_reg_1043),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_d0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_d0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_ce1),.llike_3_q1(llike_3_q1),.empty_9(tmp_273_reg_1048),.empty_10(tmp_274_reg_1053),.empty_11(tmp_275_reg_1058),.empty_12(tmp_276_reg_1063),.empty_13(tmp_277_reg_1068),.empty_14(tmp_278_reg_1073),.empty_15(tmp_279_reg_1078),.empty_16(tmp_280_reg_1083),.empty_17(tmp_281_reg_1088),.empty_18(tmp_282_reg_1093),.empty_19(tmp_283_reg_1098),.empty_20(tmp_284_reg_1103),.empty_21(tmp_285_reg_1108),.empty_22(tmp_286_reg_1113),.empty_23(tmp_287_reg_1118),.t(t_2_reg_976),.transition_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_ce1),.transition_3_q1(transition_3_q1),.conv32_udiv_cast(conv32_udiv_reg_1038),.emission_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_439_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_439_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_38_reg_1033),.grp_fu_514_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_din0),.grp_fu_514_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_din1),.grp_fu_514_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_opcode),.grp_fu_514_p_dout0(grp_fu_514_p2),.grp_fu_514_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_ce),.grp_fu_1210_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_din0),.grp_fu_1210_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_din1),.grp_fu_1210_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_opcode),.grp_fu_1210_p_dout0(grp_fu_1210_p2),.grp_fu_1210_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_482(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_482_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_482_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_482_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_482_ap_ready),.min_p(reg_518),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_end_fu_482_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_address0(grp_viterbi_Pipeline_L_end_fu_482_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_482_llike_ce0),.llike_q0(llike_q0),.min_s_8_out(grp_viterbi_Pipeline_L_end_fu_482_min_s_8_out),.min_s_8_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_482_min_s_8_out_ap_vld),.grp_fu_1210_p_din0(grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_din0),.grp_fu_1210_p_din1(grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_din1),.grp_fu_1210_p_opcode(grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_opcode),.grp_fu_1210_p_dout0(grp_fu_1210_p2),.grp_fu_1210_p_ce(grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_492(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_492_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_492_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_492_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_492_ap_ready),.min_p_145(min_p_216_reg_1205),.t_1(trunc_ln50_reg_1129),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_492_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_492_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_state_fu_492_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_state_fu_492_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_state_fu_492_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_state_fu_492_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_state_fu_492_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_state_fu_492_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_state_fu_492_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_state_fu_492_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_state_fu_492_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_state_fu_492_llike_3_ce1),.llike_3_q1(llike_3_q1),.zext_ln52_2(lshr_ln52_1_reg_1175),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_492_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_492_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_state_fu_492_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_state_fu_492_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_492_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_492_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_state_fu_492_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_state_fu_492_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_state_fu_492_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_state_fu_492_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_state_fu_492_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_state_fu_492_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_state_fu_492_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_state_fu_492_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_state_fu_492_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_state_fu_492_transition_3_ce1),.transition_3_q1(transition_3_q1),.empty(trunc_ln52_reg_1169),.llike_address0(grp_viterbi_Pipeline_L_state_fu_492_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_492_llike_ce0),.llike_q0(llike_q0),.zext_ln52_3(tmp_288_reg_1155),.min_s_18_out(grp_viterbi_Pipeline_L_state_fu_492_min_s_18_out),.min_s_18_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_492_min_s_18_out_ap_vld),.grp_fu_514_p_din0(grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_din0),.grp_fu_514_p_din1(grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_din1),.grp_fu_514_p_opcode(grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_opcode),.grp_fu_514_p_dout0(grp_fu_514_p2),.grp_fu_514_p_ce(grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_ce),.grp_fu_1210_p_din0(grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_din0),.grp_fu_1210_p_din1(grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_din1),.grp_fu_1210_p_opcode(grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_opcode),.grp_fu_1210_p_dout0(grp_fu_1210_p2),.grp_fu_1210_p_ce(grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U153(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_514_p0),.din1(grp_fu_514_p1),.ce(grp_fu_514_ce),.dout(grp_fu_514_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U154(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.def(tmp_2_fu_594_p9),.sel(tmp_2_fu_594_p10),.dout(tmp_2_fu_594_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U155(.din0(path_0_q0),.din1(path_1_q0),.din2(path_2_q0),.din3(path_3_q0),.def(tmp_67_fu_818_p9),.sel(tmp_67_fu_818_p10),.dout(tmp_67_fu_818_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U156(.din0(tmp_68_fu_880_p2),.din1(tmp_68_fu_880_p4),.din2(tmp_68_fu_880_p6),.din3(tmp_68_fu_880_p8),.def(tmp_68_fu_880_p9),.sel(trunc_ln52_reg_1169),.dout(tmp_68_fu_880_p11));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U157(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1210_p0),.din1(grp_fu_1210_p1),.ce(grp_fu_1210_ce),.opcode(grp_fu_1210_opcode),.dout(grp_fu_1210_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_439_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start_reg <= 1'b0;
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
        grp_viterbi_Pipeline_L_state_fu_492_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_viterbi_Pipeline_L_state_fu_492_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_492_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_492_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_546_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_184 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        t_1_fu_184 <= add_ln50_fu_927_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_156 <= 8'd1;
    end else if (((icmp_ln18_fu_546_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_156 <= add_ln18_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_reg_1038 <= {{tmp_2_fu_594_p11[7:2]}};
        empty_37_reg_1013 <= empty_37_fu_589_p2;
        empty_38_reg_1033 <= empty_38_fu_618_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_966 <= {{obs_0_q0[7:2]}};
        empty_reg_961 <= empty_fu_529_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        lshr_ln52_1_reg_1175 <= {{tmp_67_fu_818_p11[7:2]}};
        tmp_288_reg_1155[11 : 4] <= tmp_288_fu_803_p3[11 : 4];
        trunc_ln50_1_reg_1165 <= trunc_ln50_1_fu_815_p1;
        trunc_ln52_reg_1169 <= trunc_ln52_fu_842_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        min_p_216_reg_1205 <= grp_fu_514_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_492_min_s_18_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
        min_s_18_loc_fu_160 <= grp_viterbi_Pipeline_L_state_fu_492_min_s_18_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_482_min_s_8_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        min_s_8_loc_fu_164 <= grp_viterbi_Pipeline_L_end_fu_482_min_s_8_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_518 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_976 <= t_fu_156;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_273_reg_1048[11 : 4] <= tmp_273_fu_640_p3[11 : 4];
        tmp_274_reg_1053[11 : 4] <= tmp_274_fu_648_p3[11 : 4];
        tmp_275_reg_1058[11 : 4] <= tmp_275_fu_656_p3[11 : 4];
        tmp_276_reg_1063[11 : 4] <= tmp_276_fu_664_p3[11 : 4];
        tmp_277_reg_1068[11 : 4] <= tmp_277_fu_672_p3[11 : 4];
        tmp_278_reg_1073[11 : 4] <= tmp_278_fu_680_p3[11 : 4];
        tmp_279_reg_1078[11 : 4] <= tmp_279_fu_688_p3[11 : 4];
        tmp_280_reg_1083[11 : 4] <= tmp_280_fu_696_p3[11 : 4];
        tmp_281_reg_1088[11 : 4] <= tmp_281_fu_704_p3[11 : 4];
        tmp_282_reg_1093[11 : 4] <= tmp_282_fu_712_p3[11 : 4];
        tmp_283_reg_1098[11 : 4] <= tmp_283_fu_720_p3[11 : 4];
        tmp_284_reg_1103[11 : 4] <= tmp_284_fu_728_p3[11 : 4];
        tmp_285_reg_1108[11 : 4] <= tmp_285_fu_736_p3[11 : 4];
        tmp_286_reg_1113[11 : 4] <= tmp_286_fu_744_p3[11 : 4];
        tmp_287_reg_1118[11 : 4] <= tmp_287_fu_752_p3[11 : 4];
        tmp_s_reg_1043[11 : 4] <= tmp_s_fu_632_p3[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_68_reg_1200 <= tmp_68_fu_880_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        trunc_ln50_reg_1129 <= trunc_ln50_fu_775_p1;
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
    if ((grp_viterbi_Pipeline_L_state_fu_492_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_curr_state_fu_439_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_767_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
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
    if (((tmp_fu_767_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_413_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_413_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_413_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_413_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_413_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_413_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_413_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_413_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1210_ce = grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1210_ce = grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1210_ce = grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_ce;
    end else begin
        grp_fu_1210_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1210_opcode = grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1210_opcode = grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1210_opcode = grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_opcode;
    end else begin
        grp_fu_1210_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1210_p0 = grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1210_p0 = grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1210_p0 = grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_din0;
    end else begin
        grp_fu_1210_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1210_p1 = grp_viterbi_Pipeline_L_state_fu_492_grp_fu_1210_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1210_p1 = grp_viterbi_Pipeline_L_end_fu_482_grp_fu_1210_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1210_p1 = grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_1210_p_din1;
    end else begin
        grp_fu_1210_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_514_ce = grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_514_ce = grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_514_ce = grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_ce;
    end else begin
        grp_fu_514_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_514_p0 = grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_514_p0 = grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_514_p0 = grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_514_p0 = reg_518;
    end else begin
        grp_fu_514_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_514_p1 = grp_viterbi_Pipeline_L_state_fu_492_grp_fu_514_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_514_p1 = grp_viterbi_Pipeline_L_curr_state_fu_439_grp_fu_514_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_514_p1 = grp_viterbi_Pipeline_L_init_fu_413_grp_fu_514_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_514_p1 = tmp_68_reg_1200;
    end else begin
        grp_fu_514_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_492_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_state_fu_492_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_492_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_state_fu_492_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_state_fu_492_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_2_address0;
    end else begin
        llike_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_state_fu_492_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_address1;
    end else begin
        llike_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_state_fu_492_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_2_ce0;
    end else begin
        llike_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_state_fu_492_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_2_d0;
    end else begin
        llike_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_2_we0;
    end else begin
        llike_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_state_fu_492_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_3_address0;
    end else begin
        llike_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_state_fu_492_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_end_fu_482_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_address1;
    end else begin
        llike_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_state_fu_492_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_413_llike_3_ce0;
    end else begin
        llike_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_state_fu_492_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_end_fu_482_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_3_d0;
    end else begin
        llike_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_3_we0;
    end else begin
        llike_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_492_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_482_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_413_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0_local = zext_ln52_2_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd2224;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_492_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_482_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_ce0;
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
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_413_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_439_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_413_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_562_p1;
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
        path_0_address0_local = zext_ln6_1_fu_912_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_0_address0_local = zext_ln52_fu_795_p1;
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
    if (((trunc_ln50_1_reg_1165 == 2'd0) & (1'b1 == ap_CS_fsm_state26))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_1_address0_local = zext_ln6_1_fu_912_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_1_address0_local = zext_ln52_fu_795_p1;
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
    if (((trunc_ln50_1_reg_1165 == 2'd1) & (1'b1 == ap_CS_fsm_state26))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_2_address0_local = zext_ln6_1_fu_912_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_2_address0_local = zext_ln52_fu_795_p1;
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
    if (((trunc_ln50_1_reg_1165 == 2'd2) & (1'b1 == ap_CS_fsm_state26))) begin
        path_2_we0_local = 1'b1;
    end else begin
        path_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_3_address0_local = zext_ln6_1_fu_912_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_3_address0_local = zext_ln52_fu_795_p1;
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
        path_3_d0_local = min_s_18_loc_fu_160;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_d0_local = min_s_8_loc_fu_164;
    end else begin
        path_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((trunc_ln50_1_reg_1165 == 2'd3) & (1'b1 == ap_CS_fsm_state26)))) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_492_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln52_1_fu_856_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_state_fu_492_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_492_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_ce0;
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
        transition_0_ce1 = grp_viterbi_Pipeline_L_state_fu_492_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_492_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln52_1_fu_856_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_state_fu_492_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_492_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_ce0;
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
        transition_1_ce1 = grp_viterbi_Pipeline_L_state_fu_492_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_state_fu_492_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_address0;
    end else begin
        transition_2_address0 = zext_ln52_1_fu_856_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_state_fu_492_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_state_fu_492_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_ce0;
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
        transition_2_ce1 = grp_viterbi_Pipeline_L_state_fu_492_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_state_fu_492_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_address0;
    end else begin
        transition_3_address0 = zext_ln52_1_fu_856_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_state_fu_492_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_state_fu_492_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_ce0;
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
        transition_3_ce1 = grp_viterbi_Pipeline_L_state_fu_492_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_439_transition_3_ce1;
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
            if (((icmp_ln18_fu_546_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_viterbi_Pipeline_L_curr_state_fu_439_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
            if (((tmp_fu_767_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_viterbi_Pipeline_L_state_fu_492_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
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
assign add_ln18_fu_570_p2 = (t_fu_156 + 8'd1);
assign add_ln50_fu_927_p2 = ($signed(t_1_fu_184) + $signed(9'd511));
assign add_ln52_fu_779_p2 = (trunc_ln50_fu_775_p1 + 8'd1);
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
assign empty_37_fu_589_p2 = ($signed(t_2_reg_976) + $signed(8'd255));
assign empty_38_fu_618_p1 = tmp_2_fu_594_p11[1:0];
assign empty_fu_529_p1 = obs_0_q0[1:0];
assign grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_439_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_482_ap_start = grp_viterbi_Pipeline_L_end_fu_482_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_413_ap_start = grp_viterbi_Pipeline_L_init_fu_413_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_492_ap_start = grp_viterbi_Pipeline_L_state_fu_492_ap_start_reg;
assign icmp_ln18_fu_546_p2 = ((t_fu_156 == 8'd140) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_413_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_413_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_413_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_413_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_413_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_413_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_413_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_413_init_3_ce0;
assign lshr_ln52_1_fu_846_p4 = {{tmp_67_fu_818_p11[7:2]}};
assign lshr_ln6_1_fu_903_p4 = {{t_1_fu_184[7:2]}};
assign lshr_ln6_fu_552_p4 = {{t_fu_156[7:2]}};
assign lshr_ln_fu_785_p4 = {{add_ln52_fu_779_p2[7:2]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_562_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_562_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_562_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_18_loc_fu_160;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = min_s_18_loc_fu_160;
assign path_1_we0 = path_1_we0_local;
assign path_2_address0 = path_2_address0_local;
assign path_2_ce0 = path_2_ce0_local;
assign path_2_d0 = min_s_18_loc_fu_160;
assign path_2_we0 = path_2_we0_local;
assign path_3_address0 = path_3_address0_local;
assign path_3_ce0 = path_3_ce0_local;
assign path_3_d0 = path_3_d0_local;
assign path_3_we0 = path_3_we0_local;
assign tmp_273_fu_640_p3 = {{empty_37_reg_1013}, {4'd1}};
assign tmp_274_fu_648_p3 = {{empty_37_reg_1013}, {4'd2}};
assign tmp_275_fu_656_p3 = {{empty_37_reg_1013}, {4'd3}};
assign tmp_276_fu_664_p3 = {{empty_37_reg_1013}, {4'd4}};
assign tmp_277_fu_672_p3 = {{empty_37_reg_1013}, {4'd5}};
assign tmp_278_fu_680_p3 = {{empty_37_reg_1013}, {4'd6}};
assign tmp_279_fu_688_p3 = {{empty_37_reg_1013}, {4'd7}};
assign tmp_280_fu_696_p3 = {{empty_37_reg_1013}, {4'd8}};
assign tmp_281_fu_704_p3 = {{empty_37_reg_1013}, {4'd9}};
assign tmp_282_fu_712_p3 = {{empty_37_reg_1013}, {4'd10}};
assign tmp_283_fu_720_p3 = {{empty_37_reg_1013}, {4'd11}};
assign tmp_284_fu_728_p3 = {{empty_37_reg_1013}, {4'd12}};
assign tmp_285_fu_736_p3 = {{empty_37_reg_1013}, {4'd13}};
assign tmp_286_fu_744_p3 = {{empty_37_reg_1013}, {4'd14}};
assign tmp_287_fu_752_p3 = {{empty_37_reg_1013}, {4'd15}};
assign tmp_288_fu_803_p3 = {{trunc_ln50_reg_1129}, {4'd0}};
assign tmp_2_fu_594_p10 = t_2_reg_976[1:0];
assign tmp_2_fu_594_p9 = 'bx;
assign tmp_67_fu_818_p10 = t_1_fu_184[1:0];
assign tmp_67_fu_818_p9 = 'bx;
assign tmp_68_fu_880_p2 = transition_0_q0;
assign tmp_68_fu_880_p4 = transition_1_q0;
assign tmp_68_fu_880_p6 = transition_2_q0;
assign tmp_68_fu_880_p8 = transition_3_q0;
assign tmp_68_fu_880_p9 = 'bx;
assign tmp_fu_767_p3 = t_1_fu_184[32'd8];
assign tmp_s_fu_632_p3 = {{empty_37_reg_1013}, {4'd0}};
assign trunc_ln50_1_fu_815_p1 = t_1_fu_184[1:0];
assign trunc_ln50_fu_775_p1 = t_1_fu_184[7:0];
assign trunc_ln52_fu_842_p1 = tmp_67_fu_818_p11[1:0];
assign zext_ln52_1_fu_856_p1 = lshr_ln52_1_fu_846_p4;
assign zext_ln52_2_fu_810_p1 = tmp_288_fu_803_p3;
assign zext_ln52_fu_795_p1 = lshr_ln_fu_785_p4;
assign zext_ln6_1_fu_912_p1 = lshr_ln6_1_fu_903_p4;
assign zext_ln6_fu_562_p1 = lshr_ln6_fu_552_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_1043[3:0] <= 4'b0000;
    tmp_273_reg_1048[3:0] <= 4'b0001;
    tmp_274_reg_1053[3:0] <= 4'b0010;
    tmp_275_reg_1058[3:0] <= 4'b0011;
    tmp_276_reg_1063[3:0] <= 4'b0100;
    tmp_277_reg_1068[3:0] <= 4'b0101;
    tmp_278_reg_1073[3:0] <= 4'b0110;
    tmp_279_reg_1078[3:0] <= 4'b0111;
    tmp_280_reg_1083[3:0] <= 4'b1000;
    tmp_281_reg_1088[3:0] <= 4'b1001;
    tmp_282_reg_1093[3:0] <= 4'b1010;
    tmp_283_reg_1098[3:0] <= 4'b1011;
    tmp_284_reg_1103[3:0] <= 4'b1100;
    tmp_285_reg_1108[3:0] <= 4'b1101;
    tmp_286_reg_1113[3:0] <= 4'b1110;
    tmp_287_reg_1118[3:0] <= 4'b1111;
    tmp_288_reg_1155[3:0] <= 4'b0000;
end
endmodule 