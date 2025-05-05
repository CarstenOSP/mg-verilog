module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,obs_4_address0,obs_4_ce0,obs_4_q0,obs_5_address0,obs_5_ce0,obs_5_q0,obs_6_address0,obs_6_ce0,obs_6_q0,obs_7_address0,obs_7_ce0,obs_7_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,init_4_address0,init_4_ce0,init_4_q0,init_5_address0,init_5_ce0,init_5_q0,init_6_address0,init_6_ce0,init_6_q0,init_7_address0,init_7_ce0,init_7_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,emission_4_address0,emission_4_ce0,emission_4_q0,emission_5_address0,emission_5_ce0,emission_5_q0,emission_6_address0,emission_6_ce0,emission_6_q0,emission_7_address0,emission_7_ce0,emission_7_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,path_4_address0,path_4_ce0,path_4_we0,path_4_d0,path_4_q0,path_5_address0,path_5_ce0,path_5_we0,path_5_d0,path_5_q0,path_6_address0,path_6_ce0,path_6_we0,path_6_d0,path_6_q0,path_7_address0,path_7_ce0,path_7_we0,path_7_d0,path_7_q0,ap_return); 
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
reg[4:0] obs_0_address0;
reg obs_0_ce0;
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
(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_875;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state14;
wire   [2:0] empty_fu_886_p1;
reg   [2:0] empty_reg_1163;
wire    ap_CS_fsm_state2;
reg   [4:0] conv3_udiv_reg_1168;
wire    ap_CS_fsm_state7;
wire   [7:0] trunc_ln50_fu_915_p1;
reg   [7:0] trunc_ln50_reg_1184;
wire    ap_CS_fsm_state12;
wire   [8:0] shl_ln52_fu_947_p2;
reg   [8:0] shl_ln52_reg_1229;
wire    ap_CS_fsm_state13;
wire   [2:0] trunc_ln50_1_fu_957_p1;
reg   [2:0] trunc_ln50_1_reg_1239;
wire   [2:0] trunc_ln52_fu_1000_p1;
reg   [2:0] trunc_ln52_reg_1243;
wire   [4:0] lshr_ln52_1_fu_1004_p4;
reg   [4:0] lshr_ln52_1_reg_1249;
wire   [63:0] tmp_68_fu_1058_p19;
reg   [63:0] tmp_68_reg_1294;
wire   [63:0] grp_fu_871_p2;
reg   [63:0] min_p_194_reg_1299;
wire    ap_CS_fsm_state22;
reg   [8:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [8:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
reg   [8:0] llike_2_address0;
reg    llike_2_ce0;
reg    llike_2_we0;
reg   [63:0] llike_2_d0;
wire   [63:0] llike_2_q0;
reg    llike_2_ce1;
wire   [63:0] llike_2_q1;
reg   [8:0] llike_3_address0;
reg    llike_3_ce0;
reg    llike_3_we0;
reg   [63:0] llike_3_d0;
wire   [63:0] llike_3_q0;
reg    llike_3_ce1;
wire   [63:0] llike_3_q1;
reg   [8:0] llike_4_address0;
reg    llike_4_ce0;
reg    llike_4_we0;
reg   [63:0] llike_4_d0;
wire   [63:0] llike_4_q0;
reg    llike_4_ce1;
wire   [63:0] llike_4_q1;
reg   [8:0] llike_5_address0;
reg    llike_5_ce0;
reg    llike_5_we0;
reg   [63:0] llike_5_d0;
wire   [63:0] llike_5_q0;
reg    llike_5_ce1;
wire   [63:0] llike_5_q1;
reg   [8:0] llike_6_address0;
reg    llike_6_ce0;
reg    llike_6_we0;
reg   [63:0] llike_6_d0;
wire   [63:0] llike_6_q0;
reg    llike_6_ce1;
wire   [63:0] llike_6_q1;
reg   [8:0] llike_7_address0;
reg    llike_7_ce0;
reg    llike_7_we0;
reg   [63:0] llike_7_d0;
wire   [63:0] llike_7_q0;
reg    llike_7_ce1;
wire   [63:0] llike_7_q1;
reg   [8:0] llike_8_address0;
reg    llike_8_ce0;
reg    llike_8_we0;
reg   [63:0] llike_8_d0;
wire   [63:0] llike_8_q0;
reg    llike_8_ce1;
wire   [63:0] llike_8_q1;
reg   [8:0] llike_9_address0;
reg    llike_9_ce0;
reg    llike_9_we0;
reg   [63:0] llike_9_d0;
wire   [63:0] llike_9_q0;
reg    llike_9_ce1;
wire   [63:0] llike_9_q1;
reg   [8:0] llike_10_address0;
reg    llike_10_ce0;
reg    llike_10_we0;
reg   [63:0] llike_10_d0;
wire   [63:0] llike_10_q0;
reg    llike_10_ce1;
wire   [63:0] llike_10_q1;
reg   [8:0] llike_11_address0;
reg    llike_11_ce0;
reg    llike_11_we0;
reg   [63:0] llike_11_d0;
wire   [63:0] llike_11_q0;
reg    llike_11_ce1;
wire   [63:0] llike_11_q1;
reg   [8:0] llike_12_address0;
reg    llike_12_ce0;
reg    llike_12_we0;
reg   [63:0] llike_12_d0;
wire   [63:0] llike_12_q0;
reg    llike_12_ce1;
wire   [63:0] llike_12_q1;
reg   [8:0] llike_13_address0;
reg    llike_13_ce0;
reg    llike_13_we0;
reg   [63:0] llike_13_d0;
wire   [63:0] llike_13_q0;
reg    llike_13_ce1;
wire   [63:0] llike_13_q1;
reg   [8:0] llike_14_address0;
reg    llike_14_ce0;
reg    llike_14_we0;
reg   [63:0] llike_14_d0;
wire   [63:0] llike_14_q0;
reg    llike_14_ce1;
wire   [63:0] llike_14_q1;
reg   [8:0] llike_15_address0;
reg    llike_15_ce0;
reg    llike_15_we0;
reg   [63:0] llike_15_d0;
wire   [63:0] llike_15_q0;
reg    llike_15_ce1;
wire   [63:0] llike_15_q1;
reg   [8:0] llike_16_address0;
reg    llike_16_ce0;
reg    llike_16_we0;
reg   [63:0] llike_16_d0;
wire   [63:0] llike_16_q0;
reg    llike_16_ce1;
wire   [63:0] llike_16_q1;
reg   [8:0] llike_17_address0;
reg    llike_17_ce0;
reg    llike_17_we0;
reg   [63:0] llike_17_d0;
wire   [63:0] llike_17_q0;
reg    llike_17_ce1;
wire   [63:0] llike_17_q1;
reg   [8:0] llike_18_address0;
reg    llike_18_ce0;
reg    llike_18_we0;
reg   [63:0] llike_18_d0;
wire   [63:0] llike_18_q0;
reg    llike_18_ce1;
wire   [63:0] llike_18_q1;
reg   [8:0] llike_19_address0;
reg    llike_19_ce0;
reg    llike_19_we0;
reg   [63:0] llike_19_d0;
wire   [63:0] llike_19_q0;
reg    llike_19_ce1;
wire   [63:0] llike_19_q1;
reg   [8:0] llike_20_address0;
reg    llike_20_ce0;
reg    llike_20_we0;
reg   [63:0] llike_20_d0;
wire   [63:0] llike_20_q0;
reg    llike_20_ce1;
wire   [63:0] llike_20_q1;
reg   [8:0] llike_21_address0;
reg    llike_21_ce0;
reg    llike_21_we0;
reg   [63:0] llike_21_d0;
wire   [63:0] llike_21_q0;
reg    llike_21_ce1;
wire   [63:0] llike_21_q1;
reg   [8:0] llike_22_address0;
reg    llike_22_ce0;
reg    llike_22_we0;
reg   [63:0] llike_22_d0;
wire   [63:0] llike_22_q0;
reg    llike_22_ce1;
wire   [63:0] llike_22_q1;
reg   [8:0] llike_23_address0;
reg    llike_23_ce0;
reg    llike_23_we0;
reg   [63:0] llike_23_d0;
wire   [63:0] llike_23_q0;
reg    llike_23_ce1;
wire   [63:0] llike_23_q1;
reg   [8:0] llike_24_address0;
reg    llike_24_ce0;
reg    llike_24_we0;
reg   [63:0] llike_24_d0;
wire   [63:0] llike_24_q0;
reg    llike_24_ce1;
wire   [63:0] llike_24_q1;
reg   [8:0] llike_25_address0;
reg    llike_25_ce0;
reg    llike_25_we0;
reg   [63:0] llike_25_d0;
wire   [63:0] llike_25_q0;
reg    llike_25_ce1;
wire   [63:0] llike_25_q1;
reg   [8:0] llike_26_address0;
reg    llike_26_ce0;
reg    llike_26_we0;
reg   [63:0] llike_26_d0;
wire   [63:0] llike_26_q0;
reg    llike_26_ce1;
wire   [63:0] llike_26_q1;
reg   [8:0] llike_27_address0;
reg    llike_27_ce0;
reg    llike_27_we0;
reg   [63:0] llike_27_d0;
wire   [63:0] llike_27_q0;
reg    llike_27_ce1;
wire   [63:0] llike_27_q1;
reg   [8:0] llike_28_address0;
reg    llike_28_ce0;
reg    llike_28_we0;
reg   [63:0] llike_28_d0;
wire   [63:0] llike_28_q0;
reg    llike_28_ce1;
wire   [63:0] llike_28_q1;
reg   [8:0] llike_29_address0;
reg    llike_29_ce0;
reg    llike_29_we0;
reg   [63:0] llike_29_d0;
wire   [63:0] llike_29_q0;
reg    llike_29_ce1;
wire   [63:0] llike_29_q1;
reg   [8:0] llike_30_address0;
reg    llike_30_ce0;
reg    llike_30_we0;
reg   [63:0] llike_30_d0;
wire   [63:0] llike_30_q0;
reg    llike_30_ce1;
wire   [63:0] llike_30_q1;
reg   [8:0] llike_31_address0;
reg    llike_31_ce0;
reg    llike_31_we0;
reg   [63:0] llike_31_d0;
wire   [63:0] llike_31_q0;
reg    llike_31_ce1;
wire   [63:0] llike_31_q1;
wire    grp_viterbi_Pipeline_L_init_fu_621_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_621_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_621_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_621_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_1_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_2_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_3_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_4_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_5_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_6_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_7_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_8_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_8_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_8_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_8_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_9_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_9_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_9_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_9_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_10_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_10_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_10_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_10_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_11_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_11_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_11_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_11_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_12_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_12_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_12_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_12_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_13_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_13_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_13_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_13_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_14_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_14_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_14_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_14_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_15_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_15_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_15_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_15_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_16_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_16_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_16_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_16_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_17_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_17_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_17_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_17_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_18_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_18_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_18_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_18_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_19_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_19_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_19_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_19_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_20_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_20_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_20_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_20_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_21_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_21_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_21_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_21_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_22_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_22_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_22_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_22_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_23_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_23_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_23_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_23_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_24_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_24_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_24_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_24_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_25_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_25_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_25_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_25_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_26_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_26_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_26_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_26_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_27_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_27_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_27_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_27_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_28_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_28_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_28_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_28_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_29_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_29_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_29_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_29_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_30_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_30_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_30_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_30_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_llike_31_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_31_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_621_llike_31_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_llike_31_d0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_621_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_init_0_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_621_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_init_1_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_621_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_init_2_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_621_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_init_3_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_621_init_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_init_4_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_621_init_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_init_5_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_621_init_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_init_6_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_621_init_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_init_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_emission_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_emission_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_emission_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_emission_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_emission_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_emission_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_emission_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_emission_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_emission_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_emission_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_621_emission_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_621_emission_7_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_ce;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_done;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_idle;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_ce0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_we0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_d0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_ce1;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_0_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_1_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_2_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_3_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_4_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_4_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_5_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_5_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_6_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_6_ce0;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_7_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_address1;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_0_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_1_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_2_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_3_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_4_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_5_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_6_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_7_address0;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_7_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_opcode;
wire    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_775_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_775_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_775_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_775_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_8_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_8_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_9_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_9_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_10_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_10_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_11_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_11_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_12_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_12_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_13_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_13_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_14_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_14_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_15_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_15_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_16_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_16_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_17_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_17_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_18_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_18_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_19_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_19_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_20_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_20_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_21_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_21_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_22_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_22_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_23_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_23_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_24_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_24_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_25_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_25_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_26_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_26_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_27_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_27_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_28_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_28_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_29_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_29_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_30_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_30_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_775_llike_31_address0;
wire    grp_viterbi_Pipeline_L_end_fu_775_llike_31_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_775_min_s_16_out;
wire    grp_viterbi_Pipeline_L_end_fu_775_min_s_16_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_813_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_813_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_813_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_813_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_4_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_5_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_6_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_7_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_8_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_8_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_9_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_9_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_10_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_10_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_11_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_11_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_12_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_12_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_13_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_13_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_14_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_14_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_15_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_15_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_16_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_16_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_17_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_17_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_18_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_18_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_19_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_19_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_20_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_20_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_21_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_21_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_22_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_22_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_23_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_23_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_24_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_24_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_25_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_25_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_26_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_26_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_27_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_27_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_28_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_28_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_29_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_29_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_30_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_30_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_llike_31_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_llike_31_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_0_address1;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_4_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_4_address1;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_5_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_5_address1;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_6_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_6_address1;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_7_address0;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_813_transition_7_address1;
wire    grp_viterbi_Pipeline_L_state_fu_813_transition_7_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_813_min_s_34_out;
wire    grp_viterbi_Pipeline_L_state_fu_813_min_s_34_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_621_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_viterbi_Pipeline_L_end_fu_775_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [7:0] min_s_16_loc_fu_174;
reg    grp_viterbi_Pipeline_L_state_fu_813_ap_start_reg;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
reg   [7:0] min_s_34_loc_fu_170;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln52_fu_935_p1;
wire   [0:0] tmp_fu_907_p3;
wire   [63:0] zext_ln52_2_fu_952_p1;
wire   [63:0] zext_ln52_1_fu_1014_p1;
wire   [63:0] zext_ln6_fu_1106_p1;
wire    ap_CS_fsm_state25;
reg   [8:0] t_fu_166;
wire   [8:0] add_ln50_fu_1129_p2;
reg    obs_0_ce0_local;
reg    llike_ce0_local;
reg   [8:0] llike_address0_local;
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
reg   [63:0] grp_fu_871_p0;
reg   [63:0] grp_fu_871_p1;
wire    ap_CS_fsm_state15;
wire   [7:0] add_ln52_fu_919_p2;
wire   [4:0] lshr_ln1_fu_925_p4;
wire   [7:0] tmp_67_fu_960_p17;
wire   [2:0] tmp_67_fu_960_p18;
wire   [7:0] tmp_67_fu_960_p19;
wire   [63:0] tmp_68_fu_1058_p2;
wire   [63:0] tmp_68_fu_1058_p4;
wire   [63:0] tmp_68_fu_1058_p6;
wire   [63:0] tmp_68_fu_1058_p8;
wire   [63:0] tmp_68_fu_1058_p10;
wire   [63:0] tmp_68_fu_1058_p12;
wire   [63:0] tmp_68_fu_1058_p14;
wire   [63:0] tmp_68_fu_1058_p16;
wire   [63:0] tmp_68_fu_1058_p17;
wire   [4:0] lshr_ln6_1_fu_1097_p4;
reg    grp_fu_871_ce;
wire   [0:0] grp_fu_1304_p2;
reg   [63:0] grp_fu_1304_p0;
reg   [63:0] grp_fu_1304_p1;
reg    grp_fu_1304_ce;
reg   [4:0] grp_fu_1304_opcode;
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
wire  signed [2:0] tmp_67_fu_960_p1;
wire   [2:0] tmp_67_fu_960_p3;
wire   [2:0] tmp_67_fu_960_p5;
wire   [2:0] tmp_67_fu_960_p7;
wire   [2:0] tmp_67_fu_960_p9;
wire  signed [2:0] tmp_67_fu_960_p11;
wire  signed [2:0] tmp_67_fu_960_p13;
wire  signed [2:0] tmp_67_fu_960_p15;
wire   [2:0] tmp_68_fu_1058_p1;
wire   [2:0] tmp_68_fu_1058_p3;
wire   [2:0] tmp_68_fu_1058_p5;
wire   [2:0] tmp_68_fu_1058_p7;
wire  signed [2:0] tmp_68_fu_1058_p9;
wire  signed [2:0] tmp_68_fu_1058_p11;
wire  signed [2:0] tmp_68_fu_1058_p13;
wire  signed [2:0] tmp_68_fu_1058_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 25'd1;
#0 grp_viterbi_Pipeline_L_init_fu_621_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_775_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_813_ap_start_reg = 1'b0;
#0 t_fu_166 = 9'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_address1),.ce1(llike_4_ce1),.q1(llike_4_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_address1),.ce1(llike_5_ce1),.q1(llike_5_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_address1),.ce1(llike_6_ce1),.q1(llike_6_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_address1),.ce1(llike_7_ce1),.q1(llike_7_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_8_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_8_address0),.ce0(llike_8_ce0),.we0(llike_8_we0),.d0(llike_8_d0),.q0(llike_8_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_address1),.ce1(llike_8_ce1),.q1(llike_8_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_9_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_9_address0),.ce0(llike_9_ce0),.we0(llike_9_we0),.d0(llike_9_d0),.q0(llike_9_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_address1),.ce1(llike_9_ce1),.q1(llike_9_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_10_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_10_address0),.ce0(llike_10_ce0),.we0(llike_10_we0),.d0(llike_10_d0),.q0(llike_10_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_address1),.ce1(llike_10_ce1),.q1(llike_10_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_11_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_11_address0),.ce0(llike_11_ce0),.we0(llike_11_we0),.d0(llike_11_d0),.q0(llike_11_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_address1),.ce1(llike_11_ce1),.q1(llike_11_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_12_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_12_address0),.ce0(llike_12_ce0),.we0(llike_12_we0),.d0(llike_12_d0),.q0(llike_12_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_address1),.ce1(llike_12_ce1),.q1(llike_12_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_13_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_13_address0),.ce0(llike_13_ce0),.we0(llike_13_we0),.d0(llike_13_d0),.q0(llike_13_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_address1),.ce1(llike_13_ce1),.q1(llike_13_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_14_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_14_address0),.ce0(llike_14_ce0),.we0(llike_14_we0),.d0(llike_14_d0),.q0(llike_14_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_address1),.ce1(llike_14_ce1),.q1(llike_14_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_15_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_15_address0),.ce0(llike_15_ce0),.we0(llike_15_we0),.d0(llike_15_d0),.q0(llike_15_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_address1),.ce1(llike_15_ce1),.q1(llike_15_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_16_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_16_address0),.ce0(llike_16_ce0),.we0(llike_16_we0),.d0(llike_16_d0),.q0(llike_16_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_address1),.ce1(llike_16_ce1),.q1(llike_16_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_17_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_17_address0),.ce0(llike_17_ce0),.we0(llike_17_we0),.d0(llike_17_d0),.q0(llike_17_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_address1),.ce1(llike_17_ce1),.q1(llike_17_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_18_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_18_address0),.ce0(llike_18_ce0),.we0(llike_18_we0),.d0(llike_18_d0),.q0(llike_18_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_address1),.ce1(llike_18_ce1),.q1(llike_18_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_19_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_19_address0),.ce0(llike_19_ce0),.we0(llike_19_we0),.d0(llike_19_d0),.q0(llike_19_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_address1),.ce1(llike_19_ce1),.q1(llike_19_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_20_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_20_address0),.ce0(llike_20_ce0),.we0(llike_20_we0),.d0(llike_20_d0),.q0(llike_20_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_address1),.ce1(llike_20_ce1),.q1(llike_20_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_21_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_21_address0),.ce0(llike_21_ce0),.we0(llike_21_we0),.d0(llike_21_d0),.q0(llike_21_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_address1),.ce1(llike_21_ce1),.q1(llike_21_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_22_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_22_address0),.ce0(llike_22_ce0),.we0(llike_22_we0),.d0(llike_22_d0),.q0(llike_22_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_address1),.ce1(llike_22_ce1),.q1(llike_22_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_23_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_23_address0),.ce0(llike_23_ce0),.we0(llike_23_we0),.d0(llike_23_d0),.q0(llike_23_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_address1),.ce1(llike_23_ce1),.q1(llike_23_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_24_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_24_address0),.ce0(llike_24_ce0),.we0(llike_24_we0),.d0(llike_24_d0),.q0(llike_24_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_address1),.ce1(llike_24_ce1),.q1(llike_24_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_25_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_25_address0),.ce0(llike_25_ce0),.we0(llike_25_we0),.d0(llike_25_d0),.q0(llike_25_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_address1),.ce1(llike_25_ce1),.q1(llike_25_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_26_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_26_address0),.ce0(llike_26_ce0),.we0(llike_26_we0),.d0(llike_26_d0),.q0(llike_26_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_address1),.ce1(llike_26_ce1),.q1(llike_26_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_27_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_27_address0),.ce0(llike_27_ce0),.we0(llike_27_we0),.d0(llike_27_d0),.q0(llike_27_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_address1),.ce1(llike_27_ce1),.q1(llike_27_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_28_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_28_address0),.ce0(llike_28_ce0),.we0(llike_28_we0),.d0(llike_28_d0),.q0(llike_28_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_address1),.ce1(llike_28_ce1),.q1(llike_28_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_29_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_29_address0),.ce0(llike_29_ce0),.we0(llike_29_we0),.d0(llike_29_d0),.q0(llike_29_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_address1),.ce1(llike_29_ce1),.q1(llike_29_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_30_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_30_address0),.ce0(llike_30_ce0),.we0(llike_30_we0),.d0(llike_30_d0),.q0(llike_30_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_address1),.ce1(llike_30_ce1),.q1(llike_30_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_31_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_31_address0),.ce0(llike_31_ce0),.we0(llike_31_we0),.d0(llike_31_d0),.q0(llike_31_q0),.address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_address1),.ce1(llike_31_ce1),.q1(llike_31_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_621(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_621_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_621_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_621_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_621_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_7_d0),.llike_8_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_8_ce0),.llike_8_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_8_we0),.llike_8_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_8_d0),.llike_9_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_9_ce0),.llike_9_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_9_we0),.llike_9_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_9_d0),.llike_10_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_10_ce0),.llike_10_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_10_we0),.llike_10_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_10_d0),.llike_11_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_11_ce0),.llike_11_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_11_we0),.llike_11_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_11_d0),.llike_12_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_12_ce0),.llike_12_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_12_we0),.llike_12_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_12_d0),.llike_13_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_13_ce0),.llike_13_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_13_we0),.llike_13_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_13_d0),.llike_14_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_14_ce0),.llike_14_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_14_we0),.llike_14_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_14_d0),.llike_15_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_15_ce0),.llike_15_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_15_we0),.llike_15_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_15_d0),.llike_16_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_16_ce0),.llike_16_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_16_we0),.llike_16_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_16_d0),.llike_17_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_17_ce0),.llike_17_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_17_we0),.llike_17_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_17_d0),.llike_18_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_18_ce0),.llike_18_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_18_we0),.llike_18_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_18_d0),.llike_19_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_19_ce0),.llike_19_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_19_we0),.llike_19_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_19_d0),.llike_20_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_20_ce0),.llike_20_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_20_we0),.llike_20_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_20_d0),.llike_21_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_21_ce0),.llike_21_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_21_we0),.llike_21_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_21_d0),.llike_22_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_22_ce0),.llike_22_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_22_we0),.llike_22_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_22_d0),.llike_23_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_23_ce0),.llike_23_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_23_we0),.llike_23_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_23_d0),.llike_24_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_24_ce0),.llike_24_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_24_we0),.llike_24_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_24_d0),.llike_25_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_25_ce0),.llike_25_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_25_we0),.llike_25_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_25_d0),.llike_26_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_26_ce0),.llike_26_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_26_we0),.llike_26_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_26_d0),.llike_27_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_27_ce0),.llike_27_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_27_we0),.llike_27_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_27_d0),.llike_28_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_28_ce0),.llike_28_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_28_we0),.llike_28_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_28_d0),.llike_29_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_29_ce0),.llike_29_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_29_we0),.llike_29_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_29_d0),.llike_30_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_30_ce0),.llike_30_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_30_we0),.llike_30_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_30_d0),.llike_31_address0(grp_viterbi_Pipeline_L_init_fu_621_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_init_fu_621_llike_31_ce0),.llike_31_we0(grp_viterbi_Pipeline_L_init_fu_621_llike_31_we0),.llike_31_d0(grp_viterbi_Pipeline_L_init_fu_621_llike_31_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_621_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_621_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_621_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_621_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_621_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_621_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_621_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_621_init_3_ce0),.init_3_q0(init_3_q0),.init_4_address0(grp_viterbi_Pipeline_L_init_fu_621_init_4_address0),.init_4_ce0(grp_viterbi_Pipeline_L_init_fu_621_init_4_ce0),.init_4_q0(init_4_q0),.init_5_address0(grp_viterbi_Pipeline_L_init_fu_621_init_5_address0),.init_5_ce0(grp_viterbi_Pipeline_L_init_fu_621_init_5_ce0),.init_5_q0(init_5_q0),.init_6_address0(grp_viterbi_Pipeline_L_init_fu_621_init_6_address0),.init_6_ce0(grp_viterbi_Pipeline_L_init_fu_621_init_6_ce0),.init_6_q0(init_6_q0),.init_7_address0(grp_viterbi_Pipeline_L_init_fu_621_init_7_address0),.init_7_ce0(grp_viterbi_Pipeline_L_init_fu_621_init_7_ce0),.init_7_q0(init_7_q0),.conv3_udiv_cast(conv3_udiv_reg_1168),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_621_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_621_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_621_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_621_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_621_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_621_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_621_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_621_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_4_address0(grp_viterbi_Pipeline_L_init_fu_621_emission_4_address0),.emission_4_ce0(grp_viterbi_Pipeline_L_init_fu_621_emission_4_ce0),.emission_4_q0(emission_4_q0),.emission_5_address0(grp_viterbi_Pipeline_L_init_fu_621_emission_5_address0),.emission_5_ce0(grp_viterbi_Pipeline_L_init_fu_621_emission_5_ce0),.emission_5_q0(emission_5_q0),.emission_6_address0(grp_viterbi_Pipeline_L_init_fu_621_emission_6_address0),.emission_6_ce0(grp_viterbi_Pipeline_L_init_fu_621_emission_6_ce0),.emission_6_q0(emission_6_q0),.emission_7_address0(grp_viterbi_Pipeline_L_init_fu_621_emission_7_address0),.emission_7_ce0(grp_viterbi_Pipeline_L_init_fu_621_emission_7_ce0),.emission_7_q0(emission_7_q0),.empty(empty_reg_1163),.grp_fu_871_p_din0(grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_din0),.grp_fu_871_p_din1(grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_din1),.grp_fu_871_p_opcode(grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_opcode),.grp_fu_871_p_dout0(grp_fu_871_p2),.grp_fu_871_p_ce(grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_ce));
viterbi_viterbi_Pipeline_L_timestep_L_curr_state grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start),.ap_done(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_done),.ap_idle(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_d0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_d0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_d0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_d0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_d0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_d0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_ce1),.llike_7_q1(llike_7_q1),.llike_8_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_ce0),.llike_8_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_we0),.llike_8_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_d0),.llike_8_q0(llike_8_q0),.llike_8_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_address1),.llike_8_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_ce1),.llike_8_q1(llike_8_q1),.llike_9_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_ce0),.llike_9_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_we0),.llike_9_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_d0),.llike_9_q0(llike_9_q0),.llike_9_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_address1),.llike_9_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_ce1),.llike_9_q1(llike_9_q1),.llike_10_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_ce0),.llike_10_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_we0),.llike_10_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_d0),.llike_10_q0(llike_10_q0),.llike_10_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_address1),.llike_10_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_ce1),.llike_10_q1(llike_10_q1),.llike_11_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_ce0),.llike_11_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_we0),.llike_11_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_d0),.llike_11_q0(llike_11_q0),.llike_11_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_address1),.llike_11_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_ce1),.llike_11_q1(llike_11_q1),.llike_12_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_ce0),.llike_12_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_we0),.llike_12_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_d0),.llike_12_q0(llike_12_q0),.llike_12_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_address1),.llike_12_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_ce1),.llike_12_q1(llike_12_q1),.llike_13_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_ce0),.llike_13_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_we0),.llike_13_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_d0),.llike_13_q0(llike_13_q0),.llike_13_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_address1),.llike_13_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_ce1),.llike_13_q1(llike_13_q1),.llike_14_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_ce0),.llike_14_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_we0),.llike_14_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_d0),.llike_14_q0(llike_14_q0),.llike_14_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_address1),.llike_14_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_ce1),.llike_14_q1(llike_14_q1),.llike_15_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_ce0),.llike_15_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_we0),.llike_15_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_d0),.llike_15_q0(llike_15_q0),.llike_15_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_address1),.llike_15_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_ce1),.llike_15_q1(llike_15_q1),.llike_16_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_ce0),.llike_16_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_we0),.llike_16_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_d0),.llike_16_q0(llike_16_q0),.llike_16_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_address1),.llike_16_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_ce1),.llike_16_q1(llike_16_q1),.llike_17_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_ce0),.llike_17_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_we0),.llike_17_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_d0),.llike_17_q0(llike_17_q0),.llike_17_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_address1),.llike_17_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_ce1),.llike_17_q1(llike_17_q1),.llike_18_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_ce0),.llike_18_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_we0),.llike_18_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_d0),.llike_18_q0(llike_18_q0),.llike_18_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_address1),.llike_18_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_ce1),.llike_18_q1(llike_18_q1),.llike_19_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_ce0),.llike_19_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_we0),.llike_19_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_d0),.llike_19_q0(llike_19_q0),.llike_19_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_address1),.llike_19_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_ce1),.llike_19_q1(llike_19_q1),.llike_20_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_ce0),.llike_20_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_we0),.llike_20_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_d0),.llike_20_q0(llike_20_q0),.llike_20_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_address1),.llike_20_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_ce1),.llike_20_q1(llike_20_q1),.llike_21_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_ce0),.llike_21_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_we0),.llike_21_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_d0),.llike_21_q0(llike_21_q0),.llike_21_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_address1),.llike_21_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_ce1),.llike_21_q1(llike_21_q1),.llike_22_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_ce0),.llike_22_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_we0),.llike_22_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_d0),.llike_22_q0(llike_22_q0),.llike_22_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_address1),.llike_22_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_ce1),.llike_22_q1(llike_22_q1),.llike_23_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_ce0),.llike_23_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_we0),.llike_23_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_d0),.llike_23_q0(llike_23_q0),.llike_23_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_address1),.llike_23_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_ce1),.llike_23_q1(llike_23_q1),.llike_24_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_ce0),.llike_24_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_we0),.llike_24_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_d0),.llike_24_q0(llike_24_q0),.llike_24_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_address1),.llike_24_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_ce1),.llike_24_q1(llike_24_q1),.llike_25_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_ce0),.llike_25_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_we0),.llike_25_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_d0),.llike_25_q0(llike_25_q0),.llike_25_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_address1),.llike_25_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_ce1),.llike_25_q1(llike_25_q1),.llike_26_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_ce0),.llike_26_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_we0),.llike_26_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_d0),.llike_26_q0(llike_26_q0),.llike_26_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_address1),.llike_26_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_ce1),.llike_26_q1(llike_26_q1),.llike_27_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_ce0),.llike_27_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_we0),.llike_27_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_d0),.llike_27_q0(llike_27_q0),.llike_27_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_address1),.llike_27_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_ce1),.llike_27_q1(llike_27_q1),.llike_28_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_ce0),.llike_28_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_we0),.llike_28_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_d0),.llike_28_q0(llike_28_q0),.llike_28_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_address1),.llike_28_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_ce1),.llike_28_q1(llike_28_q1),.llike_29_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_ce0),.llike_29_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_we0),.llike_29_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_d0),.llike_29_q0(llike_29_q0),.llike_29_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_address1),.llike_29_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_ce1),.llike_29_q1(llike_29_q1),.llike_30_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_ce0),.llike_30_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_we0),.llike_30_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_d0),.llike_30_q0(llike_30_q0),.llike_30_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_address1),.llike_30_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_ce1),.llike_30_q1(llike_30_q1),.llike_31_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_ce0),.llike_31_we0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_we0),.llike_31_d0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_d0),.llike_31_q0(llike_31_q0),.llike_31_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_address1),.llike_31_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_ce1),.llike_31_q1(llike_31_q1),.obs_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_0_address0),.obs_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_0_ce0),.obs_0_q0(obs_0_q0),.obs_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_1_address0),.obs_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_1_ce0),.obs_1_q0(obs_1_q0),.obs_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_2_address0),.obs_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_2_ce0),.obs_2_q0(obs_2_q0),.obs_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_3_address0),.obs_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_3_ce0),.obs_3_q0(obs_3_q0),.obs_4_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_4_address0),.obs_4_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_4_ce0),.obs_4_q0(obs_4_q0),.obs_5_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_5_address0),.obs_5_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_5_ce0),.obs_5_q0(obs_5_q0),.obs_6_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_6_address0),.obs_6_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_6_ce0),.obs_6_q0(obs_6_q0),.obs_7_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_7_address0),.obs_7_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_7_ce0),.obs_7_q0(obs_7_q0),.transition_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_ce1),.transition_3_q1(transition_3_q1),.transition_4_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_address0),.transition_4_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_ce0),.transition_4_q0(transition_4_q0),.transition_4_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_address1),.transition_4_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_ce1),.transition_4_q1(transition_4_q1),.transition_5_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_address0),.transition_5_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_ce0),.transition_5_q0(transition_5_q0),.transition_5_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_address1),.transition_5_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_ce1),.transition_5_q1(transition_5_q1),.transition_6_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_address0),.transition_6_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_ce0),.transition_6_q0(transition_6_q0),.transition_6_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_address1),.transition_6_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_ce1),.transition_6_q1(transition_6_q1),.transition_7_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_address0),.transition_7_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_ce0),.transition_7_q0(transition_7_q0),.transition_7_address1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_address1),.transition_7_ce1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_ce1),.transition_7_q1(transition_7_q1),.emission_0_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_4_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_4_address0),.emission_4_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_4_ce0),.emission_4_q0(emission_4_q0),.emission_5_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_5_address0),.emission_5_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_5_ce0),.emission_5_q0(emission_5_q0),.emission_6_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_6_address0),.emission_6_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_6_ce0),.emission_6_q0(emission_6_q0),.emission_7_address0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_7_address0),.emission_7_ce0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_7_ce0),.emission_7_q0(emission_7_q0),.grp_fu_871_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_din0),.grp_fu_871_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_din1),.grp_fu_871_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_opcode),.grp_fu_871_p_dout0(grp_fu_871_p2),.grp_fu_871_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_ce),.grp_fu_1304_p_din0(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_din0),.grp_fu_1304_p_din1(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_din1),.grp_fu_1304_p_opcode(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_opcode),.grp_fu_1304_p_dout0(grp_fu_1304_p2),.grp_fu_1304_p_ce(grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_775(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_775_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_775_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_775_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_775_ap_ready),.min_p(reg_875),.llike_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_16_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_16_ce0),.llike_16_q0(llike_16_q0),.llike_17_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_17_ce0),.llike_17_q0(llike_17_q0),.llike_18_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_18_ce0),.llike_18_q0(llike_18_q0),.llike_19_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_19_ce0),.llike_19_q0(llike_19_q0),.llike_20_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_20_ce0),.llike_20_q0(llike_20_q0),.llike_21_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_21_ce0),.llike_21_q0(llike_21_q0),.llike_22_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_22_ce0),.llike_22_q0(llike_22_q0),.llike_23_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_23_ce0),.llike_23_q0(llike_23_q0),.llike_24_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_24_ce0),.llike_24_q0(llike_24_q0),.llike_25_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_25_ce0),.llike_25_q0(llike_25_q0),.llike_26_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_26_ce0),.llike_26_q0(llike_26_q0),.llike_27_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_27_ce0),.llike_27_q0(llike_27_q0),.llike_28_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_28_ce0),.llike_28_q0(llike_28_q0),.llike_29_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_29_ce0),.llike_29_q0(llike_29_q0),.llike_30_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_30_ce0),.llike_30_q0(llike_30_q0),.llike_31_address0(grp_viterbi_Pipeline_L_end_fu_775_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_end_fu_775_llike_31_ce0),.llike_31_q0(llike_31_q0),.min_s_16_out(grp_viterbi_Pipeline_L_end_fu_775_min_s_16_out),.min_s_16_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_775_min_s_16_out_ap_vld),.grp_fu_1304_p_din0(grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_din0),.grp_fu_1304_p_din1(grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_din1),.grp_fu_1304_p_opcode(grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_opcode),.grp_fu_1304_p_dout0(grp_fu_1304_p2),.grp_fu_1304_p_ce(grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_813(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_813_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_813_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_813_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_813_ap_ready),.min_p_195(min_p_194_reg_1299),.t_1(trunc_ln50_reg_1184),.llike_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_16_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_16_ce0),.llike_16_q0(llike_16_q0),.llike_17_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_17_ce0),.llike_17_q0(llike_17_q0),.llike_18_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_18_ce0),.llike_18_q0(llike_18_q0),.llike_19_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_19_ce0),.llike_19_q0(llike_19_q0),.llike_20_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_20_ce0),.llike_20_q0(llike_20_q0),.llike_21_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_21_ce0),.llike_21_q0(llike_21_q0),.llike_22_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_22_ce0),.llike_22_q0(llike_22_q0),.llike_23_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_23_ce0),.llike_23_q0(llike_23_q0),.llike_24_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_24_ce0),.llike_24_q0(llike_24_q0),.llike_25_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_25_ce0),.llike_25_q0(llike_25_q0),.llike_26_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_26_ce0),.llike_26_q0(llike_26_q0),.llike_27_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_27_ce0),.llike_27_q0(llike_27_q0),.llike_28_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_28_ce0),.llike_28_q0(llike_28_q0),.llike_29_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_29_ce0),.llike_29_q0(llike_29_q0),.llike_30_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_30_ce0),.llike_30_q0(llike_30_q0),.llike_31_address0(grp_viterbi_Pipeline_L_state_fu_813_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_state_fu_813_llike_31_ce0),.llike_31_q0(llike_31_q0),.zext_ln52_2(lshr_ln52_1_reg_1249),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_813_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_813_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_state_fu_813_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_state_fu_813_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_813_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_813_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_state_fu_813_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_state_fu_813_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_state_fu_813_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_state_fu_813_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_state_fu_813_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_state_fu_813_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_state_fu_813_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_state_fu_813_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_state_fu_813_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_state_fu_813_transition_3_ce1),.transition_3_q1(transition_3_q1),.transition_4_address0(grp_viterbi_Pipeline_L_state_fu_813_transition_4_address0),.transition_4_ce0(grp_viterbi_Pipeline_L_state_fu_813_transition_4_ce0),.transition_4_q0(transition_4_q0),.transition_4_address1(grp_viterbi_Pipeline_L_state_fu_813_transition_4_address1),.transition_4_ce1(grp_viterbi_Pipeline_L_state_fu_813_transition_4_ce1),.transition_4_q1(transition_4_q1),.transition_5_address0(grp_viterbi_Pipeline_L_state_fu_813_transition_5_address0),.transition_5_ce0(grp_viterbi_Pipeline_L_state_fu_813_transition_5_ce0),.transition_5_q0(transition_5_q0),.transition_5_address1(grp_viterbi_Pipeline_L_state_fu_813_transition_5_address1),.transition_5_ce1(grp_viterbi_Pipeline_L_state_fu_813_transition_5_ce1),.transition_5_q1(transition_5_q1),.transition_6_address0(grp_viterbi_Pipeline_L_state_fu_813_transition_6_address0),.transition_6_ce0(grp_viterbi_Pipeline_L_state_fu_813_transition_6_ce0),.transition_6_q0(transition_6_q0),.transition_6_address1(grp_viterbi_Pipeline_L_state_fu_813_transition_6_address1),.transition_6_ce1(grp_viterbi_Pipeline_L_state_fu_813_transition_6_ce1),.transition_6_q1(transition_6_q1),.transition_7_address0(grp_viterbi_Pipeline_L_state_fu_813_transition_7_address0),.transition_7_ce0(grp_viterbi_Pipeline_L_state_fu_813_transition_7_ce0),.transition_7_q0(transition_7_q0),.transition_7_address1(grp_viterbi_Pipeline_L_state_fu_813_transition_7_address1),.transition_7_ce1(grp_viterbi_Pipeline_L_state_fu_813_transition_7_ce1),.transition_7_q1(transition_7_q1),.empty(trunc_ln52_reg_1243),.zext_ln52_3(shl_ln52_reg_1229),.min_s_34_out(grp_viterbi_Pipeline_L_state_fu_813_min_s_34_out),.min_s_34_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_813_min_s_34_out_ap_vld),.grp_fu_871_p_din0(grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_din0),.grp_fu_871_p_din1(grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_din1),.grp_fu_871_p_opcode(grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_opcode),.grp_fu_871_p_dout0(grp_fu_871_p2),.grp_fu_871_p_ce(grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_ce),.grp_fu_1304_p_din0(grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_din0),.grp_fu_1304_p_din1(grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_din1),.grp_fu_1304_p_opcode(grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_opcode),.grp_fu_1304_p_dout0(grp_fu_1304_p2),.grp_fu_1304_p_ce(grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U332(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_871_p0),.din1(grp_fu_871_p1),.ce(grp_fu_871_ce),.dout(grp_fu_871_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 8 ),.CASE1( 3'h0 ),.din1_WIDTH( 8 ),.CASE2( 3'h1 ),.din2_WIDTH( 8 ),.CASE3( 3'h2 ),.din3_WIDTH( 8 ),.CASE4( 3'h3 ),.din4_WIDTH( 8 ),.CASE5( 3'h4 ),.din5_WIDTH( 8 ),.CASE6( 3'h5 ),.din6_WIDTH( 8 ),.CASE7( 3'h6 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_x_U333(.din0(path_0_q0),.din1(path_1_q0),.din2(path_2_q0),.din3(path_3_q0),.din4(path_4_q0),.din5(path_5_q0),.din6(path_6_q0),.din7(path_7_q0),.def(tmp_67_fu_960_p17),.sel(tmp_67_fu_960_p18),.dout(tmp_67_fu_960_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U334(.din0(tmp_68_fu_1058_p2),.din1(tmp_68_fu_1058_p4),.din2(tmp_68_fu_1058_p6),.din3(tmp_68_fu_1058_p8),.din4(tmp_68_fu_1058_p10),.din5(tmp_68_fu_1058_p12),.din6(tmp_68_fu_1058_p14),.din7(tmp_68_fu_1058_p16),.def(tmp_68_fu_1058_p17),.sel(trunc_ln52_reg_1243),.dout(tmp_68_fu_1058_p19));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U335(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1304_p0),.din1(grp_fu_1304_p1),.ce(grp_fu_1304_ce),.opcode(grp_fu_1304_opcode),.dout(grp_fu_1304_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_775_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_viterbi_Pipeline_L_end_fu_775_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_775_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_775_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_621_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_621_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_621_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_621_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_813_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            grp_viterbi_Pipeline_L_state_fu_813_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_813_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_813_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_166 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        t_fu_166 <= add_ln50_fu_1129_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_1168 <= {{obs_0_q0[7:3]}};
        empty_reg_1163 <= empty_fu_886_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        lshr_ln52_1_reg_1249 <= {{tmp_67_fu_960_p19[7:3]}};
        shl_ln52_reg_1229[8 : 1] <= shl_ln52_fu_947_p2[8 : 1];
        trunc_ln50_1_reg_1239 <= trunc_ln50_1_fu_957_p1;
        trunc_ln52_reg_1243 <= trunc_ln52_fu_1000_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        min_p_194_reg_1299 <= grp_fu_871_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_viterbi_Pipeline_L_end_fu_775_min_s_16_out_ap_vld == 1'b1))) begin
        min_s_16_loc_fu_174 <= grp_viterbi_Pipeline_L_end_fu_775_min_s_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_813_min_s_34_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
        min_s_34_loc_fu_170 <= grp_viterbi_Pipeline_L_state_fu_813_min_s_34_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_875 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        tmp_68_reg_1294 <= tmp_68_fu_1058_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        trunc_ln50_reg_1184 <= trunc_ln50_fu_915_p1;
    end
end
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_775_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_state_fu_813_ap_done == 1'b0)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
    end
end
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_621_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_907_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
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
    if (((tmp_fu_907_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_621_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_621_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_621_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_621_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_621_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_621_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_621_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_621_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_4_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_address0 = grp_viterbi_Pipeline_L_init_fu_621_emission_4_address0;
    end else begin
        emission_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_4_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_ce0 = grp_viterbi_Pipeline_L_init_fu_621_emission_4_ce0;
    end else begin
        emission_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_5_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_address0 = grp_viterbi_Pipeline_L_init_fu_621_emission_5_address0;
    end else begin
        emission_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_5_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_ce0 = grp_viterbi_Pipeline_L_init_fu_621_emission_5_ce0;
    end else begin
        emission_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_6_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_address0 = grp_viterbi_Pipeline_L_init_fu_621_emission_6_address0;
    end else begin
        emission_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_6_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_ce0 = grp_viterbi_Pipeline_L_init_fu_621_emission_6_ce0;
    end else begin
        emission_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_7_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_address0 = grp_viterbi_Pipeline_L_init_fu_621_emission_7_address0;
    end else begin
        emission_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        emission_7_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_emission_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_ce0 = grp_viterbi_Pipeline_L_init_fu_621_emission_7_ce0;
    end else begin
        emission_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1304_ce = grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1304_ce = grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1304_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_ce;
    end else begin
        grp_fu_1304_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1304_opcode = grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1304_opcode = grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1304_opcode = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_opcode;
    end else begin
        grp_fu_1304_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1304_p0 = grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1304_p0 = grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1304_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_din0;
    end else begin
        grp_fu_1304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1304_p1 = grp_viterbi_Pipeline_L_state_fu_813_grp_fu_1304_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1304_p1 = grp_viterbi_Pipeline_L_end_fu_775_grp_fu_1304_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1304_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_1304_p_din1;
    end else begin
        grp_fu_1304_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_871_ce = grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_871_ce = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_871_ce = grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_ce;
    end else begin
        grp_fu_871_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_871_p0 = grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_871_p0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_871_p0 = grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_871_p0 = reg_875;
    end else begin
        grp_fu_871_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_871_p1 = grp_viterbi_Pipeline_L_state_fu_813_grp_fu_871_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_871_p1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_grp_fu_871_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_871_p1 = grp_viterbi_Pipeline_L_init_fu_621_grp_fu_871_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_871_p1 = tmp_68_reg_1294;
    end else begin
        grp_fu_871_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_10_address0;
    end else begin
        llike_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_10_ce0;
    end else begin
        llike_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_ce1;
    end else begin
        llike_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_10_d0;
    end else begin
        llike_10_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_10_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_10_we0;
    end else begin
        llike_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_11_address0;
    end else begin
        llike_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_11_ce0;
    end else begin
        llike_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_ce1;
    end else begin
        llike_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_11_d0;
    end else begin
        llike_11_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_11_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_11_we0;
    end else begin
        llike_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_12_address0;
    end else begin
        llike_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_12_ce0;
    end else begin
        llike_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_ce1;
    end else begin
        llike_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_12_d0;
    end else begin
        llike_12_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_12_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_12_we0;
    end else begin
        llike_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_13_address0;
    end else begin
        llike_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_13_ce0;
    end else begin
        llike_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_ce1;
    end else begin
        llike_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_13_d0;
    end else begin
        llike_13_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_13_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_13_we0;
    end else begin
        llike_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_14_address0;
    end else begin
        llike_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_14_ce0;
    end else begin
        llike_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_ce1;
    end else begin
        llike_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_14_d0;
    end else begin
        llike_14_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_14_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_14_we0;
    end else begin
        llike_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_15_address0;
    end else begin
        llike_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_15_ce0;
    end else begin
        llike_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_ce1;
    end else begin
        llike_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_15_d0;
    end else begin
        llike_15_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_15_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_15_we0;
    end else begin
        llike_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_16_address0;
    end else begin
        llike_16_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_16_ce0;
    end else begin
        llike_16_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_16_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_ce1;
    end else begin
        llike_16_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_16_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_16_d0;
    end else begin
        llike_16_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_16_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_16_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_16_we0;
    end else begin
        llike_16_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_17_address0;
    end else begin
        llike_17_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_17_ce0;
    end else begin
        llike_17_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_17_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_ce1;
    end else begin
        llike_17_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_17_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_17_d0;
    end else begin
        llike_17_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_17_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_17_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_17_we0;
    end else begin
        llike_17_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_18_address0;
    end else begin
        llike_18_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_18_ce0;
    end else begin
        llike_18_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_18_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_ce1;
    end else begin
        llike_18_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_18_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_18_d0;
    end else begin
        llike_18_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_18_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_18_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_18_we0;
    end else begin
        llike_18_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_19_address0;
    end else begin
        llike_19_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_19_ce0;
    end else begin
        llike_19_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_19_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_ce1;
    end else begin
        llike_19_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_19_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_19_d0;
    end else begin
        llike_19_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_19_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_19_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_19_we0;
    end else begin
        llike_19_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_20_address0;
    end else begin
        llike_20_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_20_ce0;
    end else begin
        llike_20_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_20_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_ce1;
    end else begin
        llike_20_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_20_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_20_d0;
    end else begin
        llike_20_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_20_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_20_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_20_we0;
    end else begin
        llike_20_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_21_address0;
    end else begin
        llike_21_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_21_ce0;
    end else begin
        llike_21_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_21_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_ce1;
    end else begin
        llike_21_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_21_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_21_d0;
    end else begin
        llike_21_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_21_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_21_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_21_we0;
    end else begin
        llike_21_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_22_address0;
    end else begin
        llike_22_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_22_ce0;
    end else begin
        llike_22_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_22_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_ce1;
    end else begin
        llike_22_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_22_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_22_d0;
    end else begin
        llike_22_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_22_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_22_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_22_we0;
    end else begin
        llike_22_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_23_address0;
    end else begin
        llike_23_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_23_ce0;
    end else begin
        llike_23_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_23_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_ce1;
    end else begin
        llike_23_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_23_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_23_d0;
    end else begin
        llike_23_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_23_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_23_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_23_we0;
    end else begin
        llike_23_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_24_address0;
    end else begin
        llike_24_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_24_ce0;
    end else begin
        llike_24_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_24_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_ce1;
    end else begin
        llike_24_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_24_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_24_d0;
    end else begin
        llike_24_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_24_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_24_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_24_we0;
    end else begin
        llike_24_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_25_address0;
    end else begin
        llike_25_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_25_ce0;
    end else begin
        llike_25_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_25_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_ce1;
    end else begin
        llike_25_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_25_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_25_d0;
    end else begin
        llike_25_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_25_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_25_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_25_we0;
    end else begin
        llike_25_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_26_address0;
    end else begin
        llike_26_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_26_ce0;
    end else begin
        llike_26_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_26_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_ce1;
    end else begin
        llike_26_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_26_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_26_d0;
    end else begin
        llike_26_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_26_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_26_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_26_we0;
    end else begin
        llike_26_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_27_address0;
    end else begin
        llike_27_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_27_ce0;
    end else begin
        llike_27_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_27_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_ce1;
    end else begin
        llike_27_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_27_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_27_d0;
    end else begin
        llike_27_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_27_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_27_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_27_we0;
    end else begin
        llike_27_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_28_address0;
    end else begin
        llike_28_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_28_ce0;
    end else begin
        llike_28_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_28_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_ce1;
    end else begin
        llike_28_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_28_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_28_d0;
    end else begin
        llike_28_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_28_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_28_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_28_we0;
    end else begin
        llike_28_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_29_address0;
    end else begin
        llike_29_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_29_ce0;
    end else begin
        llike_29_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_29_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_ce1;
    end else begin
        llike_29_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_29_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_29_d0;
    end else begin
        llike_29_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_29_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_29_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_29_we0;
    end else begin
        llike_29_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_2_address0;
    end else begin
        llike_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_2_ce0;
    end else begin
        llike_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_2_d0;
    end else begin
        llike_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_2_we0;
    end else begin
        llike_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_30_address0;
    end else begin
        llike_30_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_30_ce0;
    end else begin
        llike_30_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_30_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_ce1;
    end else begin
        llike_30_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_30_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_30_d0;
    end else begin
        llike_30_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_30_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_30_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_30_we0;
    end else begin
        llike_30_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_31_address0;
    end else begin
        llike_31_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_31_ce0;
    end else begin
        llike_31_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_31_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_ce1;
    end else begin
        llike_31_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_31_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_31_d0;
    end else begin
        llike_31_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_31_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_31_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_31_we0;
    end else begin
        llike_31_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_3_address0;
    end else begin
        llike_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_3_ce0;
    end else begin
        llike_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_3_d0;
    end else begin
        llike_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_3_we0;
    end else begin
        llike_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_4_address0;
    end else begin
        llike_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_4_ce0;
    end else begin
        llike_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_4_d0;
    end else begin
        llike_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_4_we0;
    end else begin
        llike_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_5_address0;
    end else begin
        llike_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_5_ce0;
    end else begin
        llike_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_5_d0;
    end else begin
        llike_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_5_we0;
    end else begin
        llike_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_6_address0;
    end else begin
        llike_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_6_ce0;
    end else begin
        llike_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_6_d0;
    end else begin
        llike_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_6_we0;
    end else begin
        llike_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_7_address0;
    end else begin
        llike_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_7_ce0;
    end else begin
        llike_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_7_d0;
    end else begin
        llike_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_7_we0;
    end else begin
        llike_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_8_address0;
    end else begin
        llike_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_8_ce0;
    end else begin
        llike_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_ce1;
    end else begin
        llike_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_8_d0;
    end else begin
        llike_8_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_8_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_8_we0;
    end else begin
        llike_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_9_address0;
    end else begin
        llike_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_9_ce0;
    end else begin
        llike_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_ce1;
    end else begin
        llike_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_9_d0;
    end else begin
        llike_9_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_9_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_9_we0;
    end else begin
        llike_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_813_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_775_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_621_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        llike_address0_local = zext_ln52_2_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = 64'd278;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_813_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_775_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_621_llike_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_d0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_621_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        llike_we0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_621_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_0_address0;
    end else begin
        obs_0_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        obs_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_0_ce0;
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
        path_0_address0_local = zext_ln6_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_0_address0_local = zext_ln52_fu_935_p1;
    end else begin
        path_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25))) begin
        path_0_ce0_local = 1'b1;
    end else begin
        path_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1239 == 3'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_1_address0_local = zext_ln6_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_1_address0_local = zext_ln52_fu_935_p1;
    end else begin
        path_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25))) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1239 == 3'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_2_address0_local = zext_ln6_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_2_address0_local = zext_ln52_fu_935_p1;
    end else begin
        path_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25))) begin
        path_2_ce0_local = 1'b1;
    end else begin
        path_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1239 == 3'd2) & (1'b1 == ap_CS_fsm_state25))) begin
        path_2_we0_local = 1'b1;
    end else begin
        path_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_3_address0_local = zext_ln6_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_address0_local = zext_ln52_fu_935_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        path_3_address0_local = 64'd17;
    end else begin
        path_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state11))) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_3_d0_local = min_s_34_loc_fu_170;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        path_3_d0_local = min_s_16_loc_fu_174;
    end else begin
        path_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((trunc_ln50_1_reg_1239 == 3'd3) & (1'b1 == ap_CS_fsm_state25)))) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_4_address0_local = zext_ln6_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_4_address0_local = zext_ln52_fu_935_p1;
    end else begin
        path_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25))) begin
        path_4_ce0_local = 1'b1;
    end else begin
        path_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1239 == 3'd4) & (1'b1 == ap_CS_fsm_state25))) begin
        path_4_we0_local = 1'b1;
    end else begin
        path_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_5_address0_local = zext_ln6_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_5_address0_local = zext_ln52_fu_935_p1;
    end else begin
        path_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25))) begin
        path_5_ce0_local = 1'b1;
    end else begin
        path_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1239 == 3'd5) & (1'b1 == ap_CS_fsm_state25))) begin
        path_5_we0_local = 1'b1;
    end else begin
        path_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_6_address0_local = zext_ln6_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_6_address0_local = zext_ln52_fu_935_p1;
    end else begin
        path_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25))) begin
        path_6_ce0_local = 1'b1;
    end else begin
        path_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1239 == 3'd6) & (1'b1 == ap_CS_fsm_state25))) begin
        path_6_we0_local = 1'b1;
    end else begin
        path_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        path_7_address0_local = zext_ln6_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_7_address0_local = zext_ln52_fu_935_p1;
    end else begin
        path_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state25))) begin
        path_7_ce0_local = 1'b1;
    end else begin
        path_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1239 == 3'd7) & (1'b1 == ap_CS_fsm_state25))) begin
        path_7_we0_local = 1'b1;
    end else begin
        path_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_813_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln52_1_fu_1014_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_state_fu_813_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_813_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_ce0;
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
        transition_0_ce1 = grp_viterbi_Pipeline_L_state_fu_813_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_813_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln52_1_fu_1014_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_state_fu_813_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_813_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_ce0;
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
        transition_1_ce1 = grp_viterbi_Pipeline_L_state_fu_813_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_state_fu_813_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_address0;
    end else begin
        transition_2_address0 = zext_ln52_1_fu_1014_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_state_fu_813_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_state_fu_813_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_ce0;
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
        transition_2_ce1 = grp_viterbi_Pipeline_L_state_fu_813_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_state_fu_813_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_address0;
    end else begin
        transition_3_address0 = zext_ln52_1_fu_1014_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_state_fu_813_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_state_fu_813_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_ce0;
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
        transition_3_ce1 = grp_viterbi_Pipeline_L_state_fu_813_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_3_ce1;
    end else begin
        transition_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_4_address0 = grp_viterbi_Pipeline_L_state_fu_813_transition_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_4_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_address0;
    end else begin
        transition_4_address0 = zext_ln52_1_fu_1014_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_4_address1 = grp_viterbi_Pipeline_L_state_fu_813_transition_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_4_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_address1;
    end else begin
        transition_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_4_ce0 = grp_viterbi_Pipeline_L_state_fu_813_transition_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_4_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_ce0;
    end else begin
        transition_4_ce0 = transition_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_4_ce1 = grp_viterbi_Pipeline_L_state_fu_813_transition_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_4_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_4_ce1;
    end else begin
        transition_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_5_address0 = grp_viterbi_Pipeline_L_state_fu_813_transition_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_5_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_address0;
    end else begin
        transition_5_address0 = zext_ln52_1_fu_1014_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_5_address1 = grp_viterbi_Pipeline_L_state_fu_813_transition_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_5_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_address1;
    end else begin
        transition_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_5_ce0 = grp_viterbi_Pipeline_L_state_fu_813_transition_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_5_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_ce0;
    end else begin
        transition_5_ce0 = transition_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_5_ce1 = grp_viterbi_Pipeline_L_state_fu_813_transition_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_5_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_5_ce1;
    end else begin
        transition_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_6_address0 = grp_viterbi_Pipeline_L_state_fu_813_transition_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_6_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_address0;
    end else begin
        transition_6_address0 = zext_ln52_1_fu_1014_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_6_address1 = grp_viterbi_Pipeline_L_state_fu_813_transition_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_6_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_address1;
    end else begin
        transition_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_6_ce0 = grp_viterbi_Pipeline_L_state_fu_813_transition_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_6_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_ce0;
    end else begin
        transition_6_ce0 = transition_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_6_ce1 = grp_viterbi_Pipeline_L_state_fu_813_transition_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_6_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_6_ce1;
    end else begin
        transition_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_7_address0 = grp_viterbi_Pipeline_L_state_fu_813_transition_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_7_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_address0;
    end else begin
        transition_7_address0 = zext_ln52_1_fu_1014_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_7_address1 = grp_viterbi_Pipeline_L_state_fu_813_transition_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_7_address1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_address1;
    end else begin
        transition_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_7_ce0 = grp_viterbi_Pipeline_L_state_fu_813_transition_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_7_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_ce0;
    end else begin
        transition_7_ce0 = transition_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        transition_7_ce1 = grp_viterbi_Pipeline_L_state_fu_813_transition_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        transition_7_ce1 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_transition_7_ce1;
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_viterbi_Pipeline_L_init_fu_621_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_viterbi_Pipeline_L_end_fu_775_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((tmp_fu_907_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
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
            if (((1'b1 == ap_CS_fsm_state24) & (grp_viterbi_Pipeline_L_state_fu_813_ap_done == 1'b1))) begin
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
assign add_ln50_fu_1129_p2 = ($signed(t_fu_166) + $signed(9'd511));
assign add_ln52_fu_919_p2 = (trunc_ln50_fu_915_p1 + 8'd1);
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
assign empty_fu_886_p1 = obs_0_q0[2:0];
assign grp_viterbi_Pipeline_L_end_fu_775_ap_start = grp_viterbi_Pipeline_L_end_fu_775_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_621_ap_start = grp_viterbi_Pipeline_L_init_fu_621_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_813_ap_start = grp_viterbi_Pipeline_L_state_fu_813_ap_start_reg;
assign grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_ap_start_reg;
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_621_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_621_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_621_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_621_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_621_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_621_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_621_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_621_init_3_ce0;
assign init_4_address0 = grp_viterbi_Pipeline_L_init_fu_621_init_4_address0;
assign init_4_ce0 = grp_viterbi_Pipeline_L_init_fu_621_init_4_ce0;
assign init_5_address0 = grp_viterbi_Pipeline_L_init_fu_621_init_5_address0;
assign init_5_ce0 = grp_viterbi_Pipeline_L_init_fu_621_init_5_ce0;
assign init_6_address0 = grp_viterbi_Pipeline_L_init_fu_621_init_6_address0;
assign init_6_ce0 = grp_viterbi_Pipeline_L_init_fu_621_init_6_ce0;
assign init_7_address0 = grp_viterbi_Pipeline_L_init_fu_621_init_7_address0;
assign init_7_ce0 = grp_viterbi_Pipeline_L_init_fu_621_init_7_ce0;
assign lshr_ln1_fu_925_p4 = {{add_ln52_fu_919_p2[7:3]}};
assign lshr_ln52_1_fu_1004_p4 = {{tmp_67_fu_960_p19[7:3]}};
assign lshr_ln6_1_fu_1097_p4 = {{t_fu_166[7:3]}};
assign obs_1_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_1_address0;
assign obs_1_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_1_ce0;
assign obs_2_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_2_address0;
assign obs_2_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_2_ce0;
assign obs_3_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_3_address0;
assign obs_3_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_3_ce0;
assign obs_4_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_4_address0;
assign obs_4_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_4_ce0;
assign obs_5_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_5_address0;
assign obs_5_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_5_ce0;
assign obs_6_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_6_address0;
assign obs_6_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_6_ce0;
assign obs_7_address0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_7_address0;
assign obs_7_ce0 = grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_691_obs_7_ce0;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_34_loc_fu_170;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = min_s_34_loc_fu_170;
assign path_1_we0 = path_1_we0_local;
assign path_2_address0 = path_2_address0_local;
assign path_2_ce0 = path_2_ce0_local;
assign path_2_d0 = min_s_34_loc_fu_170;
assign path_2_we0 = path_2_we0_local;
assign path_3_address0 = path_3_address0_local;
assign path_3_ce0 = path_3_ce0_local;
assign path_3_d0 = path_3_d0_local;
assign path_3_we0 = path_3_we0_local;
assign path_4_address0 = path_4_address0_local;
assign path_4_ce0 = path_4_ce0_local;
assign path_4_d0 = min_s_34_loc_fu_170;
assign path_4_we0 = path_4_we0_local;
assign path_5_address0 = path_5_address0_local;
assign path_5_ce0 = path_5_ce0_local;
assign path_5_d0 = min_s_34_loc_fu_170;
assign path_5_we0 = path_5_we0_local;
assign path_6_address0 = path_6_address0_local;
assign path_6_ce0 = path_6_ce0_local;
assign path_6_d0 = min_s_34_loc_fu_170;
assign path_6_we0 = path_6_we0_local;
assign path_7_address0 = path_7_address0_local;
assign path_7_ce0 = path_7_ce0_local;
assign path_7_d0 = min_s_34_loc_fu_170;
assign path_7_we0 = path_7_we0_local;
assign shl_ln52_fu_947_p2 = t_fu_166 << 9'd1;
assign tmp_67_fu_960_p17 = 'bx;
assign tmp_67_fu_960_p18 = t_fu_166[2:0];
assign tmp_68_fu_1058_p10 = transition_4_q0;
assign tmp_68_fu_1058_p12 = transition_5_q0;
assign tmp_68_fu_1058_p14 = transition_6_q0;
assign tmp_68_fu_1058_p16 = transition_7_q0;
assign tmp_68_fu_1058_p17 = 'bx;
assign tmp_68_fu_1058_p2 = transition_0_q0;
assign tmp_68_fu_1058_p4 = transition_1_q0;
assign tmp_68_fu_1058_p6 = transition_2_q0;
assign tmp_68_fu_1058_p8 = transition_3_q0;
assign tmp_fu_907_p3 = t_fu_166[32'd8];
assign trunc_ln50_1_fu_957_p1 = t_fu_166[2:0];
assign trunc_ln50_fu_915_p1 = t_fu_166[7:0];
assign trunc_ln52_fu_1000_p1 = tmp_67_fu_960_p19[2:0];
assign zext_ln52_1_fu_1014_p1 = lshr_ln52_1_fu_1004_p4;
assign zext_ln52_2_fu_952_p1 = shl_ln52_fu_947_p2;
assign zext_ln52_fu_935_p1 = lshr_ln1_fu_925_p4;
assign zext_ln6_fu_1106_p1 = lshr_ln6_1_fu_1097_p4;
always @ (posedge ap_clk) begin
    shl_ln52_reg_1229[0] <= 1'b0;
end
endmodule 