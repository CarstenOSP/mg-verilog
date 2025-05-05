module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
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
output  [10:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [10:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [5:0] x_address0;
output   x_ce0;
input  [31:0] x_q0;
output  [31:0] y_out_din;
input   y_out_full_n;
output   y_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_out_write;
(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_886_p2;
reg   [6:0] add_ln11_reg_946;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_897_p1;
reg   [5:0] trunc_ln11_reg_976;
wire    ap_CS_fsm_state3;
reg   [31:0] buff_x_load_reg_984;
wire    ap_CS_fsm_state5;
reg   [31:0] buff_x_1_load_reg_989;
reg   [31:0] buff_x_load_1_reg_994;
reg   [31:0] buff_x_1_load_1_reg_999;
reg   [31:0] buff_x_load_2_reg_1024;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_x_1_load_2_reg_1029;
reg   [31:0] buff_x_load_3_reg_1034;
reg   [31:0] buff_x_1_load_3_reg_1039;
reg   [31:0] buff_x_load_4_reg_1064;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_x_1_load_4_reg_1069;
reg   [31:0] buff_x_load_5_reg_1074;
reg   [31:0] buff_x_1_load_5_reg_1079;
reg   [31:0] buff_x_load_6_reg_1104;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_x_1_load_6_reg_1109;
reg   [31:0] buff_x_load_7_reg_1114;
reg   [31:0] buff_x_1_load_7_reg_1119;
reg   [31:0] buff_x_load_8_reg_1144;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_x_1_load_8_reg_1149;
reg   [31:0] buff_x_load_9_reg_1154;
reg   [31:0] buff_x_1_load_9_reg_1159;
reg   [31:0] buff_x_load_10_reg_1184;
wire    ap_CS_fsm_state10;
reg   [31:0] buff_x_1_load_10_reg_1189;
reg   [31:0] buff_x_load_11_reg_1194;
reg   [31:0] buff_x_1_load_11_reg_1199;
reg   [31:0] buff_x_load_12_reg_1224;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_x_1_load_12_reg_1229;
reg   [31:0] buff_x_load_13_reg_1234;
reg   [31:0] buff_x_1_load_13_reg_1239;
reg   [31:0] buff_x_load_14_reg_1264;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_x_1_load_14_reg_1269;
reg   [31:0] buff_x_load_15_reg_1274;
reg   [31:0] buff_x_1_load_15_reg_1279;
reg   [31:0] buff_x_load_16_reg_1304;
wire    ap_CS_fsm_state13;
reg   [31:0] buff_x_1_load_16_reg_1309;
reg   [31:0] buff_x_load_17_reg_1314;
reg   [31:0] buff_x_1_load_17_reg_1319;
reg   [31:0] buff_x_load_18_reg_1344;
wire    ap_CS_fsm_state14;
reg   [31:0] buff_x_1_load_18_reg_1349;
reg   [31:0] buff_x_load_19_reg_1354;
reg   [31:0] buff_x_1_load_19_reg_1359;
reg   [31:0] buff_x_load_20_reg_1384;
wire    ap_CS_fsm_state15;
reg   [31:0] buff_x_1_load_20_reg_1389;
reg   [31:0] buff_x_load_21_reg_1394;
reg   [31:0] buff_x_1_load_21_reg_1399;
reg   [31:0] buff_x_load_22_reg_1424;
wire    ap_CS_fsm_state16;
reg   [31:0] buff_x_1_load_22_reg_1429;
reg   [31:0] buff_x_load_23_reg_1434;
reg   [31:0] buff_x_1_load_23_reg_1439;
reg   [31:0] buff_x_load_24_reg_1464;
wire    ap_CS_fsm_state17;
reg   [31:0] buff_x_1_load_24_reg_1469;
reg   [31:0] buff_x_load_25_reg_1474;
reg   [31:0] buff_x_1_load_25_reg_1479;
reg   [31:0] buff_x_load_26_reg_1504;
wire    ap_CS_fsm_state18;
reg   [31:0] buff_x_1_load_26_reg_1509;
reg   [31:0] buff_x_load_27_reg_1514;
reg   [31:0] buff_x_1_load_27_reg_1519;
reg   [31:0] buff_x_load_28_reg_1544;
wire    ap_CS_fsm_state19;
reg   [31:0] buff_x_1_load_28_reg_1549;
reg   [31:0] buff_x_load_29_reg_1554;
reg   [31:0] buff_x_1_load_29_reg_1559;
reg   [31:0] buff_x_load_30_reg_1584;
wire    ap_CS_fsm_state20;
reg   [31:0] buff_x_1_load_30_reg_1589;
reg   [31:0] buff_x_load_31_reg_1594;
reg   [31:0] buff_x_1_load_31_reg_1599;
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
wire   [31:0] buff_x_q0;
wire   [31:0] buff_x_q1;
wire   [31:0] buff_x_1_q0;
wire   [31:0] buff_x_1_q1;
reg   [4:0] buff_y_out_address0;
reg    buff_y_out_ce0;
reg    buff_y_out_we0;
reg   [31:0] buff_y_out_d0;
wire   [31:0] buff_y_out_q0;
reg    buff_y_out_ce1;
reg    buff_y_out_we1;
wire   [31:0] buff_y_out_q1;
reg   [4:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
reg    buff_y_out_1_we0;
reg   [31:0] buff_y_out_1_d0;
wire   [31:0] buff_y_out_1_q0;
reg    buff_y_out_1_ce1;
reg    buff_y_out_1_we1;
wire   [31:0] buff_y_out_1_q1;
reg   [4:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
reg   [4:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
wire    grp_atax_Pipeline_lprd_2_fu_767_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_767_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_767_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_767_ap_ready;
wire   [10:0] grp_atax_Pipeline_lprd_2_fu_767_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_767_A_0_ce0;
wire   [10:0] grp_atax_Pipeline_lprd_2_fu_767_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_767_A_1_ce0;
wire   [10:0] grp_atax_Pipeline_lprd_2_fu_767_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_767_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_767_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_767_buff_A_d0;
wire   [10:0] grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_d0;
wire    grp_atax_Pipeline_lp1_fu_778_ap_start;
wire    grp_atax_Pipeline_lp1_fu_778_ap_done;
wire    grp_atax_Pipeline_lp1_fu_778_ap_idle;
wire    grp_atax_Pipeline_lp1_fu_778_ap_ready;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address0;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce0;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address1;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce1;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address2;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce2;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address3;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce3;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address4;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce4;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address5;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce5;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address6;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce6;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address7;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce7;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address8;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce8;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address9;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce9;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address10;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce10;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address11;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce11;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address12;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce12;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address13;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce13;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address14;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce14;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_address15;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_ce15;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce0;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address1;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce1;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address2;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce2;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address3;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce3;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address4;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce4;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address5;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce5;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address6;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce6;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address7;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce7;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address8;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce8;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address9;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce9;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address10;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce10;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address11;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce11;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address12;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce12;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address13;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce13;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address14;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce14;
wire   [10:0] grp_atax_Pipeline_lp1_fu_778_buff_A_1_address15;
wire    grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce15;
wire   [4:0] grp_atax_Pipeline_lp1_fu_778_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_fu_778_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_fu_778_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_tmp1_1_d0;
wire   [4:0] grp_atax_Pipeline_lp1_fu_778_tmp1_address0;
wire    grp_atax_Pipeline_lp1_fu_778_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_fu_778_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_tmp1_d0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_din1;
wire    grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_din1;
wire    grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_ce;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_ap_start;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_ap_done;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_ap_idle;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_ap_ready;
wire   [4:0] grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_ce0;
wire   [4:0] grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_1_ce0;
wire   [10:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce0;
wire   [10:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce1;
wire   [10:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address2;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce2;
wire   [10:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address3;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce3;
wire   [10:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce0;
wire   [10:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce1;
wire   [10:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address2;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce2;
wire   [10:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address3;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce3;
wire   [4:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_d0;
wire   [4:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_ce1;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_we1;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_d1;
wire   [4:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_d0;
wire   [4:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_ce1;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_we1;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_d1;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_opcode;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_opcode;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_din1;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_din1;
wire    grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_864_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_864_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_864_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_864_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_864_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_864_y_out_write;
wire   [4:0] grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_ce0;
wire   [4:0] grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_1_ce0;
reg    grp_atax_Pipeline_lprd_2_fu_767_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_lp1_fu_778_ap_start_reg;
wire    ap_CS_fsm_state21;
reg    grp_atax_Pipeline_lp3_lp4_fu_854_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
reg    grp_atax_Pipeline_lpwr_1_fu_864_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire   [63:0] zext_ln11_fu_892_p1;
wire   [0:0] icmp_ln11_fu_880_p2;
wire   [63:0] zext_ln5_fu_913_p1;
reg   [6:0] i_fu_122;
reg    x_ce0_local;
reg    buff_x_ce1_local;
reg   [4:0] buff_x_address1_local;
reg    buff_x_ce0_local;
reg   [4:0] buff_x_address0_local;
reg    buff_x_we0_local;
wire   [0:0] trunc_ln11_1_fu_901_p1;
wire   [31:0] bitcast_ln12_fu_923_p1;
reg    buff_x_1_ce1_local;
reg   [4:0] buff_x_1_address1_local;
reg    buff_x_1_ce0_local;
reg   [4:0] buff_x_1_address0_local;
reg    buff_x_1_we0_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
wire   [4:0] lshr_ln5_fu_904_p4;
wire   [31:0] grp_fu_1604_p2;
reg   [31:0] grp_fu_1604_p0;
reg   [31:0] grp_fu_1604_p1;
reg    grp_fu_1604_ce;
wire   [31:0] grp_fu_1608_p2;
reg   [31:0] grp_fu_1608_p0;
reg   [31:0] grp_fu_1608_p1;
reg    grp_fu_1608_ce;
wire   [31:0] grp_fu_1612_p2;
reg   [31:0] grp_fu_1612_p0;
reg   [31:0] grp_fu_1612_p1;
reg    grp_fu_1612_ce;
wire   [31:0] grp_fu_1616_p2;
reg   [31:0] grp_fu_1616_p0;
reg   [31:0] grp_fu_1616_p1;
reg    grp_fu_1616_ce;
reg   [24:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
reg    ap_ST_fsm_state25_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 25'd1;
#0 grp_atax_Pipeline_lprd_2_fu_767_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp1_fu_778_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_lp4_fu_854_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_864_ap_start_reg = 1'b0;
#0 i_fu_122 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_atax_Pipeline_lp1_fu_778_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_atax_Pipeline_lp1_fu_778_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_atax_Pipeline_lp1_fu_778_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_atax_Pipeline_lp1_fu_778_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_atax_Pipeline_lp1_fu_778_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_atax_Pipeline_lp1_fu_778_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_atax_Pipeline_lp1_fu_778_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_atax_Pipeline_lp1_fu_778_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_atax_Pipeline_lp1_fu_778_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_atax_Pipeline_lp1_fu_778_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_atax_Pipeline_lp1_fu_778_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_atax_Pipeline_lp1_fu_778_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0_local),.ce0(buff_x_ce0_local),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_923_p1),.q0(buff_x_q0),.address1(buff_x_address1_local),.ce1(buff_x_ce1_local),.q1(buff_x_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0_local),.ce0(buff_x_1_ce0_local),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_923_p1),.q0(buff_x_1_q0),.address1(buff_x_1_address1_local),.ce1(buff_x_1_ce1_local),.q1(buff_x_1_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0),.d0(buff_y_out_d0),.q0(buff_y_out_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_address1),.ce1(buff_y_out_ce1),.we1(buff_y_out_we1),.d1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_d1),.q1(buff_y_out_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0),.d0(buff_y_out_1_d0),.q0(buff_y_out_1_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_address1),.ce1(buff_y_out_1_ce1),.we1(buff_y_out_1_we1),.d1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_d1),.q1(buff_y_out_1_q1));
atax_tmp1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0));
atax_tmp1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_767(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_767_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_767_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_767_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_767_ap_ready),.i(trunc_ln11_reg_976),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_767_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_767_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_767_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_767_A_1_ce0),.A_1_q0(A_1_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_d0));
atax_atax_Pipeline_lp1 grp_atax_Pipeline_lp1_fu_778(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_fu_778_ap_start),.ap_done(grp_atax_Pipeline_lp1_fu_778_ap_done),.ap_idle(grp_atax_Pipeline_lp1_fu_778_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_fu_778_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_fu_778_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_fu_778_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp1_fu_778_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp1_fu_778_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_atax_Pipeline_lp1_fu_778_buff_A_address2),.buff_A_ce2(grp_atax_Pipeline_lp1_fu_778_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_atax_Pipeline_lp1_fu_778_buff_A_address3),.buff_A_ce3(grp_atax_Pipeline_lp1_fu_778_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_atax_Pipeline_lp1_fu_778_buff_A_address4),.buff_A_ce4(grp_atax_Pipeline_lp1_fu_778_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_atax_Pipeline_lp1_fu_778_buff_A_address5),.buff_A_ce5(grp_atax_Pipeline_lp1_fu_778_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_atax_Pipeline_lp1_fu_778_buff_A_address6),.buff_A_ce6(grp_atax_Pipeline_lp1_fu_778_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_atax_Pipeline_lp1_fu_778_buff_A_address7),.buff_A_ce7(grp_atax_Pipeline_lp1_fu_778_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_atax_Pipeline_lp1_fu_778_buff_A_address8),.buff_A_ce8(grp_atax_Pipeline_lp1_fu_778_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_atax_Pipeline_lp1_fu_778_buff_A_address9),.buff_A_ce9(grp_atax_Pipeline_lp1_fu_778_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_atax_Pipeline_lp1_fu_778_buff_A_address10),.buff_A_ce10(grp_atax_Pipeline_lp1_fu_778_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_atax_Pipeline_lp1_fu_778_buff_A_address11),.buff_A_ce11(grp_atax_Pipeline_lp1_fu_778_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_atax_Pipeline_lp1_fu_778_buff_A_address12),.buff_A_ce12(grp_atax_Pipeline_lp1_fu_778_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_atax_Pipeline_lp1_fu_778_buff_A_address13),.buff_A_ce13(grp_atax_Pipeline_lp1_fu_778_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_atax_Pipeline_lp1_fu_778_buff_A_address14),.buff_A_ce14(grp_atax_Pipeline_lp1_fu_778_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_atax_Pipeline_lp1_fu_778_buff_A_address15),.buff_A_ce15(grp_atax_Pipeline_lp1_fu_778_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address2),.buff_A_1_ce2(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address3),.buff_A_1_ce3(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address4),.buff_A_1_ce4(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address5),.buff_A_1_ce5(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address6),.buff_A_1_ce6(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address7),.buff_A_1_ce7(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address8),.buff_A_1_ce8(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address9),.buff_A_1_ce9(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address10),.buff_A_1_ce10(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address11),.buff_A_1_ce11(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address12),.buff_A_1_ce12(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address13),.buff_A_1_ce13(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address14),.buff_A_1_ce14(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_atax_Pipeline_lp1_fu_778_buff_A_1_address15),.buff_A_1_ce15(grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.tmp1_1_address0(grp_atax_Pipeline_lp1_fu_778_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_fu_778_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_fu_778_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_fu_778_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.tmp1_address0(grp_atax_Pipeline_lp1_fu_778_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_fu_778_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_fu_778_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_fu_778_tmp1_d0),.tmp1_q0(tmp1_q0),.buff_x_load(buff_x_load_reg_984),.buff_x_1_load(buff_x_1_load_reg_989),.buff_x_load_1(buff_x_load_1_reg_994),.buff_x_1_load_1(buff_x_1_load_1_reg_999),.buff_x_load_2(buff_x_load_2_reg_1024),.buff_x_1_load_2(buff_x_1_load_2_reg_1029),.buff_x_load_3(buff_x_load_3_reg_1034),.buff_x_1_load_3(buff_x_1_load_3_reg_1039),.buff_x_load_4(buff_x_load_4_reg_1064),.buff_x_1_load_4(buff_x_1_load_4_reg_1069),.buff_x_load_5(buff_x_load_5_reg_1074),.buff_x_1_load_5(buff_x_1_load_5_reg_1079),.buff_x_load_6(buff_x_load_6_reg_1104),.buff_x_1_load_6(buff_x_1_load_6_reg_1109),.buff_x_load_7(buff_x_load_7_reg_1114),.buff_x_1_load_7(buff_x_1_load_7_reg_1119),.buff_x_load_8(buff_x_load_8_reg_1144),.buff_x_1_load_8(buff_x_1_load_8_reg_1149),.buff_x_load_9(buff_x_load_9_reg_1154),.buff_x_1_load_9(buff_x_1_load_9_reg_1159),.buff_x_load_10(buff_x_load_10_reg_1184),.buff_x_1_load_10(buff_x_1_load_10_reg_1189),.buff_x_load_11(buff_x_load_11_reg_1194),.buff_x_1_load_11(buff_x_1_load_11_reg_1199),.buff_x_load_12(buff_x_load_12_reg_1224),.buff_x_1_load_12(buff_x_1_load_12_reg_1229),.buff_x_load_13(buff_x_load_13_reg_1234),.buff_x_1_load_13(buff_x_1_load_13_reg_1239),.buff_x_load_14(buff_x_load_14_reg_1264),.buff_x_1_load_14(buff_x_1_load_14_reg_1269),.buff_x_load_15(buff_x_load_15_reg_1274),.buff_x_1_load_15(buff_x_1_load_15_reg_1279),.buff_x_load_16(buff_x_load_16_reg_1304),.buff_x_1_load_16(buff_x_1_load_16_reg_1309),.buff_x_load_17(buff_x_load_17_reg_1314),.buff_x_1_load_17(buff_x_1_load_17_reg_1319),.buff_x_load_18(buff_x_load_18_reg_1344),.buff_x_1_load_18(buff_x_1_load_18_reg_1349),.buff_x_load_19(buff_x_load_19_reg_1354),.buff_x_1_load_19(buff_x_1_load_19_reg_1359),.buff_x_load_20(buff_x_load_20_reg_1384),.buff_x_1_load_20(buff_x_1_load_20_reg_1389),.buff_x_load_21(buff_x_load_21_reg_1394),.buff_x_1_load_21(buff_x_1_load_21_reg_1399),.buff_x_load_22(buff_x_load_22_reg_1424),.buff_x_1_load_22(buff_x_1_load_22_reg_1429),.buff_x_load_23(buff_x_load_23_reg_1434),.buff_x_1_load_23(buff_x_1_load_23_reg_1439),.buff_x_load_24(buff_x_load_24_reg_1464),.buff_x_1_load_24(buff_x_1_load_24_reg_1469),.buff_x_load_25(buff_x_load_25_reg_1474),.buff_x_1_load_25(buff_x_1_load_25_reg_1479),.buff_x_load_26(buff_x_load_26_reg_1504),.buff_x_1_load_26(buff_x_1_load_26_reg_1509),.buff_x_load_27(buff_x_load_27_reg_1514),.buff_x_1_load_27(buff_x_1_load_27_reg_1519),.buff_x_load_28(buff_x_load_28_reg_1544),.buff_x_1_load_28(buff_x_1_load_28_reg_1549),.buff_x_load_29(buff_x_load_29_reg_1554),.buff_x_1_load_29(buff_x_1_load_29_reg_1559),.buff_x_load_30(buff_x_load_30_reg_1584),.buff_x_1_load_30(buff_x_1_load_30_reg_1589),.buff_x_load_31(buff_x_load_31_reg_1594),.buff_x_1_load_31(buff_x_1_load_31_reg_1599),.grp_fu_1604_p_din0(grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_din0),.grp_fu_1604_p_din1(grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_din1),.grp_fu_1604_p_opcode(grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_opcode),.grp_fu_1604_p_dout0(grp_fu_1604_p2),.grp_fu_1604_p_ce(grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_ce),.grp_fu_1608_p_din0(grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_din0),.grp_fu_1608_p_din1(grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_din1),.grp_fu_1608_p_opcode(grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_opcode),.grp_fu_1608_p_dout0(grp_fu_1608_p2),.grp_fu_1608_p_ce(grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_ce),.grp_fu_1612_p_din0(grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_din0),.grp_fu_1612_p_din1(grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_din1),.grp_fu_1612_p_dout0(grp_fu_1612_p2),.grp_fu_1612_p_ce(grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_ce),.grp_fu_1616_p_din0(grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_din0),.grp_fu_1616_p_din1(grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_din1),.grp_fu_1616_p_dout0(grp_fu_1616_p2),.grp_fu_1616_p_ce(grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_ce));
atax_atax_Pipeline_lp3_lp4 grp_atax_Pipeline_lp3_lp4_fu_854(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_lp4_fu_854_ap_start),.ap_done(grp_atax_Pipeline_lp3_lp4_fu_854_ap_done),.ap_idle(grp_atax_Pipeline_lp3_lp4_fu_854_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_lp4_fu_854_ap_ready),.tmp1_address0(grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.buff_A_address0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address2),.buff_A_ce2(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address3),.buff_A_ce3(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_1_address0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address2),.buff_A_1_ce2(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address3),.buff_A_1_ce3(grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_y_out_address0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_ce0),.buff_y_out_we0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_we0),.buff_y_out_d0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_d0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_address1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_address1),.buff_y_out_ce1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_ce1),.buff_y_out_we1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_we1),.buff_y_out_d1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_d1),.buff_y_out_q1(buff_y_out_q1),.buff_y_out_1_address0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_ce0),.buff_y_out_1_we0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_we0),.buff_y_out_1_d0(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_d0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_1_address1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_address1),.buff_y_out_1_ce1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_ce1),.buff_y_out_1_we1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_we1),.buff_y_out_1_d1(grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_d1),.buff_y_out_1_q1(buff_y_out_1_q1),.grp_fu_1604_p_din0(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_din0),.grp_fu_1604_p_din1(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_din1),.grp_fu_1604_p_opcode(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_opcode),.grp_fu_1604_p_dout0(grp_fu_1604_p2),.grp_fu_1604_p_ce(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_ce),.grp_fu_1608_p_din0(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_din0),.grp_fu_1608_p_din1(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_din1),.grp_fu_1608_p_opcode(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_opcode),.grp_fu_1608_p_dout0(grp_fu_1608_p2),.grp_fu_1608_p_ce(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_ce),.grp_fu_1612_p_din0(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_din0),.grp_fu_1612_p_din1(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_din1),.grp_fu_1612_p_dout0(grp_fu_1612_p2),.grp_fu_1612_p_ce(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_ce),.grp_fu_1616_p_din0(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_din0),.grp_fu_1616_p_din1(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_din1),.grp_fu_1616_p_dout0(grp_fu_1616_p2),.grp_fu_1616_p_ce(grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_864(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_864_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_864_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_864_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_864_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_864_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_864_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U153(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1604_p0),.din1(grp_fu_1604_p1),.ce(grp_fu_1604_ce),.dout(grp_fu_1604_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U154(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1608_p0),.din1(grp_fu_1608_p1),.ce(grp_fu_1608_ce),.dout(grp_fu_1608_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U155(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1612_p0),.din1(grp_fu_1612_p1),.ce(grp_fu_1612_ce),.dout(grp_fu_1612_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U156(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1616_p0),.din1(grp_fu_1616_p1),.ce(grp_fu_1616_ce),.dout(grp_fu_1616_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_fu_778_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_atax_Pipeline_lp1_fu_778_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_fu_778_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_fu_778_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_lp4_fu_854_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_atax_Pipeline_lp3_lp4_fu_854_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_lp4_fu_854_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_lp4_fu_854_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_767_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_Pipeline_lprd_2_fu_767_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_767_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_767_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_864_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_atax_Pipeline_lpwr_1_fu_864_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_864_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_864_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_122 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_122 <= add_ln11_reg_946;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_946 <= add_ln11_fu_886_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_1_load_10_reg_1189 <= buff_x_1_q0;
        buff_x_1_load_11_reg_1199 <= buff_x_1_q1;
        buff_x_load_10_reg_1184 <= buff_x_q0;
        buff_x_load_11_reg_1194 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_1_load_12_reg_1229 <= buff_x_1_q0;
        buff_x_1_load_13_reg_1239 <= buff_x_1_q1;
        buff_x_load_12_reg_1224 <= buff_x_q0;
        buff_x_load_13_reg_1234 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_x_1_load_14_reg_1269 <= buff_x_1_q0;
        buff_x_1_load_15_reg_1279 <= buff_x_1_q1;
        buff_x_load_14_reg_1264 <= buff_x_q0;
        buff_x_load_15_reg_1274 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x_1_load_16_reg_1309 <= buff_x_1_q0;
        buff_x_1_load_17_reg_1319 <= buff_x_1_q1;
        buff_x_load_16_reg_1304 <= buff_x_q0;
        buff_x_load_17_reg_1314 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_x_1_load_18_reg_1349 <= buff_x_1_q0;
        buff_x_1_load_19_reg_1359 <= buff_x_1_q1;
        buff_x_load_18_reg_1344 <= buff_x_q0;
        buff_x_load_19_reg_1354 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_load_1_reg_999 <= buff_x_1_q0;
        buff_x_1_load_reg_989 <= buff_x_1_q1;
        buff_x_load_1_reg_994 <= buff_x_q0;
        buff_x_load_reg_984 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x_1_load_20_reg_1389 <= buff_x_1_q0;
        buff_x_1_load_21_reg_1399 <= buff_x_1_q1;
        buff_x_load_20_reg_1384 <= buff_x_q0;
        buff_x_load_21_reg_1394 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_x_1_load_22_reg_1429 <= buff_x_1_q0;
        buff_x_1_load_23_reg_1439 <= buff_x_1_q1;
        buff_x_load_22_reg_1424 <= buff_x_q0;
        buff_x_load_23_reg_1434 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x_1_load_24_reg_1469 <= buff_x_1_q0;
        buff_x_1_load_25_reg_1479 <= buff_x_1_q1;
        buff_x_load_24_reg_1464 <= buff_x_q0;
        buff_x_load_25_reg_1474 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_x_1_load_26_reg_1509 <= buff_x_1_q0;
        buff_x_1_load_27_reg_1519 <= buff_x_1_q1;
        buff_x_load_26_reg_1504 <= buff_x_q0;
        buff_x_load_27_reg_1514 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_x_1_load_28_reg_1549 <= buff_x_1_q0;
        buff_x_1_load_29_reg_1559 <= buff_x_1_q1;
        buff_x_load_28_reg_1544 <= buff_x_q0;
        buff_x_load_29_reg_1554 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_load_2_reg_1029 <= buff_x_1_q0;
        buff_x_1_load_3_reg_1039 <= buff_x_1_q1;
        buff_x_load_2_reg_1024 <= buff_x_q0;
        buff_x_load_3_reg_1034 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_x_1_load_30_reg_1589 <= buff_x_1_q0;
        buff_x_1_load_31_reg_1599 <= buff_x_1_q1;
        buff_x_load_30_reg_1584 <= buff_x_q0;
        buff_x_load_31_reg_1594 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_load_4_reg_1069 <= buff_x_1_q0;
        buff_x_1_load_5_reg_1079 <= buff_x_1_q1;
        buff_x_load_4_reg_1064 <= buff_x_q0;
        buff_x_load_5_reg_1074 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_load_6_reg_1109 <= buff_x_1_q0;
        buff_x_1_load_7_reg_1119 <= buff_x_1_q1;
        buff_x_load_6_reg_1104 <= buff_x_q0;
        buff_x_load_7_reg_1114 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_load_8_reg_1149 <= buff_x_1_q0;
        buff_x_1_load_9_reg_1159 <= buff_x_1_q1;
        buff_x_load_8_reg_1144 <= buff_x_q0;
        buff_x_load_9_reg_1154 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_reg_976 <= trunc_ln11_fu_897_p1;
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
    if ((grp_atax_Pipeline_lp1_fu_778_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_lp4_fu_854_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state24_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_864_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lprd_2_fu_767_ap_done == 1'b0)) begin
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
    if (((grp_atax_Pipeline_lpwr_1_fu_864_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
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
    if (((grp_atax_Pipeline_lpwr_1_fu_864_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_address1 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address1 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_address2 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address2 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_address2;
    end else begin
        buff_A_1_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_address3 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_address3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address3 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_address3;
    end else begin
        buff_A_1_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce10 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce11 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce12 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce13 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce14 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce15 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_ce2 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce2 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_ce3 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_1_ce3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce3 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce4 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce5 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce6 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce7 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce8 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce9 = grp_atax_Pipeline_lp1_fu_778_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_767_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_fu_778_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_767_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_address1 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address1 = grp_atax_Pipeline_lp1_fu_778_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_address2 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address2 = grp_atax_Pipeline_lp1_fu_778_buff_A_address2;
    end else begin
        buff_A_address2 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_address3 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_address3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address3 = grp_atax_Pipeline_lp1_fu_778_buff_A_address3;
    end else begin
        buff_A_address3 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_767_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce10 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce11 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce12 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce13 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce14 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce15 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_ce2 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce2 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_ce3 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_A_ce3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce3 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce4 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce5 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce6 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce7 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce8 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce9 = grp_atax_Pipeline_lp1_fu_778_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_767_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_x_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_x_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_x_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_x_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_x_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_1_address0_local = zext_ln5_fu_913_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address0_local = 64'd1;
    end else begin
        buff_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_x_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_x_1_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x_1_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_x_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x_1_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_x_1_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_x_1_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address1_local = 64'd0;
    end else begin
        buff_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_1_ce1_local = 1'b1;
    end else begin
        buff_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_901_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_x_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_x_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_x_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_x_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_x_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_address0_local = zext_ln5_fu_913_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address0_local = 64'd1;
    end else begin
        buff_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_x_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_x_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_x_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_x_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_x_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address1_local = 64'd0;
    end else begin
        buff_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_ce1_local = 1'b1;
    end else begin
        buff_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_901_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = zext_ln5_fu_913_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_ce1 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_ce1;
    end else begin
        buff_y_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_d0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_d0;
    end else begin
        buff_y_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_we0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_we0;
    end else begin
        buff_y_out_1_we0 = buff_y_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_901_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_1_we1 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_1_we1;
    end else begin
        buff_y_out_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = zext_ln5_fu_913_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_864_buff_y_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_ce1 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_ce1;
    end else begin
        buff_y_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_d0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_d0;
    end else begin
        buff_y_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_we0 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_we0;
    end else begin
        buff_y_out_we0 = buff_y_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_901_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y_out_we1 = grp_atax_Pipeline_lp3_lp4_fu_854_buff_y_out_we1;
    end else begin
        buff_y_out_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1604_ce = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1604_ce = grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_ce;
    end else begin
        grp_fu_1604_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1604_p0 = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1604_p0 = grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_din0;
    end else begin
        grp_fu_1604_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1604_p1 = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1604_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1604_p1 = grp_atax_Pipeline_lp1_fu_778_grp_fu_1604_p_din1;
    end else begin
        grp_fu_1604_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1608_ce = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1608_ce = grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_ce;
    end else begin
        grp_fu_1608_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1608_p0 = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1608_p0 = grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_din0;
    end else begin
        grp_fu_1608_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1608_p1 = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1608_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1608_p1 = grp_atax_Pipeline_lp1_fu_778_grp_fu_1608_p_din1;
    end else begin
        grp_fu_1608_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1612_ce = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1612_ce = grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_ce;
    end else begin
        grp_fu_1612_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1612_p0 = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1612_p0 = grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_din0;
    end else begin
        grp_fu_1612_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1612_p1 = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1612_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1612_p1 = grp_atax_Pipeline_lp1_fu_778_grp_fu_1612_p_din1;
    end else begin
        grp_fu_1612_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1616_ce = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1616_ce = grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_ce;
    end else begin
        grp_fu_1616_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1616_p0 = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1616_p0 = grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_din0;
    end else begin
        grp_fu_1616_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1616_p1 = grp_atax_Pipeline_lp3_lp4_fu_854_grp_fu_1616_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1616_p1 = grp_atax_Pipeline_lp1_fu_778_grp_fu_1616_p_din1;
    end else begin
        grp_fu_1616_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_fu_778_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_913_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_fu_778_tmp1_1_ce0;
    end else begin
        tmp1_1_ce0 = tmp1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_fu_778_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_fu_778_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_901_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_fu_778_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_913_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_854_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_fu_778_tmp1_ce0;
    end else begin
        tmp1_ce0 = tmp1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_fu_778_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_fu_778_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_901_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x_ce0_local = 1'b1;
    end else begin
        x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_864_y_out_write;
    end else begin
        y_out_write = 1'b0;
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
            if (((icmp_ln11_fu_880_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_Pipeline_lprd_2_fu_767_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
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
            if (((grp_atax_Pipeline_lp1_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((grp_atax_Pipeline_lp3_lp4_fu_854_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((grp_atax_Pipeline_lpwr_1_fu_864_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_767_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_767_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_767_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_767_A_1_ce0;
assign add_ln11_fu_886_p2 = (i_fu_122 + 7'd1);
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
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln12_fu_923_p1 = x_q0;
assign grp_atax_Pipeline_lp1_fu_778_ap_start = grp_atax_Pipeline_lp1_fu_778_ap_start_reg;
assign grp_atax_Pipeline_lp3_lp4_fu_854_ap_start = grp_atax_Pipeline_lp3_lp4_fu_854_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_767_ap_start = grp_atax_Pipeline_lprd_2_fu_767_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_864_ap_start = grp_atax_Pipeline_lpwr_1_fu_864_ap_start_reg;
assign icmp_ln11_fu_880_p2 = ((i_fu_122 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_904_p4 = {{i_fu_122[5:1]}};
assign trunc_ln11_1_fu_901_p1 = i_fu_122[0:0];
assign trunc_ln11_fu_897_p1 = i_fu_122[5:0];
assign x_address0 = zext_ln11_fu_892_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_864_y_out_din;
assign zext_ln11_fu_892_p1 = i_fu_122;
assign zext_ln5_fu_913_p1 = lshr_ln5_fu_904_p4;
endmodule 