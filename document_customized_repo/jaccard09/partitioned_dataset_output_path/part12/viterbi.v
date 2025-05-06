
module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,ap_return);  
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
reg   [63:0] reg_1124;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire   [63:0] grp_fu_1120_p2;
reg   [63:0] reg_1130;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
wire   [1:0] empty_fu_1141_p1;
reg   [1:0] empty_reg_1509;
wire    ap_CS_fsm_state2;
reg   [5:0] conv3_udiv_reg_1514;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_1525;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_23_fu_1185_p2;
reg   [7:0] empty_23_reg_1553;
wire    ap_CS_fsm_state6;
wire   [8:0] tmp_s_fu_1190_p3;
reg   [8:0] tmp_s_reg_1558;
reg   [8:0] llike_addr_2_reg_1563;
wire   [1:0] empty_24_fu_1227_p1;
reg   [1:0] empty_24_reg_1568;
wire   [9:0] conv32_udiv_cast_fu_1241_p1;
reg   [9:0] conv32_udiv_cast_reg_1573;
wire   [6:0] add_ln19_fu_1251_p2;
reg   [6:0] add_ln19_reg_1581;
wire    ap_CS_fsm_state7;
wire   [3:0] lshr_ln_fu_1257_p4;
reg   [3:0] lshr_ln_reg_1586;
wire   [4:0] trunc_ln19_fu_1285_p1;
reg   [4:0] trunc_ln19_reg_1611;
reg   [0:0] tmp_reg_1615;
wire   [1:0] trunc_ln23_fu_1297_p1;
reg   [1:0] trunc_ln23_reg_1620;
wire   [63:0] tmp_6_fu_1317_p11;
reg   [63:0] tmp_6_reg_1625;
wire   [9:0] add_ln24_fu_1353_p2;
reg   [9:0] add_ln24_reg_1630;
wire    ap_CS_fsm_state15;
wire   [63:0] tmp_7_fu_1381_p11;
reg   [63:0] tmp_7_reg_1655;
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
wire    grp_viterbi_Pipeline_L_init_fu_924_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_924_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_924_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_924_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_1_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_2_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_2_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_2_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_3_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_3_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_3_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_4_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_4_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_4_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_5_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_5_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_5_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_6_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_6_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_6_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_7_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_7_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_7_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_8_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_8_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_8_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_8_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_9_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_9_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_9_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_9_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_10_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_10_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_10_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_10_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_11_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_11_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_11_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_11_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_12_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_12_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_12_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_12_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_13_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_13_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_13_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_13_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_14_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_14_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_14_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_14_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_15_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_15_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_15_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_15_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_16_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_16_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_16_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_16_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_17_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_17_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_17_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_17_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_18_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_18_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_18_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_18_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_19_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_19_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_19_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_19_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_20_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_20_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_20_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_20_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_21_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_21_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_21_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_21_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_22_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_22_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_22_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_22_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_23_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_23_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_23_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_23_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_24_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_24_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_24_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_24_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_25_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_25_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_25_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_25_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_26_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_26_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_26_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_26_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_27_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_27_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_27_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_27_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_28_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_28_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_28_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_28_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_29_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_29_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_29_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_29_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_30_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_30_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_30_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_30_d0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_924_llike_31_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_31_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_924_llike_31_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_llike_31_d0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_924_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_init_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_924_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_924_emission_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_924_emission_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_924_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_924_emission_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_924_emission_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_924_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_924_emission_2_address1;
wire    grp_viterbi_Pipeline_L_init_fu_924_emission_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_924_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_emission_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_924_emission_3_address1;
wire    grp_viterbi_Pipeline_L_init_fu_924_emission_3_ce1;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_924_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_init_1_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_924_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_init_2_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_924_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_924_init_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_4_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_5_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_6_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_7_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_8_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_8_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_9_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_9_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_10_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_10_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_11_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_11_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_12_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_12_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_13_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_13_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_14_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_14_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_15_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_15_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_16_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_16_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_17_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_17_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_18_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_18_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_19_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_19_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_20_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_20_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_21_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_21_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_22_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_22_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_23_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_23_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_24_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_24_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_25_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_25_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_26_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_26_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_27_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_27_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_28_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_28_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_29_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_29_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_30_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_30_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_979_llike_31_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_llike_31_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_979_min_p_137_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_min_p_137_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_1030_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_1030_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_1030_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_1030_ap_ready;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_2_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_3_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_4_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_5_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_6_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_7_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_8_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_8_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_9_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_9_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_10_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_10_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_11_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_11_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_12_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_12_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_13_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_13_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_14_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_14_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_15_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_15_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_16_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_16_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_17_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_17_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_18_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_18_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_19_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_19_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_20_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_20_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_21_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_21_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_22_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_22_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_23_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_23_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_24_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_24_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_25_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_25_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_26_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_26_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_27_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_27_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_28_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_28_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_29_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_29_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_30_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_30_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_end_fu_1030_llike_31_address0;
wire    grp_viterbi_Pipeline_L_end_fu_1030_llike_31_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_1030_min_s_out;
wire    grp_viterbi_Pipeline_L_end_fu_1030_min_s_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_ce;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_done;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_idle;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_ready;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_d0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_ce1;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_d0;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_d0;
wire   [5:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_ce0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_we0;
wire   [7:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_d0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_address0;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_address1;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_opcode;
wire    grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_ce;
reg   [6:0] curr_reg_912;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_924_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_137_loc_fu_204;
reg    grp_viterbi_Pipeline_L_end_fu_1030_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg    grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start_reg;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
wire   [63:0] zext_ln6_fu_1174_p1;
wire   [0:0] icmp_ln18_fu_1158_p2;
wire   [63:0] tmp_290_cast_fu_1198_p1;
wire   [63:0] zext_ln23_fu_1267_p1;
wire   [0:0] icmp_ln19_fu_1245_p2;
wire   [63:0] zext_ln24_fu_1358_p1;
wire   [63:0] zext_ln33_fu_1410_p1;
wire    ap_CS_fsm_state31;
reg   [7:0] t_fu_196;
wire   [7:0] add_ln18_fu_1275_p2;
reg    obs_0_ce0_local;
reg   [5:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    obs_2_ce0_local;
reg    obs_3_ce0_local;
reg    llike_ce0_local;
reg   [8:0] llike_address0_local;
reg    llike_we0_local;
reg    ap_predicate_pred1545_state27;
reg    transition_0_ce0_local;
reg    transition_1_ce0_local;
reg    transition_2_ce0_local;
reg    transition_3_ce0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
reg    emission_2_ce0_local;
reg    emission_3_ce0_local;
reg    llike_30_we0_local;
reg    ap_predicate_pred1580_state27;
reg    llike_30_ce0_local;
reg    llike_29_we0_local;
reg    ap_predicate_pred1589_state27;
reg    llike_29_ce0_local;
reg    llike_28_we0_local;
reg    ap_predicate_pred1598_state27;
reg    llike_28_ce0_local;
reg    llike_27_we0_local;
reg    ap_predicate_pred1607_state27;
reg    llike_27_ce0_local;
reg    llike_26_we0_local;
reg    ap_predicate_pred1616_state27;
reg    llike_26_ce0_local;
reg    llike_25_we0_local;
reg    ap_predicate_pred1625_state27;
reg    llike_25_ce0_local;
reg    llike_24_we0_local;
reg    ap_predicate_pred1634_state27;
reg    llike_24_ce0_local;
reg    llike_23_we0_local;
reg    ap_predicate_pred1643_state27;
reg    llike_23_ce0_local;
reg    llike_22_we0_local;
reg    ap_predicate_pred1652_state27;
reg    llike_22_ce0_local;
reg    llike_21_we0_local;
reg    ap_predicate_pred1661_state27;
reg    llike_21_ce0_local;
reg    llike_20_we0_local;
reg    ap_predicate_pred1670_state27;
reg    llike_20_ce0_local;
reg    llike_19_we0_local;
reg    ap_predicate_pred1679_state27;
reg    llike_19_ce0_local;
reg    llike_18_we0_local;
reg    ap_predicate_pred1688_state27;
reg    llike_18_ce0_local;
reg    llike_17_we0_local;
reg    ap_predicate_pred1697_state27;
reg    llike_17_ce0_local;
reg    llike_16_we0_local;
reg    ap_predicate_pred1706_state27;
reg    llike_16_ce0_local;
reg    llike_15_we0_local;
reg    ap_predicate_pred1715_state27;
reg    llike_15_ce0_local;
reg    llike_14_we0_local;
reg    ap_predicate_pred1724_state27;
reg    llike_14_ce0_local;
reg    llike_13_we0_local;
reg    ap_predicate_pred1733_state27;
reg    llike_13_ce0_local;
reg    llike_12_we0_local;
reg    ap_predicate_pred1742_state27;
reg    llike_12_ce0_local;
reg    llike_11_we0_local;
reg    ap_predicate_pred1751_state27;
reg    llike_11_ce0_local;
reg    llike_10_we0_local;
reg    ap_predicate_pred1760_state27;
reg    llike_10_ce0_local;
reg    llike_9_we0_local;
reg    ap_predicate_pred1769_state27;
reg    llike_9_ce0_local;
reg    llike_8_we0_local;
reg    ap_predicate_pred1778_state27;
reg    llike_8_ce0_local;
reg    llike_7_we0_local;
reg    ap_predicate_pred1787_state27;
reg    llike_7_ce0_local;
reg    llike_6_we0_local;
reg    ap_predicate_pred1796_state27;
reg    llike_6_ce0_local;
reg    llike_5_we0_local;
reg    ap_predicate_pred1805_state27;
reg    llike_5_ce0_local;
reg    llike_4_we0_local;
reg    ap_predicate_pred1814_state27;
reg    llike_4_ce0_local;
reg    llike_3_we0_local;
reg    ap_predicate_pred1823_state27;
reg    llike_3_ce0_local;
reg    llike_2_we0_local;
reg    ap_predicate_pred1832_state27;
reg    llike_2_ce0_local;
reg    llike_1_we0_local;
reg    ap_predicate_pred1841_state27;
reg    llike_1_ce0_local;
reg    llike_31_we0_local;
reg    ap_predicate_pred1850_state27;
reg    llike_31_ce0_local;
reg    path_3_we0_local;
reg    path_3_ce0_local;
reg   [63:0] grp_fu_1120_p0;
reg   [63:0] grp_fu_1120_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state17;
wire   [5:0] lshr_ln6_fu_1164_p4;
wire   [7:0] tmp_4_fu_1203_p9;
wire   [1:0] tmp_4_fu_1203_p10;
wire   [7:0] tmp_4_fu_1203_p11;
wire   [5:0] conv32_udiv_fu_1231_p4;
wire   [63:0] tmp_6_fu_1317_p2;
wire   [63:0] tmp_6_fu_1317_p4;
wire   [63:0] tmp_6_fu_1317_p6;
wire   [63:0] tmp_6_fu_1317_p8;
wire   [63:0] tmp_6_fu_1317_p9;
wire   [1:0] tmp_6_fu_1317_p10;
wire   [5:0] trunc_ln24_fu_1341_p1;
wire   [9:0] shl_ln_fu_1345_p3;
wire   [63:0] tmp_7_fu_1381_p2;
wire   [63:0] tmp_7_fu_1381_p4;
wire   [63:0] tmp_7_fu_1381_p6;
wire   [63:0] tmp_7_fu_1381_p8;
wire   [63:0] tmp_7_fu_1381_p9;
wire   [8:0] tmp_266_fu_1404_p3;
reg    grp_fu_1120_ce;
wire   [0:0] grp_fu_1661_p2;
reg   [63:0] grp_fu_1661_p0;
reg   [63:0] grp_fu_1661_p1;
reg    grp_fu_1661_ce;
reg   [4:0] grp_fu_1661_opcode;
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
wire   [1:0] tmp_4_fu_1203_p1;
wire   [1:0] tmp_4_fu_1203_p3;
wire  signed [1:0] tmp_4_fu_1203_p5;
wire  signed [1:0] tmp_4_fu_1203_p7;
wire   [1:0] tmp_6_fu_1317_p1;
wire   [1:0] tmp_6_fu_1317_p3;
wire  signed [1:0] tmp_6_fu_1317_p5;
wire  signed [1:0] tmp_6_fu_1317_p7;
wire   [1:0] tmp_7_fu_1381_p1;
wire   [1:0] tmp_7_fu_1381_p3;
wire  signed [1:0] tmp_7_fu_1381_p5;
wire  signed [1:0] tmp_7_fu_1381_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 grp_viterbi_Pipeline_L_init_fu_924_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_1030_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start_reg = 1'b0;
#0 t_fu_196 = 8'd0;
end
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_2_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_2_address0),.ce0(llike_2_ce0),.we0(llike_2_we0),.d0(llike_2_d0),.q0(llike_2_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_address1),.ce1(llike_2_ce1),.q1(llike_2_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_3_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_3_address0),.ce0(llike_3_ce0),.we0(llike_3_we0),.d0(llike_3_d0),.q0(llike_3_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_address1),.ce1(llike_3_ce1),.q1(llike_3_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_4_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_4_address0),.ce0(llike_4_ce0),.we0(llike_4_we0),.d0(llike_4_d0),.q0(llike_4_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_address1),.ce1(llike_4_ce1),.q1(llike_4_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_5_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_5_address0),.ce0(llike_5_ce0),.we0(llike_5_we0),.d0(llike_5_d0),.q0(llike_5_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_address1),.ce1(llike_5_ce1),.q1(llike_5_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_6_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_6_address0),.ce0(llike_6_ce0),.we0(llike_6_we0),.d0(llike_6_d0),.q0(llike_6_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_address1),.ce1(llike_6_ce1),.q1(llike_6_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_7_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_7_address0),.ce0(llike_7_ce0),.we0(llike_7_we0),.d0(llike_7_d0),.q0(llike_7_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_address1),.ce1(llike_7_ce1),.q1(llike_7_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_8_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_8_address0),.ce0(llike_8_ce0),.we0(llike_8_we0),.d0(llike_8_d0),.q0(llike_8_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_address1),.ce1(llike_8_ce1),.q1(llike_8_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_9_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_9_address0),.ce0(llike_9_ce0),.we0(llike_9_we0),.d0(llike_9_d0),.q0(llike_9_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_address1),.ce1(llike_9_ce1),.q1(llike_9_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_10_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_10_address0),.ce0(llike_10_ce0),.we0(llike_10_we0),.d0(llike_10_d0),.q0(llike_10_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_address1),.ce1(llike_10_ce1),.q1(llike_10_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_11_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_11_address0),.ce0(llike_11_ce0),.we0(llike_11_we0),.d0(llike_11_d0),.q0(llike_11_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_address1),.ce1(llike_11_ce1),.q1(llike_11_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_12_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_12_address0),.ce0(llike_12_ce0),.we0(llike_12_we0),.d0(llike_12_d0),.q0(llike_12_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_address1),.ce1(llike_12_ce1),.q1(llike_12_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_13_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_13_address0),.ce0(llike_13_ce0),.we0(llike_13_we0),.d0(llike_13_d0),.q0(llike_13_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_address1),.ce1(llike_13_ce1),.q1(llike_13_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_14_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_14_address0),.ce0(llike_14_ce0),.we0(llike_14_we0),.d0(llike_14_d0),.q0(llike_14_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_address1),.ce1(llike_14_ce1),.q1(llike_14_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_15_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_15_address0),.ce0(llike_15_ce0),.we0(llike_15_we0),.d0(llike_15_d0),.q0(llike_15_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_address1),.ce1(llike_15_ce1),.q1(llike_15_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_16_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_16_address0),.ce0(llike_16_ce0),.we0(llike_16_we0),.d0(llike_16_d0),.q0(llike_16_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_address1),.ce1(llike_16_ce1),.q1(llike_16_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_17_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_17_address0),.ce0(llike_17_ce0),.we0(llike_17_we0),.d0(llike_17_d0),.q0(llike_17_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_address1),.ce1(llike_17_ce1),.q1(llike_17_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_18_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_18_address0),.ce0(llike_18_ce0),.we0(llike_18_we0),.d0(llike_18_d0),.q0(llike_18_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_address1),.ce1(llike_18_ce1),.q1(llike_18_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_19_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_19_address0),.ce0(llike_19_ce0),.we0(llike_19_we0),.d0(llike_19_d0),.q0(llike_19_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_address1),.ce1(llike_19_ce1),.q1(llike_19_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_20_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_20_address0),.ce0(llike_20_ce0),.we0(llike_20_we0),.d0(llike_20_d0),.q0(llike_20_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_address1),.ce1(llike_20_ce1),.q1(llike_20_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_21_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_21_address0),.ce0(llike_21_ce0),.we0(llike_21_we0),.d0(llike_21_d0),.q0(llike_21_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_address1),.ce1(llike_21_ce1),.q1(llike_21_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_22_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_22_address0),.ce0(llike_22_ce0),.we0(llike_22_we0),.d0(llike_22_d0),.q0(llike_22_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_address1),.ce1(llike_22_ce1),.q1(llike_22_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_23_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_23_address0),.ce0(llike_23_ce0),.we0(llike_23_we0),.d0(llike_23_d0),.q0(llike_23_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_address1),.ce1(llike_23_ce1),.q1(llike_23_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_24_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_24_address0),.ce0(llike_24_ce0),.we0(llike_24_we0),.d0(llike_24_d0),.q0(llike_24_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_address1),.ce1(llike_24_ce1),.q1(llike_24_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_25_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_25_address0),.ce0(llike_25_ce0),.we0(llike_25_we0),.d0(llike_25_d0),.q0(llike_25_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_address1),.ce1(llike_25_ce1),.q1(llike_25_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_26_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_26_address0),.ce0(llike_26_ce0),.we0(llike_26_we0),.d0(llike_26_d0),.q0(llike_26_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_address1),.ce1(llike_26_ce1),.q1(llike_26_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_27_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_27_address0),.ce0(llike_27_ce0),.we0(llike_27_we0),.d0(llike_27_d0),.q0(llike_27_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_address1),.ce1(llike_27_ce1),.q1(llike_27_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_28_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_28_address0),.ce0(llike_28_ce0),.we0(llike_28_we0),.d0(llike_28_d0),.q0(llike_28_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_address1),.ce1(llike_28_ce1),.q1(llike_28_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_29_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_29_address0),.ce0(llike_29_ce0),.we0(llike_29_we0),.d0(llike_29_d0),.q0(llike_29_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_address1),.ce1(llike_29_ce1),.q1(llike_29_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_30_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_30_address0),.ce0(llike_30_ce0),.we0(llike_30_we0),.d0(llike_30_d0),.q0(llike_30_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_address1),.ce1(llike_30_ce1),.q1(llike_30_q1));
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 280 ),.AddressWidth( 9 ))
llike_31_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_31_address0),.ce0(llike_31_ce0),.we0(llike_31_we0),.d0(llike_31_d0),.q0(llike_31_q0),.address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_address1),.ce1(llike_31_ce1),.q1(llike_31_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_924(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_924_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_924_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_924_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_924_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_1_d0),.llike_2_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_2_ce0),.llike_2_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_2_we0),.llike_2_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_2_d0),.llike_3_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_3_ce0),.llike_3_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_3_we0),.llike_3_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_3_d0),.llike_4_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_4_ce0),.llike_4_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_4_we0),.llike_4_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_4_d0),.llike_5_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_5_ce0),.llike_5_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_5_we0),.llike_5_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_5_d0),.llike_6_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_6_ce0),.llike_6_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_6_we0),.llike_6_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_6_d0),.llike_7_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_7_ce0),.llike_7_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_7_we0),.llike_7_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_7_d0),.llike_8_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_8_ce0),.llike_8_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_8_we0),.llike_8_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_8_d0),.llike_9_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_9_ce0),.llike_9_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_9_we0),.llike_9_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_9_d0),.llike_10_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_10_ce0),.llike_10_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_10_we0),.llike_10_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_10_d0),.llike_11_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_11_ce0),.llike_11_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_11_we0),.llike_11_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_11_d0),.llike_12_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_12_ce0),.llike_12_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_12_we0),.llike_12_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_12_d0),.llike_13_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_13_ce0),.llike_13_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_13_we0),.llike_13_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_13_d0),.llike_14_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_14_ce0),.llike_14_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_14_we0),.llike_14_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_14_d0),.llike_15_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_15_ce0),.llike_15_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_15_we0),.llike_15_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_15_d0),.llike_16_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_16_ce0),.llike_16_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_16_we0),.llike_16_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_16_d0),.llike_17_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_17_ce0),.llike_17_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_17_we0),.llike_17_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_17_d0),.llike_18_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_18_ce0),.llike_18_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_18_we0),.llike_18_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_18_d0),.llike_19_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_19_ce0),.llike_19_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_19_we0),.llike_19_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_19_d0),.llike_20_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_20_ce0),.llike_20_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_20_we0),.llike_20_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_20_d0),.llike_21_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_21_ce0),.llike_21_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_21_we0),.llike_21_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_21_d0),.llike_22_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_22_ce0),.llike_22_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_22_we0),.llike_22_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_22_d0),.llike_23_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_23_ce0),.llike_23_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_23_we0),.llike_23_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_23_d0),.llike_24_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_24_ce0),.llike_24_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_24_we0),.llike_24_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_24_d0),.llike_25_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_25_ce0),.llike_25_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_25_we0),.llike_25_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_25_d0),.llike_26_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_26_ce0),.llike_26_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_26_we0),.llike_26_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_26_d0),.llike_27_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_27_ce0),.llike_27_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_27_we0),.llike_27_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_27_d0),.llike_28_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_28_ce0),.llike_28_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_28_we0),.llike_28_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_28_d0),.llike_29_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_29_ce0),.llike_29_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_29_we0),.llike_29_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_29_d0),.llike_30_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_30_ce0),.llike_30_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_30_we0),.llike_30_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_30_d0),.llike_31_address0(grp_viterbi_Pipeline_L_init_fu_924_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_init_fu_924_llike_31_ce0),.llike_31_we0(grp_viterbi_Pipeline_L_init_fu_924_llike_31_we0),.llike_31_d0(grp_viterbi_Pipeline_L_init_fu_924_llike_31_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_924_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_924_init_0_ce0),.init_0_q0(init_0_q0),.conv3_udiv(conv3_udiv_reg_1514),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_924_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_924_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_0_address1(grp_viterbi_Pipeline_L_init_fu_924_emission_0_address1),.emission_0_ce1(grp_viterbi_Pipeline_L_init_fu_924_emission_0_ce1),.emission_0_q1(emission_0_q1),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_924_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_924_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_1_address1(grp_viterbi_Pipeline_L_init_fu_924_emission_1_address1),.emission_1_ce1(grp_viterbi_Pipeline_L_init_fu_924_emission_1_ce1),.emission_1_q1(emission_1_q1),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_924_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_924_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_2_address1(grp_viterbi_Pipeline_L_init_fu_924_emission_2_address1),.emission_2_ce1(grp_viterbi_Pipeline_L_init_fu_924_emission_2_ce1),.emission_2_q1(emission_2_q1),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_924_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_924_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_3_address1(grp_viterbi_Pipeline_L_init_fu_924_emission_3_address1),.emission_3_ce1(grp_viterbi_Pipeline_L_init_fu_924_emission_3_ce1),.emission_3_q1(emission_3_q1),.empty(empty_reg_1509),.conv3_udiv_cast(conv3_udiv_reg_1514),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_924_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_924_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_924_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_924_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_924_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_924_init_3_ce0),.init_3_q0(init_3_q0),.grp_fu_1120_p_din0(grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_din0),.grp_fu_1120_p_din1(grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_din1),.grp_fu_1120_p_opcode(grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_opcode),.grp_fu_1120_p_dout0(grp_fu_1120_p2),.grp_fu_1120_p_ce(grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_979(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_979_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_979_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_979_ap_ready),.min_p_4(reg_1130),.empty_8(empty_23_reg_1553),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_16_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_16_ce0),.llike_16_q0(llike_16_q0),.llike_17_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_17_ce0),.llike_17_q0(llike_17_q0),.llike_18_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_18_ce0),.llike_18_q0(llike_18_q0),.llike_19_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_19_ce0),.llike_19_q0(llike_19_q0),.llike_20_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_20_ce0),.llike_20_q0(llike_20_q0),.llike_21_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_21_ce0),.llike_21_q0(llike_21_q0),.llike_22_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_22_ce0),.llike_22_q0(llike_22_q0),.llike_23_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_23_ce0),.llike_23_q0(llike_23_q0),.llike_24_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_24_ce0),.llike_24_q0(llike_24_q0),.llike_25_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_25_ce0),.llike_25_q0(llike_25_q0),.llike_26_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_26_ce0),.llike_26_q0(llike_26_q0),.llike_27_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_27_ce0),.llike_27_q0(llike_27_q0),.llike_28_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_28_ce0),.llike_28_q0(llike_28_q0),.llike_29_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_29_ce0),.llike_29_q0(llike_29_q0),.llike_30_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_30_ce0),.llike_30_q0(llike_30_q0),.llike_31_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_llike_31_ce0),.llike_31_q0(llike_31_q0),.lshr_ln(lshr_ln_reg_1586),.transition_0_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_ce1),.transition_3_q1(transition_3_q1),.empty_9(trunc_ln23_reg_1620),.tmp_7(tmp_7_reg_1655),.empty(tmp_s_reg_1558),.min_p_137_out(grp_viterbi_Pipeline_L_prev_state_fu_979_min_p_137_out),.min_p_137_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_979_min_p_137_out_ap_vld),.grp_fu_1120_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_din0),.grp_fu_1120_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_din1),.grp_fu_1120_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_opcode),.grp_fu_1120_p_dout0(grp_fu_1120_p2),.grp_fu_1120_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_ce),.grp_fu_1661_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_din0),.grp_fu_1661_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_din1),.grp_fu_1661_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_opcode),.grp_fu_1661_p_dout0(grp_fu_1661_p2),.grp_fu_1661_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_1030(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_1030_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_1030_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_1030_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_1030_ap_ready),.min_p(reg_1124),.llike_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_ce0),.llike_q0(llike_q0),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_2_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_3_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_4_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_5_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_6_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_7_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_8_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_9_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_10_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_11_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_12_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_13_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_14_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_15_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_16_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_16_ce0),.llike_16_q0(llike_16_q0),.llike_17_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_17_ce0),.llike_17_q0(llike_17_q0),.llike_18_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_18_ce0),.llike_18_q0(llike_18_q0),.llike_19_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_19_ce0),.llike_19_q0(llike_19_q0),.llike_20_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_20_ce0),.llike_20_q0(llike_20_q0),.llike_21_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_21_ce0),.llike_21_q0(llike_21_q0),.llike_22_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_22_ce0),.llike_22_q0(llike_22_q0),.llike_23_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_23_ce0),.llike_23_q0(llike_23_q0),.llike_24_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_24_ce0),.llike_24_q0(llike_24_q0),.llike_25_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_25_ce0),.llike_25_q0(llike_25_q0),.llike_26_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_26_ce0),.llike_26_q0(llike_26_q0),.llike_27_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_27_ce0),.llike_27_q0(llike_27_q0),.llike_28_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_28_ce0),.llike_28_q0(llike_28_q0),.llike_29_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_29_ce0),.llike_29_q0(llike_29_q0),.llike_30_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_30_ce0),.llike_30_q0(llike_30_q0),.llike_31_address0(grp_viterbi_Pipeline_L_end_fu_1030_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_end_fu_1030_llike_31_ce0),.llike_31_q0(llike_31_q0),.min_s_out(grp_viterbi_Pipeline_L_end_fu_1030_min_s_out),.min_s_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_1030_min_s_out_ap_vld),.grp_fu_1661_p_din0(grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_din0),.grp_fu_1661_p_din1(grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_din1),.grp_fu_1661_p_opcode(grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_opcode),.grp_fu_1661_p_dout0(grp_fu_1661_p2),.grp_fu_1661_p_ce(grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_ce));
viterbi_viterbi_Pipeline_L_backtrack grp_viterbi_Pipeline_L_backtrack_fu_1068(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start),.ap_done(grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_done),.ap_idle(grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_ready),.path_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_address0),.path_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_ce0),.path_0_we0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_we0),.path_0_d0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_d0),.path_0_q0(path_0_q0),.llike_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_ce1),.llike_q1(llike_q1),.llike_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_address0),.llike_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_ce0),.llike_2_q0(llike_2_q0),.llike_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_address1),.llike_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_ce1),.llike_2_q1(llike_2_q1),.llike_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_address0),.llike_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_ce0),.llike_3_q0(llike_3_q0),.llike_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_address1),.llike_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_ce1),.llike_3_q1(llike_3_q1),.llike_4_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_address0),.llike_4_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_ce0),.llike_4_q0(llike_4_q0),.llike_4_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_address1),.llike_4_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_ce1),.llike_4_q1(llike_4_q1),.llike_5_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_address0),.llike_5_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_ce0),.llike_5_q0(llike_5_q0),.llike_5_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_address1),.llike_5_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_ce1),.llike_5_q1(llike_5_q1),.llike_6_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_address0),.llike_6_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_ce0),.llike_6_q0(llike_6_q0),.llike_6_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_address1),.llike_6_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_ce1),.llike_6_q1(llike_6_q1),.llike_7_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_address0),.llike_7_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_ce0),.llike_7_q0(llike_7_q0),.llike_7_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_address1),.llike_7_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_ce1),.llike_7_q1(llike_7_q1),.llike_8_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_address0),.llike_8_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_ce0),.llike_8_q0(llike_8_q0),.llike_8_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_address1),.llike_8_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_ce1),.llike_8_q1(llike_8_q1),.llike_9_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_address0),.llike_9_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_ce0),.llike_9_q0(llike_9_q0),.llike_9_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_address1),.llike_9_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_ce1),.llike_9_q1(llike_9_q1),.llike_10_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_address0),.llike_10_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_ce0),.llike_10_q0(llike_10_q0),.llike_10_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_address1),.llike_10_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_ce1),.llike_10_q1(llike_10_q1),.llike_11_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_address0),.llike_11_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_ce0),.llike_11_q0(llike_11_q0),.llike_11_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_address1),.llike_11_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_ce1),.llike_11_q1(llike_11_q1),.llike_12_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_address0),.llike_12_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_ce0),.llike_12_q0(llike_12_q0),.llike_12_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_address1),.llike_12_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_ce1),.llike_12_q1(llike_12_q1),.llike_13_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_address0),.llike_13_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_ce0),.llike_13_q0(llike_13_q0),.llike_13_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_address1),.llike_13_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_ce1),.llike_13_q1(llike_13_q1),.llike_14_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_address0),.llike_14_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_ce0),.llike_14_q0(llike_14_q0),.llike_14_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_address1),.llike_14_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_ce1),.llike_14_q1(llike_14_q1),.llike_15_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_address0),.llike_15_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_ce0),.llike_15_q0(llike_15_q0),.llike_15_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_address1),.llike_15_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_ce1),.llike_15_q1(llike_15_q1),.llike_16_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_address0),.llike_16_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_ce0),.llike_16_q0(llike_16_q0),.llike_16_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_address1),.llike_16_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_ce1),.llike_16_q1(llike_16_q1),.llike_17_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_address0),.llike_17_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_ce0),.llike_17_q0(llike_17_q0),.llike_17_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_address1),.llike_17_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_ce1),.llike_17_q1(llike_17_q1),.llike_18_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_address0),.llike_18_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_ce0),.llike_18_q0(llike_18_q0),.llike_18_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_address1),.llike_18_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_ce1),.llike_18_q1(llike_18_q1),.llike_19_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_address0),.llike_19_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_ce0),.llike_19_q0(llike_19_q0),.llike_19_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_address1),.llike_19_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_ce1),.llike_19_q1(llike_19_q1),.llike_20_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_address0),.llike_20_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_ce0),.llike_20_q0(llike_20_q0),.llike_20_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_address1),.llike_20_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_ce1),.llike_20_q1(llike_20_q1),.llike_21_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_address0),.llike_21_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_ce0),.llike_21_q0(llike_21_q0),.llike_21_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_address1),.llike_21_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_ce1),.llike_21_q1(llike_21_q1),.llike_22_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_address0),.llike_22_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_ce0),.llike_22_q0(llike_22_q0),.llike_22_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_address1),.llike_22_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_ce1),.llike_22_q1(llike_22_q1),.llike_23_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_address0),.llike_23_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_ce0),.llike_23_q0(llike_23_q0),.llike_23_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_address1),.llike_23_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_ce1),.llike_23_q1(llike_23_q1),.llike_24_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_address0),.llike_24_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_ce0),.llike_24_q0(llike_24_q0),.llike_24_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_address1),.llike_24_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_ce1),.llike_24_q1(llike_24_q1),.llike_25_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_address0),.llike_25_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_ce0),.llike_25_q0(llike_25_q0),.llike_25_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_address1),.llike_25_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_ce1),.llike_25_q1(llike_25_q1),.llike_26_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_address0),.llike_26_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_ce0),.llike_26_q0(llike_26_q0),.llike_26_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_address1),.llike_26_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_ce1),.llike_26_q1(llike_26_q1),.llike_27_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_address0),.llike_27_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_ce0),.llike_27_q0(llike_27_q0),.llike_27_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_address1),.llike_27_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_ce1),.llike_27_q1(llike_27_q1),.llike_28_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_address0),.llike_28_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_ce0),.llike_28_q0(llike_28_q0),.llike_28_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_address1),.llike_28_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_ce1),.llike_28_q1(llike_28_q1),.llike_29_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_address0),.llike_29_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_ce0),.llike_29_q0(llike_29_q0),.llike_29_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_address1),.llike_29_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_ce1),.llike_29_q1(llike_29_q1),.llike_30_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_address0),.llike_30_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_ce0),.llike_30_q0(llike_30_q0),.llike_30_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_address1),.llike_30_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_ce1),.llike_30_q1(llike_30_q1),.llike_31_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_address0),.llike_31_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_ce0),.llike_31_q0(llike_31_q0),.llike_31_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_address1),.llike_31_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_ce1),.llike_31_q1(llike_31_q1),.path_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_address0),.path_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_ce0),.path_3_we0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_we0),.path_3_d0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_d0),.path_3_q0(path_3_q0),.path_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_address0),.path_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_ce0),.path_2_we0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_we0),.path_2_d0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_d0),.path_2_q0(path_2_q0),.path_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_address0),.path_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_ce0),.path_1_we0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_we0),.path_1_d0(grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_d0),.path_1_q0(path_1_q0),.transition_0_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_ce1),.transition_3_q1(transition_3_q1),.grp_fu_1120_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_din0),.grp_fu_1120_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_din1),.grp_fu_1120_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_opcode),.grp_fu_1120_p_dout0(grp_fu_1120_p2),.grp_fu_1120_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_ce),.grp_fu_1661_p_din0(grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_din0),.grp_fu_1661_p_din1(grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_din1),.grp_fu_1661_p_opcode(grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_opcode),.grp_fu_1661_p_dout0(grp_fu_1661_p2),.grp_fu_1661_p_ce(grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U253(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1120_p0),.din1(grp_fu_1120_p1),.ce(grp_fu_1120_ce),.dout(grp_fu_1120_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U254(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.def(tmp_4_fu_1203_p9),.sel(tmp_4_fu_1203_p10),.dout(tmp_4_fu_1203_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U255(.din0(tmp_6_fu_1317_p2),.din1(tmp_6_fu_1317_p4),.din2(tmp_6_fu_1317_p6),.din3(tmp_6_fu_1317_p8),.def(tmp_6_fu_1317_p9),.sel(tmp_6_fu_1317_p10),.dout(tmp_6_fu_1317_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U256(.din0(tmp_7_fu_1381_p2),.din1(tmp_7_fu_1381_p4),.din2(tmp_7_fu_1381_p6),.din3(tmp_7_fu_1381_p8),.def(tmp_7_fu_1381_p9),.sel(empty_24_reg_1568),.dout(tmp_7_fu_1381_p11));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U257(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1661_p0),.din1(grp_fu_1661_p1),.ce(grp_fu_1661_ce),.opcode(grp_fu_1661_opcode),.dout(grp_fu_1661_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_1030_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_1030_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_1030_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_1030_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_924_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_924_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_924_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_924_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_979_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_912 <= add_ln19_reg_1581;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_912 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_196 <= 8'd1;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln19_fu_1245_p2 == 1'd1))) begin
        t_fu_196 <= add_ln18_fu_1275_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_1581 <= add_ln19_fu_1251_p2;
        lshr_ln_reg_1586 <= {{curr_reg_912[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln24_reg_1630 <= add_ln24_fu_1353_p2;
        tmp_6_reg_1625 <= tmp_6_fu_1317_p11;
        tmp_reg_1615 <= curr_reg_912[32'd5];
        trunc_ln19_reg_1611 <= trunc_ln19_fu_1285_p1;
        trunc_ln23_reg_1620 <= trunc_ln23_fu_1297_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_979_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        ap_predicate_pred1545_state27 <= (trunc_ln19_reg_1611 == 5'd0);
        ap_predicate_pred1580_state27 <= (trunc_ln19_reg_1611 == 5'd30);
        ap_predicate_pred1589_state27 <= (trunc_ln19_reg_1611 == 5'd29);
        ap_predicate_pred1598_state27 <= (trunc_ln19_reg_1611 == 5'd28);
        ap_predicate_pred1607_state27 <= (trunc_ln19_reg_1611 == 5'd27);
        ap_predicate_pred1616_state27 <= (trunc_ln19_reg_1611 == 5'd26);
        ap_predicate_pred1625_state27 <= (trunc_ln19_reg_1611 == 5'd25);
        ap_predicate_pred1634_state27 <= (trunc_ln19_reg_1611 == 5'd24);
        ap_predicate_pred1643_state27 <= (trunc_ln19_reg_1611 == 5'd23);
        ap_predicate_pred1652_state27 <= (trunc_ln19_reg_1611 == 5'd22);
        ap_predicate_pred1661_state27 <= (trunc_ln19_reg_1611 == 5'd21);
        ap_predicate_pred1670_state27 <= (trunc_ln19_reg_1611 == 5'd20);
        ap_predicate_pred1679_state27 <= (trunc_ln19_reg_1611 == 5'd19);
        ap_predicate_pred1688_state27 <= (trunc_ln19_reg_1611 == 5'd18);
        ap_predicate_pred1697_state27 <= (trunc_ln19_reg_1611 == 5'd17);
        ap_predicate_pred1706_state27 <= (trunc_ln19_reg_1611 == 5'd16);
        ap_predicate_pred1715_state27 <= (trunc_ln19_reg_1611 == 5'd15);
        ap_predicate_pred1724_state27 <= (trunc_ln19_reg_1611 == 5'd14);
        ap_predicate_pred1733_state27 <= (trunc_ln19_reg_1611 == 5'd13);
        ap_predicate_pred1742_state27 <= (trunc_ln19_reg_1611 == 5'd12);
        ap_predicate_pred1751_state27 <= (trunc_ln19_reg_1611 == 5'd11);
        ap_predicate_pred1760_state27 <= (trunc_ln19_reg_1611 == 5'd10);
        ap_predicate_pred1769_state27 <= (trunc_ln19_reg_1611 == 5'd9);
        ap_predicate_pred1778_state27 <= (trunc_ln19_reg_1611 == 5'd8);
        ap_predicate_pred1787_state27 <= (trunc_ln19_reg_1611 == 5'd7);
        ap_predicate_pred1796_state27 <= (trunc_ln19_reg_1611 == 5'd6);
        ap_predicate_pred1805_state27 <= (trunc_ln19_reg_1611 == 5'd5);
        ap_predicate_pred1814_state27 <= (trunc_ln19_reg_1611 == 5'd4);
        ap_predicate_pred1823_state27 <= (trunc_ln19_reg_1611 == 5'd3);
        ap_predicate_pred1832_state27 <= (trunc_ln19_reg_1611 == 5'd2);
        ap_predicate_pred1841_state27 <= (trunc_ln19_reg_1611 == 5'd1);
        ap_predicate_pred1850_state27 <= (trunc_ln19_reg_1611 == 5'd31);
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_cast_reg_1573[5 : 0] <= conv32_udiv_cast_fu_1241_p1[5 : 0];
        empty_23_reg_1553 <= empty_23_fu_1185_p2;
        empty_24_reg_1568 <= empty_24_fu_1227_p1;
        llike_addr_2_reg_1563[8 : 1] <= tmp_290_cast_fu_1198_p1[8 : 1];
        tmp_s_reg_1558[8 : 1] <= tmp_s_fu_1190_p3[8 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_1514 <= {{obs_0_q0[7:2]}};
        empty_reg_1509 <= empty_fu_1141_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state26) & (grp_viterbi_Pipeline_L_prev_state_fu_979_min_p_137_out_ap_vld == 1'b1))) begin
        min_p_137_loc_fu_204 <= grp_viterbi_Pipeline_L_prev_state_fu_979_min_p_137_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_1124 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_1130 <= grp_fu_1120_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_1525 <= t_fu_196;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        tmp_7_reg_1655 <= tmp_7_fu_1381_p11;
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
    if ((grp_viterbi_Pipeline_L_prev_state_fu_979_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_end_fu_1030_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
    end
end
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_done == 1'b0)) begin
        ap_ST_fsm_state33_blk = 1'b1;
    end else begin
        ap_ST_fsm_state33_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_924_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state33) & (grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state33) & (grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_924_emission_0_address0;
    end else begin
        emission_0_address0 = zext_ln24_fu_1358_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_924_emission_0_ce0;
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
        emission_0_ce1 = grp_viterbi_Pipeline_L_init_fu_924_emission_0_ce1;
    end else begin
        emission_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_924_emission_1_address0;
    end else begin
        emission_1_address0 = zext_ln24_fu_1358_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_924_emission_1_ce0;
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
        emission_1_ce1 = grp_viterbi_Pipeline_L_init_fu_924_emission_1_ce1;
    end else begin
        emission_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_924_emission_2_address0;
    end else begin
        emission_2_address0 = zext_ln24_fu_1358_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_924_emission_2_ce0;
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
        emission_2_ce1 = grp_viterbi_Pipeline_L_init_fu_924_emission_2_ce1;
    end else begin
        emission_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_924_emission_3_address0;
    end else begin
        emission_3_address0 = zext_ln24_fu_1358_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_924_emission_3_ce0;
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
        emission_3_ce1 = grp_viterbi_Pipeline_L_init_fu_924_emission_3_ce1;
    end else begin
        emission_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1120_ce = grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1120_ce = grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1120_ce = grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_ce;
    end else begin
        grp_fu_1120_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1120_p0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1120_p0 = grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1120_p0 = grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1120_p0 = reg_1130;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1120_p0 = reg_1124;
    end else begin
        grp_fu_1120_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1120_p1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1120_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1120_p1 = grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1120_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1120_p1 = grp_viterbi_Pipeline_L_init_fu_924_grp_fu_1120_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1120_p1 = tmp_7_reg_1655;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_1120_p1 = tmp_6_reg_1625;
    end else begin
        grp_fu_1120_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1661_ce = grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1661_ce = grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1661_ce = grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_ce;
    end else begin
        grp_fu_1661_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1661_opcode = grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1661_opcode = grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1661_opcode = grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_opcode;
    end else begin
        grp_fu_1661_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1661_p0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1661_p0 = grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1661_p0 = grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_din0;
    end else begin
        grp_fu_1661_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_1661_p1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_grp_fu_1661_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1661_p1 = grp_viterbi_Pipeline_L_end_fu_1030_grp_fu_1661_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1661_p1 = grp_viterbi_Pipeline_L_prev_state_fu_979_grp_fu_1661_p_din1;
    end else begin
        grp_fu_1661_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_10_address0;
    end else begin
        llike_10_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_10_ce0;
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
        llike_10_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_10_ce1;
    end else begin
        llike_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_10_d0;
    end else begin
        llike_10_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_10_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_10_we0;
    end else begin
        llike_10_we0 = llike_10_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1760_state27 == 1'b1))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_11_address0;
    end else begin
        llike_11_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_11_ce0;
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
        llike_11_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_11_ce1;
    end else begin
        llike_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_11_d0;
    end else begin
        llike_11_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_11_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_11_we0;
    end else begin
        llike_11_we0 = llike_11_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1751_state27 == 1'b1))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_12_address0;
    end else begin
        llike_12_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_12_ce0;
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
        llike_12_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_12_ce1;
    end else begin
        llike_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_12_d0;
    end else begin
        llike_12_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_12_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_12_we0;
    end else begin
        llike_12_we0 = llike_12_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1742_state27 == 1'b1))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_13_address0;
    end else begin
        llike_13_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_13_ce0;
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
        llike_13_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_13_ce1;
    end else begin
        llike_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_13_d0;
    end else begin
        llike_13_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_13_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_13_we0;
    end else begin
        llike_13_we0 = llike_13_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1733_state27 == 1'b1))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_14_address0;
    end else begin
        llike_14_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_14_ce0;
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
        llike_14_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_14_ce1;
    end else begin
        llike_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_14_d0;
    end else begin
        llike_14_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_14_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_14_we0;
    end else begin
        llike_14_we0 = llike_14_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1724_state27 == 1'b1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_15_address0;
    end else begin
        llike_15_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_15_ce0;
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
        llike_15_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_15_ce1;
    end else begin
        llike_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_15_d0;
    end else begin
        llike_15_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_15_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_15_we0;
    end else begin
        llike_15_we0 = llike_15_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1715_state27 == 1'b1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_16_address0;
    end else begin
        llike_16_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_16_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_16_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_16_ce1;
    end else begin
        llike_16_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_16_d0;
    end else begin
        llike_16_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_16_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_16_we0;
    end else begin
        llike_16_we0 = llike_16_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1706_state27 == 1'b1))) begin
        llike_16_we0_local = 1'b1;
    end else begin
        llike_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_17_address0;
    end else begin
        llike_17_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_17_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_17_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_17_ce1;
    end else begin
        llike_17_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_17_d0;
    end else begin
        llike_17_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_17_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_17_we0;
    end else begin
        llike_17_we0 = llike_17_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1697_state27 == 1'b1))) begin
        llike_17_we0_local = 1'b1;
    end else begin
        llike_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_18_address0;
    end else begin
        llike_18_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_18_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_18_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_18_ce1;
    end else begin
        llike_18_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_18_d0;
    end else begin
        llike_18_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_18_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_18_we0;
    end else begin
        llike_18_we0 = llike_18_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1688_state27 == 1'b1))) begin
        llike_18_we0_local = 1'b1;
    end else begin
        llike_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_19_address0;
    end else begin
        llike_19_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_19_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_19_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_19_ce1;
    end else begin
        llike_19_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_19_d0;
    end else begin
        llike_19_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_19_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_19_we0;
    end else begin
        llike_19_we0 = llike_19_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1679_state27 == 1'b1))) begin
        llike_19_we0_local = 1'b1;
    end else begin
        llike_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_1_address0;
    end else begin
        llike_1_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_1_ce0;
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
        llike_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_1_d0;
    end else begin
        llike_1_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_1_we0;
    end else begin
        llike_1_we0 = llike_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1841_state27 == 1'b1))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_20_address0;
    end else begin
        llike_20_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_20_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_20_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_20_ce1;
    end else begin
        llike_20_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_20_d0;
    end else begin
        llike_20_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_20_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_20_we0;
    end else begin
        llike_20_we0 = llike_20_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1670_state27 == 1'b1))) begin
        llike_20_we0_local = 1'b1;
    end else begin
        llike_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_21_address0;
    end else begin
        llike_21_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_21_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_21_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_21_ce1;
    end else begin
        llike_21_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_21_d0;
    end else begin
        llike_21_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_21_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_21_we0;
    end else begin
        llike_21_we0 = llike_21_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1661_state27 == 1'b1))) begin
        llike_21_we0_local = 1'b1;
    end else begin
        llike_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_22_address0;
    end else begin
        llike_22_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_22_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_22_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_22_ce1;
    end else begin
        llike_22_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_22_d0;
    end else begin
        llike_22_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_22_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_22_we0;
    end else begin
        llike_22_we0 = llike_22_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1652_state27 == 1'b1))) begin
        llike_22_we0_local = 1'b1;
    end else begin
        llike_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_23_address0;
    end else begin
        llike_23_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_23_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_23_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_23_ce1;
    end else begin
        llike_23_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_23_d0;
    end else begin
        llike_23_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_23_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_23_we0;
    end else begin
        llike_23_we0 = llike_23_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1643_state27 == 1'b1))) begin
        llike_23_we0_local = 1'b1;
    end else begin
        llike_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_24_address0;
    end else begin
        llike_24_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_24_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_24_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_24_ce1;
    end else begin
        llike_24_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_24_d0;
    end else begin
        llike_24_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_24_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_24_we0;
    end else begin
        llike_24_we0 = llike_24_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1634_state27 == 1'b1))) begin
        llike_24_we0_local = 1'b1;
    end else begin
        llike_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_25_address0;
    end else begin
        llike_25_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_25_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_25_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_25_ce1;
    end else begin
        llike_25_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_25_d0;
    end else begin
        llike_25_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_25_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_25_we0;
    end else begin
        llike_25_we0 = llike_25_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1625_state27 == 1'b1))) begin
        llike_25_we0_local = 1'b1;
    end else begin
        llike_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_26_address0;
    end else begin
        llike_26_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_26_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_26_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_26_ce1;
    end else begin
        llike_26_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_26_d0;
    end else begin
        llike_26_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_26_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_26_we0;
    end else begin
        llike_26_we0 = llike_26_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1616_state27 == 1'b1))) begin
        llike_26_we0_local = 1'b1;
    end else begin
        llike_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_27_address0;
    end else begin
        llike_27_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_27_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_27_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_27_ce1;
    end else begin
        llike_27_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_27_d0;
    end else begin
        llike_27_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_27_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_27_we0;
    end else begin
        llike_27_we0 = llike_27_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1607_state27 == 1'b1))) begin
        llike_27_we0_local = 1'b1;
    end else begin
        llike_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_28_address0;
    end else begin
        llike_28_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_28_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_28_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_28_ce1;
    end else begin
        llike_28_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_28_d0;
    end else begin
        llike_28_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_28_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_28_we0;
    end else begin
        llike_28_we0 = llike_28_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1598_state27 == 1'b1))) begin
        llike_28_we0_local = 1'b1;
    end else begin
        llike_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_29_address0;
    end else begin
        llike_29_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_29_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_29_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_29_ce1;
    end else begin
        llike_29_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_29_d0;
    end else begin
        llike_29_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_29_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_29_we0;
    end else begin
        llike_29_we0 = llike_29_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1589_state27 == 1'b1))) begin
        llike_29_we0_local = 1'b1;
    end else begin
        llike_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_2_address0;
    end else begin
        llike_2_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_2_ce0;
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
        llike_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_2_ce1;
    end else begin
        llike_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_2_d0;
    end else begin
        llike_2_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_2_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_2_we0;
    end else begin
        llike_2_we0 = llike_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1832_state27 == 1'b1))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_30_address0;
    end else begin
        llike_30_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_30_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_30_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_30_ce1;
    end else begin
        llike_30_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_30_d0;
    end else begin
        llike_30_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_30_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_30_we0;
    end else begin
        llike_30_we0 = llike_30_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1580_state27 == 1'b1))) begin
        llike_30_we0_local = 1'b1;
    end else begin
        llike_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_31_address0;
    end else begin
        llike_31_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_31_ce0;
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_31_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_31_ce1;
    end else begin
        llike_31_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_31_d0;
    end else begin
        llike_31_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_31_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_31_we0;
    end else begin
        llike_31_we0 = llike_31_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1850_state27 == 1'b1))) begin
        llike_31_we0_local = 1'b1;
    end else begin
        llike_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_3_address0;
    end else begin
        llike_3_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_3_ce0;
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
        llike_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_3_ce1;
    end else begin
        llike_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_3_d0;
    end else begin
        llike_3_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_3_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_3_we0;
    end else begin
        llike_3_we0 = llike_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1823_state27 == 1'b1))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_4_address0;
    end else begin
        llike_4_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_4_ce0;
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
        llike_4_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_4_ce1;
    end else begin
        llike_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_4_d0;
    end else begin
        llike_4_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_4_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_4_we0;
    end else begin
        llike_4_we0 = llike_4_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1814_state27 == 1'b1))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_5_address0;
    end else begin
        llike_5_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_5_ce0;
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
        llike_5_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_5_ce1;
    end else begin
        llike_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_5_d0;
    end else begin
        llike_5_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_5_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_5_we0;
    end else begin
        llike_5_we0 = llike_5_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1805_state27 == 1'b1))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_6_address0;
    end else begin
        llike_6_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_6_ce0;
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
        llike_6_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_6_ce1;
    end else begin
        llike_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_6_d0;
    end else begin
        llike_6_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_6_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_6_we0;
    end else begin
        llike_6_we0 = llike_6_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1796_state27 == 1'b1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_7_address0;
    end else begin
        llike_7_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_7_ce0;
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
        llike_7_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_7_ce1;
    end else begin
        llike_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_7_d0;
    end else begin
        llike_7_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_7_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_7_we0;
    end else begin
        llike_7_we0 = llike_7_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1787_state27 == 1'b1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_8_address0;
    end else begin
        llike_8_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_8_ce0;
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
        llike_8_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_8_ce1;
    end else begin
        llike_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_8_d0;
    end else begin
        llike_8_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_8_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_8_we0;
    end else begin
        llike_8_we0 = llike_8_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1778_state27 == 1'b1))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_9_address0;
    end else begin
        llike_9_address0 = zext_ln33_fu_1410_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_9_ce0;
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
        llike_9_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_9_ce1;
    end else begin
        llike_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_9_d0;
    end else begin
        llike_9_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_9_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_9_we0;
    end else begin
        llike_9_we0 = llike_9_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1769_state27 == 1'b1))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_924_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_fu_1410_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_2_reg_1563;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd278;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_1030_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_924_llike_ce0;
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
        llike_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_924_llike_d0;
    end else begin
        llike_d0 = min_p_137_loc_fu_204;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_924_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (ap_predicate_pred1545_state27 == 1'b1))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_1174_p1;
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
        path_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_address0;
    end else begin
        path_3_address0 = 64'd34;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_ce0;
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
        path_3_d0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_d0;
    end else begin
        path_3_d0 = grp_viterbi_Pipeline_L_end_fu_1030_min_s_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        path_3_we0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_3_we0;
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
        transition_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln23_fu_1267_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_ce0;
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
        transition_0_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln23_fu_1267_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_ce0;
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
        transition_1_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_address0;
    end else begin
        transition_2_address0 = zext_ln23_fu_1267_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_ce0;
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
        transition_2_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_address0;
    end else begin
        transition_3_address0 = zext_ln23_fu_1267_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_ce0;
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
        transition_3_ce1 = grp_viterbi_Pipeline_L_backtrack_fu_1068_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_979_transition_3_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_924_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln18_fu_1158_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln19_fu_1245_p2 == 1'd1))) begin
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
            if (((grp_viterbi_Pipeline_L_prev_state_fu_979_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((1'b1 == ap_CS_fsm_state30) & (grp_viterbi_Pipeline_L_end_fu_1030_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state33) & (grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_done == 1'b1))) begin
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
assign add_ln18_fu_1275_p2 = (t_fu_196 + 8'd1);
assign add_ln19_fu_1251_p2 = (curr_reg_912 + 7'd1);
assign add_ln24_fu_1353_p2 = (shl_ln_fu_1345_p3 + conv32_udiv_cast_reg_1573);
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
assign conv32_udiv_cast_fu_1241_p1 = conv32_udiv_fu_1231_p4;
assign conv32_udiv_fu_1231_p4 = {{tmp_4_fu_1203_p11[7:2]}};
assign emission_0_address1 = grp_viterbi_Pipeline_L_init_fu_924_emission_0_address1;
assign emission_1_address1 = grp_viterbi_Pipeline_L_init_fu_924_emission_1_address1;
assign emission_2_address1 = grp_viterbi_Pipeline_L_init_fu_924_emission_2_address1;
assign emission_3_address1 = grp_viterbi_Pipeline_L_init_fu_924_emission_3_address1;
assign empty_23_fu_1185_p2 = ($signed(t_fu_196) + $signed(8'd255));
assign empty_24_fu_1227_p1 = tmp_4_fu_1203_p11[1:0];
assign empty_fu_1141_p1 = obs_0_q0[1:0];
assign grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start = grp_viterbi_Pipeline_L_backtrack_fu_1068_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_1030_ap_start = grp_viterbi_Pipeline_L_end_fu_1030_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_924_ap_start = grp_viterbi_Pipeline_L_init_fu_924_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_979_ap_start_reg;
assign icmp_ln18_fu_1158_p2 = ((t_fu_196 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1245_p2 = ((curr_reg_912 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_924_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_924_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_924_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_924_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_924_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_924_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_924_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_924_init_3_ce0;
assign lshr_ln6_fu_1164_p4 = {{t_fu_196[7:2]}};
assign lshr_ln_fu_1257_p4 = {{curr_reg_912[5:2]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_1174_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_1174_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_1174_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign path_0_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_address0;
assign path_0_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_ce0;
assign path_0_d0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_d0;
assign path_0_we0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_0_we0;
assign path_1_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_address0;
assign path_1_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_ce0;
assign path_1_d0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_d0;
assign path_1_we0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_1_we0;
assign path_2_address0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_address0;
assign path_2_ce0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_ce0;
assign path_2_d0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_d0;
assign path_2_we0 = grp_viterbi_Pipeline_L_backtrack_fu_1068_path_2_we0;
assign shl_ln_fu_1345_p3 = {{trunc_ln24_fu_1341_p1}, {4'd0}};
assign tmp_266_fu_1404_p3 = {{t_2_reg_1525}, {tmp_reg_1615}};
assign tmp_290_cast_fu_1198_p1 = tmp_s_fu_1190_p3;
assign tmp_4_fu_1203_p10 = t_fu_196[1:0];
assign tmp_4_fu_1203_p9 = 'bx;
assign tmp_6_fu_1317_p10 = curr_reg_912[1:0];
assign tmp_6_fu_1317_p2 = transition_0_q0;
assign tmp_6_fu_1317_p4 = transition_1_q0;
assign tmp_6_fu_1317_p6 = transition_2_q0;
assign tmp_6_fu_1317_p8 = transition_3_q0;
assign tmp_6_fu_1317_p9 = 'bx;
assign tmp_7_fu_1381_p2 = emission_0_q0;
assign tmp_7_fu_1381_p4 = emission_1_q0;
assign tmp_7_fu_1381_p6 = emission_2_q0;
assign tmp_7_fu_1381_p8 = emission_3_q0;
assign tmp_7_fu_1381_p9 = 'bx;
assign tmp_s_fu_1190_p3 = {{empty_23_fu_1185_p2}, {1'd0}};
assign trunc_ln19_fu_1285_p1 = curr_reg_912[4:0];
assign trunc_ln23_fu_1297_p1 = curr_reg_912[1:0];
assign trunc_ln24_fu_1341_p1 = curr_reg_912[5:0];
assign zext_ln23_fu_1267_p1 = lshr_ln_fu_1257_p4;
assign zext_ln24_fu_1358_p1 = add_ln24_reg_1630;
assign zext_ln33_fu_1410_p1 = tmp_266_fu_1404_p3;
assign zext_ln6_fu_1174_p1 = lshr_ln6_fu_1164_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_1558[0] <= 1'b0;
    llike_addr_2_reg_1563[0] <= 1'b0;
    conv32_udiv_cast_reg_1573[9:6] <= 4'b0000;
end
endmodule 
