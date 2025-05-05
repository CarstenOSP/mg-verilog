module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_address0,obs_ce0,obs_q0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,path_address0,path_ce0,path_we0,path_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 44'd1;
parameter    ap_ST_fsm_state2 = 44'd2;
parameter    ap_ST_fsm_state3 = 44'd4;
parameter    ap_ST_fsm_state4 = 44'd8;
parameter    ap_ST_fsm_state5 = 44'd16;
parameter    ap_ST_fsm_state6 = 44'd32;
parameter    ap_ST_fsm_state7 = 44'd64;
parameter    ap_ST_fsm_state8 = 44'd128;
parameter    ap_ST_fsm_state9 = 44'd256;
parameter    ap_ST_fsm_state10 = 44'd512;
parameter    ap_ST_fsm_state11 = 44'd1024;
parameter    ap_ST_fsm_state12 = 44'd2048;
parameter    ap_ST_fsm_state13 = 44'd4096;
parameter    ap_ST_fsm_state14 = 44'd8192;
parameter    ap_ST_fsm_state15 = 44'd16384;
parameter    ap_ST_fsm_state16 = 44'd32768;
parameter    ap_ST_fsm_state17 = 44'd65536;
parameter    ap_ST_fsm_state18 = 44'd131072;
parameter    ap_ST_fsm_state19 = 44'd262144;
parameter    ap_ST_fsm_state20 = 44'd524288;
parameter    ap_ST_fsm_state21 = 44'd1048576;
parameter    ap_ST_fsm_state22 = 44'd2097152;
parameter    ap_ST_fsm_state23 = 44'd4194304;
parameter    ap_ST_fsm_state24 = 44'd8388608;
parameter    ap_ST_fsm_state25 = 44'd16777216;
parameter    ap_ST_fsm_state26 = 44'd33554432;
parameter    ap_ST_fsm_state27 = 44'd67108864;
parameter    ap_ST_fsm_state28 = 44'd134217728;
parameter    ap_ST_fsm_state29 = 44'd268435456;
parameter    ap_ST_fsm_state30 = 44'd536870912;
parameter    ap_ST_fsm_state31 = 44'd1073741824;
parameter    ap_ST_fsm_state32 = 44'd2147483648;
parameter    ap_ST_fsm_state33 = 44'd4294967296;
parameter    ap_ST_fsm_state34 = 44'd8589934592;
parameter    ap_ST_fsm_state35 = 44'd17179869184;
parameter    ap_ST_fsm_state36 = 44'd34359738368;
parameter    ap_ST_fsm_state37 = 44'd68719476736;
parameter    ap_ST_fsm_state38 = 44'd137438953472;
parameter    ap_ST_fsm_state39 = 44'd274877906944;
parameter    ap_ST_fsm_state40 = 44'd549755813888;
parameter    ap_ST_fsm_state41 = 44'd1099511627776;
parameter    ap_ST_fsm_state42 = 44'd2199023255552;
parameter    ap_ST_fsm_state43 = 44'd4398046511104;
parameter    ap_ST_fsm_state44 = 44'd8796093022208;
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
(* fsm_encoding = "none" *) reg   [43:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_968;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state33;
reg   [63:0] reg_974;
wire   [63:0] grp_fu_964_p2;
reg   [63:0] reg_978;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state41;
reg   [7:0] obs_load_reg_1279;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_1290;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_fu_1009_p2;
reg   [7:0] empty_reg_1317;
wire    ap_CS_fsm_state6;
wire   [8:0] tmp_s_fu_1014_p3;
reg   [8:0] tmp_s_reg_1322;
reg   [8:0] llike_addr_reg_1327;
wire   [11:0] zext_ln19_fu_1027_p1;
reg   [11:0] zext_ln19_reg_1332;
wire   [6:0] add_ln19_fu_1037_p2;
reg   [6:0] add_ln19_reg_1340;
wire    ap_CS_fsm_state7;
wire   [5:0] trunc_ln19_fu_1043_p1;
reg   [5:0] trunc_ln19_reg_1345;
wire   [4:0] trunc_ln19_1_fu_1047_p1;
reg   [4:0] trunc_ln19_1_reg_1351;
reg   [0:0] tmp_130_reg_1355;
wire   [63:0] bitcast_ln23_fu_1074_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
reg   [63:0] emission_load_reg_1375;
wire   [63:0] bitcast_ln24_fu_1096_p1;
reg   [63:0] bitcast_ln24_reg_1380;
wire    ap_CS_fsm_state17;
reg   [8:0] t_3_reg_1386;
wire    ap_CS_fsm_state32;
wire   [8:0] shl_ln52_fu_1200_p2;
reg   [8:0] shl_ln52_reg_1398;
wire   [63:0] bitcast_ln52_fu_1227_p1;
wire    ap_CS_fsm_state34;
wire   [7:0] trunc_ln50_fu_1232_p1;
reg   [7:0] trunc_ln50_reg_1418;
wire    ap_CS_fsm_state42;
reg   [8:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg   [8:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg   [8:0] llike_2_address0;
reg    llike_2_ce0;
reg    llike_2_we0;
reg   [63:0] llike_2_d0;
wire   [63:0] llike_2_q0;
reg   [8:0] llike_3_address0;
reg    llike_3_ce0;
reg    llike_3_we0;
reg   [63:0] llike_3_d0;
wire   [63:0] llike_3_q0;
reg   [8:0] llike_4_address0;
reg    llike_4_ce0;
reg    llike_4_we0;
reg   [63:0] llike_4_d0;
wire   [63:0] llike_4_q0;
reg   [8:0] llike_5_address0;
reg    llike_5_ce0;
reg    llike_5_we0;
reg   [63:0] llike_5_d0;
wire   [63:0] llike_5_q0;
reg   [8:0] llike_6_address0;
reg    llike_6_ce0;
reg    llike_6_we0;
reg   [63:0] llike_6_d0;
wire   [63:0] llike_6_q0;
reg   [8:0] llike_7_address0;
reg    llike_7_ce0;
reg    llike_7_we0;
reg   [63:0] llike_7_d0;
wire   [63:0] llike_7_q0;
reg   [8:0] llike_8_address0;
reg    llike_8_ce0;
reg    llike_8_we0;
reg   [63:0] llike_8_d0;
wire   [63:0] llike_8_q0;
reg   [8:0] llike_9_address0;
reg    llike_9_ce0;
reg    llike_9_we0;
reg   [63:0] llike_9_d0;
wire   [63:0] llike_9_q0;
reg   [8:0] llike_10_address0;
reg    llike_10_ce0;
reg    llike_10_we0;
reg   [63:0] llike_10_d0;
wire   [63:0] llike_10_q0;
reg   [8:0] llike_11_address0;
reg    llike_11_ce0;
reg    llike_11_we0;
reg   [63:0] llike_11_d0;
wire   [63:0] llike_11_q0;
reg   [8:0] llike_12_address0;
reg    llike_12_ce0;
reg    llike_12_we0;
reg   [63:0] llike_12_d0;
wire   [63:0] llike_12_q0;
reg   [8:0] llike_13_address0;
reg    llike_13_ce0;
reg    llike_13_we0;
reg   [63:0] llike_13_d0;
wire   [63:0] llike_13_q0;
reg   [8:0] llike_14_address0;
reg    llike_14_ce0;
reg    llike_14_we0;
reg   [63:0] llike_14_d0;
wire   [63:0] llike_14_q0;
reg   [8:0] llike_15_address0;
reg    llike_15_ce0;
reg    llike_15_we0;
reg   [63:0] llike_15_d0;
wire   [63:0] llike_15_q0;
reg   [8:0] llike_16_address0;
reg    llike_16_ce0;
reg    llike_16_we0;
reg   [63:0] llike_16_d0;
wire   [63:0] llike_16_q0;
reg   [8:0] llike_17_address0;
reg    llike_17_ce0;
reg    llike_17_we0;
reg   [63:0] llike_17_d0;
wire   [63:0] llike_17_q0;
reg   [8:0] llike_18_address0;
reg    llike_18_ce0;
reg    llike_18_we0;
reg   [63:0] llike_18_d0;
wire   [63:0] llike_18_q0;
reg   [8:0] llike_19_address0;
reg    llike_19_ce0;
reg    llike_19_we0;
reg   [63:0] llike_19_d0;
wire   [63:0] llike_19_q0;
reg   [8:0] llike_20_address0;
reg    llike_20_ce0;
reg    llike_20_we0;
reg   [63:0] llike_20_d0;
wire   [63:0] llike_20_q0;
reg   [8:0] llike_21_address0;
reg    llike_21_ce0;
reg    llike_21_we0;
reg   [63:0] llike_21_d0;
wire   [63:0] llike_21_q0;
reg   [8:0] llike_22_address0;
reg    llike_22_ce0;
reg    llike_22_we0;
reg   [63:0] llike_22_d0;
wire   [63:0] llike_22_q0;
reg   [8:0] llike_23_address0;
reg    llike_23_ce0;
reg    llike_23_we0;
reg   [63:0] llike_23_d0;
wire   [63:0] llike_23_q0;
reg   [8:0] llike_24_address0;
reg    llike_24_ce0;
reg    llike_24_we0;
reg   [63:0] llike_24_d0;
wire   [63:0] llike_24_q0;
reg   [8:0] llike_25_address0;
reg    llike_25_ce0;
reg    llike_25_we0;
reg   [63:0] llike_25_d0;
wire   [63:0] llike_25_q0;
reg   [8:0] llike_26_address0;
reg    llike_26_ce0;
reg    llike_26_we0;
reg   [63:0] llike_26_d0;
wire   [63:0] llike_26_q0;
reg   [8:0] llike_27_address0;
reg    llike_27_ce0;
reg    llike_27_we0;
reg   [63:0] llike_27_d0;
wire   [63:0] llike_27_q0;
reg   [8:0] llike_28_address0;
reg    llike_28_ce0;
reg    llike_28_we0;
reg   [63:0] llike_28_d0;
wire   [63:0] llike_28_q0;
reg   [8:0] llike_29_address0;
reg    llike_29_ce0;
reg    llike_29_we0;
reg   [63:0] llike_29_d0;
wire   [63:0] llike_29_q0;
reg   [8:0] llike_30_address0;
reg    llike_30_ce0;
reg    llike_30_we0;
reg   [63:0] llike_30_d0;
wire   [63:0] llike_30_q0;
reg   [8:0] llike_31_address0;
reg    llike_31_ce0;
reg    llike_31_we0;
reg   [63:0] llike_31_d0;
wire   [63:0] llike_31_q0;
wire    grp_viterbi_Pipeline_L_init_fu_797_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_797_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_797_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_797_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_1_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_2_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_3_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_4_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_5_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_6_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_7_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_8_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_8_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_8_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_8_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_9_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_9_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_9_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_9_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_10_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_10_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_10_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_10_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_11_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_11_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_11_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_11_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_12_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_12_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_12_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_12_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_13_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_13_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_13_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_13_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_14_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_14_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_14_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_14_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_15_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_15_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_15_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_15_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_16_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_16_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_16_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_16_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_17_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_17_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_17_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_17_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_18_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_18_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_18_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_18_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_19_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_19_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_19_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_19_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_20_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_20_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_20_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_20_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_21_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_21_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_21_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_21_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_22_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_22_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_22_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_22_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_23_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_23_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_23_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_23_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_24_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_24_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_24_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_24_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_25_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_25_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_25_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_25_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_26_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_26_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_26_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_26_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_27_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_27_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_27_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_27_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_28_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_28_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_28_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_28_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_29_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_29_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_29_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_29_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_30_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_30_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_30_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_30_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_797_llike_31_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_31_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_797_llike_31_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_llike_31_d0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_797_init_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_init_ce0;
wire   [5:0] grp_viterbi_Pipeline_L_init_fu_797_init_address1;
wire    grp_viterbi_Pipeline_L_init_fu_797_init_ce1;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_797_emission_address0;
wire    grp_viterbi_Pipeline_L_init_fu_797_emission_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_init_fu_797_emission_address1;
wire    grp_viterbi_Pipeline_L_init_fu_797_emission_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_4_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_5_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_6_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_7_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_8_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_8_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_9_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_9_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_10_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_10_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_11_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_11_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_12_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_12_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_13_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_13_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_14_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_14_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_15_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_15_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_16_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_16_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_17_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_17_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_18_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_18_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_19_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_19_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_20_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_20_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_21_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_21_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_22_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_22_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_23_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_23_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_24_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_24_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_25_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_25_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_26_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_26_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_27_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_27_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_28_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_28_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_29_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_29_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_30_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_30_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_839_llike_31_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_llike_31_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_839_transition_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_prev_state_fu_839_transition_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_transition_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_839_min_p_82_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_min_p_82_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_883_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_883_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_883_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_883_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_8_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_8_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_9_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_9_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_10_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_10_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_11_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_11_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_12_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_12_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_13_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_13_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_14_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_14_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_15_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_15_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_16_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_16_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_17_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_17_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_18_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_18_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_19_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_19_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_20_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_20_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_21_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_21_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_22_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_22_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_23_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_23_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_24_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_24_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_25_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_25_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_26_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_26_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_27_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_27_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_28_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_28_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_29_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_29_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_30_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_30_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_31_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_31_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_883_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_883_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_883_min_s_32_out;
wire    grp_viterbi_Pipeline_L_end_fu_883_min_s_32_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_921_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_921_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_921_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_921_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_4_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_5_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_6_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_7_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_8_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_8_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_9_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_9_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_10_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_10_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_11_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_11_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_12_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_12_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_13_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_13_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_14_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_14_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_15_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_15_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_16_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_16_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_17_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_17_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_18_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_18_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_19_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_19_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_20_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_20_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_21_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_21_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_22_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_22_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_23_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_23_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_24_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_24_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_25_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_25_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_26_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_26_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_27_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_27_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_28_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_28_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_29_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_29_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_30_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_30_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_31_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_31_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_921_transition_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_transition_ce0;
wire   [11:0] grp_viterbi_Pipeline_L_state_fu_921_transition_address1;
wire    grp_viterbi_Pipeline_L_state_fu_921_transition_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_921_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_921_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_921_min_s_66_out;
wire    grp_viterbi_Pipeline_L_state_fu_921_min_s_66_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_ce;
reg   [6:0] curr_reg_786;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_797_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_82_loc_fu_164;
reg    grp_viterbi_Pipeline_L_end_fu_883_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg   [7:0] min_s_32_loc_fu_160;
reg    grp_viterbi_Pipeline_L_state_fu_921_ap_start_reg;
wire    ap_CS_fsm_state43;
reg   [7:0] min_s_66_loc_fu_156;
wire   [63:0] zext_ln18_fu_999_p1;
wire   [0:0] icmp_ln18_fu_993_p2;
wire   [63:0] tmp_241_cast_fu_1022_p1;
wire   [63:0] zext_ln23_fu_1059_p1;
wire   [0:0] icmp_ln19_fu_1031_p2;
wire   [63:0] zext_ln24_fu_1091_p1;
wire   [63:0] zext_ln33_fu_1106_p1;
wire    ap_CS_fsm_state31;
wire   [63:0] zext_ln52_fu_1206_p1;
wire   [0:0] tmp_fu_1189_p3;
wire   [63:0] zext_ln52_1_fu_1211_p1;
wire   [63:0] zext_ln50_fu_1236_p1;
wire    ap_CS_fsm_state44;
reg   [7:0] t_fu_152;
wire   [7:0] add_ln18_fu_1064_p2;
reg   [8:0] t_1_fu_296;
wire   [8:0] add_ln50_fu_1216_p2;
reg   [7:0] store_forwarded_fu_300;
reg    obs_ce0_local;
reg   [7:0] obs_address0_local;
reg    llike_ce0_local;
reg   [8:0] llike_address0_local;
reg    llike_we0_local;
reg    ap_predicate_pred1204_state27;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    emission_ce0_local;
reg    llike_30_we0_local;
reg    ap_predicate_pred1221_state27;
reg    llike_30_ce0_local;
reg    llike_29_we0_local;
reg    ap_predicate_pred1230_state27;
reg    llike_29_ce0_local;
reg    llike_28_we0_local;
reg    ap_predicate_pred1239_state27;
reg    llike_28_ce0_local;
reg    llike_27_we0_local;
reg    ap_predicate_pred1248_state27;
reg    llike_27_ce0_local;
reg    llike_26_we0_local;
reg    ap_predicate_pred1257_state27;
reg    llike_26_ce0_local;
reg    llike_25_we0_local;
reg    ap_predicate_pred1266_state27;
reg    llike_25_ce0_local;
reg    llike_24_we0_local;
reg    ap_predicate_pred1275_state27;
reg    llike_24_ce0_local;
reg    llike_23_we0_local;
reg    ap_predicate_pred1284_state27;
reg    llike_23_ce0_local;
reg    llike_22_we0_local;
reg    ap_predicate_pred1293_state27;
reg    llike_22_ce0_local;
reg    llike_21_we0_local;
reg    ap_predicate_pred1302_state27;
reg    llike_21_ce0_local;
reg    llike_20_we0_local;
reg    ap_predicate_pred1311_state27;
reg    llike_20_ce0_local;
reg    llike_19_we0_local;
reg    ap_predicate_pred1320_state27;
reg    llike_19_ce0_local;
reg    llike_18_we0_local;
reg    ap_predicate_pred1329_state27;
reg    llike_18_ce0_local;
reg    llike_17_we0_local;
reg    ap_predicate_pred1338_state27;
reg    llike_17_ce0_local;
reg    llike_16_we0_local;
reg    ap_predicate_pred1347_state27;
reg    llike_16_ce0_local;
reg    llike_15_we0_local;
reg    ap_predicate_pred1356_state27;
reg    llike_15_ce0_local;
reg    llike_14_we0_local;
reg    ap_predicate_pred1365_state27;
reg    llike_14_ce0_local;
reg    llike_13_we0_local;
reg    ap_predicate_pred1374_state27;
reg    llike_13_ce0_local;
reg    llike_12_we0_local;
reg    ap_predicate_pred1383_state27;
reg    llike_12_ce0_local;
reg    llike_11_we0_local;
reg    ap_predicate_pred1392_state27;
reg    llike_11_ce0_local;
reg    llike_10_we0_local;
reg    ap_predicate_pred1401_state27;
reg    llike_10_ce0_local;
reg    llike_9_we0_local;
reg    ap_predicate_pred1410_state27;
reg    llike_9_ce0_local;
reg    llike_8_we0_local;
reg    ap_predicate_pred1419_state27;
reg    llike_8_ce0_local;
reg    llike_7_we0_local;
reg    ap_predicate_pred1428_state27;
reg    llike_7_ce0_local;
reg    llike_6_we0_local;
reg    ap_predicate_pred1437_state27;
reg    llike_6_ce0_local;
reg    llike_5_we0_local;
reg    ap_predicate_pred1446_state27;
reg    llike_5_ce0_local;
reg    llike_4_we0_local;
reg    ap_predicate_pred1455_state27;
reg    llike_4_ce0_local;
reg    llike_3_we0_local;
reg    ap_predicate_pred1464_state27;
reg    llike_3_ce0_local;
reg    llike_2_we0_local;
reg    ap_predicate_pred1473_state27;
reg    llike_2_ce0_local;
reg    llike_1_we0_local;
reg    ap_predicate_pred1482_state27;
reg    llike_1_ce0_local;
reg    llike_31_we0_local;
reg    ap_predicate_pred1491_state27;
reg    llike_31_ce0_local;
reg    path_we0_local;
reg   [7:0] path_d0_local;
reg    path_ce0_local;
reg   [7:0] path_address0_local;
reg   [63:0] grp_fu_964_p0;
reg   [63:0] grp_fu_964_p1;
wire   [11:0] shl_ln1_fu_1079_p3;
wire   [11:0] add_ln24_fu_1086_p2;
wire   [8:0] tmp_131_fu_1100_p3;
reg    grp_fu_964_ce;
wire   [0:0] grp_fu_1423_p2;
reg   [63:0] grp_fu_1423_p0;
reg   [63:0] grp_fu_1423_p1;
reg    grp_fu_1423_ce;
reg   [4:0] grp_fu_1423_opcode;
reg   [43:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 44'd1;
#0 grp_viterbi_Pipeline_L_init_fu_797_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_883_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_921_ap_start_reg = 1'b0;
#0 t_fu_152 = 8'd0;
#0 t_1_fu_296 = 9'd0;
#0 store_forwarded_fu_300 = 8'd0;
end
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_8_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_8_address0),.ce0(llike_8_ce0),.we0(llike_8_we0),.d0(llike_8_d0),.q0(llike_8_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_9_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_9_address0),.ce0(llike_9_ce0),.we0(llike_9_we0),.d0(llike_9_d0),.q0(llike_9_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_10_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_10_address0),.ce0(llike_10_ce0),.we0(llike_10_we0),.d0(llike_10_d0),.q0(llike_10_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_11_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_11_address0),.ce0(llike_11_ce0),.we0(llike_11_we0),.d0(llike_11_d0),.q0(llike_11_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_12_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_12_address0),.ce0(llike_12_ce0),.we0(llike_12_we0),.d0(llike_12_d0),.q0(llike_12_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_13_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_13_address0),.ce0(llike_13_ce0),.we0(llike_13_we0),.d0(llike_13_d0),.q0(llike_13_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_14_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_14_address0),.ce0(llike_14_ce0),.we0(llike_14_we0),.d0(llike_14_d0),.q0(llike_14_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_15_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_15_address0),.ce0(llike_15_ce0),.we0(llike_15_we0),.d0(llike_15_d0),.q0(llike_15_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_16_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_16_address0),.ce0(llike_16_ce0),.we0(llike_16_we0),.d0(llike_16_d0),.q0(llike_16_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_17_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_17_address0),.ce0(llike_17_ce0),.we0(llike_17_we0),.d0(llike_17_d0),.q0(llike_17_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_18_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_18_address0),.ce0(llike_18_ce0),.we0(llike_18_we0),.d0(llike_18_d0),.q0(llike_18_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_19_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_19_address0),.ce0(llike_19_ce0),.we0(llike_19_we0),.d0(llike_19_d0),.q0(llike_19_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_20_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_20_address0),.ce0(llike_20_ce0),.we0(llike_20_we0),.d0(llike_20_d0),.q0(llike_20_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_21_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_21_address0),.ce0(llike_21_ce0),.we0(llike_21_we0),.d0(llike_21_d0),.q0(llike_21_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_22_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_22_address0),.ce0(llike_22_ce0),.we0(llike_22_we0),.d0(llike_22_d0),.q0(llike_22_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_23_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_23_address0),.ce0(llike_23_ce0),.we0(llike_23_we0),.d0(llike_23_d0),.q0(llike_23_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_24_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_24_address0),.ce0(llike_24_ce0),.we0(llike_24_we0),.d0(llike_24_d0),.q0(llike_24_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_25_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_25_address0),.ce0(llike_25_ce0),.we0(llike_25_we0),.d0(llike_25_d0),.q0(llike_25_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_26_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_26_address0),.ce0(llike_26_ce0),.we0(llike_26_we0),.d0(llike_26_d0),.q0(llike_26_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_27_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_27_address0),.ce0(llike_27_ce0),.we0(llike_27_we0),.d0(llike_27_d0),.q0(llike_27_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_28_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_28_address0),.ce0(llike_28_ce0),.we0(llike_28_we0),.d0(llike_28_d0),.q0(llike_28_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_29_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_29_address0),.ce0(llike_29_ce0),.we0(llike_29_we0),.d0(llike_29_d0),.q0(llike_29_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_30_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_30_address0),.ce0(llike_30_ce0),.we0(llike_30_we0),.d0(llike_30_d0),.q0(llike_30_q0));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_31_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_31_address0),.ce0(llike_31_ce0),.we0(llike_31_we0),.d0(llike_31_d0),.q0(llike_31_q0));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_797(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_797_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_797_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_797_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_797_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_7_d0),.llike_8_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_8_ce0),.llike_8_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_8_we0),.llike_8_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_8_d0),.llike_9_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_9_ce0),.llike_9_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_9_we0),.llike_9_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_9_d0),.llike_10_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_10_ce0),.llike_10_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_10_we0),.llike_10_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_10_d0),.llike_11_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_11_ce0),.llike_11_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_11_we0),.llike_11_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_11_d0),.llike_12_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_12_ce0),.llike_12_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_12_we0),.llike_12_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_12_d0),.llike_13_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_13_ce0),.llike_13_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_13_we0),.llike_13_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_13_d0),.llike_14_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_14_ce0),.llike_14_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_14_we0),.llike_14_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_14_d0),.llike_15_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_15_ce0),.llike_15_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_15_we0),.llike_15_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_15_d0),.llike_16_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_16_ce0),.llike_16_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_16_we0),.llike_16_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_16_d0),.llike_17_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_17_ce0),.llike_17_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_17_we0),.llike_17_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_17_d0),.llike_18_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_18_ce0),.llike_18_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_18_we0),.llike_18_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_18_d0),.llike_19_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_19_ce0),.llike_19_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_19_we0),.llike_19_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_19_d0),.llike_20_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_20_ce0),.llike_20_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_20_we0),.llike_20_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_20_d0),.llike_21_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_21_ce0),.llike_21_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_21_we0),.llike_21_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_21_d0),.llike_22_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_22_ce0),.llike_22_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_22_we0),.llike_22_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_22_d0),.llike_23_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_23_ce0),.llike_23_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_23_we0),.llike_23_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_23_d0),.llike_24_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_24_ce0),.llike_24_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_24_we0),.llike_24_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_24_d0),.llike_25_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_25_ce0),.llike_25_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_25_we0),.llike_25_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_25_d0),.llike_26_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_26_ce0),.llike_26_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_26_we0),.llike_26_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_26_d0),.llike_27_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_27_ce0),.llike_27_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_27_we0),.llike_27_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_27_d0),.llike_28_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_28_ce0),.llike_28_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_28_we0),.llike_28_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_28_d0),.llike_29_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_29_ce0),.llike_29_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_29_we0),.llike_29_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_29_d0),.llike_30_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_30_ce0),.llike_30_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_30_we0),.llike_30_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_30_d0),.llike_31_address0(grp_viterbi_Pipeline_L_init_fu_797_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_init_fu_797_llike_31_ce0),.llike_31_we0(grp_viterbi_Pipeline_L_init_fu_797_llike_31_we0),.llike_31_d0(grp_viterbi_Pipeline_L_init_fu_797_llike_31_d0),.init_address0(grp_viterbi_Pipeline_L_init_fu_797_init_address0),.init_ce0(grp_viterbi_Pipeline_L_init_fu_797_init_ce0),.init_q0(init_q0),.init_address1(grp_viterbi_Pipeline_L_init_fu_797_init_address1),.init_ce1(grp_viterbi_Pipeline_L_init_fu_797_init_ce1),.init_q1(init_q1),.obs_load(obs_load_reg_1279),.emission_address0(grp_viterbi_Pipeline_L_init_fu_797_emission_address0),.emission_ce0(grp_viterbi_Pipeline_L_init_fu_797_emission_ce0),.emission_q0(emission_q0),.emission_address1(grp_viterbi_Pipeline_L_init_fu_797_emission_address1),.emission_ce1(grp_viterbi_Pipeline_L_init_fu_797_emission_ce1),.emission_q1(emission_q1),.zext_ln13(obs_load_reg_1279),.grp_fu_964_p_din0(grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_din0),.grp_fu_964_p_din1(grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_din1),.grp_fu_964_p_opcode(grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_opcode),.grp_fu_964_p_dout0(grp_fu_964_p2),.grp_fu_964_p_ce(grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_839(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_839_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_839_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_839_ap_ready),.min_p_66(reg_978),.empty_9(empty_reg_1317),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_16_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_16_ce0),.llike_16_q0(llike_16_q0),.llike_17_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_17_ce0),.llike_17_q0(llike_17_q0),.llike_18_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_18_ce0),.llike_18_q0(llike_18_q0),.llike_19_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_19_ce0),.llike_19_q0(llike_19_q0),.llike_20_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_20_ce0),.llike_20_q0(llike_20_q0),.llike_21_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_21_ce0),.llike_21_q0(llike_21_q0),.llike_22_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_22_ce0),.llike_22_q0(llike_22_q0),.llike_23_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_23_ce0),.llike_23_q0(llike_23_q0),.llike_24_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_24_ce0),.llike_24_q0(llike_24_q0),.llike_25_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_25_ce0),.llike_25_q0(llike_25_q0),.llike_26_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_26_ce0),.llike_26_q0(llike_26_q0),.llike_27_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_27_ce0),.llike_27_q0(llike_27_q0),.llike_28_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_28_ce0),.llike_28_q0(llike_28_q0),.llike_29_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_29_ce0),.llike_29_q0(llike_29_q0),.llike_30_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_30_ce0),.llike_30_q0(llike_30_q0),.llike_31_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_llike_31_ce0),.llike_31_q0(llike_31_q0),.empty_10(trunc_ln19_reg_1345),.transition_address0(grp_viterbi_Pipeline_L_prev_state_fu_839_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_prev_state_fu_839_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_prev_state_fu_839_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_prev_state_fu_839_transition_ce1),.transition_q1(transition_q1),.bitcast_ln24(bitcast_ln24_reg_1380),.empty(tmp_s_reg_1322),.min_p_82_out(grp_viterbi_Pipeline_L_prev_state_fu_839_min_p_82_out),.min_p_82_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_839_min_p_82_out_ap_vld),.grp_fu_964_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_din0),.grp_fu_964_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_din1),.grp_fu_964_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_opcode),.grp_fu_964_p_dout0(grp_fu_964_p2),.grp_fu_964_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_ce),.grp_fu_1423_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_din0),.grp_fu_1423_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_din1),.grp_fu_1423_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_opcode),.grp_fu_1423_p_dout0(grp_fu_1423_p2),.grp_fu_1423_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_883(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_883_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_883_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_883_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_883_ap_ready),.min_p(reg_968),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_16_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_16_ce0),.llike_16_q0(llike_16_q0),.llike_17_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_17_ce0),.llike_17_q0(llike_17_q0),.llike_18_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_18_ce0),.llike_18_q0(llike_18_q0),.llike_19_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_19_ce0),.llike_19_q0(llike_19_q0),.llike_20_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_20_ce0),.llike_20_q0(llike_20_q0),.llike_21_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_21_ce0),.llike_21_q0(llike_21_q0),.llike_22_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_22_ce0),.llike_22_q0(llike_22_q0),.llike_23_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_23_ce0),.llike_23_q0(llike_23_q0),.llike_24_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_24_ce0),.llike_24_q0(llike_24_q0),.llike_25_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_25_ce0),.llike_25_q0(llike_25_q0),.llike_26_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_26_ce0),.llike_26_q0(llike_26_q0),.llike_27_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_27_ce0),.llike_27_q0(llike_27_q0),.llike_28_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_28_ce0),.llike_28_q0(llike_28_q0),.llike_29_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_29_ce0),.llike_29_q0(llike_29_q0),.llike_30_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_30_ce0),.llike_30_q0(llike_30_q0),.llike_31_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_31_ce0),.llike_31_q0(llike_31_q0),.llike_address0(grp_viterbi_Pipeline_L_end_fu_883_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_883_llike_ce0),.llike_q0(llike_q0),.min_s_32_out(grp_viterbi_Pipeline_L_end_fu_883_min_s_32_out),.min_s_32_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_883_min_s_32_out_ap_vld),.grp_fu_1423_p_din0(grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_din0),.grp_fu_1423_p_din1(grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_din1),.grp_fu_1423_p_opcode(grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_opcode),.grp_fu_1423_p_dout0(grp_fu_1423_p2),.grp_fu_1423_p_ce(grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_921(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_921_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_921_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_921_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_921_ap_ready),.min_p_68(reg_978),.t_1(trunc_ln50_reg_1418),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_16_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_16_ce0),.llike_16_q0(llike_16_q0),.llike_17_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_17_ce0),.llike_17_q0(llike_17_q0),.llike_18_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_18_ce0),.llike_18_q0(llike_18_q0),.llike_19_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_19_ce0),.llike_19_q0(llike_19_q0),.llike_20_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_20_ce0),.llike_20_q0(llike_20_q0),.llike_21_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_21_ce0),.llike_21_q0(llike_21_q0),.llike_22_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_22_ce0),.llike_22_q0(llike_22_q0),.llike_23_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_23_ce0),.llike_23_q0(llike_23_q0),.llike_24_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_24_ce0),.llike_24_q0(llike_24_q0),.llike_25_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_25_ce0),.llike_25_q0(llike_25_q0),.llike_26_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_26_ce0),.llike_26_q0(llike_26_q0),.llike_27_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_27_ce0),.llike_27_q0(llike_27_q0),.llike_28_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_28_ce0),.llike_28_q0(llike_28_q0),.llike_29_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_29_ce0),.llike_29_q0(llike_29_q0),.llike_30_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_30_ce0),.llike_30_q0(llike_30_q0),.llike_31_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_31_ce0),.llike_31_q0(llike_31_q0),.zext_ln52(store_forwarded_fu_300),.transition_address0(grp_viterbi_Pipeline_L_state_fu_921_transition_address0),.transition_ce0(grp_viterbi_Pipeline_L_state_fu_921_transition_ce0),.transition_q0(transition_q0),.transition_address1(grp_viterbi_Pipeline_L_state_fu_921_transition_address1),.transition_ce1(grp_viterbi_Pipeline_L_state_fu_921_transition_ce1),.transition_q1(transition_q1),.zext_ln52_2(shl_ln52_reg_1398),.llike_address0(grp_viterbi_Pipeline_L_state_fu_921_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_921_llike_ce0),.llike_q0(llike_q0),.min_s_66_out(grp_viterbi_Pipeline_L_state_fu_921_min_s_66_out),.min_s_66_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_921_min_s_66_out_ap_vld),.grp_fu_964_p_din0(grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_din0),.grp_fu_964_p_din1(grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_din1),.grp_fu_964_p_opcode(grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_opcode),.grp_fu_964_p_dout0(grp_fu_964_p2),.grp_fu_964_p_ce(grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_ce),.grp_fu_1423_p_din0(grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_din0),.grp_fu_1423_p_din1(grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_din1),.grp_fu_1423_p_opcode(grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_opcode),.grp_fu_1423_p_dout0(grp_fu_1423_p2),.grp_fu_1423_p_ce(grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U172(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_964_p0),.din1(grp_fu_964_p1),.ce(grp_fu_964_ce),.dout(grp_fu_964_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U173(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1423_p0),.din1(grp_fu_1423_p1),.ce(grp_fu_1423_ce),.opcode(grp_fu_1423_opcode),.dout(grp_fu_1423_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_883_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_883_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_883_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_883_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_797_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_797_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_797_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_797_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_839_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_921_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state42)) begin
            grp_viterbi_Pipeline_L_state_fu_921_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_921_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_921_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_786 <= add_ln19_reg_1340;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_786 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        store_forwarded_fu_300 <= min_s_32_loc_fu_160;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        store_forwarded_fu_300 <= min_s_66_loc_fu_156;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln18_fu_993_p2 == 1'd1))) begin
        t_1_fu_296 <= 9'd138;
    end else if (((1'b1 == ap_CS_fsm_state32) & (tmp_fu_1189_p3 == 1'd0))) begin
        t_1_fu_296 <= add_ln50_fu_1216_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_152 <= 8'd1;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln19_fu_1031_p2 == 1'd1))) begin
        t_fu_152 <= add_ln18_fu_1064_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_1340 <= add_ln19_fu_1037_p2;
        tmp_130_reg_1355 <= curr_reg_786[32'd5];
        trunc_ln19_1_reg_1351 <= trunc_ln19_1_fu_1047_p1;
        trunc_ln19_reg_1345 <= trunc_ln19_fu_1043_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_839_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        ap_predicate_pred1204_state27 <= (trunc_ln19_1_reg_1351 == 5'd0);
        ap_predicate_pred1221_state27 <= (trunc_ln19_1_reg_1351 == 5'd30);
        ap_predicate_pred1230_state27 <= (trunc_ln19_1_reg_1351 == 5'd29);
        ap_predicate_pred1239_state27 <= (trunc_ln19_1_reg_1351 == 5'd28);
        ap_predicate_pred1248_state27 <= (trunc_ln19_1_reg_1351 == 5'd27);
        ap_predicate_pred1257_state27 <= (trunc_ln19_1_reg_1351 == 5'd26);
        ap_predicate_pred1266_state27 <= (trunc_ln19_1_reg_1351 == 5'd25);
        ap_predicate_pred1275_state27 <= (trunc_ln19_1_reg_1351 == 5'd24);
        ap_predicate_pred1284_state27 <= (trunc_ln19_1_reg_1351 == 5'd23);
        ap_predicate_pred1293_state27 <= (trunc_ln19_1_reg_1351 == 5'd22);
        ap_predicate_pred1302_state27 <= (trunc_ln19_1_reg_1351 == 5'd21);
        ap_predicate_pred1311_state27 <= (trunc_ln19_1_reg_1351 == 5'd20);
        ap_predicate_pred1320_state27 <= (trunc_ln19_1_reg_1351 == 5'd19);
        ap_predicate_pred1329_state27 <= (trunc_ln19_1_reg_1351 == 5'd18);
        ap_predicate_pred1338_state27 <= (trunc_ln19_1_reg_1351 == 5'd17);
        ap_predicate_pred1347_state27 <= (trunc_ln19_1_reg_1351 == 5'd16);
        ap_predicate_pred1356_state27 <= (trunc_ln19_1_reg_1351 == 5'd15);
        ap_predicate_pred1365_state27 <= (trunc_ln19_1_reg_1351 == 5'd14);
        ap_predicate_pred1374_state27 <= (trunc_ln19_1_reg_1351 == 5'd13);
        ap_predicate_pred1383_state27 <= (trunc_ln19_1_reg_1351 == 5'd12);
        ap_predicate_pred1392_state27 <= (trunc_ln19_1_reg_1351 == 5'd11);
        ap_predicate_pred1401_state27 <= (trunc_ln19_1_reg_1351 == 5'd10);
        ap_predicate_pred1410_state27 <= (trunc_ln19_1_reg_1351 == 5'd9);
        ap_predicate_pred1419_state27 <= (trunc_ln19_1_reg_1351 == 5'd8);
        ap_predicate_pred1428_state27 <= (trunc_ln19_1_reg_1351 == 5'd7);
        ap_predicate_pred1437_state27 <= (trunc_ln19_1_reg_1351 == 5'd6);
        ap_predicate_pred1446_state27 <= (trunc_ln19_1_reg_1351 == 5'd5);
        ap_predicate_pred1455_state27 <= (trunc_ln19_1_reg_1351 == 5'd4);
        ap_predicate_pred1464_state27 <= (trunc_ln19_1_reg_1351 == 5'd3);
        ap_predicate_pred1473_state27 <= (trunc_ln19_1_reg_1351 == 5'd2);
        ap_predicate_pred1482_state27 <= (trunc_ln19_1_reg_1351 == 5'd1);
        ap_predicate_pred1491_state27 <= (trunc_ln19_1_reg_1351 == 5'd31);
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bitcast_ln24_reg_1380 <= bitcast_ln24_fu_1096_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        emission_load_reg_1375 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_reg_1317 <= empty_fu_1009_p2;
        llike_addr_reg_1327[8 : 1] <= tmp_241_cast_fu_1022_p1[8 : 1];
        tmp_s_reg_1322[8 : 1] <= tmp_s_fu_1014_p3[8 : 1];
        zext_ln19_reg_1332[7 : 0] <= zext_ln19_fu_1027_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_839_min_p_82_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        min_p_82_loc_fu_164 <= grp_viterbi_Pipeline_L_prev_state_fu_839_min_p_82_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_883_min_s_32_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
        min_s_32_loc_fu_160 <= grp_viterbi_Pipeline_L_end_fu_883_min_s_32_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state43) & (grp_viterbi_Pipeline_L_state_fu_921_min_s_66_out_ap_vld == 1'b1))) begin
        min_s_66_loc_fu_156 <= grp_viterbi_Pipeline_L_state_fu_921_min_s_66_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        obs_load_reg_1279 <= obs_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_968 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_974 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_978 <= grp_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        shl_ln52_reg_1398[8 : 1] <= shl_ln52_fu_1200_p2[8 : 1];
        t_3_reg_1386 <= t_1_fu_296;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_1290 <= t_fu_152;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        trunc_ln50_reg_1418 <= trunc_ln50_fu_1232_p1;
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
    if ((grp_viterbi_Pipeline_L_prev_state_fu_839_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_end_fu_883_ap_done == 1'b0)) begin
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
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_state_fu_921_ap_done == 1'b0)) begin
        ap_ST_fsm_state43_blk = 1'b1;
    end else begin
        ap_ST_fsm_state43_blk = 1'b0;
    end
end
assign ap_ST_fsm_state44_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_797_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state32) & (tmp_fu_1189_p3 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state32) & (tmp_fu_1189_p3 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_address0 = grp_viterbi_Pipeline_L_init_fu_797_emission_address0;
    end else begin
        emission_address0 = zext_ln24_fu_1091_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_ce0 = grp_viterbi_Pipeline_L_init_fu_797_emission_ce0;
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
        emission_ce1 = grp_viterbi_Pipeline_L_init_fu_797_emission_ce1;
    end else begin
        emission_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_1423_ce = grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1423_ce = grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1423_ce = grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_ce;
    end else begin
        grp_fu_1423_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_1423_opcode = grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1423_opcode = grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1423_opcode = grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_opcode;
    end else begin
        grp_fu_1423_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_1423_p0 = grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1423_p0 = grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1423_p0 = grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_din0;
    end else begin
        grp_fu_1423_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_1423_p1 = grp_viterbi_Pipeline_L_state_fu_921_grp_fu_1423_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1423_p1 = grp_viterbi_Pipeline_L_end_fu_883_grp_fu_1423_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1423_p1 = grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_1423_p_din1;
    end else begin
        grp_fu_1423_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_964_ce = grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_964_ce = grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_964_ce = grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_ce;
    end else begin
        grp_fu_964_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_964_p0 = grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_964_p0 = grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_964_p0 = grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_964_p0 = reg_978;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_964_p0 = reg_968;
    end else begin
        grp_fu_964_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_964_p1 = grp_viterbi_Pipeline_L_state_fu_921_grp_fu_964_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_964_p1 = grp_viterbi_Pipeline_L_prev_state_fu_839_grp_fu_964_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_964_p1 = grp_viterbi_Pipeline_L_init_fu_797_grp_fu_964_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_964_p1 = bitcast_ln52_fu_1227_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_964_p1 = bitcast_ln24_fu_1096_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_964_p1 = bitcast_ln23_fu_1074_p1;
    end else begin
        grp_fu_964_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_10_address0;
    end else begin
        llike_10_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_10_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_10_d0;
    end else begin
        llike_10_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_10_we0;
    end else begin
        llike_10_we0 = llike_10_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1401_state27 == 1'b1))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_11_address0;
    end else begin
        llike_11_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_11_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_11_d0;
    end else begin
        llike_11_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_11_we0;
    end else begin
        llike_11_we0 = llike_11_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1392_state27 == 1'b1))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_12_address0;
    end else begin
        llike_12_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_12_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_12_d0;
    end else begin
        llike_12_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_12_we0;
    end else begin
        llike_12_we0 = llike_12_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1383_state27 == 1'b1))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_13_address0;
    end else begin
        llike_13_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_13_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_13_d0;
    end else begin
        llike_13_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_13_we0;
    end else begin
        llike_13_we0 = llike_13_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1374_state27 == 1'b1))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_14_address0;
    end else begin
        llike_14_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_14_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_14_d0;
    end else begin
        llike_14_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_14_we0;
    end else begin
        llike_14_we0 = llike_14_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1365_state27 == 1'b1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_15_address0;
    end else begin
        llike_15_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_15_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_15_d0;
    end else begin
        llike_15_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_15_we0;
    end else begin
        llike_15_we0 = llike_15_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1356_state27 == 1'b1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_16_address0;
    end else begin
        llike_16_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_16_ce0;
    end else begin
        llike_16_ce0 = llike_16_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_16_ce0_local = 1'b1;
    end else begin
        llike_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_16_d0;
    end else begin
        llike_16_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_16_we0;
    end else begin
        llike_16_we0 = llike_16_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1347_state27 == 1'b1))) begin
        llike_16_we0_local = 1'b1;
    end else begin
        llike_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_17_address0;
    end else begin
        llike_17_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_17_ce0;
    end else begin
        llike_17_ce0 = llike_17_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_17_ce0_local = 1'b1;
    end else begin
        llike_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_17_d0;
    end else begin
        llike_17_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_17_we0;
    end else begin
        llike_17_we0 = llike_17_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1338_state27 == 1'b1))) begin
        llike_17_we0_local = 1'b1;
    end else begin
        llike_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_18_address0;
    end else begin
        llike_18_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_18_ce0;
    end else begin
        llike_18_ce0 = llike_18_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_18_ce0_local = 1'b1;
    end else begin
        llike_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_18_d0;
    end else begin
        llike_18_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_18_we0;
    end else begin
        llike_18_we0 = llike_18_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1329_state27 == 1'b1))) begin
        llike_18_we0_local = 1'b1;
    end else begin
        llike_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_19_address0;
    end else begin
        llike_19_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_19_ce0;
    end else begin
        llike_19_ce0 = llike_19_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_19_ce0_local = 1'b1;
    end else begin
        llike_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_19_d0;
    end else begin
        llike_19_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_19_we0;
    end else begin
        llike_19_we0 = llike_19_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1320_state27 == 1'b1))) begin
        llike_19_we0_local = 1'b1;
    end else begin
        llike_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_1_address0;
    end else begin
        llike_1_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_1_d0;
    end else begin
        llike_1_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_1_we0;
    end else begin
        llike_1_we0 = llike_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1482_state27 == 1'b1))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_20_address0;
    end else begin
        llike_20_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_20_ce0;
    end else begin
        llike_20_ce0 = llike_20_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_20_ce0_local = 1'b1;
    end else begin
        llike_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_20_d0;
    end else begin
        llike_20_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_20_we0;
    end else begin
        llike_20_we0 = llike_20_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1311_state27 == 1'b1))) begin
        llike_20_we0_local = 1'b1;
    end else begin
        llike_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_21_address0;
    end else begin
        llike_21_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_21_ce0;
    end else begin
        llike_21_ce0 = llike_21_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_21_ce0_local = 1'b1;
    end else begin
        llike_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_21_d0;
    end else begin
        llike_21_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_21_we0;
    end else begin
        llike_21_we0 = llike_21_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1302_state27 == 1'b1))) begin
        llike_21_we0_local = 1'b1;
    end else begin
        llike_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_22_address0;
    end else begin
        llike_22_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_22_ce0;
    end else begin
        llike_22_ce0 = llike_22_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_22_ce0_local = 1'b1;
    end else begin
        llike_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_22_d0;
    end else begin
        llike_22_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_22_we0;
    end else begin
        llike_22_we0 = llike_22_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1293_state27 == 1'b1))) begin
        llike_22_we0_local = 1'b1;
    end else begin
        llike_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_23_address0;
    end else begin
        llike_23_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_23_ce0;
    end else begin
        llike_23_ce0 = llike_23_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_23_ce0_local = 1'b1;
    end else begin
        llike_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_23_d0;
    end else begin
        llike_23_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_23_we0;
    end else begin
        llike_23_we0 = llike_23_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1284_state27 == 1'b1))) begin
        llike_23_we0_local = 1'b1;
    end else begin
        llike_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_24_address0;
    end else begin
        llike_24_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_24_ce0;
    end else begin
        llike_24_ce0 = llike_24_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_24_ce0_local = 1'b1;
    end else begin
        llike_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_24_d0;
    end else begin
        llike_24_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_24_we0;
    end else begin
        llike_24_we0 = llike_24_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1275_state27 == 1'b1))) begin
        llike_24_we0_local = 1'b1;
    end else begin
        llike_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_25_address0;
    end else begin
        llike_25_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_25_ce0;
    end else begin
        llike_25_ce0 = llike_25_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_25_ce0_local = 1'b1;
    end else begin
        llike_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_25_d0;
    end else begin
        llike_25_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_25_we0;
    end else begin
        llike_25_we0 = llike_25_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1266_state27 == 1'b1))) begin
        llike_25_we0_local = 1'b1;
    end else begin
        llike_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_26_address0;
    end else begin
        llike_26_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_26_ce0;
    end else begin
        llike_26_ce0 = llike_26_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_26_ce0_local = 1'b1;
    end else begin
        llike_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_26_d0;
    end else begin
        llike_26_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_26_we0;
    end else begin
        llike_26_we0 = llike_26_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1257_state27 == 1'b1))) begin
        llike_26_we0_local = 1'b1;
    end else begin
        llike_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_27_address0;
    end else begin
        llike_27_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_27_ce0;
    end else begin
        llike_27_ce0 = llike_27_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_27_ce0_local = 1'b1;
    end else begin
        llike_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_27_d0;
    end else begin
        llike_27_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_27_we0;
    end else begin
        llike_27_we0 = llike_27_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1248_state27 == 1'b1))) begin
        llike_27_we0_local = 1'b1;
    end else begin
        llike_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_28_address0;
    end else begin
        llike_28_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_28_ce0;
    end else begin
        llike_28_ce0 = llike_28_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_28_ce0_local = 1'b1;
    end else begin
        llike_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_28_d0;
    end else begin
        llike_28_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_28_we0;
    end else begin
        llike_28_we0 = llike_28_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1239_state27 == 1'b1))) begin
        llike_28_we0_local = 1'b1;
    end else begin
        llike_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_29_address0;
    end else begin
        llike_29_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_29_ce0;
    end else begin
        llike_29_ce0 = llike_29_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_29_ce0_local = 1'b1;
    end else begin
        llike_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_29_d0;
    end else begin
        llike_29_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_29_we0;
    end else begin
        llike_29_we0 = llike_29_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1230_state27 == 1'b1))) begin
        llike_29_we0_local = 1'b1;
    end else begin
        llike_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_2_address0;
    end else begin
        llike_2_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_2_d0;
    end else begin
        llike_2_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_2_we0;
    end else begin
        llike_2_we0 = llike_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1473_state27 == 1'b1))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_30_address0;
    end else begin
        llike_30_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_30_ce0;
    end else begin
        llike_30_ce0 = llike_30_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_30_ce0_local = 1'b1;
    end else begin
        llike_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_30_d0;
    end else begin
        llike_30_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_30_we0;
    end else begin
        llike_30_we0 = llike_30_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1221_state27 == 1'b1))) begin
        llike_30_we0_local = 1'b1;
    end else begin
        llike_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_31_address0;
    end else begin
        llike_31_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_31_ce0;
    end else begin
        llike_31_ce0 = llike_31_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_31_ce0_local = 1'b1;
    end else begin
        llike_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_31_d0;
    end else begin
        llike_31_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_31_we0;
    end else begin
        llike_31_we0 = llike_31_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1491_state27 == 1'b1))) begin
        llike_31_we0_local = 1'b1;
    end else begin
        llike_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_3_address0;
    end else begin
        llike_3_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_3_d0;
    end else begin
        llike_3_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_3_we0;
    end else begin
        llike_3_we0 = llike_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1464_state27 == 1'b1))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_4_address0;
    end else begin
        llike_4_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_4_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_4_d0;
    end else begin
        llike_4_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_4_we0;
    end else begin
        llike_4_we0 = llike_4_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1455_state27 == 1'b1))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_5_address0;
    end else begin
        llike_5_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_5_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_5_d0;
    end else begin
        llike_5_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_5_we0;
    end else begin
        llike_5_we0 = llike_5_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1446_state27 == 1'b1))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_6_address0;
    end else begin
        llike_6_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_6_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_6_d0;
    end else begin
        llike_6_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_6_we0;
    end else begin
        llike_6_we0 = llike_6_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1437_state27 == 1'b1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_7_address0;
    end else begin
        llike_7_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_7_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_7_d0;
    end else begin
        llike_7_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_7_we0;
    end else begin
        llike_7_we0 = llike_7_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1428_state27 == 1'b1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_8_address0;
    end else begin
        llike_8_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_8_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_8_d0;
    end else begin
        llike_8_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_8_we0;
    end else begin
        llike_8_we0 = llike_8_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1419_state27 == 1'b1))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_9_address0;
    end else begin
        llike_9_address0 = zext_ln33_fu_1106_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_9_ce0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_9_d0;
    end else begin
        llike_9_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_9_we0;
    end else begin
        llike_9_we0 = llike_9_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1410_state27 == 1'b1))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_921_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_883_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_797_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        llike_address0_local = zext_ln52_fu_1206_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_reg_1327;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd278;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_921_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_883_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_797_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state27))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_797_llike_d0;
    end else begin
        llike_d0 = min_p_82_loc_fu_164;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_797_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1204_state27 == 1'b1))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_address0_local = zext_ln18_fu_999_p1;
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
    if ((1'b1 == ap_CS_fsm_state44)) begin
        path_address0_local = zext_ln50_fu_1236_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        path_address0_local = 64'd139;
    end else begin
        path_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state31))) begin
        path_ce0_local = 1'b1;
    end else begin
        path_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        path_d0_local = min_s_66_loc_fu_156;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        path_d0_local = min_s_32_loc_fu_160;
    end else begin
        path_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state31))) begin
        path_we0_local = 1'b1;
    end else begin
        path_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        transition_address0 = grp_viterbi_Pipeline_L_state_fu_921_transition_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_address0 = grp_viterbi_Pipeline_L_prev_state_fu_839_transition_address0;
    end else begin
        transition_address0 = transition_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        transition_address0_local = zext_ln52_1_fu_1211_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_address0_local = zext_ln23_fu_1059_p1;
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        transition_address1 = grp_viterbi_Pipeline_L_state_fu_921_transition_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_address1 = grp_viterbi_Pipeline_L_prev_state_fu_839_transition_address1;
    end else begin
        transition_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_state_fu_921_transition_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_839_transition_ce0;
    end else begin
        transition_ce0 = transition_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_state_fu_921_transition_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_839_transition_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_797_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln18_fu_993_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln19_fu_1031_p2 == 1'd1))) begin
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
            if (((grp_viterbi_Pipeline_L_prev_state_fu_839_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_883_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            if (((1'b1 == ap_CS_fsm_state32) & (tmp_fu_1189_p3 == 1'd1))) begin
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
            if (((grp_viterbi_Pipeline_L_state_fu_921_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state43))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_1064_p2 = (t_fu_152 + 8'd1);
assign add_ln19_fu_1037_p2 = (curr_reg_786 + 7'd1);
assign add_ln24_fu_1086_p2 = (shl_ln1_fu_1079_p3 + zext_ln19_reg_1332);
assign add_ln50_fu_1216_p2 = ($signed(t_1_fu_296) + $signed(9'd511));
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln23_fu_1074_p1 = reg_974;
assign bitcast_ln24_fu_1096_p1 = emission_load_reg_1375;
assign bitcast_ln52_fu_1227_p1 = reg_974;
assign emission_address1 = grp_viterbi_Pipeline_L_init_fu_797_emission_address1;
assign empty_fu_1009_p2 = ($signed(t_fu_152) + $signed(8'd255));
assign grp_viterbi_Pipeline_L_end_fu_883_ap_start = grp_viterbi_Pipeline_L_end_fu_883_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_797_ap_start = grp_viterbi_Pipeline_L_init_fu_797_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_839_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_921_ap_start = grp_viterbi_Pipeline_L_state_fu_921_ap_start_reg;
assign icmp_ln18_fu_993_p2 = ((t_fu_152 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1031_p2 = ((curr_reg_786 == 7'd64) ? 1'b1 : 1'b0);
assign init_address0 = grp_viterbi_Pipeline_L_init_fu_797_init_address0;
assign init_address1 = grp_viterbi_Pipeline_L_init_fu_797_init_address1;
assign init_ce0 = grp_viterbi_Pipeline_L_init_fu_797_init_ce0;
assign init_ce1 = grp_viterbi_Pipeline_L_init_fu_797_init_ce1;
assign obs_address0 = obs_address0_local;
assign obs_ce0 = obs_ce0_local;
assign path_address0 = path_address0_local;
assign path_ce0 = path_ce0_local;
assign path_d0 = path_d0_local;
assign path_we0 = path_we0_local;
assign shl_ln1_fu_1079_p3 = {{trunc_ln19_reg_1345}, {6'd0}};
assign shl_ln52_fu_1200_p2 = t_1_fu_296 << 9'd1;
assign tmp_131_fu_1100_p3 = {{t_2_reg_1290}, {tmp_130_reg_1355}};
assign tmp_241_cast_fu_1022_p1 = tmp_s_fu_1014_p3;
assign tmp_fu_1189_p3 = t_1_fu_296[32'd8];
assign tmp_s_fu_1014_p3 = {{empty_fu_1009_p2}, {1'd0}};
assign trunc_ln19_1_fu_1047_p1 = curr_reg_786[4:0];
assign trunc_ln19_fu_1043_p1 = curr_reg_786[5:0];
assign trunc_ln50_fu_1232_p1 = t_3_reg_1386[7:0];
assign zext_ln18_fu_999_p1 = t_fu_152;
assign zext_ln19_fu_1027_p1 = obs_q0;
assign zext_ln23_fu_1059_p1 = trunc_ln19_fu_1043_p1;
assign zext_ln24_fu_1091_p1 = add_ln24_fu_1086_p2;
assign zext_ln33_fu_1106_p1 = tmp_131_fu_1100_p3;
assign zext_ln50_fu_1236_p1 = t_3_reg_1386;
assign zext_ln52_1_fu_1211_p1 = store_forwarded_fu_300;
assign zext_ln52_fu_1206_p1 = shl_ln52_fu_1200_p2;
always @ (posedge ap_clk) begin
    tmp_s_reg_1322[0] <= 1'b0;
    llike_addr_reg_1327[0] <= 1'b0;
    zext_ln19_reg_1332[11:8] <= 4'b0000;
    shl_ln52_reg_1398[0] <= 1'b0;
end
endmodule 