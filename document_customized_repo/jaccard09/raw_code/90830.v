module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [9:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [9:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [9:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [5:0] p_address0;
output   p_ce0;
input  [31:0] p_q0;
output  [5:0] r_address0;
output   r_ce0;
input  [31:0] r_q0;
output  [31:0] s_out_din;
input   s_out_full_n;
output   s_out_write;
output  [31:0] q_out_din;
input   q_out_full_n;
output   q_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_out_write;
reg q_out_write;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln13_fu_1091_p2;
reg   [6:0] add_ln13_reg_1172;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1103_p1;
reg   [5:0] trunc_ln13_reg_1227;
wire    ap_CS_fsm_state3;
reg   [31:0] buff_p_load_reg_1235;
wire    ap_CS_fsm_state5;
reg   [31:0] buff_p_1_load_reg_1240;
reg   [31:0] buff_p_2_load_reg_1245;
reg   [31:0] buff_p_3_load_reg_1250;
reg   [31:0] buff_p_load_1_reg_1255;
reg   [31:0] buff_p_1_load_1_reg_1260;
reg   [31:0] buff_p_2_load_1_reg_1265;
reg   [31:0] buff_p_3_load_1_reg_1270;
reg   [31:0] buff_p_load_2_reg_1315;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_p_1_load_2_reg_1320;
reg   [31:0] buff_p_2_load_2_reg_1325;
reg   [31:0] buff_p_3_load_2_reg_1330;
reg   [31:0] buff_p_load_3_reg_1335;
reg   [31:0] buff_p_1_load_3_reg_1340;
reg   [31:0] buff_p_2_load_3_reg_1345;
reg   [31:0] buff_p_3_load_3_reg_1350;
reg   [31:0] buff_p_load_4_reg_1395;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_p_1_load_4_reg_1400;
reg   [31:0] buff_p_2_load_4_reg_1405;
reg   [31:0] buff_p_3_load_4_reg_1410;
reg   [31:0] buff_p_load_5_reg_1415;
reg   [31:0] buff_p_1_load_5_reg_1420;
reg   [31:0] buff_p_2_load_5_reg_1425;
reg   [31:0] buff_p_3_load_5_reg_1430;
reg   [31:0] buff_p_load_6_reg_1475;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_p_1_load_6_reg_1480;
reg   [31:0] buff_p_2_load_6_reg_1485;
reg   [31:0] buff_p_3_load_6_reg_1490;
reg   [31:0] buff_p_load_7_reg_1495;
reg   [31:0] buff_p_1_load_7_reg_1500;
reg   [31:0] buff_p_2_load_7_reg_1505;
reg   [31:0] buff_p_3_load_7_reg_1510;
reg   [31:0] buff_p_load_8_reg_1555;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_p_1_load_8_reg_1560;
reg   [31:0] buff_p_2_load_8_reg_1565;
reg   [31:0] buff_p_3_load_8_reg_1570;
reg   [31:0] buff_p_load_9_reg_1575;
reg   [31:0] buff_p_1_load_9_reg_1580;
reg   [31:0] buff_p_2_load_9_reg_1585;
reg   [31:0] buff_p_3_load_9_reg_1590;
reg   [31:0] buff_p_load_10_reg_1635;
wire    ap_CS_fsm_state10;
reg   [31:0] buff_p_1_load_10_reg_1640;
reg   [31:0] buff_p_2_load_10_reg_1645;
reg   [31:0] buff_p_3_load_10_reg_1650;
reg   [31:0] buff_p_load_11_reg_1655;
reg   [31:0] buff_p_1_load_11_reg_1660;
reg   [31:0] buff_p_2_load_11_reg_1665;
reg   [31:0] buff_p_3_load_11_reg_1670;
reg   [31:0] buff_p_load_12_reg_1715;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_p_1_load_12_reg_1720;
reg   [31:0] buff_p_2_load_12_reg_1725;
reg   [31:0] buff_p_3_load_12_reg_1730;
reg   [31:0] buff_p_load_13_reg_1735;
reg   [31:0] buff_p_1_load_13_reg_1740;
reg   [31:0] buff_p_2_load_13_reg_1745;
reg   [31:0] buff_p_3_load_13_reg_1750;
reg   [31:0] buff_p_load_14_reg_1795;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_p_1_load_14_reg_1800;
reg   [31:0] buff_p_2_load_14_reg_1805;
reg   [31:0] buff_p_3_load_14_reg_1810;
reg   [31:0] buff_p_load_15_reg_1815;
reg   [31:0] buff_p_1_load_15_reg_1820;
reg   [31:0] buff_p_2_load_15_reg_1825;
reg   [31:0] buff_p_3_load_15_reg_1830;
reg   [9:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg    buff_A_ce2;
wire   [31:0] buff_A_q2;
reg    buff_A_ce3;
wire   [31:0] buff_A_q3;
reg    buff_A_ce4;
wire   [31:0] buff_A_q4;
reg    buff_A_ce5;
wire   [31:0] buff_A_q5;
reg    buff_A_ce6;
wire   [31:0] buff_A_q6;
reg    buff_A_ce7;
wire   [31:0] buff_A_q7;
reg    buff_A_ce8;
wire   [31:0] buff_A_q8;
reg    buff_A_ce9;
wire   [31:0] buff_A_q9;
reg    buff_A_ce10;
wire   [31:0] buff_A_q10;
reg    buff_A_ce11;
wire   [31:0] buff_A_q11;
reg    buff_A_ce12;
wire   [31:0] buff_A_q12;
reg    buff_A_ce13;
wire   [31:0] buff_A_q13;
reg    buff_A_ce14;
wire   [31:0] buff_A_q14;
reg    buff_A_ce15;
wire   [31:0] buff_A_q15;
reg   [9:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg    buff_A_1_ce2;
wire   [31:0] buff_A_1_q2;
reg    buff_A_1_ce3;
wire   [31:0] buff_A_1_q3;
reg    buff_A_1_ce4;
wire   [31:0] buff_A_1_q4;
reg    buff_A_1_ce5;
wire   [31:0] buff_A_1_q5;
reg    buff_A_1_ce6;
wire   [31:0] buff_A_1_q6;
reg    buff_A_1_ce7;
wire   [31:0] buff_A_1_q7;
reg    buff_A_1_ce8;
wire   [31:0] buff_A_1_q8;
reg    buff_A_1_ce9;
wire   [31:0] buff_A_1_q9;
reg    buff_A_1_ce10;
wire   [31:0] buff_A_1_q10;
reg    buff_A_1_ce11;
wire   [31:0] buff_A_1_q11;
reg    buff_A_1_ce12;
wire   [31:0] buff_A_1_q12;
reg    buff_A_1_ce13;
wire   [31:0] buff_A_1_q13;
reg    buff_A_1_ce14;
wire   [31:0] buff_A_1_q14;
reg    buff_A_1_ce15;
wire   [31:0] buff_A_1_q15;
reg   [9:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg    buff_A_2_ce2;
wire   [31:0] buff_A_2_q2;
reg    buff_A_2_ce3;
wire   [31:0] buff_A_2_q3;
reg    buff_A_2_ce4;
wire   [31:0] buff_A_2_q4;
reg    buff_A_2_ce5;
wire   [31:0] buff_A_2_q5;
reg    buff_A_2_ce6;
wire   [31:0] buff_A_2_q6;
reg    buff_A_2_ce7;
wire   [31:0] buff_A_2_q7;
reg    buff_A_2_ce8;
wire   [31:0] buff_A_2_q8;
reg    buff_A_2_ce9;
wire   [31:0] buff_A_2_q9;
reg    buff_A_2_ce10;
wire   [31:0] buff_A_2_q10;
reg    buff_A_2_ce11;
wire   [31:0] buff_A_2_q11;
reg    buff_A_2_ce12;
wire   [31:0] buff_A_2_q12;
reg    buff_A_2_ce13;
wire   [31:0] buff_A_2_q13;
reg    buff_A_2_ce14;
wire   [31:0] buff_A_2_q14;
reg    buff_A_2_ce15;
wire   [31:0] buff_A_2_q15;
reg   [9:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg    buff_A_3_ce2;
wire   [31:0] buff_A_3_q2;
reg    buff_A_3_ce3;
wire   [31:0] buff_A_3_q3;
reg    buff_A_3_ce4;
wire   [31:0] buff_A_3_q4;
reg    buff_A_3_ce5;
wire   [31:0] buff_A_3_q5;
reg    buff_A_3_ce6;
wire   [31:0] buff_A_3_q6;
reg    buff_A_3_ce7;
wire   [31:0] buff_A_3_q7;
reg    buff_A_3_ce8;
wire   [31:0] buff_A_3_q8;
reg    buff_A_3_ce9;
wire   [31:0] buff_A_3_q9;
reg    buff_A_3_ce10;
wire   [31:0] buff_A_3_q10;
reg    buff_A_3_ce11;
wire   [31:0] buff_A_3_q11;
reg    buff_A_3_ce12;
wire   [31:0] buff_A_3_q12;
reg    buff_A_3_ce13;
wire   [31:0] buff_A_3_q13;
reg    buff_A_3_ce14;
wire   [31:0] buff_A_3_q14;
reg    buff_A_3_ce15;
wire   [31:0] buff_A_3_q15;
wire   [31:0] buff_p_q0;
wire   [31:0] buff_p_q1;
wire   [31:0] buff_p_1_q0;
wire   [31:0] buff_p_1_q1;
wire   [31:0] buff_p_2_q0;
wire   [31:0] buff_p_2_q1;
wire   [31:0] buff_p_3_q0;
wire   [31:0] buff_p_3_q1;
reg   [3:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg   [3:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg   [3:0] buff_r_2_address0;
reg    buff_r_2_ce0;
wire   [31:0] buff_r_2_q0;
reg   [3:0] buff_r_3_address0;
reg    buff_r_3_ce0;
wire   [31:0] buff_r_3_q0;
reg   [3:0] buff_s_out_address0;
reg    buff_s_out_ce0;
reg    buff_s_out_we0;
reg   [31:0] buff_s_out_d0;
wire   [31:0] buff_s_out_q0;
reg    buff_s_out_ce1;
wire   [31:0] buff_s_out_q1;
reg   [3:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
reg    buff_s_out_1_we0;
reg   [31:0] buff_s_out_1_d0;
wire   [31:0] buff_s_out_1_q0;
reg    buff_s_out_1_ce1;
wire   [31:0] buff_s_out_1_q1;
reg   [3:0] buff_s_out_2_address0;
reg    buff_s_out_2_ce0;
reg    buff_s_out_2_we0;
reg   [31:0] buff_s_out_2_d0;
wire   [31:0] buff_s_out_2_q0;
reg    buff_s_out_2_ce1;
wire   [31:0] buff_s_out_2_q1;
reg   [3:0] buff_s_out_3_address0;
reg    buff_s_out_3_ce0;
reg    buff_s_out_3_we0;
reg   [31:0] buff_s_out_3_d0;
wire   [31:0] buff_s_out_3_q0;
reg    buff_s_out_3_ce1;
wire   [31:0] buff_s_out_3_q1;
reg   [3:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg    buff_q_out_ce1;
wire   [31:0] buff_q_out_q1;
reg   [3:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg    buff_q_out_1_ce1;
wire   [31:0] buff_q_out_1_q1;
reg   [3:0] buff_q_out_2_address0;
reg    buff_q_out_2_ce0;
reg    buff_q_out_2_we0;
reg   [31:0] buff_q_out_2_d0;
wire   [31:0] buff_q_out_2_q0;
reg    buff_q_out_2_ce1;
wire   [31:0] buff_q_out_2_q1;
reg   [3:0] buff_q_out_3_address0;
reg    buff_q_out_3_ce0;
reg    buff_q_out_3_we0;
reg   [31:0] buff_q_out_3_d0;
wire   [31:0] buff_q_out_3_q0;
reg    buff_q_out_3_ce1;
wire   [31:0] buff_q_out_3_q1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_ap_idle;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_ap_ready;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_d0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_ce1;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_d0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_ce1;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_d0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_ce1;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_d0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_ce1;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_ce;
wire    grp_bicg_Pipeline_lprd_2_fu_960_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_960_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_960_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_960_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_960_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_A_0_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_960_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_960_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_960_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_960_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_960_buff_A_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_d0;
wire    grp_bicg_Pipeline_lp3_fu_977_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_977_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_977_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_977_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address2;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address3;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address4;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address5;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address6;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address7;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address8;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address9;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address10;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address11;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address12;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address13;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address14;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_address15;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address8;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address9;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address10;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address11;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address12;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address13;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address14;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address15;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address3;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address4;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address5;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address6;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address7;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address8;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address9;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address10;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address11;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address12;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address13;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address14;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address15;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce15;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce2;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address3;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce3;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address4;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce4;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address5;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce5;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address6;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce6;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address7;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce7;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address8;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce8;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address9;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce9;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address10;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce10;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address11;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce11;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address12;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce12;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address13;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce13;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address14;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce14;
wire   [9:0] grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address15;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce15;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_fu_977_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_977_buff_q_out_ce1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1061_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1061_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1061_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1061_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1061_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1061_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1061_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1061_q_out_write;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_3_ce0;
reg    grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start_reg;
wire   [0:0] icmp_ln13_fu_1085_p2;
reg    grp_bicg_Pipeline_lprd_2_fu_960_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp3_fu_977_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_bicg_Pipeline_lpwr_fu_1061_ap_start_reg;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire   [63:0] zext_ln13_fu_1097_p1;
wire   [63:0] zext_ln5_fu_1119_p1;
reg   [6:0] i_fu_106;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_p_ce1_local;
reg   [3:0] buff_p_address1_local;
reg    buff_p_ce0_local;
reg   [3:0] buff_p_address0_local;
reg    buff_p_we0_local;
wire   [1:0] trunc_ln13_1_fu_1107_p1;
wire   [31:0] bitcast_ln14_fu_1139_p1;
reg    buff_p_1_ce1_local;
reg   [3:0] buff_p_1_address1_local;
reg    buff_p_1_ce0_local;
reg   [3:0] buff_p_1_address0_local;
reg    buff_p_1_we0_local;
reg    buff_p_2_ce1_local;
reg   [3:0] buff_p_2_address1_local;
reg    buff_p_2_ce0_local;
reg   [3:0] buff_p_2_address0_local;
reg    buff_p_2_we0_local;
reg    buff_p_3_ce1_local;
reg   [3:0] buff_p_3_address1_local;
reg    buff_p_3_ce0_local;
reg   [3:0] buff_p_3_address0_local;
reg    buff_p_3_we0_local;
reg    buff_r_2_we0_local;
wire   [31:0] bitcast_ln15_fu_1147_p1;
reg    buff_r_2_ce0_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_q_out_2_we0_local;
reg    buff_q_out_2_ce0_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
reg    buff_r_we0_local;
reg    buff_r_ce0_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_r_3_we0_local;
reg    buff_r_3_ce0_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_3_ce0_local;
wire   [3:0] lshr_ln5_fu_1110_p4;
wire   [31:0] grp_fu_1835_p2;
reg   [31:0] grp_fu_1835_p0;
reg   [31:0] grp_fu_1835_p1;
reg    grp_fu_1835_ce;
wire   [31:0] grp_fu_1839_p2;
reg   [31:0] grp_fu_1839_p0;
reg   [31:0] grp_fu_1839_p1;
reg    grp_fu_1839_ce;
wire   [31:0] grp_fu_1843_p2;
reg   [31:0] grp_fu_1843_p0;
reg   [31:0] grp_fu_1843_p1;
reg    grp_fu_1843_ce;
wire   [31:0] grp_fu_1847_p2;
reg   [31:0] grp_fu_1847_p0;
reg   [31:0] grp_fu_1847_p1;
reg    grp_fu_1847_ce;
wire   [31:0] grp_fu_1851_p2;
reg   [31:0] grp_fu_1851_p0;
reg   [31:0] grp_fu_1851_p1;
reg    grp_fu_1851_ce;
wire   [31:0] grp_fu_1855_p2;
reg   [31:0] grp_fu_1855_p0;
reg   [31:0] grp_fu_1855_p1;
reg    grp_fu_1855_ce;
wire   [31:0] grp_fu_1859_p2;
reg   [31:0] grp_fu_1859_p0;
reg   [31:0] grp_fu_1859_p1;
reg    grp_fu_1859_ce;
wire   [31:0] grp_fu_1863_p2;
reg   [31:0] grp_fu_1863_p0;
reg   [31:0] grp_fu_1863_p1;
reg    grp_fu_1863_ce;
reg   [14:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lprd_2_fu_960_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_977_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1061_ap_start_reg = 1'b0;
#0 i_fu_106 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_d0),.q0(buff_A_q0),.address1(grp_bicg_Pipeline_lp3_fu_977_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_bicg_Pipeline_lp3_fu_977_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_bicg_Pipeline_lp3_fu_977_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_bicg_Pipeline_lp3_fu_977_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_bicg_Pipeline_lp3_fu_977_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_bicg_Pipeline_lp3_fu_977_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_bicg_Pipeline_lp3_fu_977_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_bicg_Pipeline_lp3_fu_977_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_bicg_Pipeline_lp3_fu_977_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_bicg_Pipeline_lp3_fu_977_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_bicg_Pipeline_lp3_fu_977_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_bicg_Pipeline_lp3_fu_977_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_bicg_Pipeline_lp3_fu_977_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_bicg_Pipeline_lp3_fu_977_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_bicg_Pipeline_lp3_fu_977_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0_local),.ce0(buff_p_ce0_local),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1139_p1),.q0(buff_p_q0),.address1(buff_p_address1_local),.ce1(buff_p_ce1_local),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0_local),.ce0(buff_p_1_ce0_local),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1139_p1),.q0(buff_p_1_q0),.address1(buff_p_1_address1_local),.ce1(buff_p_1_ce1_local),.q1(buff_p_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0_local),.ce0(buff_p_2_ce0_local),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_1139_p1),.q0(buff_p_2_q0),.address1(buff_p_2_address1_local),.ce1(buff_p_2_ce1_local),.q1(buff_p_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0_local),.ce0(buff_p_3_ce0_local),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_1139_p1),.q0(buff_p_3_q0),.address1(buff_p_3_address1_local),.ce1(buff_p_3_ce1_local),.q1(buff_p_3_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1147_p1),.q0(buff_r_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1147_p1),.q0(buff_r_1_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_1147_p1),.q0(buff_r_2_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_1147_p1),.q0(buff_r_3_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0),.d0(buff_s_out_d0),.q0(buff_s_out_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_address1),.ce1(buff_s_out_ce1),.q1(buff_s_out_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0),.d0(buff_s_out_1_d0),.q0(buff_s_out_1_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_address1),.ce1(buff_s_out_1_ce1),.q1(buff_s_out_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0),.d0(buff_s_out_2_d0),.q0(buff_s_out_2_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_address1),.ce1(buff_s_out_2_ce1),.q1(buff_s_out_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0),.d0(buff_s_out_3_d0),.q0(buff_s_out_3_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_address1),.ce1(buff_s_out_3_ce1),.q1(buff_s_out_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_address1),.ce1(buff_q_out_ce1),.q1(buff_q_out_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_address1),.ce1(buff_q_out_1_ce1),.q1(buff_q_out_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0),.address1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_address1),.ce1(buff_q_out_2_ce1),.q1(buff_q_out_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0),.address1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_address1),.ce1(buff_q_out_3_ce1),.q1(buff_q_out_3_q1));
bicg_bicg_Pipeline_lp1_lp2 grp_bicg_Pipeline_lp1_lp2_fu_944(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start),.ap_done(grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_lp2_fu_944_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_lp2_fu_944_ap_ready),.buff_r_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_A_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_s_out_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_ce0),.buff_s_out_we0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_we0),.buff_s_out_d0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_d0),.buff_s_out_address1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_address1),.buff_s_out_ce1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_ce1),.buff_s_out_q1(buff_s_out_q1),.buff_s_out_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_ce0),.buff_s_out_1_we0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_we0),.buff_s_out_1_d0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_d0),.buff_s_out_1_address1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_address1),.buff_s_out_1_ce1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_ce1),.buff_s_out_1_q1(buff_s_out_1_q1),.buff_s_out_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_ce0),.buff_s_out_2_we0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_we0),.buff_s_out_2_d0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_d0),.buff_s_out_2_address1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_address1),.buff_s_out_2_ce1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_ce1),.buff_s_out_2_q1(buff_s_out_2_q1),.buff_s_out_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_ce0),.buff_s_out_3_we0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_we0),.buff_s_out_3_d0(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_d0),.buff_s_out_3_address1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_address1),.buff_s_out_3_ce1(grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_ce1),.buff_s_out_3_q1(buff_s_out_3_q1),.grp_fu_1835_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_din0),.grp_fu_1835_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_din1),.grp_fu_1835_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_opcode),.grp_fu_1835_p_dout0(grp_fu_1835_p2),.grp_fu_1835_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_ce),.grp_fu_1839_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_din0),.grp_fu_1839_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_din1),.grp_fu_1839_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_opcode),.grp_fu_1839_p_dout0(grp_fu_1839_p2),.grp_fu_1839_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_ce),.grp_fu_1843_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_din0),.grp_fu_1843_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_din1),.grp_fu_1843_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_opcode),.grp_fu_1843_p_dout0(grp_fu_1843_p2),.grp_fu_1843_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_ce),.grp_fu_1847_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_din0),.grp_fu_1847_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_din1),.grp_fu_1847_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_opcode),.grp_fu_1847_p_dout0(grp_fu_1847_p2),.grp_fu_1847_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_ce),.grp_fu_1851_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_din0),.grp_fu_1851_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_din1),.grp_fu_1851_p_dout0(grp_fu_1851_p2),.grp_fu_1851_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_ce),.grp_fu_1855_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_din0),.grp_fu_1855_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_din1),.grp_fu_1855_p_dout0(grp_fu_1855_p2),.grp_fu_1855_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_ce),.grp_fu_1859_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_din0),.grp_fu_1859_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_din1),.grp_fu_1859_p_dout0(grp_fu_1859_p2),.grp_fu_1859_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_ce),.grp_fu_1863_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_din0),.grp_fu_1863_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_din1),.grp_fu_1863_p_dout0(grp_fu_1863_p2),.grp_fu_1863_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_ce));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_960(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_960_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_960_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_960_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_960_ap_ready),.i(trunc_ln13_reg_1227),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_960_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_960_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_960_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_960_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_960_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_960_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_960_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_960_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_d0));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_977(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_977_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_977_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_977_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_977_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_977_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_fu_977_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp3_fu_977_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp3_fu_977_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp3_fu_977_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp3_fu_977_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp3_fu_977_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp3_fu_977_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_bicg_Pipeline_lp3_fu_977_buff_A_address8),.buff_A_ce8(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_bicg_Pipeline_lp3_fu_977_buff_A_address9),.buff_A_ce9(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_bicg_Pipeline_lp3_fu_977_buff_A_address10),.buff_A_ce10(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_bicg_Pipeline_lp3_fu_977_buff_A_address11),.buff_A_ce11(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_bicg_Pipeline_lp3_fu_977_buff_A_address12),.buff_A_ce12(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_bicg_Pipeline_lp3_fu_977_buff_A_address13),.buff_A_ce13(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_bicg_Pipeline_lp3_fu_977_buff_A_address14),.buff_A_ce14(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_bicg_Pipeline_lp3_fu_977_buff_A_address15),.buff_A_ce15(grp_bicg_Pipeline_lp3_fu_977_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address8),.buff_A_1_ce8(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address9),.buff_A_1_ce9(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address10),.buff_A_1_ce10(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address11),.buff_A_1_ce11(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address12),.buff_A_1_ce12(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address13),.buff_A_1_ce13(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address14),.buff_A_1_ce14(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address15),.buff_A_1_ce15(grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address3),.buff_A_2_ce3(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address4),.buff_A_2_ce4(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address5),.buff_A_2_ce5(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address6),.buff_A_2_ce6(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address7),.buff_A_2_ce7(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address8),.buff_A_2_ce8(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address9),.buff_A_2_ce9(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address10),.buff_A_2_ce10(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address11),.buff_A_2_ce11(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address12),.buff_A_2_ce12(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address13),.buff_A_2_ce13(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address14),.buff_A_2_ce14(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address15),.buff_A_2_ce15(grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address3),.buff_A_3_ce3(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address4),.buff_A_3_ce4(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address5),.buff_A_3_ce5(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address6),.buff_A_3_ce6(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address7),.buff_A_3_ce7(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address8),.buff_A_3_ce8(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address9),.buff_A_3_ce9(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address10),.buff_A_3_ce10(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address11),.buff_A_3_ce11(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address12),.buff_A_3_ce12(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address13),.buff_A_3_ce13(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address14),.buff_A_3_ce14(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address15),.buff_A_3_ce15(grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_d0),.buff_q_out_3_address1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_address1),.buff_q_out_3_ce1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_ce1),.buff_q_out_3_q1(buff_q_out_3_q1),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_d0),.buff_q_out_2_address1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_address1),.buff_q_out_2_ce1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_ce1),.buff_q_out_2_q1(buff_q_out_2_q1),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_d0),.buff_q_out_1_address1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_address1),.buff_q_out_1_ce1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_ce1),.buff_q_out_1_q1(buff_q_out_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_d0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_977_buff_q_out_ce1),.buff_q_out_q1(buff_q_out_q1),.buff_p_load(buff_p_load_reg_1235),.buff_p_1_load(buff_p_1_load_reg_1240),.buff_p_2_load(buff_p_2_load_reg_1245),.buff_p_3_load(buff_p_3_load_reg_1250),.buff_p_load_1(buff_p_load_1_reg_1255),.buff_p_1_load_1(buff_p_1_load_1_reg_1260),.buff_p_2_load_1(buff_p_2_load_1_reg_1265),.buff_p_3_load_1(buff_p_3_load_1_reg_1270),.buff_p_load_2(buff_p_load_2_reg_1315),.buff_p_1_load_2(buff_p_1_load_2_reg_1320),.buff_p_2_load_2(buff_p_2_load_2_reg_1325),.buff_p_3_load_2(buff_p_3_load_2_reg_1330),.buff_p_load_3(buff_p_load_3_reg_1335),.buff_p_1_load_3(buff_p_1_load_3_reg_1340),.buff_p_2_load_3(buff_p_2_load_3_reg_1345),.buff_p_3_load_3(buff_p_3_load_3_reg_1350),.buff_p_load_4(buff_p_load_4_reg_1395),.buff_p_1_load_4(buff_p_1_load_4_reg_1400),.buff_p_2_load_4(buff_p_2_load_4_reg_1405),.buff_p_3_load_4(buff_p_3_load_4_reg_1410),.buff_p_load_5(buff_p_load_5_reg_1415),.buff_p_1_load_5(buff_p_1_load_5_reg_1420),.buff_p_2_load_5(buff_p_2_load_5_reg_1425),.buff_p_3_load_5(buff_p_3_load_5_reg_1430),.buff_p_load_6(buff_p_load_6_reg_1475),.buff_p_1_load_6(buff_p_1_load_6_reg_1480),.buff_p_2_load_6(buff_p_2_load_6_reg_1485),.buff_p_3_load_6(buff_p_3_load_6_reg_1490),.buff_p_load_7(buff_p_load_7_reg_1495),.buff_p_1_load_7(buff_p_1_load_7_reg_1500),.buff_p_2_load_7(buff_p_2_load_7_reg_1505),.buff_p_3_load_7(buff_p_3_load_7_reg_1510),.buff_p_load_8(buff_p_load_8_reg_1555),.buff_p_1_load_8(buff_p_1_load_8_reg_1560),.buff_p_2_load_8(buff_p_2_load_8_reg_1565),.buff_p_3_load_8(buff_p_3_load_8_reg_1570),.buff_p_load_9(buff_p_load_9_reg_1575),.buff_p_1_load_9(buff_p_1_load_9_reg_1580),.buff_p_2_load_9(buff_p_2_load_9_reg_1585),.buff_p_3_load_9(buff_p_3_load_9_reg_1590),.buff_p_load_10(buff_p_load_10_reg_1635),.buff_p_1_load_10(buff_p_1_load_10_reg_1640),.buff_p_2_load_10(buff_p_2_load_10_reg_1645),.buff_p_3_load_10(buff_p_3_load_10_reg_1650),.buff_p_load_11(buff_p_load_11_reg_1655),.buff_p_1_load_11(buff_p_1_load_11_reg_1660),.buff_p_2_load_11(buff_p_2_load_11_reg_1665),.buff_p_3_load_11(buff_p_3_load_11_reg_1670),.buff_p_load_12(buff_p_load_12_reg_1715),.buff_p_1_load_12(buff_p_1_load_12_reg_1720),.buff_p_2_load_12(buff_p_2_load_12_reg_1725),.buff_p_3_load_12(buff_p_3_load_12_reg_1730),.buff_p_load_13(buff_p_load_13_reg_1735),.buff_p_1_load_13(buff_p_1_load_13_reg_1740),.buff_p_2_load_13(buff_p_2_load_13_reg_1745),.buff_p_3_load_13(buff_p_3_load_13_reg_1750),.buff_p_load_14(buff_p_load_14_reg_1795),.buff_p_1_load_14(buff_p_1_load_14_reg_1800),.buff_p_2_load_14(buff_p_2_load_14_reg_1805),.buff_p_3_load_14(buff_p_3_load_14_reg_1810),.buff_p_load_15(buff_p_load_15_reg_1815),.buff_p_1_load_15(buff_p_1_load_15_reg_1820),.buff_p_2_load_15(buff_p_2_load_15_reg_1825),.buff_p_3_load_15(buff_p_3_load_15_reg_1830),.grp_fu_1835_p_din0(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_din0),.grp_fu_1835_p_din1(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_din1),.grp_fu_1835_p_opcode(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_opcode),.grp_fu_1835_p_dout0(grp_fu_1835_p2),.grp_fu_1835_p_ce(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_ce),.grp_fu_1839_p_din0(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_din0),.grp_fu_1839_p_din1(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_din1),.grp_fu_1839_p_opcode(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_opcode),.grp_fu_1839_p_dout0(grp_fu_1839_p2),.grp_fu_1839_p_ce(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_ce),.grp_fu_1843_p_din0(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_din0),.grp_fu_1843_p_din1(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_din1),.grp_fu_1843_p_opcode(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_opcode),.grp_fu_1843_p_dout0(grp_fu_1843_p2),.grp_fu_1843_p_ce(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_ce),.grp_fu_1847_p_din0(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_din0),.grp_fu_1847_p_din1(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_din1),.grp_fu_1847_p_opcode(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_opcode),.grp_fu_1847_p_dout0(grp_fu_1847_p2),.grp_fu_1847_p_ce(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_ce),.grp_fu_1851_p_din0(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_din0),.grp_fu_1851_p_din1(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_din1),.grp_fu_1851_p_dout0(grp_fu_1851_p2),.grp_fu_1851_p_ce(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_ce),.grp_fu_1855_p_din0(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_din0),.grp_fu_1855_p_din1(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_din1),.grp_fu_1855_p_dout0(grp_fu_1855_p2),.grp_fu_1855_p_ce(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_ce),.grp_fu_1859_p_din0(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_din0),.grp_fu_1859_p_din1(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_din1),.grp_fu_1859_p_dout0(grp_fu_1859_p2),.grp_fu_1859_p_ce(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_ce),.grp_fu_1863_p_din0(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_din0),.grp_fu_1863_p_din1(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_din1),.grp_fu_1863_p_dout0(grp_fu_1863_p2),.grp_fu_1863_p_ce(grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1061(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1061_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1061_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1061_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1061_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1061_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1061_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1061_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1061_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U243(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1835_p0),.din1(grp_fu_1835_p1),.ce(grp_fu_1835_ce),.dout(grp_fu_1835_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1839_p0),.din1(grp_fu_1839_p1),.ce(grp_fu_1839_ce),.dout(grp_fu_1839_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U245(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1843_p0),.din1(grp_fu_1843_p1),.ce(grp_fu_1843_ce),.dout(grp_fu_1843_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U246(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1847_p0),.din1(grp_fu_1847_p1),.ce(grp_fu_1847_ce),.dout(grp_fu_1847_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U247(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1851_p0),.din1(grp_fu_1851_p1),.ce(grp_fu_1851_ce),.dout(grp_fu_1851_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U248(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1855_p0),.din1(grp_fu_1855_p1),.ce(grp_fu_1855_ce),.dout(grp_fu_1855_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U249(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1859_p0),.din1(grp_fu_1859_p1),.ce(grp_fu_1859_ce),.dout(grp_fu_1859_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U250(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1863_p0),.din1(grp_fu_1863_p1),.ce(grp_fu_1863_ce),.dout(grp_fu_1863_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1085_p2 == 1'd1))) begin
            grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_977_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_bicg_Pipeline_lp3_fu_977_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_977_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_977_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_960_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_960_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_960_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_960_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1061_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_bicg_Pipeline_lpwr_fu_1061_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1061_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1061_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_106 <= add_ln13_reg_1172;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_1172 <= add_ln13_fu_1091_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_load_10_reg_1640 <= buff_p_1_q0;
        buff_p_1_load_11_reg_1660 <= buff_p_1_q1;
        buff_p_2_load_10_reg_1645 <= buff_p_2_q0;
        buff_p_2_load_11_reg_1665 <= buff_p_2_q1;
        buff_p_3_load_10_reg_1650 <= buff_p_3_q0;
        buff_p_3_load_11_reg_1670 <= buff_p_3_q1;
        buff_p_load_10_reg_1635 <= buff_p_q0;
        buff_p_load_11_reg_1655 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_load_12_reg_1720 <= buff_p_1_q0;
        buff_p_1_load_13_reg_1740 <= buff_p_1_q1;
        buff_p_2_load_12_reg_1725 <= buff_p_2_q0;
        buff_p_2_load_13_reg_1745 <= buff_p_2_q1;
        buff_p_3_load_12_reg_1730 <= buff_p_3_q0;
        buff_p_3_load_13_reg_1750 <= buff_p_3_q1;
        buff_p_load_12_reg_1715 <= buff_p_q0;
        buff_p_load_13_reg_1735 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_load_14_reg_1800 <= buff_p_1_q0;
        buff_p_1_load_15_reg_1820 <= buff_p_1_q1;
        buff_p_2_load_14_reg_1805 <= buff_p_2_q0;
        buff_p_2_load_15_reg_1825 <= buff_p_2_q1;
        buff_p_3_load_14_reg_1810 <= buff_p_3_q0;
        buff_p_3_load_15_reg_1830 <= buff_p_3_q1;
        buff_p_load_14_reg_1795 <= buff_p_q0;
        buff_p_load_15_reg_1815 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_1_load_1_reg_1260 <= buff_p_1_q0;
        buff_p_1_load_reg_1240 <= buff_p_1_q1;
        buff_p_2_load_1_reg_1265 <= buff_p_2_q0;
        buff_p_2_load_reg_1245 <= buff_p_2_q1;
        buff_p_3_load_1_reg_1270 <= buff_p_3_q0;
        buff_p_3_load_reg_1250 <= buff_p_3_q1;
        buff_p_load_1_reg_1255 <= buff_p_q0;
        buff_p_load_reg_1235 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_load_2_reg_1320 <= buff_p_1_q0;
        buff_p_1_load_3_reg_1340 <= buff_p_1_q1;
        buff_p_2_load_2_reg_1325 <= buff_p_2_q0;
        buff_p_2_load_3_reg_1345 <= buff_p_2_q1;
        buff_p_3_load_2_reg_1330 <= buff_p_3_q0;
        buff_p_3_load_3_reg_1350 <= buff_p_3_q1;
        buff_p_load_2_reg_1315 <= buff_p_q0;
        buff_p_load_3_reg_1335 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_load_4_reg_1400 <= buff_p_1_q0;
        buff_p_1_load_5_reg_1420 <= buff_p_1_q1;
        buff_p_2_load_4_reg_1405 <= buff_p_2_q0;
        buff_p_2_load_5_reg_1425 <= buff_p_2_q1;
        buff_p_3_load_4_reg_1410 <= buff_p_3_q0;
        buff_p_3_load_5_reg_1430 <= buff_p_3_q1;
        buff_p_load_4_reg_1395 <= buff_p_q0;
        buff_p_load_5_reg_1415 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_load_6_reg_1480 <= buff_p_1_q0;
        buff_p_1_load_7_reg_1500 <= buff_p_1_q1;
        buff_p_2_load_6_reg_1485 <= buff_p_2_q0;
        buff_p_2_load_7_reg_1505 <= buff_p_2_q1;
        buff_p_3_load_6_reg_1490 <= buff_p_3_q0;
        buff_p_3_load_7_reg_1510 <= buff_p_3_q1;
        buff_p_load_6_reg_1475 <= buff_p_q0;
        buff_p_load_7_reg_1495 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_load_8_reg_1560 <= buff_p_1_q0;
        buff_p_1_load_9_reg_1580 <= buff_p_1_q1;
        buff_p_2_load_8_reg_1565 <= buff_p_2_q0;
        buff_p_2_load_9_reg_1585 <= buff_p_2_q1;
        buff_p_3_load_8_reg_1570 <= buff_p_3_q0;
        buff_p_3_load_9_reg_1590 <= buff_p_3_q1;
        buff_p_load_8_reg_1555 <= buff_p_q0;
        buff_p_load_9_reg_1575 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_1227 <= trunc_ln13_fu_1103_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_fu_977_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1061_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_960_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lpwr_fu_1061_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lpwr_fu_1061_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce10 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce11 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce12 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce13 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce14 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce15 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce8 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce9 = grp_bicg_Pipeline_lp3_fu_977_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce10 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce11 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce12 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce13 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce14 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce15 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce3 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce4 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce5 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce6 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce7 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce8 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce9 = grp_bicg_Pipeline_lp3_fu_977_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce10 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce11 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce12 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce13 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce14 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce15 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce3 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce4 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce5 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce6 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce7 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce8 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce9 = grp_bicg_Pipeline_lp3_fu_977_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_977_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce10 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce11 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce12 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce13 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce14 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce15 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce8 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce9 = grp_bicg_Pipeline_lp3_fu_977_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_960_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_1_address0_local = zext_ln5_fu_1119_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_1_address0_local = 64'd1;
    end else begin
        buff_p_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_1_address1_local = 64'd0;
    end else begin
        buff_p_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_1_ce1_local = 1'b1;
    end else begin
        buff_p_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd1))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_2_address0_local = zext_ln5_fu_1119_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_2_address0_local = 64'd1;
    end else begin
        buff_p_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_2_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_2_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_2_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_2_address1_local = 64'd0;
    end else begin
        buff_p_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_2_ce1_local = 1'b1;
    end else begin
        buff_p_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd2))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_3_address0_local = zext_ln5_fu_1119_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_3_address0_local = 64'd1;
    end else begin
        buff_p_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_3_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_3_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_3_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_3_address1_local = 64'd0;
    end else begin
        buff_p_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_3_ce1_local = 1'b1;
    end else begin
        buff_p_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_address0_local = zext_ln5_fu_1119_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_address0_local = 64'd1;
    end else begin
        buff_p_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_address1_local = 64'd0;
    end else begin
        buff_p_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd0))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_ce0;
    end else begin
        buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_1_ce1 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_ce1;
    end else begin
        buff_q_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_ce0;
    end else begin
        buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_2_ce0_local = 1'b1;
    end else begin
        buff_q_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_2_ce1 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_ce1;
    end else begin
        buff_q_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd2))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_ce0;
    end else begin
        buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_3_ce0_local = 1'b1;
    end else begin
        buff_q_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_3_ce1 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_ce1;
    end else begin
        buff_q_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_ce0;
    end else begin
        buff_q_out_ce0 = buff_q_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_977_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_1_ce0;
    end else begin
        buff_r_1_ce0 = buff_r_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd1))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_2_ce0;
    end else begin
        buff_r_2_ce0 = buff_r_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_2_ce0_local = 1'b1;
    end else begin
        buff_r_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd2))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_3_ce0;
    end else begin
        buff_r_3_ce0 = buff_r_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_3_ce0_local = 1'b1;
    end else begin
        buff_r_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_r_ce0;
    end else begin
        buff_r_ce0 = buff_r_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd0))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_ce1;
    end else begin
        buff_s_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_d0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_d0;
    end else begin
        buff_s_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_we0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_1_we0;
    end else begin
        buff_s_out_1_we0 = buff_s_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd1))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_ce1;
    end else begin
        buff_s_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_d0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_d0;
    end else begin
        buff_s_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_we0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_2_we0;
    end else begin
        buff_s_out_2_we0 = buff_s_out_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd2))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_ce1;
    end else begin
        buff_s_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_d0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_d0;
    end else begin
        buff_s_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_we0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_3_we0;
    end else begin
        buff_s_out_3_we0 = buff_s_out_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd3))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = zext_ln5_fu_1119_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1061_buff_s_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_ce1;
    end else begin
        buff_s_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_d0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_d0;
    end else begin
        buff_s_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_we0 = grp_bicg_Pipeline_lp1_lp2_fu_944_buff_s_out_we0;
    end else begin
        buff_s_out_we0 = buff_s_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1107_p1 == 2'd0))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1835_ce = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1835_ce = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_ce;
    end else begin
        grp_fu_1835_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1835_p0 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1835_p0 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_din0;
    end else begin
        grp_fu_1835_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1835_p1 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1835_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1835_p1 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1835_p_din1;
    end else begin
        grp_fu_1835_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1839_ce = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1839_ce = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_ce;
    end else begin
        grp_fu_1839_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1839_p0 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1839_p0 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_din0;
    end else begin
        grp_fu_1839_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1839_p1 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1839_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1839_p1 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1839_p_din1;
    end else begin
        grp_fu_1839_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1843_ce = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1843_ce = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_ce;
    end else begin
        grp_fu_1843_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1843_p0 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1843_p0 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_din0;
    end else begin
        grp_fu_1843_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1843_p1 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1843_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1843_p1 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1843_p_din1;
    end else begin
        grp_fu_1843_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1847_ce = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1847_ce = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_ce;
    end else begin
        grp_fu_1847_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1847_p0 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1847_p0 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_din0;
    end else begin
        grp_fu_1847_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1847_p1 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1847_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1847_p1 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1847_p_din1;
    end else begin
        grp_fu_1847_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1851_ce = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1851_ce = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_ce;
    end else begin
        grp_fu_1851_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1851_p0 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1851_p0 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_din0;
    end else begin
        grp_fu_1851_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1851_p1 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1851_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1851_p1 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1851_p_din1;
    end else begin
        grp_fu_1851_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1855_ce = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1855_ce = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_ce;
    end else begin
        grp_fu_1855_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1855_p0 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1855_p0 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_din0;
    end else begin
        grp_fu_1855_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1855_p1 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1855_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1855_p1 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1855_p_din1;
    end else begin
        grp_fu_1855_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1859_ce = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1859_ce = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_ce;
    end else begin
        grp_fu_1859_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1859_p0 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1859_p0 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_din0;
    end else begin
        grp_fu_1859_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1859_p1 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1859_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1859_p1 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1859_p_din1;
    end else begin
        grp_fu_1859_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1863_ce = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1863_ce = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_ce;
    end else begin
        grp_fu_1863_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1863_p0 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1863_p0 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_din0;
    end else begin
        grp_fu_1863_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1863_p1 = grp_bicg_Pipeline_lp3_fu_977_grp_fu_1863_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1863_p1 = grp_bicg_Pipeline_lp1_lp2_fu_944_grp_fu_1863_p_din1;
    end else begin
        grp_fu_1863_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_ce0_local = 1'b1;
    end else begin
        p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1061_q_out_write;
    end else begin
        q_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_ce0_local = 1'b1;
    end else begin
        r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1061_s_out_write;
    end else begin
        s_out_write = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1085_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_Pipeline_lprd_2_fu_960_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_bicg_Pipeline_lp1_lp2_fu_944_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_bicg_Pipeline_lp3_fu_977_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_bicg_Pipeline_lpwr_fu_1061_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_960_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_960_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_960_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_960_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_960_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_960_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_960_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_960_A_3_ce0;
assign add_ln13_fu_1091_p2 = (i_fu_106 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln14_fu_1139_p1 = p_q0;
assign bitcast_ln15_fu_1147_p1 = r_q0;
assign grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start = grp_bicg_Pipeline_lp1_lp2_fu_944_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_977_ap_start = grp_bicg_Pipeline_lp3_fu_977_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_960_ap_start = grp_bicg_Pipeline_lprd_2_fu_960_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1061_ap_start = grp_bicg_Pipeline_lpwr_fu_1061_ap_start_reg;
assign icmp_ln13_fu_1085_p2 = ((i_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1110_p4 = {{i_fu_106[5:2]}};
assign p_address0 = zext_ln13_fu_1097_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1061_q_out_din;
assign r_address0 = zext_ln13_fu_1097_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1061_s_out_din;
assign trunc_ln13_1_fu_1107_p1 = i_fu_106[1:0];
assign trunc_ln13_fu_1103_p1 = i_fu_106[5:0];
assign zext_ln13_fu_1097_p1 = i_fu_106;
assign zext_ln5_fu_1119_p1 = lshr_ln5_fu_1110_p4;
endmodule 