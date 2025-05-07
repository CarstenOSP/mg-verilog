module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,obs_4_address0,obs_4_ce0,obs_4_q0,obs_5_address0,obs_5_ce0,obs_5_q0,obs_6_address0,obs_6_ce0,obs_6_q0,obs_7_address0,obs_7_ce0,obs_7_q0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,init_4_address0,init_4_ce0,init_4_q0,init_4_address1,init_4_ce1,init_4_q1,init_5_address0,init_5_ce0,init_5_q0,init_5_address1,init_5_ce1,init_5_q1,init_6_address0,init_6_ce0,init_6_q0,init_6_address1,init_6_ce1,init_6_q1,init_7_address0,init_7_ce0,init_7_q0,init_7_address1,init_7_ce1,init_7_q1,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,path_4_address0,path_4_ce0,path_4_we0,path_4_d0,path_4_q0,path_5_address0,path_5_ce0,path_5_we0,path_5_d0,path_5_q0,path_6_address0,path_6_ce0,path_6_we0,path_6_d0,path_6_q0,path_7_address0,path_7_ce0,path_7_we0,path_7_d0,path_7_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 46'd1;
parameter    ap_ST_fsm_state2 = 46'd2;
parameter    ap_ST_fsm_state3 = 46'd4;
parameter    ap_ST_fsm_state4 = 46'd8;
parameter    ap_ST_fsm_state5 = 46'd16;
parameter    ap_ST_fsm_state6 = 46'd32;
parameter    ap_ST_fsm_state7 = 46'd64;
parameter    ap_ST_fsm_state8 = 46'd128;
parameter    ap_ST_fsm_state9 = 46'd256;
parameter    ap_ST_fsm_state10 = 46'd512;
parameter    ap_ST_fsm_state11 = 46'd1024;
parameter    ap_ST_fsm_state12 = 46'd2048;
parameter    ap_ST_fsm_state13 = 46'd4096;
parameter    ap_ST_fsm_state14 = 46'd8192;
parameter    ap_ST_fsm_state15 = 46'd16384;
parameter    ap_ST_fsm_state16 = 46'd32768;
parameter    ap_ST_fsm_state17 = 46'd65536;
parameter    ap_ST_fsm_state18 = 46'd131072;
parameter    ap_ST_fsm_state19 = 46'd262144;
parameter    ap_ST_fsm_state20 = 46'd524288;
parameter    ap_ST_fsm_state21 = 46'd1048576;
parameter    ap_ST_fsm_state22 = 46'd2097152;
parameter    ap_ST_fsm_state23 = 46'd4194304;
parameter    ap_ST_fsm_state24 = 46'd8388608;
parameter    ap_ST_fsm_state25 = 46'd16777216;
parameter    ap_ST_fsm_state26 = 46'd33554432;
parameter    ap_ST_fsm_state27 = 46'd67108864;
parameter    ap_ST_fsm_state28 = 46'd134217728;
parameter    ap_ST_fsm_state29 = 46'd268435456;
parameter    ap_ST_fsm_state30 = 46'd536870912;
parameter    ap_ST_fsm_state31 = 46'd1073741824;
parameter    ap_ST_fsm_state32 = 46'd2147483648;
parameter    ap_ST_fsm_state33 = 46'd4294967296;
parameter    ap_ST_fsm_state34 = 46'd8589934592;
parameter    ap_ST_fsm_state35 = 46'd17179869184;
parameter    ap_ST_fsm_state36 = 46'd34359738368;
parameter    ap_ST_fsm_state37 = 46'd68719476736;
parameter    ap_ST_fsm_state38 = 46'd137438953472;
parameter    ap_ST_fsm_state39 = 46'd274877906944;
parameter    ap_ST_fsm_state40 = 46'd549755813888;
parameter    ap_ST_fsm_state41 = 46'd1099511627776;
parameter    ap_ST_fsm_state42 = 46'd2199023255552;
parameter    ap_ST_fsm_state43 = 46'd4398046511104;
parameter    ap_ST_fsm_state44 = 46'd8796093022208;
parameter    ap_ST_fsm_state45 = 46'd17592186044416;
parameter    ap_ST_fsm_state46 = 46'd35184372088832;
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
output  [2:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [2:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_2_address1;
output   init_2_ce1;
input  [63:0] init_2_q1;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_3_address1;
output   init_3_ce1;
input  [63:0] init_3_q1;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
output  [2:0] init_4_address1;
output   init_4_ce1;
input  [63:0] init_4_q1;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_5_address1;
output   init_5_ce1;
input  [63:0] init_5_q1;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_6_address1;
output   init_6_ce1;
input  [63:0] init_6_q1;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
output  [2:0] init_7_address1;
output   init_7_ce1;
input  [63:0] init_7_q1;
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
output  [8:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_4_address1;
output   emission_4_ce1;
input  [63:0] emission_4_q1;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_5_address1;
output   emission_5_ce1;
input  [63:0] emission_5_q1;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_6_address1;
output   emission_6_ce1;
input  [63:0] emission_6_q1;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
output  [8:0] emission_7_address1;
output   emission_7_ce1;
input  [63:0] emission_7_q1;
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
reg transition_0_ce1;
reg[8:0] transition_1_address0;
reg transition_1_ce0;
reg transition_1_ce1;
reg[8:0] transition_2_address0;
reg transition_2_ce0;
reg transition_2_ce1;
reg[8:0] transition_3_address0;
reg transition_3_ce0;
reg transition_3_ce1;
reg[8:0] transition_4_address0;
reg transition_4_ce0;
reg transition_4_ce1;
reg[8:0] transition_5_address0;
reg transition_5_ce0;
reg transition_5_ce1;
reg[8:0] transition_6_address0;
reg transition_6_ce0;
reg transition_6_ce1;
reg[8:0] transition_7_address0;
reg transition_7_ce0;
reg transition_7_ce1;
reg[8:0] emission_0_address0;
reg emission_0_ce0;
reg emission_0_ce1;
reg[8:0] emission_1_address0;
reg emission_1_ce0;
reg emission_1_ce1;
reg[8:0] emission_2_address0;
reg emission_2_ce0;
reg emission_2_ce1;
reg[8:0] emission_3_address0;
reg emission_3_ce0;
reg emission_3_ce1;
reg[8:0] emission_4_address0;
reg emission_4_ce0;
reg emission_4_ce1;
reg[8:0] emission_5_address0;
reg emission_5_ce0;
reg emission_5_ce1;
reg[8:0] emission_6_address0;
reg emission_6_ce0;
reg emission_6_ce1;
reg[8:0] emission_7_address0;
reg emission_7_ce0;
reg emission_7_ce1;
(* fsm_encoding = "none" *) reg   [45:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_925;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state34;
wire   [63:0] grp_fu_921_p2;
reg   [63:0] reg_931;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state42;
wire   [2:0] empty_fu_943_p1;
reg   [2:0] empty_reg_1585;
wire    ap_CS_fsm_state2;
reg   [4:0] conv3_udiv_reg_1590;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [13:0] tmp_s_fu_993_p3;
reg   [13:0] tmp_s_reg_1654;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_22_fu_1003_p2;
reg   [7:0] empty_22_reg_1659;
wire   [13:0] tmp_91_fu_1008_p3;
reg   [13:0] tmp_91_reg_1664;
reg   [13:0] llike_addr_17_reg_1669;
wire   [2:0] empty_23_fu_1061_p1;
reg   [2:0] empty_23_reg_1674;
wire   [8:0] conv32_udiv_cast_fu_1075_p1;
reg   [8:0] conv32_udiv_cast_reg_1679;
wire   [6:0] add_ln19_fu_1085_p2;
reg   [6:0] add_ln19_reg_1687;
wire    ap_CS_fsm_state7;
wire   [13:0] add_ln33_fu_1095_p2;
reg   [13:0] add_ln33_reg_1692;
wire   [2:0] trunc_ln23_fu_1100_p1;
reg   [2:0] trunc_ln23_reg_1697;
wire   [2:0] lshr_ln_fu_1104_p4;
reg   [2:0] lshr_ln_reg_1703;
wire   [8:0] add_ln24_fu_1138_p2;
reg   [8:0] add_ln24_reg_1748;
wire   [63:0] tmp_16_fu_1185_p19;
reg   [63:0] tmp_16_reg_1753;
wire    ap_CS_fsm_state15;
wire   [63:0] tmp_17_fu_1267_p19;
reg   [63:0] tmp_17_reg_1798;
wire   [7:0] trunc_ln50_fu_1329_p1;
reg   [7:0] trunc_ln50_reg_1810;
wire    ap_CS_fsm_state32;
wire   [13:0] tmp_92_fu_1361_p3;
reg   [13:0] tmp_92_reg_1856;
wire    ap_CS_fsm_state33;
wire   [2:0] trunc_ln50_1_fu_1373_p1;
reg   [2:0] trunc_ln50_1_reg_1866;
wire   [2:0] trunc_ln52_fu_1416_p1;
reg   [2:0] trunc_ln52_reg_1870;
wire   [4:0] lshr_ln52_1_fu_1420_p4;
reg   [4:0] lshr_ln52_1_reg_1876;
wire   [63:0] tmp_34_fu_1474_p19;
reg   [63:0] tmp_34_reg_1921;
reg   [13:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg   [13:0] llike_address1;
reg    llike_ce1;
reg    llike_we1;
wire   [63:0] llike_q1;
wire    grp_viterbi_Pipeline_L_init_fu_819_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_819_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_819_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_819_ap_ready;
wire   [13:0] grp_viterbi_Pipeline_L_init_fu_819_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_819_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_819_llike_d0;
wire   [13:0] grp_viterbi_Pipeline_L_init_fu_819_llike_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_llike_ce1;
wire    grp_viterbi_Pipeline_L_init_fu_819_llike_we1;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_819_llike_d1;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_0_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_0_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_2_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_3_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_4_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_5_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_6_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_init_fu_819_emission_7_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_emission_7_ce1;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_1_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_1_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_1_ce1;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_2_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_2_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_2_ce1;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_3_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_3_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_3_ce1;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_4_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_4_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_4_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_4_ce1;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_5_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_5_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_5_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_5_ce1;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_6_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_6_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_6_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_6_ce1;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_7_address0;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_7_ce0;
wire   [2:0] grp_viterbi_Pipeline_L_init_fu_819_init_7_address1;
wire    grp_viterbi_Pipeline_L_init_fu_819_init_7_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_ce;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_ap_done;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_ap_idle;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_ap_ready;
wire   [13:0] grp_viterbi_Pipeline_L_prev_state_fu_859_llike_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_llike_ce0;
wire   [13:0] grp_viterbi_Pipeline_L_prev_state_fu_859_llike_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_llike_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_ce1;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_address0;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_address1;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_ce1;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_859_min_p_38_out;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_min_p_38_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_opcode;
wire    grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_887_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_887_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_887_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_887_ap_ready;
wire   [13:0] grp_viterbi_Pipeline_L_end_fu_887_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_887_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_887_min_s_2_out;
wire    grp_viterbi_Pipeline_L_end_fu_887_min_s_2_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_894_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_894_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_894_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_894_ap_ready;
wire   [13:0] grp_viterbi_Pipeline_L_state_fu_894_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_llike_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_894_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_transition_0_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_894_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_transition_1_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_894_transition_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_transition_2_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_894_transition_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_transition_3_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_894_transition_4_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_transition_4_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_894_transition_5_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_transition_5_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_894_transition_6_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_transition_6_ce0;
wire   [8:0] grp_viterbi_Pipeline_L_state_fu_894_transition_7_address0;
wire    grp_viterbi_Pipeline_L_state_fu_894_transition_7_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_894_min_s_6_out;
wire    grp_viterbi_Pipeline_L_state_fu_894_min_s_6_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_ce;
reg   [6:0] curr_reg_808;
wire    ap_CS_fsm_state27;
reg    grp_viterbi_Pipeline_L_init_fu_819_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg   [63:0] min_p_38_loc_fu_202;
reg    grp_viterbi_Pipeline_L_end_fu_887_ap_start_reg;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
reg   [7:0] min_s_2_loc_fu_198;
reg    grp_viterbi_Pipeline_L_state_fu_894_ap_start_reg;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state44;
reg   [7:0] min_s_6_loc_fu_194;
wire   [63:0] zext_ln6_fu_976_p1;
wire   [0:0] icmp_ln18_fu_960_p2;
wire   [63:0] tmp_138_cast_fu_1016_p1;
wire   [63:0] zext_ln23_fu_1114_p1;
wire   [0:0] icmp_ln19_fu_1079_p2;
wire   [63:0] zext_ln24_fu_1224_p1;
wire   [63:0] zext_ln33_1_fu_1306_p1;
wire    ap_CS_fsm_state31;
wire   [63:0] zext_ln52_fu_1349_p1;
wire   [0:0] tmp_fu_1321_p3;
wire   [63:0] zext_ln52_2_fu_1368_p1;
wire   [63:0] zext_ln52_1_fu_1430_p1;
wire   [63:0] zext_ln6_1_fu_1522_p1;
wire    ap_CS_fsm_state45;
reg   [7:0] t_fu_190;
wire   [7:0] add_ln18_fu_1143_p2;
reg   [8:0] t_1_fu_210;
wire   [8:0] add_ln50_fu_1545_p2;
wire    ap_CS_fsm_state46;
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
reg   [13:0] llike_address0_local;
reg    llike_we0_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
reg    emission_2_ce0_local;
reg    emission_3_ce0_local;
reg    emission_4_ce0_local;
reg    emission_5_ce0_local;
reg    emission_6_ce0_local;
reg    emission_7_ce0_local;
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
reg   [63:0] grp_fu_921_p0;
reg   [63:0] grp_fu_921_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state35;
wire   [4:0] lshr_ln6_fu_966_p4;
wire   [7:0] tmp_15_fu_1021_p17;
wire   [2:0] tmp_15_fu_1021_p18;
wire   [7:0] tmp_15_fu_1021_p19;
wire   [4:0] conv32_udiv_fu_1065_p4;
wire   [13:0] zext_ln33_fu_1091_p1;
wire   [5:0] trunc_ln24_fu_1126_p1;
wire   [8:0] shl_ln_fu_1130_p3;
wire   [63:0] tmp_16_fu_1185_p2;
wire   [63:0] tmp_16_fu_1185_p4;
wire   [63:0] tmp_16_fu_1185_p6;
wire   [63:0] tmp_16_fu_1185_p8;
wire   [63:0] tmp_16_fu_1185_p10;
wire   [63:0] tmp_16_fu_1185_p12;
wire   [63:0] tmp_16_fu_1185_p14;
wire   [63:0] tmp_16_fu_1185_p16;
wire   [63:0] tmp_16_fu_1185_p17;
wire   [63:0] tmp_17_fu_1267_p2;
wire   [63:0] tmp_17_fu_1267_p4;
wire   [63:0] tmp_17_fu_1267_p6;
wire   [63:0] tmp_17_fu_1267_p8;
wire   [63:0] tmp_17_fu_1267_p10;
wire   [63:0] tmp_17_fu_1267_p12;
wire   [63:0] tmp_17_fu_1267_p14;
wire   [63:0] tmp_17_fu_1267_p16;
wire   [63:0] tmp_17_fu_1267_p17;
wire   [7:0] add_ln52_fu_1333_p2;
wire   [4:0] lshr_ln1_fu_1339_p4;
wire   [7:0] tmp_33_fu_1376_p17;
wire   [2:0] tmp_33_fu_1376_p18;
wire   [7:0] tmp_33_fu_1376_p19;
wire   [63:0] tmp_34_fu_1474_p2;
wire   [63:0] tmp_34_fu_1474_p4;
wire   [63:0] tmp_34_fu_1474_p6;
wire   [63:0] tmp_34_fu_1474_p8;
wire   [63:0] tmp_34_fu_1474_p10;
wire   [63:0] tmp_34_fu_1474_p12;
wire   [63:0] tmp_34_fu_1474_p14;
wire   [63:0] tmp_34_fu_1474_p16;
wire   [63:0] tmp_34_fu_1474_p17;
wire   [4:0] lshr_ln6_1_fu_1513_p4;
reg    grp_fu_921_ce;
wire   [63:0] grp_fu_1926_p2;
reg   [63:0] grp_fu_1926_p0;
reg   [63:0] grp_fu_1926_p1;
reg    grp_fu_1926_ce;
wire   [0:0] grp_fu_1930_p2;
reg   [63:0] grp_fu_1930_p0;
reg   [63:0] grp_fu_1930_p1;
reg    grp_fu_1930_ce;
reg   [4:0] grp_fu_1930_opcode;
reg   [45:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state46_blk;
wire   [2:0] tmp_15_fu_1021_p1;
wire   [2:0] tmp_15_fu_1021_p3;
wire   [2:0] tmp_15_fu_1021_p5;
wire   [2:0] tmp_15_fu_1021_p7;
wire  signed [2:0] tmp_15_fu_1021_p9;
wire  signed [2:0] tmp_15_fu_1021_p11;
wire  signed [2:0] tmp_15_fu_1021_p13;
wire  signed [2:0] tmp_15_fu_1021_p15;
wire   [2:0] tmp_16_fu_1185_p1;
wire   [2:0] tmp_16_fu_1185_p3;
wire   [2:0] tmp_16_fu_1185_p5;
wire   [2:0] tmp_16_fu_1185_p7;
wire  signed [2:0] tmp_16_fu_1185_p9;
wire  signed [2:0] tmp_16_fu_1185_p11;
wire  signed [2:0] tmp_16_fu_1185_p13;
wire  signed [2:0] tmp_16_fu_1185_p15;
wire   [2:0] tmp_17_fu_1267_p1;
wire   [2:0] tmp_17_fu_1267_p3;
wire   [2:0] tmp_17_fu_1267_p5;
wire   [2:0] tmp_17_fu_1267_p7;
wire  signed [2:0] tmp_17_fu_1267_p9;
wire  signed [2:0] tmp_17_fu_1267_p11;
wire  signed [2:0] tmp_17_fu_1267_p13;
wire  signed [2:0] tmp_17_fu_1267_p15;
wire  signed [2:0] tmp_33_fu_1376_p1;
wire   [2:0] tmp_33_fu_1376_p3;
wire   [2:0] tmp_33_fu_1376_p5;
wire   [2:0] tmp_33_fu_1376_p7;
wire   [2:0] tmp_33_fu_1376_p9;
wire  signed [2:0] tmp_33_fu_1376_p11;
wire  signed [2:0] tmp_33_fu_1376_p13;
wire  signed [2:0] tmp_33_fu_1376_p15;
wire   [2:0] tmp_34_fu_1474_p1;
wire   [2:0] tmp_34_fu_1474_p3;
wire   [2:0] tmp_34_fu_1474_p5;
wire   [2:0] tmp_34_fu_1474_p7;
wire  signed [2:0] tmp_34_fu_1474_p9;
wire  signed [2:0] tmp_34_fu_1474_p11;
wire  signed [2:0] tmp_34_fu_1474_p13;
wire  signed [2:0] tmp_34_fu_1474_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 46'd1;
#0 grp_viterbi_Pipeline_L_init_fu_819_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_887_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_894_ap_start_reg = 1'b0;
#0 t_fu_190 = 8'd0;
#0 t_1_fu_210 = 9'd0;
end
viterbi_llike_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 8960 ),.AddressWidth( 14 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(llike_address1),.ce1(llike_ce1),.we1(llike_we1),.d1(grp_viterbi_Pipeline_L_init_fu_819_llike_d1),.q1(llike_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_819(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_819_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_819_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_819_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_819_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_819_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_819_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_819_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_819_llike_d0),.llike_address1(grp_viterbi_Pipeline_L_init_fu_819_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_init_fu_819_llike_ce1),.llike_we1(grp_viterbi_Pipeline_L_init_fu_819_llike_we1),.llike_d1(grp_viterbi_Pipeline_L_init_fu_819_llike_d1),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_819_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_819_init_0_ce0),.init_0_q0(init_0_q0),.init_0_address1(grp_viterbi_Pipeline_L_init_fu_819_init_0_address1),.init_0_ce1(grp_viterbi_Pipeline_L_init_fu_819_init_0_ce1),.init_0_q1(init_0_q1),.conv3_udiv(conv3_udiv_reg_1590),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_819_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_819_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_0_address1(grp_viterbi_Pipeline_L_init_fu_819_emission_0_address1),.emission_0_ce1(grp_viterbi_Pipeline_L_init_fu_819_emission_0_ce1),.emission_0_q1(emission_0_q1),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_819_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_819_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_1_address1(grp_viterbi_Pipeline_L_init_fu_819_emission_1_address1),.emission_1_ce1(grp_viterbi_Pipeline_L_init_fu_819_emission_1_ce1),.emission_1_q1(emission_1_q1),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_819_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_819_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_2_address1(grp_viterbi_Pipeline_L_init_fu_819_emission_2_address1),.emission_2_ce1(grp_viterbi_Pipeline_L_init_fu_819_emission_2_ce1),.emission_2_q1(emission_2_q1),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_819_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_819_emission_3_ce0),.emission_3_q0(emission_3_q0),.emission_3_address1(grp_viterbi_Pipeline_L_init_fu_819_emission_3_address1),.emission_3_ce1(grp_viterbi_Pipeline_L_init_fu_819_emission_3_ce1),.emission_3_q1(emission_3_q1),.emission_4_address0(grp_viterbi_Pipeline_L_init_fu_819_emission_4_address0),.emission_4_ce0(grp_viterbi_Pipeline_L_init_fu_819_emission_4_ce0),.emission_4_q0(emission_4_q0),.emission_4_address1(grp_viterbi_Pipeline_L_init_fu_819_emission_4_address1),.emission_4_ce1(grp_viterbi_Pipeline_L_init_fu_819_emission_4_ce1),.emission_4_q1(emission_4_q1),.emission_5_address0(grp_viterbi_Pipeline_L_init_fu_819_emission_5_address0),.emission_5_ce0(grp_viterbi_Pipeline_L_init_fu_819_emission_5_ce0),.emission_5_q0(emission_5_q0),.emission_5_address1(grp_viterbi_Pipeline_L_init_fu_819_emission_5_address1),.emission_5_ce1(grp_viterbi_Pipeline_L_init_fu_819_emission_5_ce1),.emission_5_q1(emission_5_q1),.emission_6_address0(grp_viterbi_Pipeline_L_init_fu_819_emission_6_address0),.emission_6_ce0(grp_viterbi_Pipeline_L_init_fu_819_emission_6_ce0),.emission_6_q0(emission_6_q0),.emission_6_address1(grp_viterbi_Pipeline_L_init_fu_819_emission_6_address1),.emission_6_ce1(grp_viterbi_Pipeline_L_init_fu_819_emission_6_ce1),.emission_6_q1(emission_6_q1),.emission_7_address0(grp_viterbi_Pipeline_L_init_fu_819_emission_7_address0),.emission_7_ce0(grp_viterbi_Pipeline_L_init_fu_819_emission_7_ce0),.emission_7_q0(emission_7_q0),.emission_7_address1(grp_viterbi_Pipeline_L_init_fu_819_emission_7_address1),.emission_7_ce1(grp_viterbi_Pipeline_L_init_fu_819_emission_7_ce1),.emission_7_q1(emission_7_q1),.empty(empty_reg_1585),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_819_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_819_init_1_ce0),.init_1_q0(init_1_q0),.init_1_address1(grp_viterbi_Pipeline_L_init_fu_819_init_1_address1),.init_1_ce1(grp_viterbi_Pipeline_L_init_fu_819_init_1_ce1),.init_1_q1(init_1_q1),.conv3_udiv_cast(conv3_udiv_reg_1590),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_819_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_819_init_2_ce0),.init_2_q0(init_2_q0),.init_2_address1(grp_viterbi_Pipeline_L_init_fu_819_init_2_address1),.init_2_ce1(grp_viterbi_Pipeline_L_init_fu_819_init_2_ce1),.init_2_q1(init_2_q1),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_819_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_819_init_3_ce0),.init_3_q0(init_3_q0),.init_3_address1(grp_viterbi_Pipeline_L_init_fu_819_init_3_address1),.init_3_ce1(grp_viterbi_Pipeline_L_init_fu_819_init_3_ce1),.init_3_q1(init_3_q1),.init_4_address0(grp_viterbi_Pipeline_L_init_fu_819_init_4_address0),.init_4_ce0(grp_viterbi_Pipeline_L_init_fu_819_init_4_ce0),.init_4_q0(init_4_q0),.init_4_address1(grp_viterbi_Pipeline_L_init_fu_819_init_4_address1),.init_4_ce1(grp_viterbi_Pipeline_L_init_fu_819_init_4_ce1),.init_4_q1(init_4_q1),.init_5_address0(grp_viterbi_Pipeline_L_init_fu_819_init_5_address0),.init_5_ce0(grp_viterbi_Pipeline_L_init_fu_819_init_5_ce0),.init_5_q0(init_5_q0),.init_5_address1(grp_viterbi_Pipeline_L_init_fu_819_init_5_address1),.init_5_ce1(grp_viterbi_Pipeline_L_init_fu_819_init_5_ce1),.init_5_q1(init_5_q1),.init_6_address0(grp_viterbi_Pipeline_L_init_fu_819_init_6_address0),.init_6_ce0(grp_viterbi_Pipeline_L_init_fu_819_init_6_ce0),.init_6_q0(init_6_q0),.init_6_address1(grp_viterbi_Pipeline_L_init_fu_819_init_6_address1),.init_6_ce1(grp_viterbi_Pipeline_L_init_fu_819_init_6_ce1),.init_6_q1(init_6_q1),.init_7_address0(grp_viterbi_Pipeline_L_init_fu_819_init_7_address0),.init_7_ce0(grp_viterbi_Pipeline_L_init_fu_819_init_7_ce0),.init_7_q0(init_7_q0),.init_7_address1(grp_viterbi_Pipeline_L_init_fu_819_init_7_address1),.init_7_ce1(grp_viterbi_Pipeline_L_init_fu_819_init_7_ce1),.init_7_q1(init_7_q1),.grp_fu_921_p_din0(grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_din0),.grp_fu_921_p_din1(grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_din1),.grp_fu_921_p_opcode(grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_opcode),.grp_fu_921_p_dout0(grp_fu_921_p2),.grp_fu_921_p_ce(grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_ce),.grp_fu_1926_p_din0(grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_din0),.grp_fu_1926_p_din1(grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_din1),.grp_fu_1926_p_opcode(grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_opcode),.grp_fu_1926_p_dout0(grp_fu_1926_p2),.grp_fu_1926_p_ce(grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_ce));
viterbi_viterbi_Pipeline_L_prev_state grp_viterbi_Pipeline_L_prev_state_fu_859(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start),.ap_done(grp_viterbi_Pipeline_L_prev_state_fu_859_ap_done),.ap_idle(grp_viterbi_Pipeline_L_prev_state_fu_859_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_prev_state_fu_859_ap_ready),.min_p_6(reg_931),.empty_9(empty_22_reg_1659),.llike_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_llike_ce0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_llike_ce1),.llike_q1(llike_q1),.lshr_ln(lshr_ln_reg_1703),.transition_0_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_ce1),.transition_3_q1(transition_3_q1),.transition_4_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_address0),.transition_4_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_ce0),.transition_4_q0(transition_4_q0),.transition_4_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_address1),.transition_4_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_ce1),.transition_4_q1(transition_4_q1),.transition_5_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_address0),.transition_5_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_ce0),.transition_5_q0(transition_5_q0),.transition_5_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_address1),.transition_5_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_ce1),.transition_5_q1(transition_5_q1),.transition_6_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_address0),.transition_6_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_ce0),.transition_6_q0(transition_6_q0),.transition_6_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_address1),.transition_6_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_ce1),.transition_6_q1(transition_6_q1),.transition_7_address0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_address0),.transition_7_ce0(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_ce0),.transition_7_q0(transition_7_q0),.transition_7_address1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_address1),.transition_7_ce1(grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_ce1),.transition_7_q1(transition_7_q1),.empty_10(trunc_ln23_reg_1697),.tmp_17(tmp_17_reg_1798),.empty(tmp_91_reg_1664),.min_p_38_out(grp_viterbi_Pipeline_L_prev_state_fu_859_min_p_38_out),.min_p_38_out_ap_vld(grp_viterbi_Pipeline_L_prev_state_fu_859_min_p_38_out_ap_vld),.grp_fu_921_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_din0),.grp_fu_921_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_din1),.grp_fu_921_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_opcode),.grp_fu_921_p_dout0(grp_fu_921_p2),.grp_fu_921_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_ce),.grp_fu_1926_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_din0),.grp_fu_1926_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_din1),.grp_fu_1926_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_opcode),.grp_fu_1926_p_dout0(grp_fu_1926_p2),.grp_fu_1926_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_ce),.grp_fu_1930_p_din0(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_din0),.grp_fu_1930_p_din1(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_din1),.grp_fu_1930_p_opcode(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_opcode),.grp_fu_1930_p_dout0(grp_fu_1930_p2),.grp_fu_1930_p_ce(grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_887(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_887_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_887_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_887_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_887_ap_ready),.min_p(reg_925),.llike_address0(grp_viterbi_Pipeline_L_end_fu_887_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_887_llike_ce0),.llike_q0(llike_q0),.min_s_2_out(grp_viterbi_Pipeline_L_end_fu_887_min_s_2_out),.min_s_2_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_887_min_s_2_out_ap_vld),.grp_fu_1930_p_din0(grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_din0),.grp_fu_1930_p_din1(grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_din1),.grp_fu_1930_p_opcode(grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_opcode),.grp_fu_1930_p_dout0(grp_fu_1930_p2),.grp_fu_1930_p_ce(grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_894(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_894_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_894_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_894_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_894_ap_ready),.min_p_8(reg_931),.t_1(trunc_ln50_reg_1810),.llike_address0(grp_viterbi_Pipeline_L_state_fu_894_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_894_llike_ce0),.llike_q0(llike_q0),.zext_ln52_2(lshr_ln52_1_reg_1876),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_894_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_894_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_894_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_894_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_2_address0(grp_viterbi_Pipeline_L_state_fu_894_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_state_fu_894_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_3_address0(grp_viterbi_Pipeline_L_state_fu_894_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_state_fu_894_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_4_address0(grp_viterbi_Pipeline_L_state_fu_894_transition_4_address0),.transition_4_ce0(grp_viterbi_Pipeline_L_state_fu_894_transition_4_ce0),.transition_4_q0(transition_4_q0),.transition_5_address0(grp_viterbi_Pipeline_L_state_fu_894_transition_5_address0),.transition_5_ce0(grp_viterbi_Pipeline_L_state_fu_894_transition_5_ce0),.transition_5_q0(transition_5_q0),.transition_6_address0(grp_viterbi_Pipeline_L_state_fu_894_transition_6_address0),.transition_6_ce0(grp_viterbi_Pipeline_L_state_fu_894_transition_6_ce0),.transition_6_q0(transition_6_q0),.transition_7_address0(grp_viterbi_Pipeline_L_state_fu_894_transition_7_address0),.transition_7_ce0(grp_viterbi_Pipeline_L_state_fu_894_transition_7_ce0),.transition_7_q0(transition_7_q0),.empty(trunc_ln52_reg_1870),.zext_ln52_3(tmp_92_reg_1856),.min_s_6_out(grp_viterbi_Pipeline_L_state_fu_894_min_s_6_out),.min_s_6_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_894_min_s_6_out_ap_vld),.grp_fu_921_p_din0(grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_din0),.grp_fu_921_p_din1(grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_din1),.grp_fu_921_p_opcode(grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_opcode),.grp_fu_921_p_dout0(grp_fu_921_p2),.grp_fu_921_p_ce(grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_ce),.grp_fu_1930_p_din0(grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_din0),.grp_fu_1930_p_din1(grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_din1),.grp_fu_1930_p_opcode(grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_opcode),.grp_fu_1930_p_dout0(grp_fu_1930_p2),.grp_fu_1930_p_ce(grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_921_p0),.din1(grp_fu_921_p1),.ce(grp_fu_921_ce),.dout(grp_fu_921_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U99(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.din4(obs_4_q0),.din5(obs_5_q0),.din6(obs_6_q0),.din7(obs_7_q0),.def(tmp_15_fu_1021_p17),.sel(tmp_15_fu_1021_p18),.dout(tmp_15_fu_1021_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U100(.din0(tmp_16_fu_1185_p2),.din1(tmp_16_fu_1185_p4),.din2(tmp_16_fu_1185_p6),.din3(tmp_16_fu_1185_p8),.din4(tmp_16_fu_1185_p10),.din5(tmp_16_fu_1185_p12),.din6(tmp_16_fu_1185_p14),.din7(tmp_16_fu_1185_p16),.def(tmp_16_fu_1185_p17),.sel(trunc_ln23_reg_1697),.dout(tmp_16_fu_1185_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U101(.din0(tmp_17_fu_1267_p2),.din1(tmp_17_fu_1267_p4),.din2(tmp_17_fu_1267_p6),.din3(tmp_17_fu_1267_p8),.din4(tmp_17_fu_1267_p10),.din5(tmp_17_fu_1267_p12),.din6(tmp_17_fu_1267_p14),.din7(tmp_17_fu_1267_p16),.def(tmp_17_fu_1267_p17),.sel(empty_23_reg_1674),.dout(tmp_17_fu_1267_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 8 ),.CASE1( 3'h0 ),.din1_WIDTH( 8 ),.CASE2( 3'h1 ),.din2_WIDTH( 8 ),.CASE3( 3'h2 ),.din3_WIDTH( 8 ),.CASE4( 3'h3 ),.din4_WIDTH( 8 ),.CASE5( 3'h4 ),.din5_WIDTH( 8 ),.CASE6( 3'h5 ),.din6_WIDTH( 8 ),.CASE7( 3'h6 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U102(.din0(path_0_q0),.din1(path_1_q0),.din2(path_2_q0),.din3(path_3_q0),.din4(path_4_q0),.din5(path_5_q0),.din6(path_6_q0),.din7(path_7_q0),.def(tmp_33_fu_1376_p17),.sel(tmp_33_fu_1376_p18),.dout(tmp_33_fu_1376_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U103(.din0(tmp_34_fu_1474_p2),.din1(tmp_34_fu_1474_p4),.din2(tmp_34_fu_1474_p6),.din3(tmp_34_fu_1474_p8),.din4(tmp_34_fu_1474_p10),.din5(tmp_34_fu_1474_p12),.din6(tmp_34_fu_1474_p14),.din7(tmp_34_fu_1474_p16),.def(tmp_34_fu_1474_p17),.sel(trunc_ln52_reg_1870),.dout(tmp_34_fu_1474_p19));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1926_p0),.din1(grp_fu_1926_p1),.ce(grp_fu_1926_ce),.dout(grp_fu_1926_p2));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1930_p0),.din1(grp_fu_1930_p1),.ce(grp_fu_1930_ce),.opcode(grp_fu_1930_opcode),.dout(grp_fu_1930_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_887_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_viterbi_Pipeline_L_end_fu_887_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_887_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_887_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_819_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_819_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_819_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_819_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_prev_state_fu_859_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_894_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state43)) begin
            grp_viterbi_Pipeline_L_state_fu_894_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_894_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_894_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        curr_reg_808 <= add_ln19_reg_1687;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        curr_reg_808 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_960_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_210 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        t_1_fu_210 <= add_ln50_fu_1545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_190 <= 8'd1;
    end else if (((icmp_ln19_fu_1079_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        t_fu_190 <= add_ln18_fu_1143_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln19_reg_1687 <= add_ln19_fu_1085_p2;
        add_ln24_reg_1748 <= add_ln24_fu_1138_p2;
        add_ln33_reg_1692 <= add_ln33_fu_1095_p2;
        lshr_ln_reg_1703 <= {{curr_reg_808[5:3]}};
        trunc_ln23_reg_1697 <= trunc_ln23_fu_1100_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_cast_reg_1679[4 : 0] <= conv32_udiv_cast_fu_1075_p1[4 : 0];
        empty_22_reg_1659 <= empty_22_fu_1003_p2;
        empty_23_reg_1674 <= empty_23_fu_1061_p1;
        llike_addr_17_reg_1669[13 : 6] <= tmp_138_cast_fu_1016_p1[13 : 6];
        tmp_91_reg_1664[13 : 6] <= tmp_91_fu_1008_p3[13 : 6];
        tmp_s_reg_1654[13 : 6] <= tmp_s_fu_993_p3[13 : 6];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_1590 <= {{obs_0_q0[7:3]}};
        empty_reg_1585 <= empty_fu_943_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        lshr_ln52_1_reg_1876 <= {{tmp_33_fu_1376_p19[7:3]}};
        tmp_92_reg_1856[13 : 6] <= tmp_92_fu_1361_p3[13 : 6];
        trunc_ln50_1_reg_1866 <= trunc_ln50_1_fu_1373_p1;
        trunc_ln52_reg_1870 <= trunc_ln52_fu_1416_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_prev_state_fu_859_min_p_38_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        min_p_38_loc_fu_202 <= grp_viterbi_Pipeline_L_prev_state_fu_859_min_p_38_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_887_min_s_2_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
        min_s_2_loc_fu_198 <= grp_viterbi_Pipeline_L_end_fu_887_min_s_2_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_894_min_s_6_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state44))) begin
        min_s_6_loc_fu_194 <= grp_viterbi_Pipeline_L_state_fu_894_min_s_6_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_925 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_931 <= grp_fu_921_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_16_reg_1753 <= tmp_16_fu_1185_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        tmp_17_reg_1798 <= tmp_17_fu_1267_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        tmp_34_reg_1921 <= tmp_34_fu_1474_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        trunc_ln50_reg_1810 <= trunc_ln50_fu_1329_p1;
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
    if ((grp_viterbi_Pipeline_L_prev_state_fu_859_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_end_fu_887_ap_done == 1'b0)) begin
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
    if ((grp_viterbi_Pipeline_L_state_fu_894_ap_done == 1'b0)) begin
        ap_ST_fsm_state44_blk = 1'b1;
    end else begin
        ap_ST_fsm_state44_blk = 1'b0;
    end
end
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_819_ap_done == 1'b0)) begin
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
    if (((tmp_fu_1321_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
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
    if (((tmp_fu_1321_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_819_emission_0_address0;
    end else begin
        emission_0_address0 = zext_ln24_fu_1224_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_819_emission_0_ce0;
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
        emission_0_ce1 = grp_viterbi_Pipeline_L_init_fu_819_emission_0_ce1;
    end else begin
        emission_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_819_emission_1_address0;
    end else begin
        emission_1_address0 = zext_ln24_fu_1224_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_819_emission_1_ce0;
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
        emission_1_ce1 = grp_viterbi_Pipeline_L_init_fu_819_emission_1_ce1;
    end else begin
        emission_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_819_emission_2_address0;
    end else begin
        emission_2_address0 = zext_ln24_fu_1224_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_819_emission_2_ce0;
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
        emission_2_ce1 = grp_viterbi_Pipeline_L_init_fu_819_emission_2_ce1;
    end else begin
        emission_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_819_emission_3_address0;
    end else begin
        emission_3_address0 = zext_ln24_fu_1224_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_819_emission_3_ce0;
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
        emission_3_ce1 = grp_viterbi_Pipeline_L_init_fu_819_emission_3_ce1;
    end else begin
        emission_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_address0 = grp_viterbi_Pipeline_L_init_fu_819_emission_4_address0;
    end else begin
        emission_4_address0 = zext_ln24_fu_1224_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_ce0 = grp_viterbi_Pipeline_L_init_fu_819_emission_4_ce0;
    end else begin
        emission_4_ce0 = emission_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_4_ce1 = grp_viterbi_Pipeline_L_init_fu_819_emission_4_ce1;
    end else begin
        emission_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_address0 = grp_viterbi_Pipeline_L_init_fu_819_emission_5_address0;
    end else begin
        emission_5_address0 = zext_ln24_fu_1224_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_ce0 = grp_viterbi_Pipeline_L_init_fu_819_emission_5_ce0;
    end else begin
        emission_5_ce0 = emission_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_5_ce1 = grp_viterbi_Pipeline_L_init_fu_819_emission_5_ce1;
    end else begin
        emission_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_address0 = grp_viterbi_Pipeline_L_init_fu_819_emission_6_address0;
    end else begin
        emission_6_address0 = zext_ln24_fu_1224_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_ce0 = grp_viterbi_Pipeline_L_init_fu_819_emission_6_ce0;
    end else begin
        emission_6_ce0 = emission_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_6_ce1 = grp_viterbi_Pipeline_L_init_fu_819_emission_6_ce1;
    end else begin
        emission_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_address0 = grp_viterbi_Pipeline_L_init_fu_819_emission_7_address0;
    end else begin
        emission_7_address0 = zext_ln24_fu_1224_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_ce0 = grp_viterbi_Pipeline_L_init_fu_819_emission_7_ce0;
    end else begin
        emission_7_ce0 = emission_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_7_ce1 = grp_viterbi_Pipeline_L_init_fu_819_emission_7_ce1;
    end else begin
        emission_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1926_ce = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1926_ce = grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_ce;
    end else begin
        grp_fu_1926_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1926_p0 = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1926_p0 = grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_din0;
    end else begin
        grp_fu_1926_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1926_p1 = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1926_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1926_p1 = grp_viterbi_Pipeline_L_init_fu_819_grp_fu_1926_p_din1;
    end else begin
        grp_fu_1926_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_1930_ce = grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1930_ce = grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1930_ce = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_ce;
    end else begin
        grp_fu_1930_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_1930_opcode = grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1930_opcode = grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1930_opcode = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_opcode;
    end else begin
        grp_fu_1930_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_1930_p0 = grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1930_p0 = grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1930_p0 = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_din0;
    end else begin
        grp_fu_1930_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_1930_p1 = grp_viterbi_Pipeline_L_state_fu_894_grp_fu_1930_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_1930_p1 = grp_viterbi_Pipeline_L_end_fu_887_grp_fu_1930_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_1930_p1 = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_1930_p_din1;
    end else begin
        grp_fu_1930_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_921_ce = grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_921_ce = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_921_ce = grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_ce;
    end else begin
        grp_fu_921_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_921_p0 = grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_921_p0 = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_921_p0 = grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_921_p0 = reg_931;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_921_p0 = reg_925;
    end else begin
        grp_fu_921_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_921_p1 = grp_viterbi_Pipeline_L_state_fu_894_grp_fu_921_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_921_p1 = grp_viterbi_Pipeline_L_prev_state_fu_859_grp_fu_921_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_921_p1 = grp_viterbi_Pipeline_L_init_fu_819_grp_fu_921_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_921_p1 = tmp_34_reg_1921;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_921_p1 = tmp_17_reg_1798;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_921_p1 = tmp_16_reg_1753;
    end else begin
        grp_fu_921_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_894_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_887_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_819_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        llike_address0_local = zext_ln52_2_fu_1368_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_address0_local = zext_ln33_1_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        llike_address0_local = llike_addr_17_reg_1669;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd8896;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_llike_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address1 = grp_viterbi_Pipeline_L_init_fu_819_llike_address1;
    end else begin
        llike_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_894_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_887_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_819_llike_ce0;
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
    if ((1'b1 == ap_CS_fsm_state26)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_llike_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_init_fu_819_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_819_llike_d0;
    end else begin
        llike_d0 = min_p_38_loc_fu_202;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_819_llike_we0;
    end else begin
        llike_we0 = llike_we0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we1 = grp_viterbi_Pipeline_L_init_fu_819_llike_we1;
    end else begin
        llike_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_976_p1;
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
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_0_address0_local = zext_ln6_1_fu_1522_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_0_address0_local = zext_ln52_fu_1349_p1;
    end else begin
        path_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state45))) begin
        path_0_ce0_local = 1'b1;
    end else begin
        path_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1866 == 3'd0) & (1'b1 == ap_CS_fsm_state45))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_1_address0_local = zext_ln6_1_fu_1522_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_1_address0_local = zext_ln52_fu_1349_p1;
    end else begin
        path_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state45))) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1866 == 3'd1) & (1'b1 == ap_CS_fsm_state45))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_2_address0_local = zext_ln6_1_fu_1522_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_2_address0_local = zext_ln52_fu_1349_p1;
    end else begin
        path_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state45))) begin
        path_2_ce0_local = 1'b1;
    end else begin
        path_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1866 == 3'd2) & (1'b1 == ap_CS_fsm_state45))) begin
        path_2_we0_local = 1'b1;
    end else begin
        path_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_3_address0_local = zext_ln6_1_fu_1522_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_3_address0_local = zext_ln52_fu_1349_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        path_3_address0_local = 64'd17;
    end else begin
        path_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state45))) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_3_d0_local = min_s_6_loc_fu_194;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        path_3_d0_local = min_s_2_loc_fu_198;
    end else begin
        path_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | ((trunc_ln50_1_reg_1866 == 3'd3) & (1'b1 == ap_CS_fsm_state45)))) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_4_address0_local = zext_ln6_1_fu_1522_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_4_address0_local = zext_ln52_fu_1349_p1;
    end else begin
        path_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state45))) begin
        path_4_ce0_local = 1'b1;
    end else begin
        path_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1866 == 3'd4) & (1'b1 == ap_CS_fsm_state45))) begin
        path_4_we0_local = 1'b1;
    end else begin
        path_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_5_address0_local = zext_ln6_1_fu_1522_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_5_address0_local = zext_ln52_fu_1349_p1;
    end else begin
        path_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state45))) begin
        path_5_ce0_local = 1'b1;
    end else begin
        path_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1866 == 3'd5) & (1'b1 == ap_CS_fsm_state45))) begin
        path_5_we0_local = 1'b1;
    end else begin
        path_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_6_address0_local = zext_ln6_1_fu_1522_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_6_address0_local = zext_ln52_fu_1349_p1;
    end else begin
        path_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state45))) begin
        path_6_ce0_local = 1'b1;
    end else begin
        path_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1866 == 3'd6) & (1'b1 == ap_CS_fsm_state45))) begin
        path_6_we0_local = 1'b1;
    end else begin
        path_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        path_7_address0_local = zext_ln6_1_fu_1522_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        path_7_address0_local = zext_ln52_fu_1349_p1;
    end else begin
        path_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state45))) begin
        path_7_ce0_local = 1'b1;
    end else begin
        path_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1866 == 3'd7) & (1'b1 == ap_CS_fsm_state45))) begin
        path_7_we0_local = 1'b1;
    end else begin
        path_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_894_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_address0;
    end else begin
        transition_0_address0 = transition_0_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_0_address0_local = zext_ln52_1_fu_1430_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_0_address0_local = zext_ln23_fu_1114_p1;
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_894_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_ce0;
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
    if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_894_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_address0;
    end else begin
        transition_1_address0 = transition_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_1_address0_local = zext_ln52_1_fu_1430_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_1_address0_local = zext_ln23_fu_1114_p1;
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_894_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_state_fu_894_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_address0;
    end else begin
        transition_2_address0 = transition_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_2_address0_local = zext_ln52_1_fu_1430_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_2_address0_local = zext_ln23_fu_1114_p1;
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_state_fu_894_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_ce0;
    end else begin
        transition_2_ce0 = transition_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_state_fu_894_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_address0;
    end else begin
        transition_3_address0 = transition_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_3_address0_local = zext_ln52_1_fu_1430_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_3_address0_local = zext_ln23_fu_1114_p1;
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_state_fu_894_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_ce0;
    end else begin
        transition_3_ce0 = transition_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_ce1;
    end else begin
        transition_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_4_address0 = grp_viterbi_Pipeline_L_state_fu_894_transition_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_4_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_address0;
    end else begin
        transition_4_address0 = transition_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_4_address0_local = zext_ln52_1_fu_1430_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_4_address0_local = zext_ln23_fu_1114_p1;
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_4_ce0 = grp_viterbi_Pipeline_L_state_fu_894_transition_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_4_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_ce0;
    end else begin
        transition_4_ce0 = transition_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_4_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_ce1;
    end else begin
        transition_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_5_address0 = grp_viterbi_Pipeline_L_state_fu_894_transition_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_5_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_address0;
    end else begin
        transition_5_address0 = transition_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_5_address0_local = zext_ln52_1_fu_1430_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_5_address0_local = zext_ln23_fu_1114_p1;
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_5_ce0 = grp_viterbi_Pipeline_L_state_fu_894_transition_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_5_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_ce0;
    end else begin
        transition_5_ce0 = transition_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_5_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_ce1;
    end else begin
        transition_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_6_address0 = grp_viterbi_Pipeline_L_state_fu_894_transition_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_6_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_address0;
    end else begin
        transition_6_address0 = transition_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_6_address0_local = zext_ln52_1_fu_1430_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_6_address0_local = zext_ln23_fu_1114_p1;
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_6_ce0 = grp_viterbi_Pipeline_L_state_fu_894_transition_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_6_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_ce0;
    end else begin
        transition_6_ce0 = transition_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_6_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_ce1;
    end else begin
        transition_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_7_address0 = grp_viterbi_Pipeline_L_state_fu_894_transition_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_7_address0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_address0;
    end else begin
        transition_7_address0 = transition_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        transition_7_address0_local = zext_ln52_1_fu_1430_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        transition_7_address0_local = zext_ln23_fu_1114_p1;
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        transition_7_ce0 = grp_viterbi_Pipeline_L_state_fu_894_transition_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_7_ce0 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_ce0;
    end else begin
        transition_7_ce0 = transition_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state7))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        transition_7_ce1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_ce1;
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
            if (((grp_viterbi_Pipeline_L_init_fu_819_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_960_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_1079_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
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
            if (((grp_viterbi_Pipeline_L_prev_state_fu_859_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((grp_viterbi_Pipeline_L_end_fu_887_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            if (((tmp_fu_1321_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state32))) begin
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
            if (((grp_viterbi_Pipeline_L_state_fu_894_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state44))) begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_1143_p2 = (t_fu_190 + 8'd1);
assign add_ln19_fu_1085_p2 = (curr_reg_808 + 7'd1);
assign add_ln24_fu_1138_p2 = (shl_ln_fu_1130_p3 + conv32_udiv_cast_reg_1679);
assign add_ln33_fu_1095_p2 = (tmp_s_reg_1654 + zext_ln33_fu_1091_p1);
assign add_ln50_fu_1545_p2 = ($signed(t_1_fu_210) + $signed(9'd511));
assign add_ln52_fu_1333_p2 = (trunc_ln50_fu_1329_p1 + 8'd1);
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
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign conv32_udiv_cast_fu_1075_p1 = conv32_udiv_fu_1065_p4;
assign conv32_udiv_fu_1065_p4 = {{tmp_15_fu_1021_p19[7:3]}};
assign emission_0_address1 = grp_viterbi_Pipeline_L_init_fu_819_emission_0_address1;
assign emission_1_address1 = grp_viterbi_Pipeline_L_init_fu_819_emission_1_address1;
assign emission_2_address1 = grp_viterbi_Pipeline_L_init_fu_819_emission_2_address1;
assign emission_3_address1 = grp_viterbi_Pipeline_L_init_fu_819_emission_3_address1;
assign emission_4_address1 = grp_viterbi_Pipeline_L_init_fu_819_emission_4_address1;
assign emission_5_address1 = grp_viterbi_Pipeline_L_init_fu_819_emission_5_address1;
assign emission_6_address1 = grp_viterbi_Pipeline_L_init_fu_819_emission_6_address1;
assign emission_7_address1 = grp_viterbi_Pipeline_L_init_fu_819_emission_7_address1;
assign empty_22_fu_1003_p2 = ($signed(t_fu_190) + $signed(8'd255));
assign empty_23_fu_1061_p1 = tmp_15_fu_1021_p19[2:0];
assign empty_fu_943_p1 = obs_0_q0[2:0];
assign grp_viterbi_Pipeline_L_end_fu_887_ap_start = grp_viterbi_Pipeline_L_end_fu_887_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_819_ap_start = grp_viterbi_Pipeline_L_init_fu_819_ap_start_reg;
assign grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start = grp_viterbi_Pipeline_L_prev_state_fu_859_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_894_ap_start = grp_viterbi_Pipeline_L_state_fu_894_ap_start_reg;
assign icmp_ln18_fu_960_p2 = ((t_fu_190 == 8'd140) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1079_p2 = ((curr_reg_808 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_819_init_0_address0;
assign init_0_address1 = grp_viterbi_Pipeline_L_init_fu_819_init_0_address1;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_819_init_0_ce0;
assign init_0_ce1 = grp_viterbi_Pipeline_L_init_fu_819_init_0_ce1;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_819_init_1_address0;
assign init_1_address1 = grp_viterbi_Pipeline_L_init_fu_819_init_1_address1;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_819_init_1_ce0;
assign init_1_ce1 = grp_viterbi_Pipeline_L_init_fu_819_init_1_ce1;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_819_init_2_address0;
assign init_2_address1 = grp_viterbi_Pipeline_L_init_fu_819_init_2_address1;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_819_init_2_ce0;
assign init_2_ce1 = grp_viterbi_Pipeline_L_init_fu_819_init_2_ce1;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_819_init_3_address0;
assign init_3_address1 = grp_viterbi_Pipeline_L_init_fu_819_init_3_address1;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_819_init_3_ce0;
assign init_3_ce1 = grp_viterbi_Pipeline_L_init_fu_819_init_3_ce1;
assign init_4_address0 = grp_viterbi_Pipeline_L_init_fu_819_init_4_address0;
assign init_4_address1 = grp_viterbi_Pipeline_L_init_fu_819_init_4_address1;
assign init_4_ce0 = grp_viterbi_Pipeline_L_init_fu_819_init_4_ce0;
assign init_4_ce1 = grp_viterbi_Pipeline_L_init_fu_819_init_4_ce1;
assign init_5_address0 = grp_viterbi_Pipeline_L_init_fu_819_init_5_address0;
assign init_5_address1 = grp_viterbi_Pipeline_L_init_fu_819_init_5_address1;
assign init_5_ce0 = grp_viterbi_Pipeline_L_init_fu_819_init_5_ce0;
assign init_5_ce1 = grp_viterbi_Pipeline_L_init_fu_819_init_5_ce1;
assign init_6_address0 = grp_viterbi_Pipeline_L_init_fu_819_init_6_address0;
assign init_6_address1 = grp_viterbi_Pipeline_L_init_fu_819_init_6_address1;
assign init_6_ce0 = grp_viterbi_Pipeline_L_init_fu_819_init_6_ce0;
assign init_6_ce1 = grp_viterbi_Pipeline_L_init_fu_819_init_6_ce1;
assign init_7_address0 = grp_viterbi_Pipeline_L_init_fu_819_init_7_address0;
assign init_7_address1 = grp_viterbi_Pipeline_L_init_fu_819_init_7_address1;
assign init_7_ce0 = grp_viterbi_Pipeline_L_init_fu_819_init_7_ce0;
assign init_7_ce1 = grp_viterbi_Pipeline_L_init_fu_819_init_7_ce1;
assign lshr_ln1_fu_1339_p4 = {{add_ln52_fu_1333_p2[7:3]}};
assign lshr_ln52_1_fu_1420_p4 = {{tmp_33_fu_1376_p19[7:3]}};
assign lshr_ln6_1_fu_1513_p4 = {{t_1_fu_210[7:3]}};
assign lshr_ln6_fu_966_p4 = {{t_fu_190[7:3]}};
assign lshr_ln_fu_1104_p4 = {{curr_reg_808[5:3]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_976_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_976_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_976_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign obs_4_address0 = zext_ln6_fu_976_p1;
assign obs_4_ce0 = obs_4_ce0_local;
assign obs_5_address0 = zext_ln6_fu_976_p1;
assign obs_5_ce0 = obs_5_ce0_local;
assign obs_6_address0 = zext_ln6_fu_976_p1;
assign obs_6_ce0 = obs_6_ce0_local;
assign obs_7_address0 = zext_ln6_fu_976_p1;
assign obs_7_ce0 = obs_7_ce0_local;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_6_loc_fu_194;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = min_s_6_loc_fu_194;
assign path_1_we0 = path_1_we0_local;
assign path_2_address0 = path_2_address0_local;
assign path_2_ce0 = path_2_ce0_local;
assign path_2_d0 = min_s_6_loc_fu_194;
assign path_2_we0 = path_2_we0_local;
assign path_3_address0 = path_3_address0_local;
assign path_3_ce0 = path_3_ce0_local;
assign path_3_d0 = path_3_d0_local;
assign path_3_we0 = path_3_we0_local;
assign path_4_address0 = path_4_address0_local;
assign path_4_ce0 = path_4_ce0_local;
assign path_4_d0 = min_s_6_loc_fu_194;
assign path_4_we0 = path_4_we0_local;
assign path_5_address0 = path_5_address0_local;
assign path_5_ce0 = path_5_ce0_local;
assign path_5_d0 = min_s_6_loc_fu_194;
assign path_5_we0 = path_5_we0_local;
assign path_6_address0 = path_6_address0_local;
assign path_6_ce0 = path_6_ce0_local;
assign path_6_d0 = min_s_6_loc_fu_194;
assign path_6_we0 = path_6_we0_local;
assign path_7_address0 = path_7_address0_local;
assign path_7_ce0 = path_7_ce0_local;
assign path_7_d0 = min_s_6_loc_fu_194;
assign path_7_we0 = path_7_we0_local;
assign shl_ln_fu_1130_p3 = {{trunc_ln24_fu_1126_p1}, {3'd0}};
assign tmp_138_cast_fu_1016_p1 = tmp_91_fu_1008_p3;
assign tmp_15_fu_1021_p17 = 'bx;
assign tmp_15_fu_1021_p18 = t_fu_190[2:0];
assign tmp_16_fu_1185_p10 = transition_4_q0;
assign tmp_16_fu_1185_p12 = transition_5_q0;
assign tmp_16_fu_1185_p14 = transition_6_q0;
assign tmp_16_fu_1185_p16 = transition_7_q0;
assign tmp_16_fu_1185_p17 = 'bx;
assign tmp_16_fu_1185_p2 = transition_0_q0;
assign tmp_16_fu_1185_p4 = transition_1_q0;
assign tmp_16_fu_1185_p6 = transition_2_q0;
assign tmp_16_fu_1185_p8 = transition_3_q0;
assign tmp_17_fu_1267_p10 = emission_4_q0;
assign tmp_17_fu_1267_p12 = emission_5_q0;
assign tmp_17_fu_1267_p14 = emission_6_q0;
assign tmp_17_fu_1267_p16 = emission_7_q0;
assign tmp_17_fu_1267_p17 = 'bx;
assign tmp_17_fu_1267_p2 = emission_0_q0;
assign tmp_17_fu_1267_p4 = emission_1_q0;
assign tmp_17_fu_1267_p6 = emission_2_q0;
assign tmp_17_fu_1267_p8 = emission_3_q0;
assign tmp_33_fu_1376_p17 = 'bx;
assign tmp_33_fu_1376_p18 = t_1_fu_210[2:0];
assign tmp_34_fu_1474_p10 = transition_4_q0;
assign tmp_34_fu_1474_p12 = transition_5_q0;
assign tmp_34_fu_1474_p14 = transition_6_q0;
assign tmp_34_fu_1474_p16 = transition_7_q0;
assign tmp_34_fu_1474_p17 = 'bx;
assign tmp_34_fu_1474_p2 = transition_0_q0;
assign tmp_34_fu_1474_p4 = transition_1_q0;
assign tmp_34_fu_1474_p6 = transition_2_q0;
assign tmp_34_fu_1474_p8 = transition_3_q0;
assign tmp_91_fu_1008_p3 = {{empty_22_fu_1003_p2}, {6'd0}};
assign tmp_92_fu_1361_p3 = {{trunc_ln50_reg_1810}, {6'd0}};
assign tmp_fu_1321_p3 = t_1_fu_210[32'd8];
assign tmp_s_fu_993_p3 = {{t_fu_190}, {6'd0}};
assign transition_0_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_0_address1;
assign transition_1_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_1_address1;
assign transition_2_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_2_address1;
assign transition_3_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_3_address1;
assign transition_4_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_4_address1;
assign transition_5_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_5_address1;
assign transition_6_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_6_address1;
assign transition_7_address1 = grp_viterbi_Pipeline_L_prev_state_fu_859_transition_7_address1;
assign trunc_ln23_fu_1100_p1 = curr_reg_808[2:0];
assign trunc_ln24_fu_1126_p1 = curr_reg_808[5:0];
assign trunc_ln50_1_fu_1373_p1 = t_1_fu_210[2:0];
assign trunc_ln50_fu_1329_p1 = t_1_fu_210[7:0];
assign trunc_ln52_fu_1416_p1 = tmp_33_fu_1376_p19[2:0];
assign zext_ln23_fu_1114_p1 = lshr_ln_fu_1104_p4;
assign zext_ln24_fu_1224_p1 = add_ln24_reg_1748;
assign zext_ln33_1_fu_1306_p1 = add_ln33_reg_1692;
assign zext_ln33_fu_1091_p1 = curr_reg_808;
assign zext_ln52_1_fu_1430_p1 = lshr_ln52_1_fu_1420_p4;
assign zext_ln52_2_fu_1368_p1 = tmp_92_fu_1361_p3;
assign zext_ln52_fu_1349_p1 = lshr_ln1_fu_1339_p4;
assign zext_ln6_1_fu_1522_p1 = lshr_ln6_1_fu_1513_p4;
assign zext_ln6_fu_976_p1 = lshr_ln6_fu_966_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_1654[5:0] <= 6'b000000;
    tmp_91_reg_1664[5:0] <= 6'b000000;
    llike_addr_17_reg_1669[5:0] <= 6'b000000;
    conv32_udiv_cast_reg_1679[8:5] <= 4'b0000;
    tmp_92_reg_1856[5:0] <= 6'b000000;
end
endmodule 