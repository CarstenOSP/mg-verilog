module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,ap_return); 
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
output  [3:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_2_address1;
output   init_2_ce1;
input  [63:0] init_2_q1;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [3:0] init_3_address1;
output   init_3_ce1;
input  [63:0] init_3_q1;
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
output  [9:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [9:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
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
reg emission_0_ce1;
reg[9:0] emission_1_address0;
reg emission_1_ce0;
reg emission_1_ce1;
reg[9:0] emission_2_address0;
reg emission_2_ce0;
reg emission_2_ce1;
reg[9:0] emission_3_address0;
reg emission_3_ce0;
reg emission_3_ce1;
reg[5:0] path_3_address0;
reg path_3_ce0;
reg path_3_we0;
reg[7:0] path_3_d0;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_597;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire   [63:0] grp_fu_593_p2;
reg   [63:0] reg_603;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
wire   [1:0] empty_fu_614_p1;
reg   [1:0] empty_reg_936;
wire    ap_CS_fsm_state2;
reg   [5:0] conv3_udiv_reg_941;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_953;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_26_fu_658_p2;
reg   [7:0] empty_26_reg_981;
wire    ap_CS_fsm_state6;
wire   [10:0] tmp_s_fu_663_p3;
reg   [10:0] tmp_s_reg_986;
reg   [10:0] llike_addr_5_reg_991;
wire   [1:0] empty_27_fu_700_p1;
reg   [1:0] empty_27_reg_996;
wire   [9:0] conv32_udiv_cast_fu_714_p1;
reg   [9:0] conv32_udiv_cast_reg_1001;
wire   [6:0] add_ln19_fu_724_p2;
reg   [6:0] add_ln19_reg_1009;
wire    ap_CS_fsm_state7;
wire   [3:0] lshr_ln_fu_730_p4;
reg   [3:0] lshr_ln_reg_1014;
wire   [2:0] trunc_ln19_fu_758_p1;
reg   [2:0] trunc_ln19_reg_1039;
reg   [2:0] lshr_ln7_reg_1043;
wire   [1:0] trunc_ln23_fu_772_p1;
reg   [1:0] trunc_ln23_reg_1048;
wire   [63:0] tmp_32_fu_792_p11;
reg   [63:0] tmp_32_reg_1053;
wire   [9:0] add_ln24_fu_828_p2;
reg   [9:0] add_ln24_reg_1058;
wire    ap_CS_fsm_state15;
wire   [63:0] tmp_33_fu_856_p11;
reg   [63:0] tmp_33_reg_1083;
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
wire    grp_viterbi_Pipeline_L_init_fu_492_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_492_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_492_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_492_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_492_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_492_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_492_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_492_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_492_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_492_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_492_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_492_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_492_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_llike_7_d0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_492_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_init_0_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_492_init_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_492_init_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_492_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_492_emission_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_492_emission_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_492_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_492_emission_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_492_emission_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_492_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_492_emission_2_address1;
wire    grp_viterbi_Pipeline_L_init_fu_492_emission_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_492_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_emission_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_492_emission_3_address1;
wire    grp_viterbi_Pipeline_L_init_fu_492_emission_3_ce1;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_492_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_init_1_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_492_init_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_492_init_1_ce1;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_492_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_init_2_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_492_init_2_address1;
wire    grp_viterbi_Pipeline_L_init_fu_492_init_2_ce1;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_492_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_492_init_3_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_492_init_3_address1;
wire    grp_viterbi_Pipeline_L_init_fu_492_init_3_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_524_llike_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_llike_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_524_min_p_193_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_min_p_193_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_551_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_551_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_551_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_551_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_551_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_551_llike_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_551_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_551_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_551_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_551_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_551_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_551_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_551_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_551_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_551_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_551_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_551_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_551_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_551_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_551_llike_7_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_551_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_551_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_ap_ready;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_d0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_ce1;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_d0;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_d0;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_d0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_ce;
reg   [6:0] curr_reg_480;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_492_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_193_loc_fu_156;
reg    grp_viterbi_Pipeline_L_end_fu_551_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg    grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start_reg;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
wire   [63:0] zext_ln6_fu_647_p1;
wire   [0:0] icmp_ln18_fu_631_p2;
wire   [63:0] tmp_493_cast_fu_671_p1;
wire   [63:0] zext_ln23_fu_740_p1;
wire   [0:0] icmp_ln19_fu_718_p2;
wire   [63:0] zext_ln24_fu_833_p1;
wire   [63:0] zext_ln33_fu_885_p1;
wire    ap_CS_fsm_state31;
reg   [7:0] t_fu_148;
wire   [7:0] add_ln18_fu_748_p2;
reg    obs_0_ce0_local;
reg   [5:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    obs_2_ce0_local;
reg    obs_3_ce0_local;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_we0_local;
reg    transition_0_ce0_local;
reg    transition_1_ce0_local;
reg    transition_2_ce0_local;
reg    transition_3_ce0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
reg    emission_2_ce0_local;
reg    emission_3_ce0_local;
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
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    path_3_we0_local;
reg    path_3_ce0_local;
reg   [63:0] grp_fu_593_p0;
reg   [63:0] grp_fu_593_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state17;
wire   [5:0] lshr_ln6_fu_637_p4;
wire   [7:0] tmp_31_fu_676_p9;
wire   [1:0] tmp_31_fu_676_p10;
wire   [7:0] tmp_31_fu_676_p11;
wire   [5:0] conv32_udiv_fu_704_p4;
wire   [63:0] tmp_32_fu_792_p2;
wire   [63:0] tmp_32_fu_792_p4;
wire   [63:0] tmp_32_fu_792_p6;
wire   [63:0] tmp_32_fu_792_p8;
wire   [63:0] tmp_32_fu_792_p9;
wire   [1:0] tmp_32_fu_792_p10;
wire   [5:0] trunc_ln24_fu_816_p1;
wire   [9:0] shl_ln_fu_820_p3;
wire   [63:0] tmp_33_fu_856_p2;
wire   [63:0] tmp_33_fu_856_p4;
wire   [63:0] tmp_33_fu_856_p6;
wire   [63:0] tmp_33_fu_856_p8;
wire   [63:0] tmp_33_fu_856_p9;
wire   [10:0] tmp_369_fu_879_p3;
reg    grp_fu_593_ce;
wire   [63:0] grp_fu_1089_p2;
reg   [63:0] grp_fu_1089_p0;
reg   [63:0] grp_fu_1089_p1;
reg    grp_fu_1089_ce;
wire   [0:0] grp_fu_1093_p2;
reg   [63:0] grp_fu_1093_p0;
reg   [63:0] grp_fu_1093_p1;
reg    grp_fu_1093_ce;
reg   [4:0] grp_fu_1093_opcode;
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
wire   [1:0] tmp_31_fu_676_p1;
wire   [1:0] tmp_31_fu_676_p3;
wire  signed [1:0] tmp_31_fu_676_p5;
wire  signed [1:0] tmp_31_fu_676_p7;
wire   [1:0] tmp_32_fu_792_p1;
wire   [1:0] tmp_32_fu_792_p3;
wire  signed [1:0] tmp_32_fu_792_p5;
wire  signed [1:0] tmp_32_fu_792_p7;
wire   [1:0] tmp_33_fu_856_p1;
wire   [1:0] tmp_33_fu_856_p3;
wire  signed [1:0] tmp_33_fu_856_p5;
wire  signed [1:0] tmp_33_fu_856_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 grp_viterbi_Pipeline_L_init_fu_492_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_551_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start_reg = 1'b0;
#0 t_fu_148 = 8'd0;
end
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0),.address1(llike_4_address1),.ce1(llike_4_ce1),.q1(llike_4_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0),.address1(llike_5_address1),.ce1(llike_5_ce1),.q1(llike_5_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0),.address1(llike_6_address1),.ce1(llike_6_ce1),.q1(llike_6_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0),.address1(llike_7_address1),.ce1(llike_7_ce1),.q1(llike_7_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_492(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_492_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_492_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_492_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_492_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_492_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_492_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_492_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_492_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_492_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_492_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_492_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_492_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_492_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_492_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_492_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_492_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_492_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_492_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_492_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_492_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_492_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_492_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_492_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_492_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_492_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_492_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_492_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_492_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_492_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_492_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_492_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_492_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_492_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_492_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_492_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_492_llike_7_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_492_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_492_init_0_ce0),.init_0_q0(init_0_q0),.init_0_address1(grp_viterbi_Pipeline_L_init_fu_492_init_0_address1),.init_0_ce1(grp_viterbi_Pipeline_L_init_fu_492_init_0_ce1),.init_0_q1(init_0_q1),.empty_10(conv3_udiv_reg_941),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_492_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_492_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_0_address1(grp_viterbi_Pipeline_L_init_fu_492_emission_0_address1),.emission_0_ce1(grp_viterbi_Pipeline_L_init_fu_492_emission_0_ce1),.emission_0_q1(emission_0_q1),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_492_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_492_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_1_address1(grp_viterbi_Pipeline_L_init_fu_492_emission_1_address1),.emission_1_ce1(grp_viterbi_Pipeline_L_init_fu_492_emission_1_ce1),.emission_1_q1(emission_1_q1),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_492_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_492_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_2_address1(grp_viterbi_Pipeline_L_init_fu_492_emission_2_address1),.emission_2_ce1(grp_viterbi_Pipeline_L_init_fu_492_emission_2_ce1),.emission_2_q1(emission_2_q1),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_492_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_492_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_3_address1(grp_viterbi_Pipeline_L_init_fu_492_emission_3_address1),.emission_3_ce1(grp_viterbi_Pipeline_L_init_fu_492_emission_3_ce1),.emission_3_q1(emission_3_q1),.empty(empty_reg_936),.conv3_udiv_cast(conv3_udiv_reg_941),.conv3_udiv(conv3_udiv_reg_941),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_492_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_492_init_1_ce0),.init_1_q0(init_1_q0),.init_1_address1(grp_viterbi_Pipeline_L_init_fu_492_init_1_address1),.init_1_ce1(grp_viterbi_Pipeline_L_init_fu_492_init_1_ce1),.init_1_q1(init_1_q1),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_492_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_492_init_2_ce0),.init_2_q0(init_2_q0),.init_2_address1(grp_viterbi_Pipeline_L_init_fu_492_init_2_address1),.init_2_ce1(grp_viterbi_Pipeline_L_init_fu_492_init_2_ce1),.init_2_q1(init_2_q1),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_492_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_492_init_3_ce0),.init_3_q0(init_3_q0),.init_3_address1(grp_viterbi_Pipeline_L_init_fu_492_init_3_address1),.init_3_ce1(grp_viterbi_Pipeline_L_init_fu_492_init_3_ce1),.init_3_q1(init_3_q1),.grp_fu_593_p_din0(grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_din0),.grp_fu_593_p_din1(grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_din1),.grp_fu_593_p_opcode(grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_opcode),.grp_fu_593_p_dout0(grp_fu_593_p2),.grp_fu_593_p_ce(grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_ce),.grp_fu_1089_p_din0(grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_din0),.grp_fu_1089_p_din1(grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_din1),.grp_fu_1089_p_opcode(grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_opcode),.grp_fu_1089_p_dout0(grp_fu_1089_p2),.grp_fu_1089_p_ce(grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_524(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_524_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_524_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_524_ap_ready),.min_p_4(reg_603),.empty_8(empty_26_reg_981),.llike_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_ce1),.llike_7_q1(llike_7_q1),.lshr_ln(lshr_ln_reg_1014),.transition_0_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_ce1),.transition_3_q1(transition_3_q1),.empty_9(trunc_ln23_reg_1048),.tmp_33(tmp_33_reg_1083),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_prev_state_fu_524_llike_ce1),.llike_q1(llike_q1),.empty(tmp_s_reg_986),.min_p_193_out(grp_viterbi_Pipeline_L_prev_state_fu_524_min_p_193_out),.min_p_193_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_524_min_p_193_out_ap_vld),.grp_fu_593_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_din0),.grp_fu_593_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_din1),.grp_fu_593_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_opcode),.grp_fu_593_p_dout0(grp_fu_593_p2),.grp_fu_593_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_ce),.grp_fu_1089_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_din0),.grp_fu_1089_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_din1),.grp_fu_1089_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_opcode),.grp_fu_1089_p_dout0(grp_fu_1089_p2),.grp_fu_1089_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_ce),.grp_fu_1093_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_din0),.grp_fu_1093_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_din1),.grp_fu_1093_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_opcode),.grp_fu_1093_p_dout0(grp_fu_1093_p2),.grp_fu_1093_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_551(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_551_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_551_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_551_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_551_ap_ready),.min_p(reg_597),.llike_address0(grp_viterbi_Pipeline_L_end_fu_551_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_551_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_551_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_551_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_551_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_551_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_551_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_551_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_551_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_551_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_551_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_551_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_551_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_551_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_551_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_551_llike_7_ce0),.llike_7_q0(llike_7_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_551_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_551_min_s_out_ap_vld),.grp_fu_1093_p_din0(grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_din0),.grp_fu_1093_p_din1(grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_din1),.grp_fu_1093_p_opcode(grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_opcode),.grp_fu_1093_p_dout0(grp_fu_1093_p2),.grp_fu_1093_p_ce(grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_565(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_565_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_565_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_565_ap_ready),.path_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_address0),.path_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_ce0),.path_0_we0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_we0),.path_0_d0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_d0),.path_0_q0(path_0_q0),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_ce1),.llike_7_q1(llike_7_q1),.path_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_address0),.path_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_ce0),.path_3_we0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_we0),.path_3_d0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_d0),.path_3_q0(path_3_q0),.path_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_address0),.path_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_ce0),.path_2_we0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_we0),.path_2_d0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_d0),.path_2_q0(path_2_q0),.path_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_address0),.path_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_ce0),.path_1_we0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_we0),.path_1_d0(grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_d0),.path_1_q0(path_1_q0),.transition_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_ce1),.transition_3_q1(transition_3_q1),.grp_fu_593_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_din0),.grp_fu_593_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_din1),.grp_fu_593_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_opcode),.grp_fu_593_p_dout0(grp_fu_593_p2),.grp_fu_593_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_ce),.grp_fu_1093_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_din0),.grp_fu_1093_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_din1),.grp_fu_1093_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_opcode),.grp_fu_1093_p_dout0(grp_fu_1093_p2),.grp_fu_1093_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U207(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_593_p0),.din1(grp_fu_593_p1),.ce(grp_fu_593_ce),.dout(grp_fu_593_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U208(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.def(tmp_31_fu_676_p9),.sel(tmp_31_fu_676_p10),.dout(tmp_31_fu_676_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U209(.din0(tmp_32_fu_792_p2),.din1(tmp_32_fu_792_p4),.din2(tmp_32_fu_792_p6),.din3(tmp_32_fu_792_p8),.def(tmp_32_fu_792_p9),.sel(tmp_32_fu_792_p10),.dout(tmp_32_fu_792_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U210(.din0(tmp_33_fu_856_p2),.din1(tmp_33_fu_856_p4),.din2(tmp_33_fu_856_p6),.din3(tmp_33_fu_856_p8),.def(tmp_33_fu_856_p9),.sel(empty_27_reg_996),.dout(tmp_33_fu_856_p11));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U211(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1089_p0),.din1(grp_fu_1089_p1),.ce(grp_fu_1089_ce),.dout(grp_fu_1089_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U212(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1093_p0),.din1(grp_fu_1093_p1),.ce(grp_fu_1093_ce),.opcode(grp_fu_1093_opcode),.dout(grp_fu_1093_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_565_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_551_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_551_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_551_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_551_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_492_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_492_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_492_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_492_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_524_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_480 <= add_ln19_reg_1009;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_480 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_148 <= 8'd1;
    end else if (((icmp_ln19_fu_718_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        t_fu_148 <= add_ln18_fu_748_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_1009 <= add_ln19_fu_724_p2;
        lshr_ln_reg_1014 <= {{curr_reg_480[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln24_reg_1058 <= add_ln24_fu_828_p2;
        lshr_ln7_reg_1043 <= {{curr_reg_480[5:3]}};
        tmp_32_reg_1053 <= tmp_32_fu_792_p11;
        trunc_ln19_reg_1039 <= trunc_ln19_fu_758_p1;
        trunc_ln23_reg_1048 <= trunc_ln23_fu_772_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_cast_reg_1001[5 : 0] <= conv32_udiv_cast_fu_714_p1[5 : 0];
        empty_26_reg_981 <= empty_26_fu_658_p2;
        empty_27_reg_996 <= empty_27_fu_700_p1;
        llike_addr_5_reg_991[10 : 3] <= tmp_493_cast_fu_671_p1[10 : 3];
        tmp_s_reg_986[10 : 3] <= tmp_s_fu_663_p3[10 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_941 <= {{obs_0_q0[7:2]}};
        empty_reg_936 <= empty_fu_614_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_524_min_p_193_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        min_p_193_loc_fu_156 <= grp_viterbi_Pipeline_L_prev_state_fu_524_min_p_193_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_597 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_603 <= grp_fu_593_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_953 <= t_fu_148;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        tmp_33_reg_1083 <= tmp_33_fu_856_p11;
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
    if ((grp_viterbi_Pipeline_L_prev_state_fu_524_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_end_fu_551_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
    end
end
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_565_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_492_ap_done == 1'b0)) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_565_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_565_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_492_emission_0_address0;
    end else begin
        emission_0_address0 = zext_ln24_fu_833_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_492_emission_0_ce0;
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
        emission_0_ce1 = grp_viterbi_Pipeline_L_init_fu_492_emission_0_ce1;
    end else begin
        emission_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_492_emission_1_address0;
    end else begin
        emission_1_address0 = zext_ln24_fu_833_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_492_emission_1_ce0;
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
        emission_1_ce1 = grp_viterbi_Pipeline_L_init_fu_492_emission_1_ce1;
    end else begin
        emission_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_492_emission_2_address0;
    end else begin
        emission_2_address0 = zext_ln24_fu_833_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_492_emission_2_ce0;
    end else begin
        emission_2_ce0 = emission_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce1 = grp_viterbi_Pipeline_L_init_fu_492_emission_2_ce1;
    end else begin
        emission_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_492_emission_3_address0;
    end else begin
        emission_3_address0 = zext_ln24_fu_833_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_492_emission_3_ce0;
    end else begin
        emission_3_ce0 = emission_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce1 = grp_viterbi_Pipeline_L_init_fu_492_emission_3_ce1;
    end else begin
        emission_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1089_ce = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1089_ce = grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_ce;
    end else begin
        grp_fu_1089_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1089_p0 = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1089_p0 = grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_din0;
    end else begin
        grp_fu_1089_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1089_p1 = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1089_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1089_p1 = grp_viterbi_Pipeline_L_init_fu_492_grp_fu_1089_p_din1;
    end else begin
        grp_fu_1089_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1093_ce = grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1093_ce = grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1093_ce = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_ce;
    end else begin
        grp_fu_1093_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1093_opcode = grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1093_opcode = grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1093_opcode = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_opcode;
    end else begin
        grp_fu_1093_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1093_p0 = grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1093_p0 = grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1093_p0 = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_din0;
    end else begin
        grp_fu_1093_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1093_p1 = grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_1093_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1093_p1 = grp_viterbi_Pipeline_L_end_fu_551_grp_fu_1093_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1093_p1 = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_1093_p_din1;
    end else begin
        grp_fu_1093_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_593_ce = grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_593_ce = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_593_ce = grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_ce;
    end else begin
        grp_fu_593_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_593_p0 = grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_593_p0 = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_593_p0 = grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_593_p0 = reg_603;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_593_p0 = reg_597;
    end else begin
        grp_fu_593_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_593_p1 = grp_viterbi_Pipeline_L_backtrack_fu_565_grp_fu_593_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_593_p1 = grp_viterbi_Pipeline_L_prev_state_fu_524_grp_fu_593_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_593_p1 = grp_viterbi_Pipeline_L_init_fu_492_grp_fu_593_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_593_p1 = tmp_33_reg_1083;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_593_p1 = tmp_32_reg_1053;
    end else begin
        grp_fu_593_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_551_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_492_llike_1_address0;
    end else begin
        llike_1_address0 = zext_ln33_fu_885_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_551_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_492_llike_1_ce0;
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
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_492_llike_1_d0;
    end else begin
        llike_1_d0 = min_p_193_loc_fu_156;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_492_llike_1_we0;
    end else begin
        llike_1_we0 = llike_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1039 == 3'd1) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_551_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_492_llike_2_address0;
    end else begin
        llike_2_address0 = zext_ln33_fu_885_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_address1;
    end else begin
        llike_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_551_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_492_llike_2_ce0;
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
        llike_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_492_llike_2_d0;
    end else begin
        llike_2_d0 = min_p_193_loc_fu_156;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_492_llike_2_we0;
    end else begin
        llike_2_we0 = llike_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1039 == 3'd2) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_551_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_492_llike_3_address0;
    end else begin
        llike_3_address0 = zext_ln33_fu_885_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_address1;
    end else begin
        llike_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_551_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_492_llike_3_ce0;
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
        llike_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_492_llike_3_d0;
    end else begin
        llike_3_d0 = min_p_193_loc_fu_156;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_492_llike_3_we0;
    end else begin
        llike_3_we0 = llike_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1039 == 3'd3) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_551_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_492_llike_4_address0;
    end else begin
        llike_4_address0 = zext_ln33_fu_885_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_address1;
    end else begin
        llike_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_551_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_492_llike_4_ce0;
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
        llike_4_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_492_llike_4_d0;
    end else begin
        llike_4_d0 = min_p_193_loc_fu_156;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_492_llike_4_we0;
    end else begin
        llike_4_we0 = llike_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1039 == 3'd4) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_551_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_492_llike_5_address0;
    end else begin
        llike_5_address0 = zext_ln33_fu_885_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_address1;
    end else begin
        llike_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_551_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_492_llike_5_ce0;
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
        llike_5_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_492_llike_5_d0;
    end else begin
        llike_5_d0 = min_p_193_loc_fu_156;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_492_llike_5_we0;
    end else begin
        llike_5_we0 = llike_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1039 == 3'd5) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_551_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_492_llike_6_address0;
    end else begin
        llike_6_address0 = zext_ln33_fu_885_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_address1;
    end else begin
        llike_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_551_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_492_llike_6_ce0;
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
        llike_6_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_492_llike_6_d0;
    end else begin
        llike_6_d0 = min_p_193_loc_fu_156;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_492_llike_6_we0;
    end else begin
        llike_6_we0 = llike_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1039 == 3'd6) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_551_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_492_llike_7_address0;
    end else begin
        llike_7_address0 = zext_ln33_fu_885_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_address1;
    end else begin
        llike_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_551_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_492_llike_7_ce0;
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
        llike_7_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_492_llike_7_d0;
    end else begin
        llike_7_d0 = min_p_193_loc_fu_156;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_492_llike_7_we0;
    end else begin
        llike_7_we0 = llike_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1039 == 3'd7) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_551_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_492_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_fu_885_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_5_reg_991;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd1112;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_551_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_492_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_492_llike_d0;
    end else begin
        llike_d0 = min_p_193_loc_fu_156;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_492_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1039 == 3'd0) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_647_p1;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_address0;
    end else begin
        path_3_address0 = 64'd34;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_ce0;
    end else begin
        path_3_ce0 = path_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_3_d0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_d0;
    end else begin
        path_3_d0 = grp_viterbi_Pipeline_L_end_fu_551_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_3_we0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_3_we0;
    end else begin
        path_3_we0 = path_3_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln23_fu_740_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_ce0;
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
        transition_0_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln23_fu_740_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_ce0;
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
        transition_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_address0;
    end else begin
        transition_2_address0 = zext_ln23_fu_740_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_ce0;
    end else begin
        transition_2_ce0 = transition_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_address0;
    end else begin
        transition_3_address0 = zext_ln23_fu_740_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_ce0;
    end else begin
        transition_3_ce0 = transition_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_565_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_524_transition_3_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_492_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_631_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_718_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
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
            if (((grp_viterbi_Pipeline_L_prev_state_fu_524_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_551_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
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
            if (((grp_viterbi_Pipeline_L_backtrack_fu_565_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
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
assign add_ln18_fu_748_p2 = (t_fu_148 + 8'd1);
assign add_ln19_fu_724_p2 = (curr_reg_480 + 7'd1);
assign add_ln24_fu_828_p2 = (shl_ln_fu_820_p3 + conv32_udiv_cast_reg_1001);
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
assign conv32_udiv_cast_fu_714_p1 = conv32_udiv_fu_704_p4;
assign conv32_udiv_fu_704_p4 = {{tmp_31_fu_676_p11[7:2]}};
assign emission_0_address1 = grp_viterbi_Pipeline_L_init_fu_492_emission_0_address1;
assign emission_1_address1 = grp_viterbi_Pipeline_L_init_fu_492_emission_1_address1;
assign emission_2_address1 = grp_viterbi_Pipeline_L_init_fu_492_emission_2_address1;
assign emission_3_address1 = grp_viterbi_Pipeline_L_init_fu_492_emission_3_address1;
assign empty_26_fu_658_p2 = ($signed(t_fu_148) + $signed(8'd255));
assign empty_27_fu_700_p1 = tmp_31_fu_676_p11[1:0];
assign empty_fu_614_p1 = obs_0_q0[1:0];
assign grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_565_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_551_ap_start = grp_viterbi_Pipeline_L_end_fu_551_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_492_ap_start = grp_viterbi_Pipeline_L_init_fu_492_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_524_ap_start_reg;
assign icmp_ln18_fu_631_p2 = ((t_fu_148 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_718_p2 = ((curr_reg_480 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_492_init_0_address0;
assign init_0_address1 = grp_viterbi_Pipeline_L_init_fu_492_init_0_address1;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_492_init_0_ce0;
assign init_0_ce1 = grp_viterbi_Pipeline_L_init_fu_492_init_0_ce1;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_492_init_1_address0;
assign init_1_address1 = grp_viterbi_Pipeline_L_init_fu_492_init_1_address1;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_492_init_1_ce0;
assign init_1_ce1 = grp_viterbi_Pipeline_L_init_fu_492_init_1_ce1;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_492_init_2_address0;
assign init_2_address1 = grp_viterbi_Pipeline_L_init_fu_492_init_2_address1;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_492_init_2_ce0;
assign init_2_ce1 = grp_viterbi_Pipeline_L_init_fu_492_init_2_ce1;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_492_init_3_address0;
assign init_3_address1 = grp_viterbi_Pipeline_L_init_fu_492_init_3_address1;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_492_init_3_ce0;
assign init_3_ce1 = grp_viterbi_Pipeline_L_init_fu_492_init_3_ce1;
assign lshr_ln6_fu_637_p4 = {{t_fu_148[7:2]}};
assign lshr_ln_fu_730_p4 = {{curr_reg_480[5:2]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_647_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_647_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_647_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign path_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_address0;
assign path_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_ce0;
assign path_0_d0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_d0;
assign path_0_we0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_0_we0;
assign path_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_address0;
assign path_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_ce0;
assign path_1_d0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_d0;
assign path_1_we0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_1_we0;
assign path_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_address0;
assign path_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_ce0;
assign path_2_d0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_d0;
assign path_2_we0 = grp_viterbi_Pipeline_L_backtrack_fu_565_path_2_we0;
assign shl_ln_fu_820_p3 = {{trunc_ln24_fu_816_p1}, {4'd0}};
assign tmp_31_fu_676_p10 = t_fu_148[1:0];
assign tmp_31_fu_676_p9 = 'bx;
assign tmp_32_fu_792_p10 = curr_reg_480[1:0];
assign tmp_32_fu_792_p2 = transition_0_q0;
assign tmp_32_fu_792_p4 = transition_1_q0;
assign tmp_32_fu_792_p6 = transition_2_q0;
assign tmp_32_fu_792_p8 = transition_3_q0;
assign tmp_32_fu_792_p9 = 'bx;
assign tmp_33_fu_856_p2 = emission_0_q0;
assign tmp_33_fu_856_p4 = emission_1_q0;
assign tmp_33_fu_856_p6 = emission_2_q0;
assign tmp_33_fu_856_p8 = emission_3_q0;
assign tmp_33_fu_856_p9 = 'bx;
assign tmp_369_fu_879_p3 = {{t_2_reg_953}, {lshr_ln7_reg_1043}};
assign tmp_493_cast_fu_671_p1 = tmp_s_fu_663_p3;
assign tmp_s_fu_663_p3 = {{empty_26_fu_658_p2}, {3'd0}};
assign trunc_ln19_fu_758_p1 = curr_reg_480[2:0];
assign trunc_ln23_fu_772_p1 = curr_reg_480[1:0];
assign trunc_ln24_fu_816_p1 = curr_reg_480[5:0];
assign zext_ln23_fu_740_p1 = lshr_ln_fu_730_p4;
assign zext_ln24_fu_833_p1 = add_ln24_reg_1058;
assign zext_ln33_fu_885_p1 = tmp_369_fu_879_p3;
assign zext_ln6_fu_647_p1 = lshr_ln6_fu_637_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_986[2:0] <= 3'b000;
    llike_addr_5_reg_991[2:0] <= 3'b000;
    conv32_udiv_cast_reg_1001[9:6] <= 4'b0000;
end
endmodule 