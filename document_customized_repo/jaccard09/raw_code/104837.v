module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [10:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
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
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln13_fu_939_p2;
reg   [6:0] add_ln13_reg_1008;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_951_p1;
reg   [5:0] trunc_ln13_reg_1043;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
reg   [31:0] buff_p_load_reg_1071;
reg   [31:0] buff_p_1_load_reg_1076;
reg   [31:0] buff_p_load_1_reg_1081;
reg   [31:0] buff_p_1_load_1_reg_1086;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_p_load_2_reg_1111;
reg   [31:0] buff_p_1_load_2_reg_1116;
reg   [31:0] buff_p_load_3_reg_1121;
reg   [31:0] buff_p_1_load_3_reg_1126;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_p_load_4_reg_1151;
reg   [31:0] buff_p_1_load_4_reg_1156;
reg   [31:0] buff_p_load_5_reg_1161;
reg   [31:0] buff_p_1_load_5_reg_1166;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_p_load_6_reg_1191;
reg   [31:0] buff_p_1_load_6_reg_1196;
reg   [31:0] buff_p_load_7_reg_1201;
reg   [31:0] buff_p_1_load_7_reg_1206;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_p_load_8_reg_1231;
reg   [31:0] buff_p_1_load_8_reg_1236;
reg   [31:0] buff_p_load_9_reg_1241;
reg   [31:0] buff_p_1_load_9_reg_1246;
wire    ap_CS_fsm_state10;
reg   [31:0] buff_p_load_10_reg_1271;
reg   [31:0] buff_p_1_load_10_reg_1276;
reg   [31:0] buff_p_load_11_reg_1281;
reg   [31:0] buff_p_1_load_11_reg_1286;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_p_load_12_reg_1311;
reg   [31:0] buff_p_1_load_12_reg_1316;
reg   [31:0] buff_p_load_13_reg_1321;
reg   [31:0] buff_p_1_load_13_reg_1326;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_p_load_14_reg_1351;
reg   [31:0] buff_p_1_load_14_reg_1356;
reg   [31:0] buff_p_load_15_reg_1361;
reg   [31:0] buff_p_1_load_15_reg_1366;
wire    ap_CS_fsm_state13;
reg   [31:0] buff_p_load_16_reg_1391;
reg   [31:0] buff_p_1_load_16_reg_1396;
reg   [31:0] buff_p_load_17_reg_1401;
reg   [31:0] buff_p_1_load_17_reg_1406;
wire    ap_CS_fsm_state14;
reg   [31:0] buff_p_load_18_reg_1431;
reg   [31:0] buff_p_1_load_18_reg_1436;
reg   [31:0] buff_p_load_19_reg_1441;
reg   [31:0] buff_p_1_load_19_reg_1446;
wire    ap_CS_fsm_state15;
reg   [31:0] buff_p_load_20_reg_1471;
reg   [31:0] buff_p_1_load_20_reg_1476;
reg   [31:0] buff_p_load_21_reg_1481;
reg   [31:0] buff_p_1_load_21_reg_1486;
wire    ap_CS_fsm_state16;
reg   [31:0] buff_p_load_22_reg_1511;
reg   [31:0] buff_p_1_load_22_reg_1516;
reg   [31:0] buff_p_load_23_reg_1521;
reg   [31:0] buff_p_1_load_23_reg_1526;
wire    ap_CS_fsm_state17;
reg   [31:0] buff_p_load_24_reg_1551;
reg   [31:0] buff_p_1_load_24_reg_1556;
reg   [31:0] buff_p_load_25_reg_1561;
reg   [31:0] buff_p_1_load_25_reg_1566;
wire    ap_CS_fsm_state18;
reg   [31:0] buff_p_load_26_reg_1591;
reg   [31:0] buff_p_1_load_26_reg_1596;
reg   [31:0] buff_p_load_27_reg_1601;
reg   [31:0] buff_p_1_load_27_reg_1606;
wire    ap_CS_fsm_state19;
reg   [31:0] buff_p_load_28_reg_1631;
reg   [31:0] buff_p_1_load_28_reg_1636;
reg   [31:0] buff_p_load_29_reg_1641;
reg   [31:0] buff_p_1_load_29_reg_1646;
reg   [31:0] buff_p_load_30_reg_1651;
wire    ap_CS_fsm_state20;
reg   [31:0] buff_p_1_load_30_reg_1656;
reg   [31:0] buff_p_load_31_reg_1661;
reg   [31:0] buff_p_1_load_31_reg_1666;
reg   [10:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [10:0] buff_A_address1;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [10:0] buff_A_address2;
reg    buff_A_ce2;
wire   [31:0] buff_A_q2;
reg   [10:0] buff_A_address3;
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
reg   [10:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [10:0] buff_A_1_address1;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [10:0] buff_A_1_address2;
reg    buff_A_1_ce2;
wire   [31:0] buff_A_1_q2;
reg   [10:0] buff_A_1_address3;
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
wire   [31:0] buff_p_q0;
wire   [31:0] buff_p_q1;
wire   [31:0] buff_p_1_q0;
wire   [31:0] buff_p_1_q1;
reg   [4:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg   [4:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg   [4:0] buff_s_out_address0;
reg    buff_s_out_ce0;
reg    buff_s_out_we0;
reg   [31:0] buff_s_out_d0;
wire   [31:0] buff_s_out_q0;
reg    buff_s_out_ce1;
reg    buff_s_out_we1;
wire   [31:0] buff_s_out_q1;
reg   [4:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
reg    buff_s_out_1_we0;
reg   [31:0] buff_s_out_1_d0;
wire   [31:0] buff_s_out_1_q0;
reg    buff_s_out_1_ce1;
reg    buff_s_out_1_we1;
wire   [31:0] buff_s_out_1_q1;
reg   [4:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg    buff_q_out_ce1;
reg    buff_q_out_we1;
wire   [31:0] buff_q_out_q1;
reg   [4:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg    buff_q_out_1_ce1;
reg    buff_q_out_1_we1;
wire   [31:0] buff_q_out_1_q1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_ap_done;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_ap_idle;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_ap_ready;
wire   [4:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_ce0;
wire   [4:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_1_ce0;
wire   [10:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce0;
wire   [10:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce1;
wire   [10:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address2;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce2;
wire   [10:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address3;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce3;
wire   [10:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce0;
wire   [10:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce1;
wire   [10:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce2;
wire   [10:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce3;
wire   [4:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_d0;
wire   [4:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_ce1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_we1;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_d1;
wire   [4:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_d0;
wire   [4:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_ce1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_we1;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_d1;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_ce;
wire    grp_bicg_Pipeline_lprd_2_fu_826_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_826_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_826_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_826_ap_ready;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_826_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_826_A_0_ce0;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_826_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_826_A_1_ce0;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_826_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_826_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_826_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_826_buff_A_d0;
wire   [10:0] grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_d0;
wire    grp_bicg_Pipeline_lp3_fu_837_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_837_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_837_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_837_ap_ready;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce0;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce1;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address2;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce2;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address3;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce3;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address4;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce4;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address5;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce5;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address6;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce6;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address7;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce7;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address8;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce8;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address9;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce9;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address10;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce10;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address11;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce11;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address12;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce12;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address13;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce13;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address14;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce14;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_address15;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_ce15;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce0;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce1;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce2;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce3;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce4;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce5;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce6;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce7;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address8;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce8;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address9;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce9;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address10;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce10;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address11;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce11;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address12;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce12;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address13;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce13;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address14;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce14;
wire   [10:0] grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address15;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce15;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_d0;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_ce1;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_we1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_d1;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_837_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_buff_q_out_d0;
wire   [4:0] grp_bicg_Pipeline_lp3_fu_837_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_q_out_ce1;
wire    grp_bicg_Pipeline_lp3_fu_837_buff_q_out_we1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_buff_q_out_d1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_913_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_913_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_913_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_913_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_913_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_913_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_913_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_913_q_out_write;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_1_ce0;
wire   [4:0] grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_1_ce0;
reg    grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start_reg;
wire   [0:0] icmp_ln13_fu_933_p2;
reg    grp_bicg_Pipeline_lprd_2_fu_826_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp3_fu_837_ap_start_reg;
wire    ap_CS_fsm_state21;
reg    grp_bicg_Pipeline_lpwr_fu_913_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire   [63:0] zext_ln13_fu_945_p1;
wire   [63:0] zext_ln5_fu_967_p1;
reg   [6:0] i_fu_126;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_p_ce1_local;
reg   [4:0] buff_p_address1_local;
reg    buff_p_ce0_local;
reg   [4:0] buff_p_address0_local;
reg    buff_p_we0_local;
wire   [0:0] trunc_ln13_1_fu_955_p1;
wire   [31:0] bitcast_ln14_fu_979_p1;
reg    buff_p_1_ce1_local;
reg   [4:0] buff_p_1_address1_local;
reg    buff_p_1_ce0_local;
reg   [4:0] buff_p_1_address0_local;
reg    buff_p_1_we0_local;
reg    buff_r_we0_local;
wire   [31:0] bitcast_ln15_fu_985_p1;
reg    buff_r_ce0_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
wire   [4:0] lshr_ln5_fu_958_p4;
wire   [31:0] grp_fu_1671_p2;
reg   [31:0] grp_fu_1671_p0;
reg   [31:0] grp_fu_1671_p1;
reg    grp_fu_1671_ce;
wire   [31:0] grp_fu_1675_p2;
reg   [31:0] grp_fu_1675_p0;
reg   [31:0] grp_fu_1675_p1;
reg    grp_fu_1675_ce;
wire   [31:0] grp_fu_1679_p2;
reg   [31:0] grp_fu_1679_p0;
reg   [31:0] grp_fu_1679_p1;
reg    grp_fu_1679_ce;
wire   [31:0] grp_fu_1683_p2;
reg   [31:0] grp_fu_1683_p0;
reg   [31:0] grp_fu_1683_p1;
reg    grp_fu_1683_ce;
reg   [22:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
reg    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 23'd1;
#0 grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lprd_2_fu_826_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_837_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_913_ap_start_reg = 1'b0;
#0 i_fu_126 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_bicg_Pipeline_lp3_fu_837_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_bicg_Pipeline_lp3_fu_837_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_bicg_Pipeline_lp3_fu_837_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_bicg_Pipeline_lp3_fu_837_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_bicg_Pipeline_lp3_fu_837_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_bicg_Pipeline_lp3_fu_837_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_bicg_Pipeline_lp3_fu_837_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_bicg_Pipeline_lp3_fu_837_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_bicg_Pipeline_lp3_fu_837_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_bicg_Pipeline_lp3_fu_837_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_bicg_Pipeline_lp3_fu_837_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_bicg_Pipeline_lp3_fu_837_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0_local),.ce0(buff_p_ce0_local),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_979_p1),.q0(buff_p_q0),.address1(buff_p_address1_local),.ce1(buff_p_ce1_local),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0_local),.ce0(buff_p_1_ce0_local),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_979_p1),.q0(buff_p_1_q0),.address1(buff_p_1_address1_local),.ce1(buff_p_1_ce1_local),.q1(buff_p_1_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_985_p1),.q0(buff_r_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_985_p1),.q0(buff_r_1_q0));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0),.d0(buff_s_out_d0),.q0(buff_s_out_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_address1),.ce1(buff_s_out_ce1),.we1(buff_s_out_we1),.d1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_d1),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0),.d0(buff_s_out_1_d0),.q0(buff_s_out_1_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_address1),.ce1(buff_s_out_1_ce1),.we1(buff_s_out_1_we1),.d1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_d1),.q1(buff_s_out_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_address1),.ce1(buff_q_out_ce1),.we1(buff_q_out_we1),.d1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_d1),.q1(buff_q_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_address1),.ce1(buff_q_out_1_ce1),.we1(buff_q_out_1_we1),.d1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_d1),.q1(buff_q_out_1_q1));
bicg_bicg_Pipeline_lp1_lp2 grp_bicg_Pipeline_lp1_lp2_fu_816(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start),.ap_done(grp_bicg_Pipeline_lp1_lp2_fu_816_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_lp2_fu_816_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_lp2_fu_816_ap_ready),.buff_r_address0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_A_address0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_s_out_address0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_ce0),.buff_s_out_we0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_we0),.buff_s_out_d0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_d0),.buff_s_out_q0(buff_s_out_q0),.buff_s_out_address1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_address1),.buff_s_out_ce1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_ce1),.buff_s_out_we1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_we1),.buff_s_out_d1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_d1),.buff_s_out_q1(buff_s_out_q1),.buff_s_out_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_ce0),.buff_s_out_1_we0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_we0),.buff_s_out_1_d0(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_d0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_s_out_1_address1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_address1),.buff_s_out_1_ce1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_ce1),.buff_s_out_1_we1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_we1),.buff_s_out_1_d1(grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_d1),.buff_s_out_1_q1(buff_s_out_1_q1),.grp_fu_1671_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_din0),.grp_fu_1671_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_din1),.grp_fu_1671_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_opcode),.grp_fu_1671_p_dout0(grp_fu_1671_p2),.grp_fu_1671_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_ce),.grp_fu_1675_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_din0),.grp_fu_1675_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_din1),.grp_fu_1675_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_opcode),.grp_fu_1675_p_dout0(grp_fu_1675_p2),.grp_fu_1675_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_ce),.grp_fu_1679_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_din0),.grp_fu_1679_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_din1),.grp_fu_1679_p_dout0(grp_fu_1679_p2),.grp_fu_1679_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_ce),.grp_fu_1683_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_din0),.grp_fu_1683_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_din1),.grp_fu_1683_p_dout0(grp_fu_1683_p2),.grp_fu_1683_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_ce));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_826(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_826_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_826_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_826_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_826_ap_ready),.i(trunc_ln13_reg_1043),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_826_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_826_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_826_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_826_A_1_ce0),.A_1_q0(A_1_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_d0));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_837(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_837_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_837_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_837_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_837_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_837_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_fu_837_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp3_fu_837_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp3_fu_837_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp3_fu_837_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp3_fu_837_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp3_fu_837_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp3_fu_837_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_bicg_Pipeline_lp3_fu_837_buff_A_address8),.buff_A_ce8(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_bicg_Pipeline_lp3_fu_837_buff_A_address9),.buff_A_ce9(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_bicg_Pipeline_lp3_fu_837_buff_A_address10),.buff_A_ce10(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_bicg_Pipeline_lp3_fu_837_buff_A_address11),.buff_A_ce11(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_bicg_Pipeline_lp3_fu_837_buff_A_address12),.buff_A_ce12(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_bicg_Pipeline_lp3_fu_837_buff_A_address13),.buff_A_ce13(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_bicg_Pipeline_lp3_fu_837_buff_A_address14),.buff_A_ce14(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_bicg_Pipeline_lp3_fu_837_buff_A_address15),.buff_A_ce15(grp_bicg_Pipeline_lp3_fu_837_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address8),.buff_A_1_ce8(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address9),.buff_A_1_ce9(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address10),.buff_A_1_ce10(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address11),.buff_A_1_ce11(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address12),.buff_A_1_ce12(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address13),.buff_A_1_ce13(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address14),.buff_A_1_ce14(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address15),.buff_A_1_ce15(grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_1_address1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_address1),.buff_q_out_1_ce1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_ce1),.buff_q_out_1_we1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_we1),.buff_q_out_1_d1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_d1),.buff_q_out_1_q1(buff_q_out_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_ce1),.buff_q_out_we1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_we1),.buff_q_out_d1(grp_bicg_Pipeline_lp3_fu_837_buff_q_out_d1),.buff_q_out_q1(buff_q_out_q1),.buff_p_load(buff_p_load_reg_1071),.buff_p_1_load(buff_p_1_load_reg_1076),.buff_p_load_1(buff_p_load_1_reg_1081),.buff_p_1_load_1(buff_p_1_load_1_reg_1086),.buff_p_load_2(buff_p_load_2_reg_1111),.buff_p_1_load_2(buff_p_1_load_2_reg_1116),.buff_p_load_3(buff_p_load_3_reg_1121),.buff_p_1_load_3(buff_p_1_load_3_reg_1126),.buff_p_load_4(buff_p_load_4_reg_1151),.buff_p_1_load_4(buff_p_1_load_4_reg_1156),.buff_p_load_5(buff_p_load_5_reg_1161),.buff_p_1_load_5(buff_p_1_load_5_reg_1166),.buff_p_load_6(buff_p_load_6_reg_1191),.buff_p_1_load_6(buff_p_1_load_6_reg_1196),.buff_p_load_7(buff_p_load_7_reg_1201),.buff_p_1_load_7(buff_p_1_load_7_reg_1206),.buff_p_load_8(buff_p_load_8_reg_1231),.buff_p_1_load_8(buff_p_1_load_8_reg_1236),.buff_p_load_9(buff_p_load_9_reg_1241),.buff_p_1_load_9(buff_p_1_load_9_reg_1246),.buff_p_load_10(buff_p_load_10_reg_1271),.buff_p_1_load_10(buff_p_1_load_10_reg_1276),.buff_p_load_11(buff_p_load_11_reg_1281),.buff_p_1_load_11(buff_p_1_load_11_reg_1286),.buff_p_load_12(buff_p_load_12_reg_1311),.buff_p_1_load_12(buff_p_1_load_12_reg_1316),.buff_p_load_13(buff_p_load_13_reg_1321),.buff_p_1_load_13(buff_p_1_load_13_reg_1326),.buff_p_load_14(buff_p_load_14_reg_1351),.buff_p_1_load_14(buff_p_1_load_14_reg_1356),.buff_p_load_15(buff_p_load_15_reg_1361),.buff_p_1_load_15(buff_p_1_load_15_reg_1366),.buff_p_load_16(buff_p_load_16_reg_1391),.buff_p_1_load_16(buff_p_1_load_16_reg_1396),.buff_p_load_17(buff_p_load_17_reg_1401),.buff_p_1_load_17(buff_p_1_load_17_reg_1406),.buff_p_load_18(buff_p_load_18_reg_1431),.buff_p_1_load_18(buff_p_1_load_18_reg_1436),.buff_p_load_19(buff_p_load_19_reg_1441),.buff_p_1_load_19(buff_p_1_load_19_reg_1446),.buff_p_load_20(buff_p_load_20_reg_1471),.buff_p_1_load_20(buff_p_1_load_20_reg_1476),.buff_p_load_21(buff_p_load_21_reg_1481),.buff_p_1_load_21(buff_p_1_load_21_reg_1486),.buff_p_load_22(buff_p_load_22_reg_1511),.buff_p_1_load_22(buff_p_1_load_22_reg_1516),.buff_p_load_23(buff_p_load_23_reg_1521),.buff_p_1_load_23(buff_p_1_load_23_reg_1526),.buff_p_load_24(buff_p_load_24_reg_1551),.buff_p_1_load_24(buff_p_1_load_24_reg_1556),.buff_p_load_25(buff_p_load_25_reg_1561),.buff_p_1_load_25(buff_p_1_load_25_reg_1566),.buff_p_load_26(buff_p_load_26_reg_1591),.buff_p_1_load_26(buff_p_1_load_26_reg_1596),.buff_p_load_27(buff_p_load_27_reg_1601),.buff_p_1_load_27(buff_p_1_load_27_reg_1606),.buff_p_load_28(buff_p_load_28_reg_1631),.buff_p_1_load_28(buff_p_1_load_28_reg_1636),.buff_p_load_29(buff_p_load_29_reg_1641),.buff_p_1_load_29(buff_p_1_load_29_reg_1646),.buff_p_load_30(buff_p_load_30_reg_1651),.buff_p_1_load_30(buff_p_1_load_30_reg_1656),.buff_p_load_31(buff_p_load_31_reg_1661),.buff_p_1_load_31(buff_p_1_load_31_reg_1666),.grp_fu_1671_p_din0(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_din0),.grp_fu_1671_p_din1(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_din1),.grp_fu_1671_p_opcode(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_opcode),.grp_fu_1671_p_dout0(grp_fu_1671_p2),.grp_fu_1671_p_ce(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_ce),.grp_fu_1675_p_din0(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_din0),.grp_fu_1675_p_din1(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_din1),.grp_fu_1675_p_opcode(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_opcode),.grp_fu_1675_p_dout0(grp_fu_1675_p2),.grp_fu_1675_p_ce(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_ce),.grp_fu_1679_p_din0(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_din0),.grp_fu_1679_p_din1(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_din1),.grp_fu_1679_p_dout0(grp_fu_1679_p2),.grp_fu_1679_p_ce(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_ce),.grp_fu_1683_p_din0(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_din0),.grp_fu_1683_p_din1(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_din1),.grp_fu_1683_p_dout0(grp_fu_1683_p2),.grp_fu_1683_p_ce(grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_913(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_913_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_913_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_913_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_913_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_913_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_913_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_913_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_913_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U154(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1671_p0),.din1(grp_fu_1671_p1),.ce(grp_fu_1671_ce),.dout(grp_fu_1671_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U155(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1675_p0),.din1(grp_fu_1675_p1),.ce(grp_fu_1675_ce),.dout(grp_fu_1675_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U156(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1679_p0),.din1(grp_fu_1679_p1),.ce(grp_fu_1679_ce),.dout(grp_fu_1679_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U157(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1683_p0),.din1(grp_fu_1683_p1),.ce(grp_fu_1683_ce),.dout(grp_fu_1683_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln13_fu_933_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_lp2_fu_816_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_837_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_bicg_Pipeline_lp3_fu_837_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_837_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_837_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_826_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_826_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_826_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_826_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_913_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_bicg_Pipeline_lpwr_fu_913_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_913_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_913_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_126 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_126 <= add_ln13_reg_1008;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_1008 <= add_ln13_fu_939_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_p_1_load_10_reg_1276 <= buff_p_1_q0;
        buff_p_1_load_11_reg_1286 <= buff_p_1_q1;
        buff_p_load_10_reg_1271 <= buff_p_q0;
        buff_p_load_11_reg_1281 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_p_1_load_12_reg_1316 <= buff_p_1_q0;
        buff_p_1_load_13_reg_1326 <= buff_p_1_q1;
        buff_p_load_12_reg_1311 <= buff_p_q0;
        buff_p_load_13_reg_1321 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_load_14_reg_1356 <= buff_p_1_q0;
        buff_p_1_load_15_reg_1366 <= buff_p_1_q1;
        buff_p_load_14_reg_1351 <= buff_p_q0;
        buff_p_load_15_reg_1361 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_1_load_16_reg_1396 <= buff_p_1_q0;
        buff_p_1_load_17_reg_1406 <= buff_p_1_q1;
        buff_p_load_16_reg_1391 <= buff_p_q0;
        buff_p_load_17_reg_1401 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_load_18_reg_1436 <= buff_p_1_q0;
        buff_p_1_load_19_reg_1446 <= buff_p_1_q1;
        buff_p_load_18_reg_1431 <= buff_p_q0;
        buff_p_load_19_reg_1441 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_p_1_load_1_reg_1086 <= buff_p_1_q0;
        buff_p_1_load_reg_1076 <= buff_p_1_q1;
        buff_p_load_1_reg_1081 <= buff_p_q0;
        buff_p_load_reg_1071 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_p_1_load_20_reg_1476 <= buff_p_1_q0;
        buff_p_1_load_21_reg_1486 <= buff_p_1_q1;
        buff_p_load_20_reg_1471 <= buff_p_q0;
        buff_p_load_21_reg_1481 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_p_1_load_22_reg_1516 <= buff_p_1_q0;
        buff_p_1_load_23_reg_1526 <= buff_p_1_q1;
        buff_p_load_22_reg_1511 <= buff_p_q0;
        buff_p_load_23_reg_1521 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_p_1_load_24_reg_1556 <= buff_p_1_q0;
        buff_p_1_load_25_reg_1566 <= buff_p_1_q1;
        buff_p_load_24_reg_1551 <= buff_p_q0;
        buff_p_load_25_reg_1561 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_p_1_load_26_reg_1596 <= buff_p_1_q0;
        buff_p_1_load_27_reg_1606 <= buff_p_1_q1;
        buff_p_load_26_reg_1591 <= buff_p_q0;
        buff_p_load_27_reg_1601 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_p_1_load_28_reg_1636 <= buff_p_1_q0;
        buff_p_1_load_29_reg_1646 <= buff_p_1_q1;
        buff_p_load_28_reg_1631 <= buff_p_q0;
        buff_p_load_29_reg_1641 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_load_2_reg_1116 <= buff_p_1_q0;
        buff_p_1_load_3_reg_1126 <= buff_p_1_q1;
        buff_p_load_2_reg_1111 <= buff_p_q0;
        buff_p_load_3_reg_1121 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_p_1_load_30_reg_1656 <= buff_p_1_q0;
        buff_p_1_load_31_reg_1666 <= buff_p_1_q1;
        buff_p_load_30_reg_1651 <= buff_p_q0;
        buff_p_load_31_reg_1661 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_load_4_reg_1156 <= buff_p_1_q0;
        buff_p_1_load_5_reg_1166 <= buff_p_1_q1;
        buff_p_load_4_reg_1151 <= buff_p_q0;
        buff_p_load_5_reg_1161 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_load_6_reg_1196 <= buff_p_1_q0;
        buff_p_1_load_7_reg_1206 <= buff_p_1_q1;
        buff_p_load_6_reg_1191 <= buff_p_q0;
        buff_p_load_7_reg_1201 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_load_8_reg_1236 <= buff_p_1_q0;
        buff_p_1_load_9_reg_1246 <= buff_p_1_q1;
        buff_p_load_8_reg_1231 <= buff_p_q0;
        buff_p_load_9_reg_1241 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_1043 <= trunc_ln13_fu_951_p1;
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
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_fu_837_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_913_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_826_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_lp2_fu_816_ap_done == 1'b0)) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_913_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_913_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address1 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address2 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address2 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address2;
    end else begin
        buff_A_1_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address3 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_address3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address3 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_address3;
    end else begin
        buff_A_1_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce10 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce11 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce12 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce13 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce14 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce15 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce8 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce9 = grp_bicg_Pipeline_lp3_fu_837_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_826_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_837_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_826_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp3_fu_837_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address1 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address2 = grp_bicg_Pipeline_lp3_fu_837_buff_A_address2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address2 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address2;
    end else begin
        buff_A_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address3 = grp_bicg_Pipeline_lp3_fu_837_buff_A_address3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address3 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_address3;
    end else begin
        buff_A_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_826_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce10 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce11 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce12 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce13 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce14 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce15 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce8 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce9 = grp_bicg_Pipeline_lp3_fu_837_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_826_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_p_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_p_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_p_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_p_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_p_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
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
        buff_p_1_address0_local = zext_ln5_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_1_address0_local = 64'd1;
    end else begin
        buff_p_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_p_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_p_1_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_p_1_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_p_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_p_1_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_1_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_1_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
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
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((grp_bicg_Pipeline_lp1_lp2_fu_816_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((grp_bicg_Pipeline_lp1_lp2_fu_816_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_1_ce1_local = 1'b1;
    end else begin
        buff_p_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_955_p1 == 1'd1))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_p_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_p_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_p_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_p_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_p_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
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
        buff_p_address0_local = zext_ln5_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_address0_local = 64'd1;
    end else begin
        buff_p_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_p_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_p_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_p_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_p_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_p_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_p_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_p_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_p_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
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
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((grp_bicg_Pipeline_lp1_lp2_fu_816_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((grp_bicg_Pipeline_lp1_lp2_fu_816_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_955_p1 == 1'd0))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_967_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_ce1 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_ce1;
    end else begin
        buff_q_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_955_p1 == 1'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_1_we1 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_1_we1;
    end else begin
        buff_q_out_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_967_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_913_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_955_p1 == 1'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_q_out_we1 = grp_bicg_Pipeline_lp3_fu_837_buff_q_out_we1;
    end else begin
        buff_q_out_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_967_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_1_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_955_p1 == 1'd1))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_967_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_r_ce0;
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
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_955_p1 == 1'd0))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = zext_ln5_fu_967_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_ce0;
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
        buff_s_out_1_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_ce1;
    end else begin
        buff_s_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_d0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_d0;
    end else begin
        buff_s_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_we0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_we0;
    end else begin
        buff_s_out_1_we0 = buff_s_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_955_p1 == 1'd1))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_we1 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_1_we1;
    end else begin
        buff_s_out_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = zext_ln5_fu_967_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_913_buff_s_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_ce0;
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
        buff_s_out_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_ce1;
    end else begin
        buff_s_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_d0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_d0;
    end else begin
        buff_s_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_we0 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_we0;
    end else begin
        buff_s_out_we0 = buff_s_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_955_p1 == 1'd0))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_we1 = grp_bicg_Pipeline_lp1_lp2_fu_816_buff_s_out_we1;
    end else begin
        buff_s_out_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1671_ce = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1671_ce = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_ce;
    end else begin
        grp_fu_1671_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1671_p0 = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1671_p0 = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_din0;
    end else begin
        grp_fu_1671_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1671_p1 = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1671_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1671_p1 = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1671_p_din1;
    end else begin
        grp_fu_1671_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1675_ce = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1675_ce = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_ce;
    end else begin
        grp_fu_1675_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1675_p0 = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1675_p0 = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_din0;
    end else begin
        grp_fu_1675_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1675_p1 = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1675_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1675_p1 = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1675_p_din1;
    end else begin
        grp_fu_1675_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1679_ce = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1679_ce = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_ce;
    end else begin
        grp_fu_1679_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1679_p0 = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1679_p0 = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_din0;
    end else begin
        grp_fu_1679_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1679_p1 = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1679_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1679_p1 = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1679_p_din1;
    end else begin
        grp_fu_1679_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1683_ce = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1683_ce = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_ce;
    end else begin
        grp_fu_1683_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1683_p0 = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1683_p0 = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_din0;
    end else begin
        grp_fu_1683_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1683_p1 = grp_bicg_Pipeline_lp3_fu_837_grp_fu_1683_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_1683_p1 = grp_bicg_Pipeline_lp1_lp2_fu_816_grp_fu_1683_p_din1;
    end else begin
        grp_fu_1683_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_913_q_out_write;
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
    if ((1'b1 == ap_CS_fsm_state23)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_913_s_out_write;
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
            if (((icmp_ln13_fu_933_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_Pipeline_lprd_2_fu_826_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_bicg_Pipeline_lp1_lp2_fu_816_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_bicg_Pipeline_lp3_fu_837_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((grp_bicg_Pipeline_lpwr_fu_913_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_826_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_826_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_826_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_826_A_1_ce0;
assign add_ln13_fu_939_p2 = (i_fu_126 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln14_fu_979_p1 = p_q0;
assign bitcast_ln15_fu_985_p1 = r_q0;
assign grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start = grp_bicg_Pipeline_lp1_lp2_fu_816_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_837_ap_start = grp_bicg_Pipeline_lp3_fu_837_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_826_ap_start = grp_bicg_Pipeline_lprd_2_fu_826_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_913_ap_start = grp_bicg_Pipeline_lpwr_fu_913_ap_start_reg;
assign icmp_ln13_fu_933_p2 = ((i_fu_126 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_958_p4 = {{i_fu_126[5:1]}};
assign p_address0 = zext_ln13_fu_945_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_913_q_out_din;
assign r_address0 = zext_ln13_fu_945_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_913_s_out_din;
assign trunc_ln13_1_fu_955_p1 = i_fu_126[0:0];
assign trunc_ln13_fu_951_p1 = i_fu_126[5:0];
assign zext_ln13_fu_945_p1 = i_fu_126;
assign zext_ln5_fu_967_p1 = lshr_ln5_fu_958_p4;
endmodule 