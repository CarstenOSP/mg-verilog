module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_address0,obs_ce0,obs_q0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,path_address0,path_ce0,path_we0,path_d0,ap_return); 
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
output  [7:0] obs_address0;
output   obs_ce0;
input  [7:0] obs_q0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
output  [7:0] path_address0;
output   path_ce0;
output   path_we0;
output  [7:0] path_d0;
output  [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] transition_address0;
reg transition_ce0;
reg[11:0] transition_address1;
reg transition_ce1;
reg[11:0] emission_address0;
reg emission_ce0;
reg emission_ce1;
reg[7:0] path_address0;
reg path_ce0;
reg path_we0;
reg[7:0] path_d0;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_391;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire   [63:0] grp_fu_387_p2;
reg   [63:0] reg_397;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
reg   [7:0] obs_load_reg_571;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_582;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_fu_422_p2;
reg   [7:0] empty_reg_595;
wire    ap_CS_fsm_state6;
wire   [10:0] tmp_s_fu_427_p3;
reg   [10:0] tmp_s_reg_600;
reg   [10:0] llike_addr_2_reg_605;
wire   [11:0] zext_ln19_fu_440_p1;
reg   [11:0] zext_ln19_reg_610;
wire   [6:0] add_ln19_fu_450_p2;
reg   [6:0] add_ln19_reg_618;
wire    ap_CS_fsm_state7;
wire   [5:0] trunc_ln19_fu_456_p1;
reg   [5:0] trunc_ln19_reg_623;
wire   [2:0] trunc_ln19_1_fu_460_p1;
reg   [2:0] trunc_ln19_1_reg_629;
reg   [2:0] lshr_ln7_reg_633;
reg   [63:0] transition_load_reg_643;
wire   [63:0] bitcast_ln23_fu_489_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
reg   [63:0] emission_load_reg_658;
wire   [63:0] bitcast_ln24_fu_510_p1;
reg   [63:0] bitcast_ln24_reg_663;
wire    ap_CS_fsm_state17;
reg   [10:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [10:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
reg   [10:0] llike_2_address0;
reg    llike_2_ce0;
reg    llike_2_we0;
reg   [63:0] llike_2_d0;
wire   [63:0] llike_2_q0;
reg    llike_2_ce1;
wire   [63:0] llike_2_q1;
reg   [10:0] llike_3_address0;
reg    llike_3_ce0;
reg    llike_3_we0;
reg   [63:0] llike_3_d0;
wire   [63:0] llike_3_q0;
reg    llike_3_ce1;
wire   [63:0] llike_3_q1;
reg   [10:0] llike_4_address0;
reg    llike_4_ce0;
reg    llike_4_we0;
reg   [63:0] llike_4_d0;
wire   [63:0] llike_4_q0;
reg    llike_4_ce1;
wire   [63:0] llike_4_q1;
reg   [10:0] llike_5_address0;
reg    llike_5_ce0;
reg    llike_5_we0;
reg   [63:0] llike_5_d0;
wire   [63:0] llike_5_q0;
reg    llike_5_ce1;
wire   [63:0] llike_5_q1;
reg   [10:0] llike_6_address0;
reg    llike_6_ce0;
reg    llike_6_we0;
reg   [63:0] llike_6_d0;
wire   [63:0] llike_6_q0;
reg    llike_6_ce1;
wire   [63:0] llike_6_q1;
reg   [10:0] llike_7_address0;
reg    llike_7_ce0;
reg    llike_7_we0;
reg   [63:0] llike_7_d0;
wire   [63:0] llike_7_q0;
reg    llike_7_ce1;
wire   [63:0] llike_7_q1;
wire    grp_viterbi_Pipeline_L_init_fu_318_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_318_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_318_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_318_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_318_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_318_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_318_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_318_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_318_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_318_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_318_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_318_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_318_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_llike_7_d0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_318_init_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_init_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_318_init_address1;
wire    grp_viterbi_Pipeline_L_init_fu_318_init_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_318_emission_address0;
wire    grp_viterbi_Pipeline_L_init_fu_318_emission_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_318_emission_address1;
wire    grp_viterbi_Pipeline_L_init_fu_318_emission_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_336_llike_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_336_llike_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_336_llike_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_336_llike_4_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_336_llike_5_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_336_llike_6_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_336_llike_7_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_llike_7_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_336_transition_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_336_transition_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_transition_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_336_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_llike_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_336_min_p_145_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_min_p_145_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_356_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_356_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_356_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_356_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_356_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_356_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_356_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_356_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_356_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_356_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_356_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_356_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_356_llike_7_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_356_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_356_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_backtrack_fu_370_transition_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_backtrack_fu_370_transition_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_transition_ce1;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_370_path_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_path_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_path_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_370_path_d0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_ce;
reg   [6:0] curr_reg_307;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_318_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_145_loc_fu_100;
reg    grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg    grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start_reg;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
wire   [63:0] zext_ln18_fu_417_p1;
wire   [0:0] icmp_ln18_fu_411_p2;
wire   [63:0] tmp_233_cast_fu_435_p1;
wire   [63:0] zext_ln23_fu_474_p1;
wire   [0:0] icmp_ln19_fu_444_p2;
wire   [63:0] zext_ln24_fu_505_p1;
wire   [63:0] zext_ln33_fu_520_p1;
wire    ap_CS_fsm_state31;
reg   [7:0] t_fu_92;
wire   [7:0] add_ln18_fu_479_p2;
reg    obs_ce0_local;
reg   [7:0] obs_address0_local;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_we0_local;
reg    transition_ce0_local;
reg    emission_ce0_local;
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
reg    path_we0_local;
reg    path_ce0_local;
reg   [63:0] grp_fu_387_p0;
reg   [63:0] grp_fu_387_p1;
wire   [11:0] shl_ln1_fu_493_p3;
wire   [11:0] add_ln24_fu_500_p2;
wire   [10:0] tmp_225_fu_514_p3;
reg    grp_fu_387_ce;
wire   [63:0] grp_fu_672_p2;
reg   [63:0] grp_fu_672_p0;
reg   [63:0] grp_fu_672_p1;
reg    grp_fu_672_ce;
wire   [0:0] grp_fu_676_p2;
reg   [63:0] grp_fu_676_p0;
reg   [63:0] grp_fu_676_p1;
reg    grp_fu_676_ce;
reg   [4:0] grp_fu_676_opcode;
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
#0 grp_viterbi_Pipeline_L_init_fu_318_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start_reg = 1'b0;
#0 t_fu_92 = 8'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_address1),.ce1(llike_4_ce1),.q1(llike_4_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_address1),.ce1(llike_5_ce1),.q1(llike_5_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_address1),.ce1(llike_6_ce1),.q1(llike_6_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_address1),.ce1(llike_7_ce1),.q1(llike_7_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_318(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_318_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_318_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_318_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_318_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_318_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_318_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_318_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_318_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_318_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_318_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_318_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_318_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_318_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_318_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_318_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_318_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_318_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_318_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_318_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_318_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_318_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_318_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_318_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_318_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_318_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_318_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_318_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_318_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_318_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_318_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_318_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_318_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_318_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_318_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_318_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_318_llike_7_d0),.init_address0(grp_viterbi_Pipeline_L_init_fu_318_init_address0),.init_ce0(grp_viterbi_Pipeline_L_init_fu_318_init_ce0),.init_q0(init_q0),.init_address1(grp_viterbi_Pipeline_L_init_fu_318_init_address1),.init_ce1(grp_viterbi_Pipeline_L_init_fu_318_init_ce1),.init_q1(init_q1),.obs_load(obs_load_reg_571),.emission_address0(grp_viterbi_Pipeline_L_init_fu_318_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_init_fu_318_emission_ce0),.emission_q0(emission_q0),.emission_address1(grp_viterbi_Pipeline_L_init_fu_318_emission_address1),.emission_ce1(grp_viterbi_Pipeline_L_init_fu_318_emission_ce1),.emission_q1(emission_q1),.zext_ln13(obs_load_reg_571),.grp_fu_387_p_din0(grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_din0),.grp_fu_387_p_din1(grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_din1),.grp_fu_387_p_opcode(grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_opcode),.grp_fu_387_p_dout0(grp_fu_387_p2),.grp_fu_387_p_ce(grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_ce),.grp_fu_672_p_din0(grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_din0),.grp_fu_672_p_din1(grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_din1),.grp_fu_672_p_opcode(grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_opcode),.grp_fu_672_p_dout0(grp_fu_672_p2),.grp_fu_672_p_ce(grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_336(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_336_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_336_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_336_ap_ready),.min_p_4(reg_397),.empty_8(empty_reg_595),.llike_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_7_ce0),.llike_7_q0(llike_7_q0),.empty_9(trunc_ln19_reg_623),.transition_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_prev_state_fu_336_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_prev_state_fu_336_transition_ce1),.transition_q1(transition_q1),.bitcast_ln24(bitcast_ln24_reg_663),.empty(tmp_s_reg_600),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_336_llike_ce0),.llike_q0(llike_q0),.min_p_145_out(grp_viterbi_Pipeline_L_prev_state_fu_336_min_p_145_out),.min_p_145_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_336_min_p_145_out_ap_vld),.grp_fu_387_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_din0),.grp_fu_387_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_din1),.grp_fu_387_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_opcode),.grp_fu_387_p_dout0(grp_fu_387_p2),.grp_fu_387_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_ce),.grp_fu_676_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_din0),.grp_fu_676_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_din1),.grp_fu_676_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_opcode),.grp_fu_676_p_dout0(grp_fu_676_p2),.grp_fu_676_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_356(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_356_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_356_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_356_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_356_ap_ready),.min_p(reg_391),.llike_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_356_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_356_llike_7_ce0),.llike_7_q0(llike_7_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_356_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_356_min_s_out_ap_vld),.grp_fu_676_p_din0(grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_din0),.grp_fu_676_p_din1(grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_din1),.grp_fu_676_p_opcode(grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_opcode),.grp_fu_676_p_dout0(grp_fu_676_p2),.grp_fu_676_p_ce(grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_370(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_370_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_370_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_370_ap_ready),.min_s_reload(grp_viterbi_Pipeline_L_end_fu_356_min_s_out),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_ce1),.llike_7_q1(llike_7_q1),.transition_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_backtrack_fu_370_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_backtrack_fu_370_transition_ce1),.transition_q1(transition_q1),.path_address0(grp_viterbi_Pipeline_L_backtrack_fu_370_path_address0),.path_ce0(grp_viterbi_Pipeline_L_backtrack_fu_370_path_ce0),.path_we0(grp_viterbi_Pipeline_L_backtrack_fu_370_path_we0),.path_d0(grp_viterbi_Pipeline_L_backtrack_fu_370_path_d0),.grp_fu_387_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_din0),.grp_fu_387_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_din1),.grp_fu_387_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_opcode),.grp_fu_387_p_dout0(grp_fu_387_p2),.grp_fu_387_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_ce),.grp_fu_672_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_din0),.grp_fu_672_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_din1),.grp_fu_672_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_opcode),.grp_fu_672_p_dout0(grp_fu_672_p2),.grp_fu_672_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_ce),.grp_fu_676_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_din0),.grp_fu_676_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_din1),.grp_fu_676_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_opcode),.grp_fu_676_p_dout0(grp_fu_676_p2),.grp_fu_676_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_387_p0),.din1(grp_fu_387_p1),.ce(grp_fu_387_ce),.dout(grp_fu_387_p2));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_672_p0),.din1(grp_fu_672_p1),.ce(grp_fu_672_ce),.dout(grp_fu_672_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_676_p0),.din1(grp_fu_676_p1),.ce(grp_fu_676_ce),.opcode(grp_fu_676_opcode),.dout(grp_fu_676_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_370_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_356_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_318_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_318_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_318_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_318_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_336_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_307 <= add_ln19_reg_618;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_307 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_92 <= 8'd1;
    end else if (((icmp_ln19_fu_444_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        t_fu_92 <= add_ln18_fu_479_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_618 <= add_ln19_fu_450_p2;
        lshr_ln7_reg_633 <= {{curr_reg_307[5:3]}};
        trunc_ln19_1_reg_629 <= trunc_ln19_1_fu_460_p1;
        trunc_ln19_reg_623 <= trunc_ln19_fu_456_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bitcast_ln24_reg_663 <= bitcast_ln24_fu_510_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        emission_load_reg_658 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_reg_595 <= empty_fu_422_p2;
        llike_addr_2_reg_605[10 : 3] <= tmp_233_cast_fu_435_p1[10 : 3];
        tmp_s_reg_600[10 : 3] <= tmp_s_fu_427_p3[10 : 3];
        zext_ln19_reg_610[7 : 0] <= zext_ln19_fu_440_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_336_min_p_145_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        min_p_145_loc_fu_100 <= grp_viterbi_Pipeline_L_prev_state_fu_336_min_p_145_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        obs_load_reg_571 <= obs_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state28))) begin
        reg_391 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_397 <= grp_fu_387_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_582 <= t_fu_92;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_load_reg_643 <= transition_q0;
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
    if ((grp_viterbi_Pipeline_L_prev_state_fu_336_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_end_fu_356_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
    end
end
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_370_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_318_ap_done == 1'b0)) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_370_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
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
    if (((grp_viterbi_Pipeline_L_backtrack_fu_370_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_address0 = grp_viterbi_Pipeline_L_init_fu_318_emission_address0;
    end else begin
        emission_address0 = zext_ln24_fu_505_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_init_fu_318_emission_ce0;
    end else begin
        emission_ce0 = emission_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce1 = grp_viterbi_Pipeline_L_init_fu_318_emission_ce1;
    end else begin
        emission_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_387_ce = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_387_ce = grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_387_ce = grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_ce;
    end else begin
        grp_fu_387_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_387_p0 = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_387_p0 = grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_387_p0 = grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_387_p0 = reg_397;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_387_p0 = reg_391;
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_387_p1 = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_387_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_387_p1 = grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_387_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_387_p1 = grp_viterbi_Pipeline_L_init_fu_318_grp_fu_387_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_387_p1 = bitcast_ln24_fu_510_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_387_p1 = bitcast_ln23_fu_489_p1;
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_672_ce = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_672_ce = grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_ce;
    end else begin
        grp_fu_672_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_672_p0 = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_672_p0 = grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_din0;
    end else begin
        grp_fu_672_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_672_p1 = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_672_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_672_p1 = grp_viterbi_Pipeline_L_init_fu_318_grp_fu_672_p_din1;
    end else begin
        grp_fu_672_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_676_ce = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_676_ce = grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_676_ce = grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_ce;
    end else begin
        grp_fu_676_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_676_opcode = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_676_opcode = grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_676_opcode = grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_opcode;
    end else begin
        grp_fu_676_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_676_p0 = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_676_p0 = grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_676_p0 = grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_din0;
    end else begin
        grp_fu_676_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_676_p1 = grp_viterbi_Pipeline_L_backtrack_fu_370_grp_fu_676_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_676_p1 = grp_viterbi_Pipeline_L_end_fu_356_grp_fu_676_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_676_p1 = grp_viterbi_Pipeline_L_prev_state_fu_336_grp_fu_676_p_din1;
    end else begin
        grp_fu_676_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_318_llike_1_address0;
    end else begin
        llike_1_address0 = zext_ln33_fu_520_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_318_llike_1_ce0;
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
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_318_llike_1_d0;
    end else begin
        llike_1_d0 = min_p_145_loc_fu_100;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_318_llike_1_we0;
    end else begin
        llike_1_we0 = llike_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_629 == 3'd1))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_318_llike_2_address0;
    end else begin
        llike_2_address0 = zext_ln33_fu_520_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_318_llike_2_ce0;
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
        llike_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_318_llike_2_d0;
    end else begin
        llike_2_d0 = min_p_145_loc_fu_100;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_318_llike_2_we0;
    end else begin
        llike_2_we0 = llike_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_629 == 3'd2))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_318_llike_3_address0;
    end else begin
        llike_3_address0 = zext_ln33_fu_520_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_318_llike_3_ce0;
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
        llike_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_318_llike_3_d0;
    end else begin
        llike_3_d0 = min_p_145_loc_fu_100;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_318_llike_3_we0;
    end else begin
        llike_3_we0 = llike_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_629 == 3'd3))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_318_llike_4_address0;
    end else begin
        llike_4_address0 = zext_ln33_fu_520_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_318_llike_4_ce0;
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
        llike_4_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_318_llike_4_d0;
    end else begin
        llike_4_d0 = min_p_145_loc_fu_100;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_318_llike_4_we0;
    end else begin
        llike_4_we0 = llike_4_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_629 == 3'd4))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_318_llike_5_address0;
    end else begin
        llike_5_address0 = zext_ln33_fu_520_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_318_llike_5_ce0;
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
        llike_5_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_318_llike_5_d0;
    end else begin
        llike_5_d0 = min_p_145_loc_fu_100;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_318_llike_5_we0;
    end else begin
        llike_5_we0 = llike_5_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_629 == 3'd5))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_318_llike_6_address0;
    end else begin
        llike_6_address0 = zext_ln33_fu_520_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_318_llike_6_ce0;
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
        llike_6_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_318_llike_6_d0;
    end else begin
        llike_6_d0 = min_p_145_loc_fu_100;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_318_llike_6_we0;
    end else begin
        llike_6_we0 = llike_6_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_629 == 3'd6))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_318_llike_7_address0;
    end else begin
        llike_7_address0 = zext_ln33_fu_520_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_318_llike_7_ce0;
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
        llike_7_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_318_llike_7_d0;
    end else begin
        llike_7_d0 = min_p_145_loc_fu_100;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_318_llike_7_we0;
    end else begin
        llike_7_we0 = llike_7_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_629 == 3'd7))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_356_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_318_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_fu_520_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_2_reg_605;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd1112;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_356_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_318_llike_ce0;
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
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_318_llike_d0;
    end else begin
        llike_d0 = min_p_145_loc_fu_100;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_318_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (trunc_ln19_1_reg_629 == 3'd0))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_address0_local = zext_ln18_fu_417_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        obs_address0_local = 64'd0;
    end else begin
        obs_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        obs_ce0_local = 1'b1;
    end else begin
        obs_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_path_address0;
    end else begin
        path_address0 = 64'd139;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_path_ce0;
    end else begin
        path_ce0 = path_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        path_ce0_local = 1'b1;
    end else begin
        path_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_d0 = grp_viterbi_Pipeline_L_backtrack_fu_370_path_d0;
    end else begin
        path_d0 = grp_viterbi_Pipeline_L_end_fu_356_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_we0 = grp_viterbi_Pipeline_L_backtrack_fu_370_path_we0;
    end else begin
        path_we0 = path_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        path_we0_local = 1'b1;
    end else begin
        path_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_address0 = grp_viterbi_Pipeline_L_backtrack_fu_370_transition_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_address0 = grp_viterbi_Pipeline_L_prev_state_fu_336_transition_address0;
    end else begin
        transition_address0 = zext_ln23_fu_474_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_address1 = grp_viterbi_Pipeline_L_backtrack_fu_370_transition_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_address1 = grp_viterbi_Pipeline_L_prev_state_fu_336_transition_address1;
    end else begin
        transition_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_370_transition_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_336_transition_ce0;
    end else begin
        transition_ce0 = transition_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_370_transition_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_336_transition_ce1;
    end else begin
        transition_ce1 = 1'b0;
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
            if (((grp_viterbi_Pipeline_L_init_fu_318_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_411_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_444_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
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
            if (((grp_viterbi_Pipeline_L_prev_state_fu_336_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_356_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
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
            if (((grp_viterbi_Pipeline_L_backtrack_fu_370_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state33))) begin
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
assign add_ln18_fu_479_p2 = (t_fu_92 + 8'd1);
assign add_ln19_fu_450_p2 = (curr_reg_307 + 7'd1);
assign add_ln24_fu_500_p2 = (shl_ln1_fu_493_p3 + zext_ln19_reg_610);
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
assign bitcast_ln23_fu_489_p1 = transition_load_reg_643;
assign bitcast_ln24_fu_510_p1 = emission_load_reg_658;
assign emission_address1 = grp_viterbi_Pipeline_L_init_fu_318_emission_address1;
assign empty_fu_422_p2 = ($signed(t_fu_92) + $signed(8'd255));
assign grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_370_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_356_ap_start = grp_viterbi_Pipeline_L_end_fu_356_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_318_ap_start = grp_viterbi_Pipeline_L_init_fu_318_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_336_ap_start_reg;
assign icmp_ln18_fu_411_p2 = ((t_fu_92 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_444_p2 = ((curr_reg_307 == 7'd64) ? 1'b1 : 1'b0);
assign init_address0 = grp_viterbi_Pipeline_L_init_fu_318_init_address0;
assign init_address1 = grp_viterbi_Pipeline_L_init_fu_318_init_address1;
assign init_ce0 = grp_viterbi_Pipeline_L_init_fu_318_init_ce0;
assign init_ce1 = grp_viterbi_Pipeline_L_init_fu_318_init_ce1;
assign obs_address0 = obs_address0_local;
assign obs_ce0 = obs_ce0_local;
assign shl_ln1_fu_493_p3 = {{trunc_ln19_reg_623}, {6'd0}};
assign tmp_225_fu_514_p3 = {{t_2_reg_582}, {lshr_ln7_reg_633}};
assign tmp_233_cast_fu_435_p1 = tmp_s_fu_427_p3;
assign tmp_s_fu_427_p3 = {{empty_fu_422_p2}, {3'd0}};
assign trunc_ln19_1_fu_460_p1 = curr_reg_307[2:0];
assign trunc_ln19_fu_456_p1 = curr_reg_307[5:0];
assign zext_ln18_fu_417_p1 = t_fu_92;
assign zext_ln19_fu_440_p1 = obs_q0;
assign zext_ln23_fu_474_p1 = trunc_ln19_fu_456_p1;
assign zext_ln24_fu_505_p1 = add_ln24_fu_500_p2;
assign zext_ln33_fu_520_p1 = tmp_225_fu_514_p3;
always @ (posedge ap_clk) begin
    tmp_s_reg_600[2:0] <= 3'b000;
    llike_addr_2_reg_605[2:0] <= 3'b000;
    zext_ln19_reg_610[11:8] <= 4'b0000;
end
endmodule 