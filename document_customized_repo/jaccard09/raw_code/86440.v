module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,obs_4_address0,obs_4_ce0,obs_4_q0,obs_5_address0,obs_5_ce0,obs_5_q0,obs_6_address0,obs_6_ce0,obs_6_q0,obs_7_address0,obs_7_ce0,obs_7_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,init_4_address0,init_4_ce0,init_4_q0,init_5_address0,init_5_ce0,init_5_q0,init_6_address0,init_6_ce0,init_6_q0,init_7_address0,init_7_ce0,init_7_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,emission_4_address0,emission_4_ce0,emission_4_q0,emission_5_address0,emission_5_ce0,emission_5_q0,emission_6_address0,emission_6_ce0,emission_6_q0,emission_7_address0,emission_7_ce0,emission_7_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,path_4_address0,path_4_ce0,path_4_we0,path_4_d0,path_4_q0,path_5_address0,path_5_ce0,path_5_we0,path_5_d0,path_5_q0,path_6_address0,path_6_ce0,path_6_we0,path_6_d0,path_6_q0,path_7_address0,path_7_ce0,path_7_we0,path_7_d0,path_7_q0,ap_return); 
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
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_794;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
wire   [2:0] empty_fu_805_p1;
reg   [2:0] empty_reg_1321;
wire    ap_CS_fsm_state2;
reg   [4:0] conv3_udiv_reg_1326;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_1336;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_37_fu_869_p2;
reg   [7:0] empty_37_reg_1393;
wire    ap_CS_fsm_state6;
wire   [2:0] empty_38_fu_914_p1;
reg   [2:0] empty_38_reg_1413;
reg   [4:0] conv32_udiv_reg_1418;
wire   [11:0] tmp_s_fu_928_p3;
reg   [11:0] tmp_s_reg_1423;
wire    ap_CS_fsm_state7;
wire   [11:0] tmp_273_fu_936_p3;
reg   [11:0] tmp_273_reg_1428;
wire   [11:0] tmp_274_fu_944_p3;
reg   [11:0] tmp_274_reg_1433;
wire   [11:0] tmp_275_fu_952_p3;
reg   [11:0] tmp_275_reg_1438;
wire   [11:0] tmp_276_fu_960_p3;
reg   [11:0] tmp_276_reg_1443;
wire   [11:0] tmp_277_fu_968_p3;
reg   [11:0] tmp_277_reg_1448;
wire   [11:0] tmp_278_fu_976_p3;
reg   [11:0] tmp_278_reg_1453;
wire   [11:0] tmp_279_fu_984_p3;
reg   [11:0] tmp_279_reg_1458;
wire   [11:0] tmp_280_fu_992_p3;
reg   [11:0] tmp_280_reg_1463;
wire   [11:0] tmp_281_fu_1000_p3;
reg   [11:0] tmp_281_reg_1468;
wire   [11:0] tmp_282_fu_1008_p3;
reg   [11:0] tmp_282_reg_1473;
wire   [11:0] tmp_283_fu_1016_p3;
reg   [11:0] tmp_283_reg_1478;
wire   [11:0] tmp_284_fu_1024_p3;
reg   [11:0] tmp_284_reg_1483;
wire   [11:0] tmp_285_fu_1032_p3;
reg   [11:0] tmp_285_reg_1488;
wire   [11:0] tmp_286_fu_1040_p3;
reg   [11:0] tmp_286_reg_1493;
wire   [11:0] tmp_287_fu_1048_p3;
reg   [11:0] tmp_287_reg_1498;
wire   [7:0] trunc_ln50_fu_1071_p1;
reg   [7:0] trunc_ln50_reg_1509;
wire    ap_CS_fsm_state13;
wire   [11:0] tmp_288_fu_1103_p3;
reg   [11:0] tmp_288_reg_1555;
wire    ap_CS_fsm_state14;
wire   [2:0] trunc_ln50_1_fu_1115_p1;
reg   [2:0] trunc_ln50_1_reg_1565;
wire   [2:0] trunc_ln52_fu_1158_p1;
reg   [2:0] trunc_ln52_reg_1569;
wire   [4:0] lshr_ln52_1_fu_1162_p4;
reg   [4:0] lshr_ln52_1_reg_1575;
wire   [63:0] tmp_68_fu_1216_p19;
reg   [63:0] tmp_68_reg_1620;
wire   [63:0] grp_fu_790_p2;
reg   [63:0] min_p_216_reg_1625;
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
wire    grp_viterbi_Pipeline_L_init_fu_649_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_649_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_649_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_649_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_649_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_649_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_649_llike_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_649_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_649_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_649_llike_1_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_649_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_649_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_649_llike_2_d0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_649_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_649_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_649_llike_3_d0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_649_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_init_0_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_649_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_init_1_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_649_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_init_2_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_649_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_init_3_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_649_init_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_init_4_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_649_init_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_init_5_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_649_init_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_init_6_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_649_init_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_init_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_649_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_emission_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_649_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_emission_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_649_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_emission_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_649_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_emission_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_649_emission_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_emission_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_649_emission_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_emission_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_649_emission_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_emission_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_649_emission_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_649_emission_7_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_d0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_d0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_d0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_d0;
wire   [11:0] grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_emission_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_emission_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_emission_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_emission_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_emission_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_emission_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_emission_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_emission_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_emission_4_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_emission_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_emission_5_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_emission_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_emission_6_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_emission_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_curr_state_fu_691_emission_7_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_emission_7_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_750_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_750_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_750_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_750_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_750_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_750_llike_1_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_750_llike_1_address1;
wire    grp_viterbi_Pipeline_L_end_fu_750_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_750_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_750_llike_2_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_750_llike_2_address1;
wire    grp_viterbi_Pipeline_L_end_fu_750_llike_2_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_750_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_750_llike_3_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_750_llike_3_address1;
wire    grp_viterbi_Pipeline_L_end_fu_750_llike_3_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_end_fu_750_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_750_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_750_min_s_8_out;
wire    grp_viterbi_Pipeline_L_end_fu_750_min_s_8_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_760_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_760_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_760_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_760_ap_ready;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_760_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_llike_1_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_760_llike_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_llike_1_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_760_llike_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_llike_2_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_760_llike_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_llike_2_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_760_llike_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_llike_3_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_760_llike_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_llike_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_0_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_4_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_4_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_5_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_5_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_6_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_6_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_7_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_760_transition_7_address1;
wire    grp_viterbi_Pipeline_L_state_fu_760_transition_7_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_760_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_760_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_760_min_s_18_out;
wire    grp_viterbi_Pipeline_L_state_fu_760_min_s_18_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_649_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_750_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg   [7:0] min_s_8_loc_fu_212;
reg    grp_viterbi_Pipeline_L_state_fu_760_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
reg   [7:0] min_s_18_loc_fu_208;
wire   [63:0] zext_ln6_fu_838_p1;
wire   [0:0] icmp_ln18_fu_822_p2;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln52_fu_1091_p1;
wire   [0:0] tmp_fu_1063_p3;
wire   [63:0] zext_ln52_2_fu_1110_p1;
wire   [63:0] zext_ln52_1_fu_1172_p1;
wire   [63:0] zext_ln6_1_fu_1264_p1;
wire    ap_CS_fsm_state26;
reg   [7:0] t_fu_204;
wire   [7:0] add_ln18_fu_850_p2;
reg   [8:0] t_1_fu_232;
wire   [8:0] add_ln50_fu_1287_p2;
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
reg   [11:0] llike_address0_local;
reg    path_3_we0_local;
reg   [7:0] path_3_d0_local;
reg    path_3_ce0_local;
reg   [4:0] path_3_address0_local;
reg    path_0_ce0_local;
reg   [4:0] path_0_address0_local;
reg    path_0_we0_local;
reg    path_1_ce0_local;
reg   [4:0] path_1_address0_local;
reg    path_1_we0_local;
reg    path_2_ce0_local;
reg   [4:0] path_2_address0_local;
reg    path_2_we0_local;
reg    path_4_ce0_local;
reg   [4:0] path_4_address0_local;
reg    path_4_we0_local;
reg    path_5_ce0_local;
reg   [4:0] path_5_address0_local;
reg    path_5_we0_local;
reg    path_6_ce0_local;
reg   [4:0] path_6_address0_local;
reg    path_6_we0_local;
reg    path_7_ce0_local;
reg   [4:0] path_7_address0_local;
reg    path_7_we0_local;
reg    transition_0_ce0_local;
reg    transition_1_ce0_local;
reg    transition_2_ce0_local;
reg    transition_3_ce0_local;
reg    transition_4_ce0_local;
reg    transition_5_ce0_local;
reg    transition_6_ce0_local;
reg    transition_7_ce0_local;
reg   [63:0] grp_fu_790_p0;
reg   [63:0] grp_fu_790_p1;
wire    ap_CS_fsm_state16;
wire   [4:0] lshr_ln6_fu_828_p4;
wire   [7:0] tmp_2_fu_874_p17;
wire   [2:0] tmp_2_fu_874_p18;
wire   [7:0] tmp_2_fu_874_p19;
wire   [7:0] add_ln52_fu_1075_p2;
wire   [4:0] lshr_ln1_fu_1081_p4;
wire   [7:0] tmp_67_fu_1118_p17;
wire   [2:0] tmp_67_fu_1118_p18;
wire   [7:0] tmp_67_fu_1118_p19;
wire   [63:0] tmp_68_fu_1216_p2;
wire   [63:0] tmp_68_fu_1216_p4;
wire   [63:0] tmp_68_fu_1216_p6;
wire   [63:0] tmp_68_fu_1216_p8;
wire   [63:0] tmp_68_fu_1216_p10;
wire   [63:0] tmp_68_fu_1216_p12;
wire   [63:0] tmp_68_fu_1216_p14;
wire   [63:0] tmp_68_fu_1216_p16;
wire   [63:0] tmp_68_fu_1216_p17;
wire   [4:0] lshr_ln6_1_fu_1255_p4;
reg    grp_fu_790_ce;
wire   [0:0] grp_fu_1630_p2;
reg   [63:0] grp_fu_1630_p0;
reg   [63:0] grp_fu_1630_p1;
reg    grp_fu_1630_ce;
reg   [4:0] grp_fu_1630_opcode;
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
wire   [2:0] tmp_2_fu_874_p1;
wire   [2:0] tmp_2_fu_874_p3;
wire   [2:0] tmp_2_fu_874_p5;
wire   [2:0] tmp_2_fu_874_p7;
wire  signed [2:0] tmp_2_fu_874_p9;
wire  signed [2:0] tmp_2_fu_874_p11;
wire  signed [2:0] tmp_2_fu_874_p13;
wire  signed [2:0] tmp_2_fu_874_p15;
wire  signed [2:0] tmp_67_fu_1118_p1;
wire   [2:0] tmp_67_fu_1118_p3;
wire   [2:0] tmp_67_fu_1118_p5;
wire   [2:0] tmp_67_fu_1118_p7;
wire   [2:0] tmp_67_fu_1118_p9;
wire  signed [2:0] tmp_67_fu_1118_p11;
wire  signed [2:0] tmp_67_fu_1118_p13;
wire  signed [2:0] tmp_67_fu_1118_p15;
wire   [2:0] tmp_68_fu_1216_p1;
wire   [2:0] tmp_68_fu_1216_p3;
wire   [2:0] tmp_68_fu_1216_p5;
wire   [2:0] tmp_68_fu_1216_p7;
wire  signed [2:0] tmp_68_fu_1216_p9;
wire  signed [2:0] tmp_68_fu_1216_p11;
wire  signed [2:0] tmp_68_fu_1216_p13;
wire  signed [2:0] tmp_68_fu_1216_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_viterbi_Pipeline_L_init_fu_649_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_750_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_760_ap_start_reg = 1'b0;
#0 t_fu_204 = 8'd0;
#0 t_1_fu_232 = 9'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 2240 ),.AddressWidth( 12 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_649(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_649_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_649_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_649_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_649_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_649_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_649_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_649_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_649_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_649_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_649_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_649_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_649_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_649_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_649_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_649_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_649_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_649_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_649_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_649_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_649_llike_3_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_649_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_649_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_649_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_649_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_649_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_649_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_649_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_649_init_3_ce0),.init_3_q0(init_3_q0),.init_4_address0(grp_viterbi_Pipeline_L_init_fu_649_init_4_address0),.init_4_ce0(grp_viterbi_Pipeline_L_init_fu_649_init_4_ce0),.init_4_q0(init_4_q0),.init_5_address0(grp_viterbi_Pipeline_L_init_fu_649_init_5_address0),.init_5_ce0(grp_viterbi_Pipeline_L_init_fu_649_init_5_ce0),.init_5_q0(init_5_q0),.init_6_address0(grp_viterbi_Pipeline_L_init_fu_649_init_6_address0),.init_6_ce0(grp_viterbi_Pipeline_L_init_fu_649_init_6_ce0),.init_6_q0(init_6_q0),.init_7_address0(grp_viterbi_Pipeline_L_init_fu_649_init_7_address0),.init_7_ce0(grp_viterbi_Pipeline_L_init_fu_649_init_7_ce0),.init_7_q0(init_7_q0),.conv3_udiv_cast(conv3_udiv_reg_1326),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_649_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_649_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_649_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_649_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_649_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_649_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_649_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_649_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_4_address0(grp_viterbi_Pipeline_L_init_fu_649_emission_4_address0),.emission_4_ce0(grp_viterbi_Pipeline_L_init_fu_649_emission_4_ce0),.emission_4_q0(emission_4_q0),.emission_5_address0(grp_viterbi_Pipeline_L_init_fu_649_emission_5_address0),.emission_5_ce0(grp_viterbi_Pipeline_L_init_fu_649_emission_5_ce0),.emission_5_q0(emission_5_q0),.emission_6_address0(grp_viterbi_Pipeline_L_init_fu_649_emission_6_address0),.emission_6_ce0(grp_viterbi_Pipeline_L_init_fu_649_emission_6_ce0),.emission_6_q0(emission_6_q0),.emission_7_address0(grp_viterbi_Pipeline_L_init_fu_649_emission_7_address0),.emission_7_ce0(grp_viterbi_Pipeline_L_init_fu_649_emission_7_ce0),.emission_7_q0(emission_7_q0),.empty(empty_reg_1321),.grp_fu_790_p_din0(grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_din0),.grp_fu_790_p_din1(grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_din1),.grp_fu_790_p_opcode(grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_opcode),.grp_fu_790_p_dout0(grp_fu_790_p2),.grp_fu_790_p_ce(grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_691(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_691_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_691_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_691_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_ce1),.llike_q1(llike_q1),.empty_8(tmp_s_reg_1423),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_d0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_d0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_ce1),.llike_3_q1(llike_3_q1),.empty_9(tmp_273_reg_1428),.empty_10(tmp_274_reg_1433),.empty_11(tmp_275_reg_1438),.empty_12(tmp_276_reg_1443),.empty_13(tmp_277_reg_1448),.empty_14(tmp_278_reg_1453),.empty_15(tmp_279_reg_1458),.empty_16(tmp_280_reg_1463),.empty_17(tmp_281_reg_1468),.empty_18(tmp_282_reg_1473),.empty_19(tmp_283_reg_1478),.empty_20(tmp_284_reg_1483),.empty_21(tmp_285_reg_1488),.empty_22(tmp_286_reg_1493),.empty_23(tmp_287_reg_1498),.t(t_2_reg_1336),.transition_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_ce1),.transition_3_q1(transition_3_q1),.transition_4_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_address0),.transition_4_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_ce0),.transition_4_q0(transition_4_q0),.transition_4_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_address1),.transition_4_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_ce1),.transition_4_q1(transition_4_q1),.transition_5_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_address0),.transition_5_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_ce0),.transition_5_q0(transition_5_q0),.transition_5_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_address1),.transition_5_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_ce1),.transition_5_q1(transition_5_q1),.transition_6_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_address0),.transition_6_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_ce0),.transition_6_q0(transition_6_q0),.transition_6_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_address1),.transition_6_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_ce1),.transition_6_q1(transition_6_q1),.transition_7_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_address0),.transition_7_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_ce0),.transition_7_q0(transition_7_q0),.transition_7_address1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_address1),.transition_7_ce1(grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_ce1),.transition_7_q1(transition_7_q1),.conv32_udiv_cast(conv32_udiv_reg_1418),.emission_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_4_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_4_address0),.emission_4_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_4_ce0),.emission_4_q0(emission_4_q0),.emission_5_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_5_address0),.emission_5_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_5_ce0),.emission_5_q0(emission_5_q0),.emission_6_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_6_address0),.emission_6_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_6_ce0),.emission_6_q0(emission_6_q0),.emission_7_address0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_7_address0),.emission_7_ce0(grp_viterbi_Pipeline_L_curr_state_fu_691_emission_7_ce0),.emission_7_q0(emission_7_q0),.empty(empty_38_reg_1413),.grp_fu_790_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_din0),.grp_fu_790_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_din1),.grp_fu_790_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_opcode),.grp_fu_790_p_dout0(grp_fu_790_p2),.grp_fu_790_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_ce),.grp_fu_1630_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_din0),.grp_fu_1630_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_din1),.grp_fu_1630_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_opcode),.grp_fu_1630_p_dout0(grp_fu_1630_p2),.grp_fu_1630_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_750(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_750_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_750_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_750_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_750_ap_ready),.min_p(reg_794),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_750_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_750_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_end_fu_750_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_end_fu_750_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_750_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_750_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_end_fu_750_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_end_fu_750_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_750_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_750_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_end_fu_750_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_end_fu_750_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_address0(grp_viterbi_Pipeline_L_end_fu_750_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_750_llike_ce0),.llike_q0(llike_q0),.min_s_8_out(grp_viterbi_Pipeline_L_end_fu_750_min_s_8_out),.min_s_8_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_750_min_s_8_out_ap_vld),.grp_fu_1630_p_din0(grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_din0),.grp_fu_1630_p_din1(grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_din1),.grp_fu_1630_p_opcode(grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_opcode),.grp_fu_1630_p_dout0(grp_fu_1630_p2),.grp_fu_1630_p_ce(grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_760(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_760_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_760_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_760_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_760_ap_ready),.min_p_145(min_p_216_reg_1625),.t_1(trunc_ln50_reg_1509),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_760_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_760_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_state_fu_760_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_state_fu_760_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_state_fu_760_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_state_fu_760_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_state_fu_760_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_state_fu_760_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_state_fu_760_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_state_fu_760_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_state_fu_760_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_state_fu_760_llike_3_ce1),.llike_3_q1(llike_3_q1),.zext_ln52_2(lshr_ln52_1_reg_1575),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_760_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_760_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_state_fu_760_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_state_fu_760_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_760_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_760_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_state_fu_760_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_state_fu_760_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_state_fu_760_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_state_fu_760_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_state_fu_760_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_state_fu_760_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_state_fu_760_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_state_fu_760_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_state_fu_760_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_state_fu_760_transition_3_ce1),.transition_3_q1(transition_3_q1),.transition_4_address0(grp_viterbi_Pipeline_L_state_fu_760_transition_4_address0),.transition_4_ce0(grp_viterbi_Pipeline_L_state_fu_760_transition_4_ce0),.transition_4_q0(transition_4_q0),.transition_4_address1(grp_viterbi_Pipeline_L_state_fu_760_transition_4_address1),.transition_4_ce1(grp_viterbi_Pipeline_L_state_fu_760_transition_4_ce1),.transition_4_q1(transition_4_q1),.transition_5_address0(grp_viterbi_Pipeline_L_state_fu_760_transition_5_address0),.transition_5_ce0(grp_viterbi_Pipeline_L_state_fu_760_transition_5_ce0),.transition_5_q0(transition_5_q0),.transition_5_address1(grp_viterbi_Pipeline_L_state_fu_760_transition_5_address1),.transition_5_ce1(grp_viterbi_Pipeline_L_state_fu_760_transition_5_ce1),.transition_5_q1(transition_5_q1),.transition_6_address0(grp_viterbi_Pipeline_L_state_fu_760_transition_6_address0),.transition_6_ce0(grp_viterbi_Pipeline_L_state_fu_760_transition_6_ce0),.transition_6_q0(transition_6_q0),.transition_6_address1(grp_viterbi_Pipeline_L_state_fu_760_transition_6_address1),.transition_6_ce1(grp_viterbi_Pipeline_L_state_fu_760_transition_6_ce1),.transition_6_q1(transition_6_q1),.transition_7_address0(grp_viterbi_Pipeline_L_state_fu_760_transition_7_address0),.transition_7_ce0(grp_viterbi_Pipeline_L_state_fu_760_transition_7_ce0),.transition_7_q0(transition_7_q0),.transition_7_address1(grp_viterbi_Pipeline_L_state_fu_760_transition_7_address1),.transition_7_ce1(grp_viterbi_Pipeline_L_state_fu_760_transition_7_ce1),.transition_7_q1(transition_7_q1),.empty(trunc_ln52_reg_1569),.llike_address0(grp_viterbi_Pipeline_L_state_fu_760_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_760_llike_ce0),.llike_q0(llike_q0),.zext_ln52_3(tmp_288_reg_1555),.min_s_18_out(grp_viterbi_Pipeline_L_state_fu_760_min_s_18_out),.min_s_18_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_760_min_s_18_out_ap_vld),.grp_fu_790_p_din0(grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_din0),.grp_fu_790_p_din1(grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_din1),.grp_fu_790_p_opcode(grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_opcode),.grp_fu_790_p_dout0(grp_fu_790_p2),.grp_fu_790_p_ce(grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_ce),.grp_fu_1630_p_din0(grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_din0),.grp_fu_1630_p_din1(grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_din1),.grp_fu_1630_p_opcode(grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_opcode),.grp_fu_1630_p_dout0(grp_fu_1630_p2),.grp_fu_1630_p_ce(grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U173(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_790_p0),.din1(grp_fu_790_p1),.ce(grp_fu_790_ce),.dout(grp_fu_790_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U174(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.din4(obs_4_q0),.din5(obs_5_q0),.din6(obs_6_q0),.din7(obs_7_q0),.def(tmp_2_fu_874_p17),.sel(tmp_2_fu_874_p18),.dout(tmp_2_fu_874_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 8 ),.CASE1( 3'h0 ),.din1_WIDTH( 8 ),.CASE2( 3'h1 ),.din2_WIDTH( 8 ),.CASE3( 3'h2 ),.din3_WIDTH( 8 ),.CASE4( 3'h3 ),.din4_WIDTH( 8 ),.CASE5( 3'h4 ),.din5_WIDTH( 8 ),.CASE6( 3'h5 ),.din6_WIDTH( 8 ),.CASE7( 3'h6 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U175(.din0(path_0_q0),.din1(path_1_q0),.din2(path_2_q0),.din3(path_3_q0),.din4(path_4_q0),.din5(path_5_q0),.din6(path_6_q0),.din7(path_7_q0),.def(tmp_67_fu_1118_p17),.sel(tmp_67_fu_1118_p18),.dout(tmp_67_fu_1118_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U176(.din0(tmp_68_fu_1216_p2),.din1(tmp_68_fu_1216_p4),.din2(tmp_68_fu_1216_p6),.din3(tmp_68_fu_1216_p8),.din4(tmp_68_fu_1216_p10),.din5(tmp_68_fu_1216_p12),.din6(tmp_68_fu_1216_p14),.din7(tmp_68_fu_1216_p16),.def(tmp_68_fu_1216_p17),.sel(trunc_ln52_reg_1569),.dout(tmp_68_fu_1216_p19));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U177(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1630_p0),.din1(grp_fu_1630_p1),.ce(grp_fu_1630_ce),.opcode(grp_fu_1630_opcode),.dout(grp_fu_1630_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_691_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_750_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_750_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_750_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_750_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_649_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_649_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_649_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_649_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_760_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_viterbi_Pipeline_L_state_fu_760_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_760_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_760_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_822_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_232 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        t_1_fu_232 <= add_ln50_fu_1287_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_204 <= 8'd1;
    end else if (((icmp_ln18_fu_822_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_204 <= add_ln18_fu_850_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_reg_1418 <= {{tmp_2_fu_874_p19[7:3]}};
        empty_37_reg_1393 <= empty_37_fu_869_p2;
        empty_38_reg_1413 <= empty_38_fu_914_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_1326 <= {{obs_0_q0[7:3]}};
        empty_reg_1321 <= empty_fu_805_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        lshr_ln52_1_reg_1575 <= {{tmp_67_fu_1118_p19[7:3]}};
        tmp_288_reg_1555[11 : 4] <= tmp_288_fu_1103_p3[11 : 4];
        trunc_ln50_1_reg_1565 <= trunc_ln50_1_fu_1115_p1;
        trunc_ln52_reg_1569 <= trunc_ln52_fu_1158_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        min_p_216_reg_1625 <= grp_fu_790_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_760_min_s_18_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
        min_s_18_loc_fu_208 <= grp_viterbi_Pipeline_L_state_fu_760_min_s_18_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_750_min_s_8_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        min_s_8_loc_fu_212 <= grp_viterbi_Pipeline_L_end_fu_750_min_s_8_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_794 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_1336 <= t_fu_204;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_273_reg_1428[11 : 4] <= tmp_273_fu_936_p3[11 : 4];
        tmp_274_reg_1433[11 : 4] <= tmp_274_fu_944_p3[11 : 4];
        tmp_275_reg_1438[11 : 4] <= tmp_275_fu_952_p3[11 : 4];
        tmp_276_reg_1443[11 : 4] <= tmp_276_fu_960_p3[11 : 4];
        tmp_277_reg_1448[11 : 4] <= tmp_277_fu_968_p3[11 : 4];
        tmp_278_reg_1453[11 : 4] <= tmp_278_fu_976_p3[11 : 4];
        tmp_279_reg_1458[11 : 4] <= tmp_279_fu_984_p3[11 : 4];
        tmp_280_reg_1463[11 : 4] <= tmp_280_fu_992_p3[11 : 4];
        tmp_281_reg_1468[11 : 4] <= tmp_281_fu_1000_p3[11 : 4];
        tmp_282_reg_1473[11 : 4] <= tmp_282_fu_1008_p3[11 : 4];
        tmp_283_reg_1478[11 : 4] <= tmp_283_fu_1016_p3[11 : 4];
        tmp_284_reg_1483[11 : 4] <= tmp_284_fu_1024_p3[11 : 4];
        tmp_285_reg_1488[11 : 4] <= tmp_285_fu_1032_p3[11 : 4];
        tmp_286_reg_1493[11 : 4] <= tmp_286_fu_1040_p3[11 : 4];
        tmp_287_reg_1498[11 : 4] <= tmp_287_fu_1048_p3[11 : 4];
        tmp_s_reg_1423[11 : 4] <= tmp_s_fu_928_p3[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_68_reg_1620 <= tmp_68_fu_1216_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        trunc_ln50_reg_1509 <= trunc_ln50_fu_1071_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_750_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_state_fu_760_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_649_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_691_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) & (tmp_fu_1063_p3 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state13) & (tmp_fu_1063_p3 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_649_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_649_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_649_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_649_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_649_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_649_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_649_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_649_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_4_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_address0 = grp_viterbi_Pipeline_L_init_fu_649_emission_4_address0;
    end else begin
        emission_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_4_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_ce0 = grp_viterbi_Pipeline_L_init_fu_649_emission_4_ce0;
    end else begin
        emission_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_5_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_address0 = grp_viterbi_Pipeline_L_init_fu_649_emission_5_address0;
    end else begin
        emission_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_5_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_ce0 = grp_viterbi_Pipeline_L_init_fu_649_emission_5_ce0;
    end else begin
        emission_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_6_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_address0 = grp_viterbi_Pipeline_L_init_fu_649_emission_6_address0;
    end else begin
        emission_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_6_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_ce0 = grp_viterbi_Pipeline_L_init_fu_649_emission_6_ce0;
    end else begin
        emission_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_7_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_address0 = grp_viterbi_Pipeline_L_init_fu_649_emission_7_address0;
    end else begin
        emission_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_7_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_emission_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_ce0 = grp_viterbi_Pipeline_L_init_fu_649_emission_7_ce0;
    end else begin
        emission_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1630_ce = grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1630_ce = grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1630_ce = grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_ce;
    end else begin
        grp_fu_1630_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1630_opcode = grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1630_opcode = grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1630_opcode = grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_opcode;
    end else begin
        grp_fu_1630_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1630_p0 = grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1630_p0 = grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1630_p0 = grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_din0;
    end else begin
        grp_fu_1630_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1630_p1 = grp_viterbi_Pipeline_L_state_fu_760_grp_fu_1630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1630_p1 = grp_viterbi_Pipeline_L_end_fu_750_grp_fu_1630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1630_p1 = grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_1630_p_din1;
    end else begin
        grp_fu_1630_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_790_ce = grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_790_ce = grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_790_ce = grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_ce;
    end else begin
        grp_fu_790_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_790_p0 = grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_790_p0 = grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_790_p0 = grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_790_p0 = reg_794;
    end else begin
        grp_fu_790_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_790_p1 = grp_viterbi_Pipeline_L_state_fu_760_grp_fu_790_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_790_p1 = grp_viterbi_Pipeline_L_curr_state_fu_691_grp_fu_790_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_790_p1 = grp_viterbi_Pipeline_L_init_fu_649_grp_fu_790_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_790_p1 = tmp_68_reg_1620;
    end else begin
        grp_fu_790_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_760_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_750_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_649_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_state_fu_760_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_end_fu_750_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_760_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_750_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_649_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_state_fu_760_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_end_fu_750_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_649_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_649_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_state_fu_760_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_750_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_649_llike_2_address0;
    end else begin
        llike_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_state_fu_760_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_end_fu_750_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_address1;
    end else begin
        llike_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_state_fu_760_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_750_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_649_llike_2_ce0;
    end else begin
        llike_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_state_fu_760_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_end_fu_750_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_649_llike_2_d0;
    end else begin
        llike_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_649_llike_2_we0;
    end else begin
        llike_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_state_fu_760_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_750_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_649_llike_3_address0;
    end else begin
        llike_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_state_fu_760_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_end_fu_750_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_address1;
    end else begin
        llike_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_state_fu_760_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_750_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_649_llike_3_ce0;
    end else begin
        llike_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_state_fu_760_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_end_fu_750_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_649_llike_3_d0;
    end else begin
        llike_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_649_llike_3_we0;
    end else begin
        llike_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_760_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_750_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_649_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0_local = zext_ln52_2_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd2224;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_760_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_750_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_649_llike_ce0;
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
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_649_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_691_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_649_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_838_p1;
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
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_0_address0_local = zext_ln6_1_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_0_address0_local = zext_ln52_fu_1091_p1;
    end else begin
        path_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26))) begin
        path_0_ce0_local = 1'b1;
    end else begin
        path_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1565 == 3'd0) & (1'b1 == ap_CS_fsm_state26))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_1_address0_local = zext_ln6_1_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_1_address0_local = zext_ln52_fu_1091_p1;
    end else begin
        path_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26))) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1565 == 3'd1) & (1'b1 == ap_CS_fsm_state26))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_2_address0_local = zext_ln6_1_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_2_address0_local = zext_ln52_fu_1091_p1;
    end else begin
        path_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26))) begin
        path_2_ce0_local = 1'b1;
    end else begin
        path_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1565 == 3'd2) & (1'b1 == ap_CS_fsm_state26))) begin
        path_2_we0_local = 1'b1;
    end else begin
        path_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_3_address0_local = zext_ln6_1_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_3_address0_local = zext_ln52_fu_1091_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_address0_local = 64'd17;
    end else begin
        path_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12))) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_3_d0_local = min_s_18_loc_fu_208;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_d0_local = min_s_8_loc_fu_212;
    end else begin
        path_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((trunc_ln50_1_reg_1565 == 3'd3) & (1'b1 == ap_CS_fsm_state26)))) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_4_address0_local = zext_ln6_1_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_4_address0_local = zext_ln52_fu_1091_p1;
    end else begin
        path_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26))) begin
        path_4_ce0_local = 1'b1;
    end else begin
        path_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1565 == 3'd4) & (1'b1 == ap_CS_fsm_state26))) begin
        path_4_we0_local = 1'b1;
    end else begin
        path_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_5_address0_local = zext_ln6_1_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_5_address0_local = zext_ln52_fu_1091_p1;
    end else begin
        path_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26))) begin
        path_5_ce0_local = 1'b1;
    end else begin
        path_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1565 == 3'd5) & (1'b1 == ap_CS_fsm_state26))) begin
        path_5_we0_local = 1'b1;
    end else begin
        path_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_6_address0_local = zext_ln6_1_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_6_address0_local = zext_ln52_fu_1091_p1;
    end else begin
        path_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26))) begin
        path_6_ce0_local = 1'b1;
    end else begin
        path_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1565 == 3'd6) & (1'b1 == ap_CS_fsm_state26))) begin
        path_6_we0_local = 1'b1;
    end else begin
        path_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_7_address0_local = zext_ln6_1_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_7_address0_local = zext_ln52_fu_1091_p1;
    end else begin
        path_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state26))) begin
        path_7_ce0_local = 1'b1;
    end else begin
        path_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1565 == 3'd7) & (1'b1 == ap_CS_fsm_state26))) begin
        path_7_we0_local = 1'b1;
    end else begin
        path_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_760_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln52_1_fu_1172_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_state_fu_760_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_760_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_ce0;
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
        transition_0_ce1 = grp_viterbi_Pipeline_L_state_fu_760_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_760_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln52_1_fu_1172_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_state_fu_760_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_760_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_ce0;
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
        transition_1_ce1 = grp_viterbi_Pipeline_L_state_fu_760_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_state_fu_760_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_address0;
    end else begin
        transition_2_address0 = zext_ln52_1_fu_1172_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_state_fu_760_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_state_fu_760_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_ce0;
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
        transition_2_ce1 = grp_viterbi_Pipeline_L_state_fu_760_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_state_fu_760_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_address0;
    end else begin
        transition_3_address0 = zext_ln52_1_fu_1172_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_state_fu_760_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_state_fu_760_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_ce0;
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
        transition_3_ce1 = grp_viterbi_Pipeline_L_state_fu_760_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_3_ce1;
    end else begin
        transition_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_4_address0 = grp_viterbi_Pipeline_L_state_fu_760_transition_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_4_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_address0;
    end else begin
        transition_4_address0 = zext_ln52_1_fu_1172_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_4_address1 = grp_viterbi_Pipeline_L_state_fu_760_transition_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_4_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_address1;
    end else begin
        transition_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_4_ce0 = grp_viterbi_Pipeline_L_state_fu_760_transition_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_4_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_ce0;
    end else begin
        transition_4_ce0 = transition_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_4_ce1 = grp_viterbi_Pipeline_L_state_fu_760_transition_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_4_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_4_ce1;
    end else begin
        transition_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_5_address0 = grp_viterbi_Pipeline_L_state_fu_760_transition_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_5_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_address0;
    end else begin
        transition_5_address0 = zext_ln52_1_fu_1172_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_5_address1 = grp_viterbi_Pipeline_L_state_fu_760_transition_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_5_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_address1;
    end else begin
        transition_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_5_ce0 = grp_viterbi_Pipeline_L_state_fu_760_transition_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_5_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_ce0;
    end else begin
        transition_5_ce0 = transition_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_5_ce1 = grp_viterbi_Pipeline_L_state_fu_760_transition_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_5_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_5_ce1;
    end else begin
        transition_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_6_address0 = grp_viterbi_Pipeline_L_state_fu_760_transition_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_6_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_address0;
    end else begin
        transition_6_address0 = zext_ln52_1_fu_1172_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_6_address1 = grp_viterbi_Pipeline_L_state_fu_760_transition_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_6_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_address1;
    end else begin
        transition_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_6_ce0 = grp_viterbi_Pipeline_L_state_fu_760_transition_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_6_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_ce0;
    end else begin
        transition_6_ce0 = transition_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_6_ce1 = grp_viterbi_Pipeline_L_state_fu_760_transition_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_6_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_6_ce1;
    end else begin
        transition_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_7_address0 = grp_viterbi_Pipeline_L_state_fu_760_transition_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_7_address0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_address0;
    end else begin
        transition_7_address0 = zext_ln52_1_fu_1172_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_7_address1 = grp_viterbi_Pipeline_L_state_fu_760_transition_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_7_address1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_address1;
    end else begin
        transition_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_7_ce0 = grp_viterbi_Pipeline_L_state_fu_760_transition_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_7_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_ce0;
    end else begin
        transition_7_ce0 = transition_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_7_ce1 = grp_viterbi_Pipeline_L_state_fu_760_transition_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_7_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_691_transition_7_ce1;
    end else begin
        transition_7_ce1 = 1'b0;
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
            if (((grp_viterbi_Pipeline_L_init_fu_649_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_822_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_viterbi_Pipeline_L_curr_state_fu_691_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_750_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (tmp_fu_1063_p3 == 1'd1))) begin
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
            if (((grp_viterbi_Pipeline_L_state_fu_760_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
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
assign add_ln18_fu_850_p2 = (t_fu_204 + 8'd1);
assign add_ln50_fu_1287_p2 = ($signed(t_1_fu_232) + $signed(9'd511));
assign add_ln52_fu_1075_p2 = (trunc_ln50_fu_1071_p1 + 8'd1);
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
assign empty_37_fu_869_p2 = ($signed(t_2_reg_1336) + $signed(8'd255));
assign empty_38_fu_914_p1 = tmp_2_fu_874_p19[2:0];
assign empty_fu_805_p1 = obs_0_q0[2:0];
assign grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_691_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_750_ap_start = grp_viterbi_Pipeline_L_end_fu_750_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_649_ap_start = grp_viterbi_Pipeline_L_init_fu_649_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_760_ap_start = grp_viterbi_Pipeline_L_state_fu_760_ap_start_reg;
assign icmp_ln18_fu_822_p2 = ((t_fu_204 == 8'd140) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_649_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_649_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_649_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_649_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_649_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_649_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_649_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_649_init_3_ce0;
assign init_4_address0 = grp_viterbi_Pipeline_L_init_fu_649_init_4_address0;
assign init_4_ce0 = grp_viterbi_Pipeline_L_init_fu_649_init_4_ce0;
assign init_5_address0 = grp_viterbi_Pipeline_L_init_fu_649_init_5_address0;
assign init_5_ce0 = grp_viterbi_Pipeline_L_init_fu_649_init_5_ce0;
assign init_6_address0 = grp_viterbi_Pipeline_L_init_fu_649_init_6_address0;
assign init_6_ce0 = grp_viterbi_Pipeline_L_init_fu_649_init_6_ce0;
assign init_7_address0 = grp_viterbi_Pipeline_L_init_fu_649_init_7_address0;
assign init_7_ce0 = grp_viterbi_Pipeline_L_init_fu_649_init_7_ce0;
assign lshr_ln1_fu_1081_p4 = {{add_ln52_fu_1075_p2[7:3]}};
assign lshr_ln52_1_fu_1162_p4 = {{tmp_67_fu_1118_p19[7:3]}};
assign lshr_ln6_1_fu_1255_p4 = {{t_1_fu_232[7:3]}};
assign lshr_ln6_fu_828_p4 = {{t_fu_204[7:3]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_838_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_838_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_838_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign obs_4_address0 = zext_ln6_fu_838_p1;
assign obs_4_ce0 = obs_4_ce0_local;
assign obs_5_address0 = zext_ln6_fu_838_p1;
assign obs_5_ce0 = obs_5_ce0_local;
assign obs_6_address0 = zext_ln6_fu_838_p1;
assign obs_6_ce0 = obs_6_ce0_local;
assign obs_7_address0 = zext_ln6_fu_838_p1;
assign obs_7_ce0 = obs_7_ce0_local;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_18_loc_fu_208;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = min_s_18_loc_fu_208;
assign path_1_we0 = path_1_we0_local;
assign path_2_address0 = path_2_address0_local;
assign path_2_ce0 = path_2_ce0_local;
assign path_2_d0 = min_s_18_loc_fu_208;
assign path_2_we0 = path_2_we0_local;
assign path_3_address0 = path_3_address0_local;
assign path_3_ce0 = path_3_ce0_local;
assign path_3_d0 = path_3_d0_local;
assign path_3_we0 = path_3_we0_local;
assign path_4_address0 = path_4_address0_local;
assign path_4_ce0 = path_4_ce0_local;
assign path_4_d0 = min_s_18_loc_fu_208;
assign path_4_we0 = path_4_we0_local;
assign path_5_address0 = path_5_address0_local;
assign path_5_ce0 = path_5_ce0_local;
assign path_5_d0 = min_s_18_loc_fu_208;
assign path_5_we0 = path_5_we0_local;
assign path_6_address0 = path_6_address0_local;
assign path_6_ce0 = path_6_ce0_local;
assign path_6_d0 = min_s_18_loc_fu_208;
assign path_6_we0 = path_6_we0_local;
assign path_7_address0 = path_7_address0_local;
assign path_7_ce0 = path_7_ce0_local;
assign path_7_d0 = min_s_18_loc_fu_208;
assign path_7_we0 = path_7_we0_local;
assign tmp_273_fu_936_p3 = {{empty_37_reg_1393}, {4'd1}};
assign tmp_274_fu_944_p3 = {{empty_37_reg_1393}, {4'd2}};
assign tmp_275_fu_952_p3 = {{empty_37_reg_1393}, {4'd3}};
assign tmp_276_fu_960_p3 = {{empty_37_reg_1393}, {4'd4}};
assign tmp_277_fu_968_p3 = {{empty_37_reg_1393}, {4'd5}};
assign tmp_278_fu_976_p3 = {{empty_37_reg_1393}, {4'd6}};
assign tmp_279_fu_984_p3 = {{empty_37_reg_1393}, {4'd7}};
assign tmp_280_fu_992_p3 = {{empty_37_reg_1393}, {4'd8}};
assign tmp_281_fu_1000_p3 = {{empty_37_reg_1393}, {4'd9}};
assign tmp_282_fu_1008_p3 = {{empty_37_reg_1393}, {4'd10}};
assign tmp_283_fu_1016_p3 = {{empty_37_reg_1393}, {4'd11}};
assign tmp_284_fu_1024_p3 = {{empty_37_reg_1393}, {4'd12}};
assign tmp_285_fu_1032_p3 = {{empty_37_reg_1393}, {4'd13}};
assign tmp_286_fu_1040_p3 = {{empty_37_reg_1393}, {4'd14}};
assign tmp_287_fu_1048_p3 = {{empty_37_reg_1393}, {4'd15}};
assign tmp_288_fu_1103_p3 = {{trunc_ln50_reg_1509}, {4'd0}};
assign tmp_2_fu_874_p17 = 'bx;
assign tmp_2_fu_874_p18 = t_2_reg_1336[2:0];
assign tmp_67_fu_1118_p17 = 'bx;
assign tmp_67_fu_1118_p18 = t_1_fu_232[2:0];
assign tmp_68_fu_1216_p10 = transition_4_q0;
assign tmp_68_fu_1216_p12 = transition_5_q0;
assign tmp_68_fu_1216_p14 = transition_6_q0;
assign tmp_68_fu_1216_p16 = transition_7_q0;
assign tmp_68_fu_1216_p17 = 'bx;
assign tmp_68_fu_1216_p2 = transition_0_q0;
assign tmp_68_fu_1216_p4 = transition_1_q0;
assign tmp_68_fu_1216_p6 = transition_2_q0;
assign tmp_68_fu_1216_p8 = transition_3_q0;
assign tmp_fu_1063_p3 = t_1_fu_232[32'd8];
assign tmp_s_fu_928_p3 = {{empty_37_reg_1393}, {4'd0}};
assign trunc_ln50_1_fu_1115_p1 = t_1_fu_232[2:0];
assign trunc_ln50_fu_1071_p1 = t_1_fu_232[7:0];
assign trunc_ln52_fu_1158_p1 = tmp_67_fu_1118_p19[2:0];
assign zext_ln52_1_fu_1172_p1 = lshr_ln52_1_fu_1162_p4;
assign zext_ln52_2_fu_1110_p1 = tmp_288_fu_1103_p3;
assign zext_ln52_fu_1091_p1 = lshr_ln1_fu_1081_p4;
assign zext_ln6_1_fu_1264_p1 = lshr_ln6_1_fu_1255_p4;
assign zext_ln6_fu_838_p1 = lshr_ln6_fu_828_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_1423[3:0] <= 4'b0000;
    tmp_273_reg_1428[3:0] <= 4'b0001;
    tmp_274_reg_1433[3:0] <= 4'b0010;
    tmp_275_reg_1438[3:0] <= 4'b0011;
    tmp_276_reg_1443[3:0] <= 4'b0100;
    tmp_277_reg_1448[3:0] <= 4'b0101;
    tmp_278_reg_1453[3:0] <= 4'b0110;
    tmp_279_reg_1458[3:0] <= 4'b0111;
    tmp_280_reg_1463[3:0] <= 4'b1000;
    tmp_281_reg_1468[3:0] <= 4'b1001;
    tmp_282_reg_1473[3:0] <= 4'b1010;
    tmp_283_reg_1478[3:0] <= 4'b1011;
    tmp_284_reg_1483[3:0] <= 4'b1100;
    tmp_285_reg_1488[3:0] <= 4'b1101;
    tmp_286_reg_1493[3:0] <= 4'b1110;
    tmp_287_reg_1498[3:0] <= 4'b1111;
    tmp_288_reg_1555[3:0] <= 4'b0000;
end
endmodule 