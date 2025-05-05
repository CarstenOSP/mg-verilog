module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 45'd1;
parameter    ap_ST_fsm_state2 = 45'd2;
parameter    ap_ST_fsm_state3 = 45'd4;
parameter    ap_ST_fsm_state4 = 45'd8;
parameter    ap_ST_fsm_state5 = 45'd16;
parameter    ap_ST_fsm_state6 = 45'd32;
parameter    ap_ST_fsm_state7 = 45'd64;
parameter    ap_ST_fsm_state8 = 45'd128;
parameter    ap_ST_fsm_state9 = 45'd256;
parameter    ap_ST_fsm_state10 = 45'd512;
parameter    ap_ST_fsm_state11 = 45'd1024;
parameter    ap_ST_fsm_state12 = 45'd2048;
parameter    ap_ST_fsm_state13 = 45'd4096;
parameter    ap_ST_fsm_state14 = 45'd8192;
parameter    ap_ST_fsm_state15 = 45'd16384;
parameter    ap_ST_fsm_state16 = 45'd32768;
parameter    ap_ST_fsm_state17 = 45'd65536;
parameter    ap_ST_fsm_state18 = 45'd131072;
parameter    ap_ST_fsm_state19 = 45'd262144;
parameter    ap_ST_fsm_state20 = 45'd524288;
parameter    ap_ST_fsm_state21 = 45'd1048576;
parameter    ap_ST_fsm_state22 = 45'd2097152;
parameter    ap_ST_fsm_state23 = 45'd4194304;
parameter    ap_ST_fsm_state24 = 45'd8388608;
parameter    ap_ST_fsm_state25 = 45'd16777216;
parameter    ap_ST_fsm_state26 = 45'd33554432;
parameter    ap_ST_fsm_state27 = 45'd67108864;
parameter    ap_ST_fsm_state28 = 45'd134217728;
parameter    ap_ST_fsm_state29 = 45'd268435456;
parameter    ap_ST_fsm_state30 = 45'd536870912;
parameter    ap_ST_fsm_state31 = 45'd1073741824;
parameter    ap_ST_fsm_state32 = 45'd2147483648;
parameter    ap_ST_fsm_state33 = 45'd4294967296;
parameter    ap_ST_fsm_state34 = 45'd8589934592;
parameter    ap_ST_fsm_state35 = 45'd17179869184;
parameter    ap_ST_fsm_state36 = 45'd34359738368;
parameter    ap_ST_fsm_state37 = 45'd68719476736;
parameter    ap_ST_fsm_state38 = 45'd137438953472;
parameter    ap_ST_fsm_state39 = 45'd274877906944;
parameter    ap_ST_fsm_state40 = 45'd549755813888;
parameter    ap_ST_fsm_state41 = 45'd1099511627776;
parameter    ap_ST_fsm_state42 = 45'd2199023255552;
parameter    ap_ST_fsm_state43 = 45'd4398046511104;
parameter    ap_ST_fsm_state44 = 45'd8796093022208;
parameter    ap_ST_fsm_state45 = 45'd17592186044416;
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
(* fsm_encoding = "none" *) reg   [44:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_541;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state34;
wire   [63:0] grp_fu_537_p2;
reg   [63:0] reg_547;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state42;
wire   [0:0] empty_fu_559_p1;
reg   [0:0] empty_reg_935;
wire    ap_CS_fsm_state2;
reg   [6:0] conv3_udiv_reg_940;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_950;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_24_fu_606_p2;
reg   [7:0] empty_24_reg_975;
wire    ap_CS_fsm_state6;
wire   [10:0] tmp_s_fu_611_p3;
reg   [10:0] tmp_s_reg_980;
reg   [10:0] llike_addr_2_reg_985;
wire   [0:0] empty_25_fu_632_p1;
reg   [0:0] empty_25_reg_990;
wire   [10:0] conv32_udiv_cast_fu_646_p1;
reg   [10:0] conv32_udiv_cast_reg_995;
wire   [6:0] add_ln19_fu_656_p2;
reg   [6:0] add_ln19_reg_1003;
wire    ap_CS_fsm_state7;
wire   [4:0] lshr_ln_fu_662_p4;
reg   [4:0] lshr_ln_reg_1008;
wire   [2:0] trunc_ln19_fu_688_p1;
reg   [2:0] trunc_ln19_reg_1023;
reg   [2:0] lshr_ln7_reg_1027;
wire   [0:0] trunc_ln23_fu_702_p1;
reg   [0:0] trunc_ln23_reg_1032;
wire   [63:0] select_ln23_fu_706_p3;
reg   [63:0] select_ln23_reg_1037;
wire   [10:0] add_ln24_fu_726_p2;
reg   [10:0] add_ln24_reg_1042;
wire   [63:0] bitcast_ln23_fu_731_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
wire   [63:0] select_ln24_fu_740_p3;
reg   [63:0] select_ln24_reg_1062;
wire   [63:0] bitcast_ln24_fu_747_p1;
reg   [63:0] bitcast_ln24_reg_1067;
wire    ap_CS_fsm_state17;
wire   [7:0] trunc_ln50_fu_795_p1;
reg   [7:0] trunc_ln50_reg_1079;
wire    ap_CS_fsm_state32;
wire   [10:0] tmp_66_fu_821_p3;
reg   [10:0] tmp_66_reg_1095;
wire    ap_CS_fsm_state33;
wire   [0:0] trunc_ln50_1_fu_833_p1;
reg   [0:0] trunc_ln50_1_reg_1105;
wire   [0:0] trunc_ln52_fu_844_p1;
reg   [0:0] trunc_ln52_reg_1109;
wire   [6:0] lshr_ln52_1_fu_848_p4;
reg   [6:0] lshr_ln52_1_reg_1115;
wire   [63:0] select_ln52_1_fu_864_p3;
reg   [63:0] select_ln52_1_reg_1130;
wire   [63:0] bitcast_ln52_fu_871_p1;
wire    ap_CS_fsm_state35;
reg   [10:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
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
wire    grp_viterbi_Pipeline_L_init_fu_456_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_456_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_456_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_456_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_llike_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_llike_1_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_llike_2_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_llike_3_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_llike_4_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_llike_5_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_llike_6_d0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_456_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_llike_7_d0;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_456_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_init_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_emission_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_emission_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_456_emission_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_emission_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_init_fu_456_emission_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_456_emission_1_ce1;
wire   [4:0] grp_viterbi_Pipeline_L_init_fu_456_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_456_init_1_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_llike_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_llike_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_llike_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_llike_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_llike_4_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_llike_5_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_llike_6_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_llike_7_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_478_min_p_38_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_min_p_38_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_501_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_501_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_501_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_501_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_1_address1;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_2_address1;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_3_address1;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_4_address1;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_5_address1;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_6_address1;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_7_address1;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_7_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_end_fu_501_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_501_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_501_min_s_16_out;
wire    grp_viterbi_Pipeline_L_end_fu_501_min_s_16_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_515_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_515_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_515_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_515_ap_ready;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_2_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_2_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_3_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_3_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_4_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_4_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_4_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_4_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_5_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_5_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_5_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_5_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_6_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_6_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_6_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_6_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_7_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_7_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_7_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_7_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_transition_0_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_transition_0_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_transition_0_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_transition_1_ce0;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_transition_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_515_transition_1_ce1;
wire   [10:0] grp_viterbi_Pipeline_L_state_fu_515_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_515_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_515_min_s_34_out;
wire    grp_viterbi_Pipeline_L_state_fu_515_min_s_34_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_ce;
reg   [6:0] curr_reg_444;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_456_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_38_loc_fu_134;
reg    grp_viterbi_Pipeline_L_end_fu_501_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg   [7:0] min_s_16_loc_fu_130;
reg    grp_viterbi_Pipeline_L_state_fu_515_ap_start_reg;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state44;
reg   [7:0] min_s_34_loc_fu_126;
wire   [63:0] zext_ln6_fu_592_p1;
wire   [0:0] icmp_ln18_fu_576_p2;
wire   [63:0] tmp_107_cast_fu_619_p1;
wire   [63:0] zext_ln23_fu_672_p1;
wire   [0:0] icmp_ln19_fu_650_p2;
wire   [63:0] zext_ln24_fu_735_p1;
wire   [63:0] zext_ln33_fu_757_p1;
wire    ap_CS_fsm_state31;
wire   [63:0] zext_ln52_fu_815_p1;
wire   [0:0] tmp_fu_787_p3;
wire   [63:0] zext_ln52_2_fu_828_p1;
wire   [63:0] zext_ln52_1_fu_858_p1;
wire   [63:0] zext_ln6_1_fu_884_p1;
wire    ap_CS_fsm_state45;
reg   [7:0] t_fu_122;
wire   [7:0] add_ln18_fu_678_p2;
reg   [8:0] t_1_fu_170;
wire   [8:0] add_ln50_fu_895_p2;
reg    obs_0_ce0_local;
reg   [6:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_we0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
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
reg    path_1_we0_local;
reg   [7:0] path_1_d0_local;
reg    path_1_ce0_local;
reg   [6:0] path_1_address0_local;
reg    path_0_ce0_local;
reg   [6:0] path_0_address0_local;
reg    path_0_we0_local;
reg   [63:0] grp_fu_537_p0;
reg   [63:0] grp_fu_537_p1;
wire   [6:0] lshr_ln6_fu_582_p4;
wire   [0:0] trunc_ln18_fu_603_p1;
wire   [7:0] tmp_2_fu_624_p3;
wire   [6:0] conv32_udiv_fu_636_p4;
wire   [5:0] trunc_ln24_fu_714_p1;
wire   [10:0] shl_ln1_fu_718_p3;
wire   [10:0] tmp_67_fu_751_p3;
wire   [7:0] add_ln52_fu_799_p2;
wire   [6:0] lshr_ln1_fu_805_p4;
wire   [7:0] select_ln52_fu_836_p3;
wire   [6:0] lshr_ln6_1_fu_875_p4;
reg    grp_fu_537_ce;
wire   [0:0] grp_fu_1140_p2;
reg   [63:0] grp_fu_1140_p0;
reg   [63:0] grp_fu_1140_p1;
reg    grp_fu_1140_ce;
reg   [4:0] grp_fu_1140_opcode;
reg   [44:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
wire    ap_ST_fsm_state43_blk;
reg    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 45'd1;
#0 grp_viterbi_Pipeline_L_init_fu_456_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_501_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_515_ap_start_reg = 1'b0;
#0 t_fu_122 = 8'd0;
#0 t_1_fu_170 = 9'd0;
end
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0));
viterbi_llike_1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_llike_1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0),.address1(llike_4_address1),.ce1(llike_4_ce1),.q1(llike_4_q1));
viterbi_llike_1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0),.address1(llike_5_address1),.ce1(llike_5_ce1),.q1(llike_5_q1));
viterbi_llike_1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0),.address1(llike_6_address1),.ce1(llike_6_ce1),.q1(llike_6_q1));
viterbi_llike_1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 1120 ),.AddressWidth( 11 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0),.address1(llike_7_address1),.ce1(llike_7_ce1),.q1(llike_7_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_456(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_456_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_456_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_456_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_456_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_456_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_456_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_456_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_456_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_456_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_456_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_456_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_456_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_456_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_456_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_456_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_456_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_456_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_456_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_456_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_456_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_456_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_456_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_456_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_456_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_456_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_456_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_456_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_456_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_456_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_456_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_456_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_456_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_456_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_456_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_456_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_456_llike_7_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_456_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_456_init_0_ce0),.init_0_q0(init_0_q0),.conv3_udiv_cast(conv3_udiv_reg_940),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_456_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_456_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_0_address1(grp_viterbi_Pipeline_L_init_fu_456_emission_0_address1),.emission_0_ce1(grp_viterbi_Pipeline_L_init_fu_456_emission_0_ce1),.emission_0_q1(emission_0_q1),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_456_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_456_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_1_address1(grp_viterbi_Pipeline_L_init_fu_456_emission_1_address1),.emission_1_ce1(grp_viterbi_Pipeline_L_init_fu_456_emission_1_ce1),.emission_1_q1(emission_1_q1),.empty(empty_reg_935),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_456_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_456_init_1_ce0),.init_1_q0(init_1_q0),.grp_fu_537_p_din0(grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_din0),.grp_fu_537_p_din1(grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_din1),.grp_fu_537_p_opcode(grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_opcode),.grp_fu_537_p_dout0(grp_fu_537_p2),.grp_fu_537_p_ce(grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_478(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_478_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_478_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_478_ap_ready),.min_p_34(reg_547),.empty_9(empty_24_reg_975),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_llike_7_ce0),.llike_7_q0(llike_7_q0),.lshr_ln(lshr_ln_reg_1008),.transition_0_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_ce1),.transition_1_q1(transition_1_q1),.empty_10(trunc_ln23_reg_1032),.bitcast_ln24(bitcast_ln24_reg_1067),.empty(tmp_s_reg_980),.min_p_38_out(grp_viterbi_Pipeline_L_prev_state_fu_478_min_p_38_out),.min_p_38_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_478_min_p_38_out_ap_vld),.grp_fu_537_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_din0),.grp_fu_537_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_din1),.grp_fu_537_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_opcode),.grp_fu_537_p_dout0(grp_fu_537_p2),.grp_fu_537_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_ce),.grp_fu_1140_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_din0),.grp_fu_1140_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_din1),.grp_fu_1140_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_opcode),.grp_fu_1140_p_dout0(grp_fu_1140_p2),.grp_fu_1140_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_501(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_501_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_501_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_501_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_501_ap_ready),.min_p(reg_541),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_501_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_501_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_end_fu_501_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_end_fu_501_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_501_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_501_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_end_fu_501_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_end_fu_501_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_501_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_501_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_end_fu_501_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_end_fu_501_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_501_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_501_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_end_fu_501_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_end_fu_501_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_501_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_501_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_end_fu_501_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_end_fu_501_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_501_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_501_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_end_fu_501_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_end_fu_501_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_501_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_501_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_end_fu_501_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_end_fu_501_llike_7_ce1),.llike_7_q1(llike_7_q1),.llike_address0(grp_viterbi_Pipeline_L_end_fu_501_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_501_llike_ce0),.llike_q0(llike_q0),.min_s_16_out(grp_viterbi_Pipeline_L_end_fu_501_min_s_16_out),.min_s_16_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_501_min_s_16_out_ap_vld),.grp_fu_1140_p_din0(grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_din0),.grp_fu_1140_p_din1(grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_din1),.grp_fu_1140_p_opcode(grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_opcode),.grp_fu_1140_p_dout0(grp_fu_1140_p2),.grp_fu_1140_p_ce(grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_515(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_515_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_515_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_515_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_515_ap_ready),.min_p_36(reg_547),.t_1(trunc_ln50_reg_1079),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_515_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_515_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_state_fu_515_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_state_fu_515_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_state_fu_515_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_state_fu_515_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_state_fu_515_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_state_fu_515_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_state_fu_515_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_state_fu_515_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_state_fu_515_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_state_fu_515_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_state_fu_515_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_state_fu_515_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_state_fu_515_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_state_fu_515_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_state_fu_515_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_state_fu_515_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_state_fu_515_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_state_fu_515_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_state_fu_515_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_state_fu_515_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_state_fu_515_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_state_fu_515_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_state_fu_515_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_state_fu_515_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_state_fu_515_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_state_fu_515_llike_7_ce1),.llike_7_q1(llike_7_q1),.zext_ln52_2(lshr_ln52_1_reg_1115),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_515_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_515_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_state_fu_515_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_state_fu_515_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_515_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_515_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_state_fu_515_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_state_fu_515_transition_1_ce1),.transition_1_q1(transition_1_q1),.empty(trunc_ln52_reg_1109),.llike_address0(grp_viterbi_Pipeline_L_state_fu_515_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_515_llike_ce0),.llike_q0(llike_q0),.zext_ln52_3(tmp_66_reg_1095),.min_s_34_out(grp_viterbi_Pipeline_L_state_fu_515_min_s_34_out),.min_s_34_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_515_min_s_34_out_ap_vld),.grp_fu_537_p_din0(grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_din0),.grp_fu_537_p_din1(grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_din1),.grp_fu_537_p_opcode(grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_opcode),.grp_fu_537_p_dout0(grp_fu_537_p2),.grp_fu_537_p_ce(grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_ce),.grp_fu_1140_p_din0(grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_din0),.grp_fu_1140_p_din1(grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_din1),.grp_fu_1140_p_opcode(grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_opcode),.grp_fu_1140_p_dout0(grp_fu_1140_p2),.grp_fu_1140_p_ce(grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_537_p0),.din1(grp_fu_537_p1),.ce(grp_fu_537_ce),.dout(grp_fu_537_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1140_p0),.din1(grp_fu_1140_p1),.ce(grp_fu_1140_ce),.opcode(grp_fu_1140_opcode),.dout(grp_fu_1140_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_501_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_501_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_501_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_501_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_456_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_456_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_456_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_456_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_478_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_515_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state43)) begin
            grp_viterbi_Pipeline_L_state_fu_515_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_515_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_515_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_444 <= add_ln19_reg_1003;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_444 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_576_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_170 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        t_1_fu_170 <= add_ln50_fu_895_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_122 <= 8'd1;
    end else if (((icmp_ln19_fu_650_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        t_fu_122 <= add_ln18_fu_678_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_1003 <= add_ln19_fu_656_p2;
        lshr_ln_reg_1008 <= {{curr_reg_444[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln24_reg_1042 <= add_ln24_fu_726_p2;
        lshr_ln7_reg_1027 <= {{curr_reg_444[5:3]}};
        select_ln23_reg_1037 <= select_ln23_fu_706_p3;
        trunc_ln19_reg_1023 <= trunc_ln19_fu_688_p1;
        trunc_ln23_reg_1032 <= trunc_ln23_fu_702_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bitcast_ln24_reg_1067 <= bitcast_ln24_fu_747_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_cast_reg_995[6 : 0] <= conv32_udiv_cast_fu_646_p1[6 : 0];
        empty_24_reg_975 <= empty_24_fu_606_p2;
        empty_25_reg_990 <= empty_25_fu_632_p1;
        llike_addr_2_reg_985[10 : 3] <= tmp_107_cast_fu_619_p1[10 : 3];
        tmp_s_reg_980[10 : 3] <= tmp_s_fu_611_p3[10 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_940 <= {{obs_0_q0[7:1]}};
        empty_reg_935 <= empty_fu_559_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        lshr_ln52_1_reg_1115 <= {{select_ln52_fu_836_p3[7:1]}};
        tmp_66_reg_1095[10 : 3] <= tmp_66_fu_821_p3[10 : 3];
        trunc_ln50_1_reg_1105 <= trunc_ln50_1_fu_833_p1;
        trunc_ln52_reg_1109 <= trunc_ln52_fu_844_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_478_min_p_38_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        min_p_38_loc_fu_134 <= grp_viterbi_Pipeline_L_prev_state_fu_478_min_p_38_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_501_min_s_16_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
        min_s_16_loc_fu_130 <= grp_viterbi_Pipeline_L_end_fu_501_min_s_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_515_min_s_34_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state44))) begin
        min_s_34_loc_fu_126 <= grp_viterbi_Pipeline_L_state_fu_515_min_s_34_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_541 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_547 <= grp_fu_537_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        select_ln24_reg_1062 <= select_ln24_fu_740_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        select_ln52_1_reg_1130 <= select_ln52_1_fu_864_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_950 <= t_fu_122;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        trunc_ln50_reg_1079 <= trunc_ln50_fu_795_p1;
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
    if ((grp_viterbi_Pipeline_L_prev_state_fu_478_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_end_fu_501_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
    end
end
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state39_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
assign ap_ST_fsm_state41_blk = 1'b0;
assign ap_ST_fsm_state42_blk = 1'b0;
assign ap_ST_fsm_state43_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_state_fu_515_ap_done == 1'b0)) begin
        ap_ST_fsm_state44_blk = 1'b1;
    end else begin
        ap_ST_fsm_state44_blk = 1'b0;
    end
end
assign ap_ST_fsm_state45_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_456_ap_done == 1'b0)) begin
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
    if (((tmp_fu_787_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
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
    if (((tmp_fu_787_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_456_emission_0_address0;
    end else begin
        emission_0_address0 = zext_ln24_fu_735_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_456_emission_0_ce0;
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
        emission_0_ce1 = grp_viterbi_Pipeline_L_init_fu_456_emission_0_ce1;
    end else begin
        emission_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_456_emission_1_address0;
    end else begin
        emission_1_address0 = zext_ln24_fu_735_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_456_emission_1_ce0;
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
        emission_1_ce1 = grp_viterbi_Pipeline_L_init_fu_456_emission_1_ce1;
    end else begin
        emission_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_1140_ce = grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1140_ce = grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1140_ce = grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_ce;
    end else begin
        grp_fu_1140_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_1140_opcode = grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1140_opcode = grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1140_opcode = grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_opcode;
    end else begin
        grp_fu_1140_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_1140_p0 = grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1140_p0 = grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1140_p0 = grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_din0;
    end else begin
        grp_fu_1140_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_1140_p1 = grp_viterbi_Pipeline_L_state_fu_515_grp_fu_1140_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1140_p1 = grp_viterbi_Pipeline_L_end_fu_501_grp_fu_1140_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1140_p1 = grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_1140_p_din1;
    end else begin
        grp_fu_1140_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_537_ce = grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_537_ce = grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_537_ce = grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_ce;
    end else begin
        grp_fu_537_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_537_p0 = grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_537_p0 = grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_537_p0 = grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_537_p0 = reg_547;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_537_p0 = reg_541;
    end else begin
        grp_fu_537_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_537_p1 = grp_viterbi_Pipeline_L_state_fu_515_grp_fu_537_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_537_p1 = grp_viterbi_Pipeline_L_prev_state_fu_478_grp_fu_537_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_537_p1 = grp_viterbi_Pipeline_L_init_fu_456_grp_fu_537_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_537_p1 = bitcast_ln52_fu_871_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_537_p1 = bitcast_ln24_fu_747_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_537_p1 = bitcast_ln23_fu_731_p1;
    end else begin
        grp_fu_537_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_515_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_501_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_456_llike_1_address0;
    end else begin
        llike_1_address0 = zext_ln33_fu_757_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_state_fu_515_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_end_fu_501_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_515_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_501_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_456_llike_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_state_fu_515_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_end_fu_501_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_456_llike_1_d0;
    end else begin
        llike_1_d0 = min_p_38_loc_fu_134;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_456_llike_1_we0;
    end else begin
        llike_1_we0 = llike_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1023 == 3'd1) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_state_fu_515_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_501_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_456_llike_2_address0;
    end else begin
        llike_2_address0 = zext_ln33_fu_757_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_state_fu_515_llike_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_address1 = grp_viterbi_Pipeline_L_end_fu_501_llike_2_address1;
    end else begin
        llike_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_state_fu_515_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_501_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_456_llike_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_state_fu_515_llike_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_ce1 = grp_viterbi_Pipeline_L_end_fu_501_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_456_llike_2_d0;
    end else begin
        llike_2_d0 = min_p_38_loc_fu_134;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_456_llike_2_we0;
    end else begin
        llike_2_we0 = llike_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1023 == 3'd2) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_state_fu_515_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_501_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_456_llike_3_address0;
    end else begin
        llike_3_address0 = zext_ln33_fu_757_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_state_fu_515_llike_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_address1 = grp_viterbi_Pipeline_L_end_fu_501_llike_3_address1;
    end else begin
        llike_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_state_fu_515_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_501_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_456_llike_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_state_fu_515_llike_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_ce1 = grp_viterbi_Pipeline_L_end_fu_501_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_456_llike_3_d0;
    end else begin
        llike_3_d0 = min_p_38_loc_fu_134;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_456_llike_3_we0;
    end else begin
        llike_3_we0 = llike_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1023 == 3'd3) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_state_fu_515_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_501_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_456_llike_4_address0;
    end else begin
        llike_4_address0 = zext_ln33_fu_757_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_state_fu_515_llike_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_address1 = grp_viterbi_Pipeline_L_end_fu_501_llike_4_address1;
    end else begin
        llike_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_state_fu_515_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_501_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_456_llike_4_ce0;
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
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_state_fu_515_llike_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_ce1 = grp_viterbi_Pipeline_L_end_fu_501_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_456_llike_4_d0;
    end else begin
        llike_4_d0 = min_p_38_loc_fu_134;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_456_llike_4_we0;
    end else begin
        llike_4_we0 = llike_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1023 == 3'd4) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_state_fu_515_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_501_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_456_llike_5_address0;
    end else begin
        llike_5_address0 = zext_ln33_fu_757_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_state_fu_515_llike_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_address1 = grp_viterbi_Pipeline_L_end_fu_501_llike_5_address1;
    end else begin
        llike_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_state_fu_515_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_501_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_456_llike_5_ce0;
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
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_state_fu_515_llike_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_ce1 = grp_viterbi_Pipeline_L_end_fu_501_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_456_llike_5_d0;
    end else begin
        llike_5_d0 = min_p_38_loc_fu_134;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_456_llike_5_we0;
    end else begin
        llike_5_we0 = llike_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1023 == 3'd5) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_state_fu_515_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_501_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_456_llike_6_address0;
    end else begin
        llike_6_address0 = zext_ln33_fu_757_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_state_fu_515_llike_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_address1 = grp_viterbi_Pipeline_L_end_fu_501_llike_6_address1;
    end else begin
        llike_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_state_fu_515_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_501_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_456_llike_6_ce0;
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
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_state_fu_515_llike_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_ce1 = grp_viterbi_Pipeline_L_end_fu_501_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_456_llike_6_d0;
    end else begin
        llike_6_d0 = min_p_38_loc_fu_134;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_456_llike_6_we0;
    end else begin
        llike_6_we0 = llike_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1023 == 3'd6) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_state_fu_515_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_501_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_456_llike_7_address0;
    end else begin
        llike_7_address0 = zext_ln33_fu_757_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_state_fu_515_llike_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_address1 = grp_viterbi_Pipeline_L_end_fu_501_llike_7_address1;
    end else begin
        llike_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_state_fu_515_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_501_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_456_llike_7_ce0;
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
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_state_fu_515_llike_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_ce1 = grp_viterbi_Pipeline_L_end_fu_501_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_456_llike_7_d0;
    end else begin
        llike_7_d0 = min_p_38_loc_fu_134;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_456_llike_7_we0;
    end else begin
        llike_7_we0 = llike_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1023 == 3'd7) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_515_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_501_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_456_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address0_local = zext_ln52_2_fu_828_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_fu_757_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_2_reg_985;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd1112;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_515_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_501_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_456_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_456_llike_d0;
    end else begin
        llike_d0 = min_p_38_loc_fu_134;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_456_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1023 == 3'd0) & (1'b1 == ap_CS_fsm_state27))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_592_p1;
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
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_0_address0_local = zext_ln6_1_fu_884_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_0_address0_local = zext_ln52_fu_815_p1;
    end else begin
        path_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state32))) begin
        path_0_ce0_local = 1'b1;
    end else begin
        path_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1105 == 1'd0) & (1'b1 == ap_CS_fsm_state45))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_1_address0_local = zext_ln6_1_fu_884_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_1_address0_local = zext_ln52_fu_815_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        path_1_address0_local = 64'd69;
    end else begin
        path_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state32))) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_1_d0_local = min_s_34_loc_fu_126;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        path_1_d0_local = min_s_16_loc_fu_130;
    end else begin
        path_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | ((trunc_ln50_1_reg_1105 == 1'd1) & (1'b1 == ap_CS_fsm_state45)))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_515_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_address0;
    end else begin
        transition_0_address0 = transition_0_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address0_local = zext_ln52_1_fu_858_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_0_address0_local = zext_ln23_fu_672_p1;
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_state_fu_515_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_515_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_ce0;
    end else begin
        transition_0_ce0 = transition_0_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_state_fu_515_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_478_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_515_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_address0;
    end else begin
        transition_1_address0 = transition_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address0_local = zext_ln52_1_fu_858_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_1_address0_local = zext_ln23_fu_672_p1;
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_state_fu_515_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_515_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_ce0;
    end else begin
        transition_1_ce0 = transition_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_state_fu_515_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_478_transition_1_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_456_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_576_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_650_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
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
            if (((grp_viterbi_Pipeline_L_prev_state_fu_478_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            if (((tmp_fu_787_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            if (((grp_viterbi_Pipeline_L_state_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state44))) begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_678_p2 = (t_fu_122 + 8'd1);
assign add_ln19_fu_656_p2 = (curr_reg_444 + 7'd1);
assign add_ln24_fu_726_p2 = (shl_ln1_fu_718_p3 + conv32_udiv_cast_reg_995);
assign add_ln50_fu_895_p2 = ($signed(t_1_fu_170) + $signed(9'd511));
assign add_ln52_fu_799_p2 = (trunc_ln50_fu_795_p1 + 8'd1);
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
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln23_fu_731_p1 = select_ln23_reg_1037;
assign bitcast_ln24_fu_747_p1 = select_ln24_reg_1062;
assign bitcast_ln52_fu_871_p1 = select_ln52_1_reg_1130;
assign conv32_udiv_cast_fu_646_p1 = conv32_udiv_fu_636_p4;
assign conv32_udiv_fu_636_p4 = {{tmp_2_fu_624_p3[7:1]}};
assign emission_0_address1 = grp_viterbi_Pipeline_L_init_fu_456_emission_0_address1;
assign emission_1_address1 = grp_viterbi_Pipeline_L_init_fu_456_emission_1_address1;
assign empty_24_fu_606_p2 = ($signed(t_fu_122) + $signed(8'd255));
assign empty_25_fu_632_p1 = tmp_2_fu_624_p3[0:0];
assign empty_fu_559_p1 = obs_0_q0[0:0];
assign grp_viterbi_Pipeline_L_end_fu_501_ap_start = grp_viterbi_Pipeline_L_end_fu_501_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_456_ap_start = grp_viterbi_Pipeline_L_init_fu_456_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_478_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_515_ap_start = grp_viterbi_Pipeline_L_state_fu_515_ap_start_reg;
assign icmp_ln18_fu_576_p2 = ((t_fu_122 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_650_p2 = ((curr_reg_444 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_456_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_456_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_456_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_456_init_1_ce0;
assign lshr_ln1_fu_805_p4 = {{add_ln52_fu_799_p2[7:1]}};
assign lshr_ln52_1_fu_848_p4 = {{select_ln52_fu_836_p3[7:1]}};
assign lshr_ln6_1_fu_875_p4 = {{t_1_fu_170[7:1]}};
assign lshr_ln6_fu_582_p4 = {{t_fu_122[7:1]}};
assign lshr_ln_fu_662_p4 = {{curr_reg_444[5:1]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_592_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_34_loc_fu_126;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = path_1_d0_local;
assign path_1_we0 = path_1_we0_local;
assign select_ln23_fu_706_p3 = ((trunc_ln23_fu_702_p1[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign select_ln24_fu_740_p3 = ((empty_25_reg_990[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln52_1_fu_864_p3 = ((trunc_ln52_reg_1109[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign select_ln52_fu_836_p3 = ((trunc_ln50_1_fu_833_p1[0:0] == 1'b1) ? path_0_q0 : path_1_q0);
assign shl_ln1_fu_718_p3 = {{trunc_ln24_fu_714_p1}, {5'd0}};
assign tmp_107_cast_fu_619_p1 = tmp_s_fu_611_p3;
assign tmp_2_fu_624_p3 = ((trunc_ln18_fu_603_p1[0:0] == 1'b1) ? obs_1_q0 : obs_0_q0);
assign tmp_66_fu_821_p3 = {{trunc_ln50_reg_1079}, {3'd0}};
assign tmp_67_fu_751_p3 = {{t_2_reg_950}, {lshr_ln7_reg_1027}};
assign tmp_fu_787_p3 = t_1_fu_170[32'd8];
assign tmp_s_fu_611_p3 = {{empty_24_fu_606_p2}, {3'd0}};
assign trunc_ln18_fu_603_p1 = t_fu_122[0:0];
assign trunc_ln19_fu_688_p1 = curr_reg_444[2:0];
assign trunc_ln23_fu_702_p1 = curr_reg_444[0:0];
assign trunc_ln24_fu_714_p1 = curr_reg_444[5:0];
assign trunc_ln50_1_fu_833_p1 = t_1_fu_170[0:0];
assign trunc_ln50_fu_795_p1 = t_1_fu_170[7:0];
assign trunc_ln52_fu_844_p1 = select_ln52_fu_836_p3[0:0];
assign zext_ln23_fu_672_p1 = lshr_ln_fu_662_p4;
assign zext_ln24_fu_735_p1 = add_ln24_reg_1042;
assign zext_ln33_fu_757_p1 = tmp_67_fu_751_p3;
assign zext_ln52_1_fu_858_p1 = lshr_ln52_1_fu_848_p4;
assign zext_ln52_2_fu_828_p1 = tmp_66_fu_821_p3;
assign zext_ln52_fu_815_p1 = lshr_ln1_fu_805_p4;
assign zext_ln6_1_fu_884_p1 = lshr_ln6_1_fu_875_p4;
assign zext_ln6_fu_592_p1 = lshr_ln6_fu_582_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_980[2:0] <= 3'b000;
    llike_addr_2_reg_985[2:0] <= 3'b000;
    conv32_udiv_cast_reg_995[10:7] <= 4'b0000;
    tmp_66_reg_1095[2:0] <= 3'b000;
end
endmodule 