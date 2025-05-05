module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 33'd1;
parameter    ap_ST_fsm_state2 = 33'd2;
parameter    ap_ST_fsm_state3 = 33'd4;
parameter    ap_ST_fsm_state4 = 33'd8;
parameter    ap_ST_fsm_state5 = 33'd16;
parameter    ap_ST_fsm_state6 = 33'd32;
parameter    ap_ST_fsm_state7 = 33'd64;
parameter    ap_ST_fsm_state8 = 33'd128;
parameter    ap_ST_fsm_state9 = 33'd256;
parameter    ap_ST_fsm_state10 = 33'd512;
parameter    ap_ST_fsm_state11 = 33'd1024;
parameter    ap_ST_fsm_state12 = 33'd2048;
parameter    ap_ST_fsm_state13 = 33'd4096;
parameter    ap_ST_fsm_state14 = 33'd8192;
parameter    ap_ST_fsm_state15 = 33'd16384;
parameter    ap_ST_fsm_state16 = 33'd32768;
parameter    ap_ST_fsm_state17 = 33'd65536;
parameter    ap_ST_fsm_state18 = 33'd131072;
parameter    ap_ST_fsm_state19 = 33'd262144;
parameter    ap_ST_fsm_state20 = 33'd524288;
parameter    ap_ST_fsm_state21 = 33'd1048576;
parameter    ap_ST_fsm_state22 = 33'd2097152;
parameter    ap_ST_fsm_state23 = 33'd4194304;
parameter    ap_ST_fsm_state24 = 33'd8388608;
parameter    ap_ST_fsm_state25 = 33'd16777216;
parameter    ap_ST_fsm_state26 = 33'd33554432;
parameter    ap_ST_fsm_state27 = 33'd67108864;
parameter    ap_ST_fsm_state28 = 33'd134217728;
parameter    ap_ST_fsm_state29 = 33'd268435456;
parameter    ap_ST_fsm_state30 = 33'd536870912;
parameter    ap_ST_fsm_state31 = 33'd1073741824;
parameter    ap_ST_fsm_state32 = 33'd2147483648;
parameter    ap_ST_fsm_state33 = 33'd4294967296;
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
output  [10:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [10:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
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
reg emission_0_ce1;
reg[10:0] emission_1_address0;
reg emission_1_ce0;
reg emission_1_ce1;
reg[6:0] path_1_address0;
reg path_1_ce0;
reg path_1_we0;
reg[7:0] path_1_d0;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_637;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire   [63:0] grp_fu_633_p2;
reg   [63:0] reg_643;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
wire   [0:0] empty_fu_654_p1;
reg   [0:0] empty_reg_914;
wire    ap_CS_fsm_state2;
reg   [6:0] conv3_udiv_reg_919;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_929;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_23_fu_696_p2;
reg   [7:0] empty_23_reg_947;
wire    ap_CS_fsm_state6;
wire   [9:0] tmp_s_fu_701_p3;
reg   [9:0] tmp_s_reg_952;
reg   [9:0] llike_addr_2_reg_957;
wire   [0:0] empty_24_fu_722_p1;
reg   [0:0] empty_24_reg_962;
wire   [10:0] conv32_udiv_cast_fu_736_p1;
reg   [10:0] conv32_udiv_cast_reg_967;
wire   [6:0] add_ln19_fu_746_p2;
reg   [6:0] add_ln19_reg_975;
wire    ap_CS_fsm_state7;
wire   [4:0] lshr_ln_fu_752_p4;
reg   [4:0] lshr_ln_reg_980;
wire   [3:0] trunc_ln19_fu_778_p1;
reg   [3:0] trunc_ln19_reg_995;
reg   [1:0] lshr_ln7_reg_999;
wire   [0:0] trunc_ln23_fu_792_p1;
reg   [0:0] trunc_ln23_reg_1004;
wire   [63:0] select_ln23_fu_796_p3;
reg   [63:0] select_ln23_reg_1009;
wire   [10:0] add_ln24_fu_816_p2;
reg   [10:0] add_ln24_reg_1014;
wire   [63:0] bitcast_ln23_fu_821_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
wire   [63:0] select_ln24_fu_830_p3;
reg   [63:0] select_ln24_reg_1034;
wire   [63:0] bitcast_ln24_fu_837_p1;
reg   [63:0] bitcast_ln24_reg_1039;
wire    ap_CS_fsm_state17;
reg   [9:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [9:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
reg   [9:0] llike_2_address0;
reg    llike_2_ce0;
reg    llike_2_we0;
reg   [63:0] llike_2_d0;
wire   [63:0] llike_2_q0;
reg    llike_2_ce1;
wire   [63:0] llike_2_q1;
reg   [9:0] llike_3_address0;
reg    llike_3_ce0;
reg    llike_3_we0;
reg   [63:0] llike_3_d0;
wire   [63:0] llike_3_q0;
reg    llike_3_ce1;
wire   [63:0] llike_3_q1;
reg   [9:0] llike_4_address0;
reg    llike_4_ce0;
reg    llike_4_we0;
reg   [63:0] llike_4_d0;
wire   [63:0] llike_4_q0;
reg    llike_4_ce1;
wire   [63:0] llike_4_q1;
reg   [9:0] llike_5_address0;
reg    llike_5_ce0;
reg    llike_5_we0;
reg   [63:0] llike_5_d0;
wire   [63:0] llike_5_q0;
reg    llike_5_ce1;
wire   [63:0] llike_5_q1;
reg   [9:0] llike_6_address0;
reg    llike_6_ce0;
reg    llike_6_we0;
reg   [63:0] llike_6_d0;
wire   [63:0] llike_6_q0;
reg    llike_6_ce1;
wire   [63:0] llike_6_q1;
reg   [9:0] llike_7_address0;
reg    llike_7_ce0;
reg    llike_7_we0;
reg   [63:0] llike_7_d0;
wire   [63:0] llike_7_q0;
reg    llike_7_ce1;
wire   [63:0] llike_7_q1;
reg   [9:0] llike_8_address0;
reg    llike_8_ce0;
reg    llike_8_we0;
reg   [63:0] llike_8_d0;
wire   [63:0] llike_8_q0;
reg    llike_8_ce1;
wire   [63:0] llike_8_q1;
reg   [9:0] llike_9_address0;
reg    llike_9_ce0;
reg    llike_9_we0;
reg   [63:0] llike_9_d0;
wire   [63:0] llike_9_q0;
reg    llike_9_ce1;
wire   [63:0] llike_9_q1;
reg   [9:0] llike_10_address0;
reg    llike_10_ce0;
reg    llike_10_we0;
reg   [63:0] llike_10_d0;
wire   [63:0] llike_10_q0;
reg    llike_10_ce1;
wire   [63:0] llike_10_q1;
reg   [9:0] llike_11_address0;
reg    llike_11_ce0;
reg    llike_11_we0;
reg   [63:0] llike_11_d0;
wire   [63:0] llike_11_q0;
reg    llike_11_ce1;
wire   [63:0] llike_11_q1;
reg   [9:0] llike_12_address0;
reg    llike_12_ce0;
reg    llike_12_we0;
reg   [63:0] llike_12_d0;
wire   [63:0] llike_12_q0;
reg    llike_12_ce1;
wire   [63:0] llike_12_q1;
reg   [9:0] llike_13_address0;
reg    llike_13_ce0;
reg    llike_13_we0;
reg   [63:0] llike_13_d0;
wire   [63:0] llike_13_q0;
reg    llike_13_ce1;
wire   [63:0] llike_13_q1;
reg   [9:0] llike_14_address0;
reg    llike_14_ce0;
reg    llike_14_we0;
reg   [63:0] llike_14_d0;
wire   [63:0] llike_14_q0;
reg    llike_14_ce1;
wire   [63:0] llike_14_q1;
reg   [9:0] llike_15_address0;
reg    llike_15_ce0;
reg    llike_15_we0;
reg   [63:0] llike_15_d0;
wire   [63:0] llike_15_q0;
reg    llike_15_ce1;
wire   [63:0] llike_15_q1;
wire    grp_viterbi_Pipeline_L_init_fu_522_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_522_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_522_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_522_ap_ready;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_1_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_2_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_3_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_4_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_5_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_6_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_7_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_8_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_8_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_8_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_8_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_9_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_9_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_9_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_9_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_10_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_10_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_10_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_10_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_11_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_11_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_11_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_11_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_12_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_12_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_12_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_12_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_13_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_13_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_13_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_13_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_14_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_14_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_14_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_14_d0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_522_llike_15_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_15_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_522_llike_15_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_llike_15_d0;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_522_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_init_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_522_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_emission_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_522_emission_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_522_emission_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_522_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_emission_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_522_emission_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_522_emission_1_ce1;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_522_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_522_init_1_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_ap_ready;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_4_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_4_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_5_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_5_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_6_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_6_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_7_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_7_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_8_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_8_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_9_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_9_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_10_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_10_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_11_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_11_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_12_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_12_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_13_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_13_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_14_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_14_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_552_llike_15_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_llike_15_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_552_min_p_133_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_min_p_133_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_583_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_583_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_583_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_583_ap_ready;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_4_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_5_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_6_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_7_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_8_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_8_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_9_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_9_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_10_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_10_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_11_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_11_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_12_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_12_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_13_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_13_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_14_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_14_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_end_fu_583_llike_15_address0;
wire    grp_viterbi_Pipeline_L_end_fu_583_llike_15_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_583_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_583_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_ap_ready;
wire   [6:0] grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_d0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_ce1;
wire   [6:0] grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_ce;
reg   [6:0] curr_reg_510;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_522_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_133_loc_fu_136;
reg    grp_viterbi_Pipeline_L_end_fu_583_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg    grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start_reg;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
wire   [63:0] zext_ln6_fu_687_p1;
wire   [0:0] icmp_ln18_fu_671_p2;
wire   [63:0] tmp_202_cast_fu_709_p1;
wire   [63:0] zext_ln23_fu_762_p1;
wire   [0:0] icmp_ln19_fu_740_p2;
wire   [63:0] zext_ln24_fu_825_p1;
wire   [63:0] zext_ln33_fu_847_p1;
wire    ap_CS_fsm_state31;
reg   [7:0] t_fu_128;
wire   [7:0] add_ln18_fu_768_p2;
reg    obs_0_ce0_local;
reg   [6:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    llike_ce0_local;
reg   [9:0] llike_address0_local;
reg    llike_we0_local;
reg    transition_0_ce0_local;
reg    transition_1_ce0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
reg    llike_14_we0_local;
reg    llike_14_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_12_we0_local;
reg    llike_12_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_10_we0_local;
reg    llike_10_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_8_we0_local;
reg    llike_8_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
reg    path_1_we0_local;
reg    path_1_ce0_local;
reg   [63:0] grp_fu_633_p0;
reg   [63:0] grp_fu_633_p1;
wire   [6:0] lshr_ln6_fu_677_p4;
wire   [0:0] trunc_ln18_fu_693_p1;
wire   [7:0] tmp_2_fu_714_p3;
wire   [6:0] conv32_udiv_fu_726_p4;
wire   [5:0] trunc_ln24_fu_804_p1;
wire   [10:0] shl_ln1_fu_808_p3;
wire   [9:0] tmp_201_fu_841_p3;
reg    grp_fu_633_ce;
wire   [0:0] grp_fu_1045_p2;
reg   [63:0] grp_fu_1045_p0;
reg   [63:0] grp_fu_1045_p1;
reg    grp_fu_1045_ce;
reg   [4:0] grp_fu_1045_opcode;
reg   [32:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
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
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
reg    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
reg    ap_ST_fsm_state33_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 grp_viterbi_Pipeline_L_init_fu_522_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_583_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start_reg = 1'b0;
#0 t_fu_128 = 8'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_address1),.ce1(llike_4_ce1),.q1(llike_4_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_address1),.ce1(llike_5_ce1),.q1(llike_5_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_address1),.ce1(llike_6_ce1),.q1(llike_6_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_address1),.ce1(llike_7_ce1),.q1(llike_7_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_8_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_8_address0),.ce0(llike_8_ce0),.we0(llike_8_we0),.d0(llike_8_d0),.q0(llike_8_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_address1),.ce1(llike_8_ce1),.q1(llike_8_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_9_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_9_address0),.ce0(llike_9_ce0),.we0(llike_9_we0),.d0(llike_9_d0),.q0(llike_9_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_address1),.ce1(llike_9_ce1),.q1(llike_9_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_10_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_10_address0),.ce0(llike_10_ce0),.we0(llike_10_we0),.d0(llike_10_d0),.q0(llike_10_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_address1),.ce1(llike_10_ce1),.q1(llike_10_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_11_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_11_address0),.ce0(llike_11_ce0),.we0(llike_11_we0),.d0(llike_11_d0),.q0(llike_11_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_address1),.ce1(llike_11_ce1),.q1(llike_11_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_12_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_12_address0),.ce0(llike_12_ce0),.we0(llike_12_we0),.d0(llike_12_d0),.q0(llike_12_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_address1),.ce1(llike_12_ce1),.q1(llike_12_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_13_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_13_address0),.ce0(llike_13_ce0),.we0(llike_13_we0),.d0(llike_13_d0),.q0(llike_13_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_address1),.ce1(llike_13_ce1),.q1(llike_13_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_14_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_14_address0),.ce0(llike_14_ce0),.we0(llike_14_we0),.d0(llike_14_d0),.q0(llike_14_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_address1),.ce1(llike_14_ce1),.q1(llike_14_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 560 ),.AddressWidth( 10 ))
llike_15_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_15_address0),.ce0(llike_15_ce0),.we0(llike_15_we0),.d0(llike_15_d0),.q0(llike_15_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_address1),.ce1(llike_15_ce1),.q1(llike_15_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_522(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_522_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_522_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_522_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_522_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_7_d0),.llike_8_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_8_ce0),.llike_8_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_8_we0),.llike_8_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_8_d0),.llike_9_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_9_ce0),.llike_9_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_9_we0),.llike_9_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_9_d0),.llike_10_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_10_ce0),.llike_10_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_10_we0),.llike_10_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_10_d0),.llike_11_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_11_ce0),.llike_11_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_11_we0),.llike_11_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_11_d0),.llike_12_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_12_ce0),.llike_12_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_12_we0),.llike_12_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_12_d0),.llike_13_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_13_ce0),.llike_13_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_13_we0),.llike_13_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_13_d0),.llike_14_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_14_ce0),.llike_14_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_14_we0),.llike_14_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_14_d0),.llike_15_address0(grp_viterbi_Pipeline_L_init_fu_522_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_init_fu_522_llike_15_ce0),.llike_15_we0(grp_viterbi_Pipeline_L_init_fu_522_llike_15_we0),.llike_15_d0(grp_viterbi_Pipeline_L_init_fu_522_llike_15_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_522_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_522_init_0_ce0),.init_0_q0(init_0_q0),.conv3_udiv_cast(conv3_udiv_reg_919),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_522_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_522_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_0_address1(grp_viterbi_Pipeline_L_init_fu_522_emission_0_address1),.emission_0_ce1(grp_viterbi_Pipeline_L_init_fu_522_emission_0_ce1),.emission_0_q1(emission_0_q1),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_522_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_522_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_1_address1(grp_viterbi_Pipeline_L_init_fu_522_emission_1_address1),.emission_1_ce1(grp_viterbi_Pipeline_L_init_fu_522_emission_1_ce1),.emission_1_q1(emission_1_q1),.empty(empty_reg_914),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_522_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_522_init_1_ce0),.init_1_q0(init_1_q0),.grp_fu_633_p_din0(grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_din0),.grp_fu_633_p_din1(grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_din1),.grp_fu_633_p_opcode(grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_opcode),.grp_fu_633_p_dout0(grp_fu_633_p2),.grp_fu_633_p_ce(grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_552(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_552_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_552_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_552_ap_ready),.min_p_4(reg_643),.empty_8(empty_23_reg_947),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_llike_15_ce0),.llike_15_q0(llike_15_q0),.lshr_ln(lshr_ln_reg_980),.transition_0_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_ce1),.transition_1_q1(transition_1_q1),.empty_9(trunc_ln23_reg_1004),.bitcast_ln24(bitcast_ln24_reg_1039),.empty(tmp_s_reg_952),.min_p_133_out(grp_viterbi_Pipeline_L_prev_state_fu_552_min_p_133_out),.min_p_133_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_552_min_p_133_out_ap_vld),.grp_fu_633_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_din0),.grp_fu_633_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_din1),.grp_fu_633_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_opcode),.grp_fu_633_p_dout0(grp_fu_633_p2),.grp_fu_633_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_ce),.grp_fu_1045_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_din0),.grp_fu_1045_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_din1),.grp_fu_1045_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_opcode),.grp_fu_1045_p_dout0(grp_fu_1045_p2),.grp_fu_1045_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_583(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_583_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_583_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_583_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_583_ap_ready),.min_p(reg_637),.llike_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_end_fu_583_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_end_fu_583_llike_15_ce0),.llike_15_q0(llike_15_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_583_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_583_min_s_out_ap_vld),.grp_fu_1045_p_din0(grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_din0),.grp_fu_1045_p_din1(grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_din1),.grp_fu_1045_p_opcode(grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_opcode),.grp_fu_1045_p_dout0(grp_fu_1045_p2),.grp_fu_1045_p_ce(grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_605(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_605_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_605_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_605_ap_ready),.path_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_address0),.path_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_ce0),.path_0_we0(grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_we0),.path_0_d0(grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_d0),.path_0_q0(path_0_q0),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_ce1),.llike_7_q1(llike_7_q1),.llike_8_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_8_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_address1),.llike_8_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_ce1),.llike_8_q1(llike_8_q1),.llike_9_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_9_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_address1),.llike_9_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_ce1),.llike_9_q1(llike_9_q1),.llike_10_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_10_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_address1),.llike_10_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_ce1),.llike_10_q1(llike_10_q1),.llike_11_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_11_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_address1),.llike_11_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_ce1),.llike_11_q1(llike_11_q1),.llike_12_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_12_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_address1),.llike_12_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_ce1),.llike_12_q1(llike_12_q1),.llike_13_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_13_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_address1),.llike_13_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_ce1),.llike_13_q1(llike_13_q1),.llike_14_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_14_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_address1),.llike_14_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_ce1),.llike_14_q1(llike_14_q1),.llike_15_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_15_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_address1),.llike_15_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_ce1),.llike_15_q1(llike_15_q1),.path_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_address0),.path_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_ce0),.path_1_we0(grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_we0),.path_1_d0(grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_d0),.path_1_q0(path_1_q0),.transition_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_ce1),.transition_1_q1(transition_1_q1),.grp_fu_633_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_din0),.grp_fu_633_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_din1),.grp_fu_633_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_opcode),.grp_fu_633_p_dout0(grp_fu_633_p2),.grp_fu_633_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_ce),.grp_fu_1045_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_din0),.grp_fu_1045_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_din1),.grp_fu_1045_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_opcode),.grp_fu_1045_p_dout0(grp_fu_1045_p2),.grp_fu_1045_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_633_p0),.din1(grp_fu_633_p1),.ce(grp_fu_633_ce),.dout(grp_fu_633_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1045_p0),.din1(grp_fu_1045_p1),.ce(grp_fu_1045_ce),.opcode(grp_fu_1045_opcode),.dout(grp_fu_1045_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_605_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_583_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_583_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_583_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_583_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_522_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_522_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_522_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_522_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_552_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_510 <= add_ln19_reg_975;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_510 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_128 <= 8'd1;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln19_fu_740_p2 == 1'd1))) begin
        t_fu_128 <= add_ln18_fu_768_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_975 <= add_ln19_fu_746_p2;
        lshr_ln_reg_980 <= {{curr_reg_510[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln24_reg_1014 <= add_ln24_fu_816_p2;
        lshr_ln7_reg_999 <= {{curr_reg_510[5:4]}};
        select_ln23_reg_1009 <= select_ln23_fu_796_p3;
        trunc_ln19_reg_995 <= trunc_ln19_fu_778_p1;
        trunc_ln23_reg_1004 <= trunc_ln23_fu_792_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bitcast_ln24_reg_1039 <= bitcast_ln24_fu_837_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_cast_reg_967[6 : 0] <= conv32_udiv_cast_fu_736_p1[6 : 0];
        empty_23_reg_947 <= empty_23_fu_696_p2;
        empty_24_reg_962 <= empty_24_fu_722_p1;
        llike_addr_2_reg_957[9 : 2] <= tmp_202_cast_fu_709_p1[9 : 2];
        tmp_s_reg_952[9 : 2] <= tmp_s_fu_701_p3[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_919 <= {{obs_0_q0[7:1]}};
        empty_reg_914 <= empty_fu_654_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_552_min_p_133_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        min_p_133_loc_fu_136 <= grp_viterbi_Pipeline_L_prev_state_fu_552_min_p_133_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_637 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_643 <= grp_fu_633_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        select_ln24_reg_1034 <= select_ln24_fu_830_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_929 <= t_fu_128;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
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
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_prev_state_fu_552_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
    end
end
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_583_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
    end
end
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_605_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_522_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_viterbi_Pipeline_L_backtrack_fu_605_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_605_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_522_emission_0_address0;
    end else begin
        emission_0_address0 = zext_ln24_fu_825_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_522_emission_0_ce0;
    end else begin
        emission_0_ce0 = emission_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce1 = grp_viterbi_Pipeline_L_init_fu_522_emission_0_ce1;
    end else begin
        emission_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_522_emission_1_address0;
    end else begin
        emission_1_address0 = zext_ln24_fu_825_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_522_emission_1_ce0;
    end else begin
        emission_1_ce0 = emission_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce1 = grp_viterbi_Pipeline_L_init_fu_522_emission_1_ce1;
    end else begin
        emission_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1045_ce = grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1045_ce = grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1045_ce = grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_ce;
    end else begin
        grp_fu_1045_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1045_opcode = grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1045_opcode = grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1045_opcode = grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_opcode;
    end else begin
        grp_fu_1045_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1045_p0 = grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1045_p0 = grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1045_p0 = grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_din0;
    end else begin
        grp_fu_1045_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1045_p1 = grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_1045_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1045_p1 = grp_viterbi_Pipeline_L_end_fu_583_grp_fu_1045_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1045_p1 = grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_1045_p_din1;
    end else begin
        grp_fu_1045_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_633_ce = grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_633_ce = grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_633_ce = grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_ce;
    end else begin
        grp_fu_633_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_633_p0 = grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_633_p0 = grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_633_p0 = grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_633_p0 = reg_643;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_633_p0 = reg_637;
    end else begin
        grp_fu_633_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_633_p1 = grp_viterbi_Pipeline_L_backtrack_fu_605_grp_fu_633_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_633_p1 = grp_viterbi_Pipeline_L_prev_state_fu_552_grp_fu_633_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_633_p1 = grp_viterbi_Pipeline_L_init_fu_522_grp_fu_633_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_633_p1 = bitcast_ln24_fu_837_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_633_p1 = bitcast_ln23_fu_821_p1;
    end else begin
        grp_fu_633_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_10_address0;
    end else begin
        llike_10_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_10_ce0;
    end else begin
        llike_10_ce0 = llike_10_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_10_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_10_ce1;
    end else begin
        llike_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_10_d0;
    end else begin
        llike_10_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_10_we0;
    end else begin
        llike_10_we0 = llike_10_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd10) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_11_address0;
    end else begin
        llike_11_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_11_ce0;
    end else begin
        llike_11_ce0 = llike_11_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_11_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_11_ce1;
    end else begin
        llike_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_11_d0;
    end else begin
        llike_11_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_11_we0;
    end else begin
        llike_11_we0 = llike_11_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd11) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_12_address0;
    end else begin
        llike_12_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_12_ce0;
    end else begin
        llike_12_ce0 = llike_12_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_12_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_12_ce1;
    end else begin
        llike_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_12_d0;
    end else begin
        llike_12_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_12_we0;
    end else begin
        llike_12_we0 = llike_12_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd12) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_13_address0;
    end else begin
        llike_13_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_13_ce0;
    end else begin
        llike_13_ce0 = llike_13_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_13_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_13_ce1;
    end else begin
        llike_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_13_d0;
    end else begin
        llike_13_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_13_we0;
    end else begin
        llike_13_we0 = llike_13_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd13) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_14_address0;
    end else begin
        llike_14_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_14_ce0;
    end else begin
        llike_14_ce0 = llike_14_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_14_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_14_ce1;
    end else begin
        llike_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_14_d0;
    end else begin
        llike_14_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_14_we0;
    end else begin
        llike_14_we0 = llike_14_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd14) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_15_address0;
    end else begin
        llike_15_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_15_ce0;
    end else begin
        llike_15_ce0 = llike_15_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_15_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_15_ce1;
    end else begin
        llike_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_15_d0;
    end else begin
        llike_15_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_15_we0;
    end else begin
        llike_15_we0 = llike_15_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd15) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_1_address0;
    end else begin
        llike_1_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_1_ce0;
    end else begin
        llike_1_ce0 = llike_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_1_d0;
    end else begin
        llike_1_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_1_we0;
    end else begin
        llike_1_we0 = llike_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd1) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_2_address0;
    end else begin
        llike_2_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_2_ce0;
    end else begin
        llike_2_ce0 = llike_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_2_d0;
    end else begin
        llike_2_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_2_we0;
    end else begin
        llike_2_we0 = llike_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd2) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_3_address0;
    end else begin
        llike_3_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_3_ce0;
    end else begin
        llike_3_ce0 = llike_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_3_d0;
    end else begin
        llike_3_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_3_we0;
    end else begin
        llike_3_we0 = llike_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd3) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_4_address0;
    end else begin
        llike_4_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_4_ce0;
    end else begin
        llike_4_ce0 = llike_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_4_d0;
    end else begin
        llike_4_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_4_we0;
    end else begin
        llike_4_we0 = llike_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd4) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_5_address0;
    end else begin
        llike_5_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_5_ce0;
    end else begin
        llike_5_ce0 = llike_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_5_d0;
    end else begin
        llike_5_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_5_we0;
    end else begin
        llike_5_we0 = llike_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd5) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_6_address0;
    end else begin
        llike_6_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_6_ce0;
    end else begin
        llike_6_ce0 = llike_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_6_d0;
    end else begin
        llike_6_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_6_we0;
    end else begin
        llike_6_we0 = llike_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd6) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_7_address0;
    end else begin
        llike_7_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_7_ce0;
    end else begin
        llike_7_ce0 = llike_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_7_d0;
    end else begin
        llike_7_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_7_we0;
    end else begin
        llike_7_we0 = llike_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd7) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_8_address0;
    end else begin
        llike_8_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_8_ce0;
    end else begin
        llike_8_ce0 = llike_8_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_8_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_8_ce1;
    end else begin
        llike_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_8_d0;
    end else begin
        llike_8_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_8_we0;
    end else begin
        llike_8_we0 = llike_8_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd8) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_9_address0;
    end else begin
        llike_9_address0 = zext_ln33_fu_847_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_9_ce0;
    end else begin
        llike_9_ce0 = llike_9_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_9_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_9_ce1;
    end else begin
        llike_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_9_d0;
    end else begin
        llike_9_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_9_we0;
    end else begin
        llike_9_we0 = llike_9_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd9) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_583_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_522_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_fu_847_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_2_reg_957;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd556;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_583_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_522_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state27))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_522_llike_d0;
    end else begin
        llike_d0 = min_p_133_loc_fu_136;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_522_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_995 == 4'd0) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_687_p1;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_address0;
    end else begin
        path_1_address0 = 64'd69;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_ce0;
    end else begin
        path_1_ce0 = path_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_1_d0 = grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_d0;
    end else begin
        path_1_d0 = grp_viterbi_Pipeline_L_end_fu_583_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_1_we0 = grp_viterbi_Pipeline_L_backtrack_fu_605_path_1_we0;
    end else begin
        path_1_we0 = path_1_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln23_fu_762_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_ce0;
    end else begin
        transition_0_ce0 = transition_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_552_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln23_fu_762_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_ce0;
    end else begin
        transition_1_ce0 = transition_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_605_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_552_transition_1_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_522_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln18_fu_671_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln19_fu_740_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
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
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            if (((grp_viterbi_Pipeline_L_prev_state_fu_552_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            if (((grp_viterbi_Pipeline_L_end_fu_583_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            if (((grp_viterbi_Pipeline_L_backtrack_fu_605_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_768_p2 = (t_fu_128 + 8'd1);
assign add_ln19_fu_746_p2 = (curr_reg_510 + 7'd1);
assign add_ln24_fu_816_p2 = (shl_ln1_fu_808_p3 + conv32_udiv_cast_reg_967);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln23_fu_821_p1 = select_ln23_reg_1009;
assign bitcast_ln24_fu_837_p1 = select_ln24_reg_1034;
assign conv32_udiv_cast_fu_736_p1 = conv32_udiv_fu_726_p4;
assign conv32_udiv_fu_726_p4 = {{tmp_2_fu_714_p3[7:1]}};
assign emission_0_address1 = grp_viterbi_Pipeline_L_init_fu_522_emission_0_address1;
assign emission_1_address1 = grp_viterbi_Pipeline_L_init_fu_522_emission_1_address1;
assign empty_23_fu_696_p2 = ($signed(t_fu_128) + $signed(8'd255));
assign empty_24_fu_722_p1 = tmp_2_fu_714_p3[0:0];
assign empty_fu_654_p1 = obs_0_q0[0:0];
assign grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_605_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_583_ap_start = grp_viterbi_Pipeline_L_end_fu_583_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_522_ap_start = grp_viterbi_Pipeline_L_init_fu_522_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_552_ap_start_reg;
assign icmp_ln18_fu_671_p2 = ((t_fu_128 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_740_p2 = ((curr_reg_510 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_522_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_522_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_522_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_522_init_1_ce0;
assign lshr_ln6_fu_677_p4 = {{t_fu_128[7:1]}};
assign lshr_ln_fu_752_p4 = {{curr_reg_510[5:1]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_687_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign path_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_address0;
assign path_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_ce0;
assign path_0_d0 = grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_d0;
assign path_0_we0 = grp_viterbi_Pipeline_L_backtrack_fu_605_path_0_we0;
assign select_ln23_fu_796_p3 = ((trunc_ln23_fu_792_p1[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign select_ln24_fu_830_p3 = ((empty_24_reg_962[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign shl_ln1_fu_808_p3 = {{trunc_ln24_fu_804_p1}, {5'd0}};
assign tmp_201_fu_841_p3 = {{t_2_reg_929}, {lshr_ln7_reg_999}};
assign tmp_202_cast_fu_709_p1 = tmp_s_fu_701_p3;
assign tmp_2_fu_714_p3 = ((trunc_ln18_fu_693_p1[0:0] == 1'b1) ? obs_1_q0 : obs_0_q0);
assign tmp_s_fu_701_p3 = {{empty_23_fu_696_p2}, {2'd0}};
assign trunc_ln18_fu_693_p1 = t_fu_128[0:0];
assign trunc_ln19_fu_778_p1 = curr_reg_510[3:0];
assign trunc_ln23_fu_792_p1 = curr_reg_510[0:0];
assign trunc_ln24_fu_804_p1 = curr_reg_510[5:0];
assign zext_ln23_fu_762_p1 = lshr_ln_fu_752_p4;
assign zext_ln24_fu_825_p1 = add_ln24_reg_1014;
assign zext_ln33_fu_847_p1 = tmp_201_fu_841_p3;
assign zext_ln6_fu_687_p1 = lshr_ln6_fu_677_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_952[1:0] <= 2'b00;
    llike_addr_2_reg_957[1:0] <= 2'b00;
    conv32_udiv_cast_reg_967[10:7] <= 4'b0000;
end
endmodule 