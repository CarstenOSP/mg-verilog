module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
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
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_1033_p2;
reg   [6:0] add_ln11_reg_1105;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_1044_p1;
reg   [5:0] trunc_ln11_reg_1155;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln11_2_fu_1051_p1;
reg   [0:0] trunc_ln11_2_reg_1163;
wire    ap_CS_fsm_state5;
reg   [31:0] buff_x_load_reg_1208;
reg   [31:0] buff_x_1_load_reg_1213;
reg   [31:0] buff_x_2_load_reg_1218;
reg   [31:0] buff_x_3_load_reg_1223;
reg   [31:0] buff_x_load_1_reg_1228;
reg   [31:0] buff_x_1_load_1_reg_1233;
reg   [31:0] buff_x_2_load_1_reg_1238;
reg   [31:0] buff_x_3_load_1_reg_1243;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_x_load_2_reg_1288;
reg   [31:0] buff_x_1_load_2_reg_1293;
reg   [31:0] buff_x_2_load_2_reg_1298;
reg   [31:0] buff_x_3_load_2_reg_1303;
reg   [31:0] buff_x_load_3_reg_1308;
reg   [31:0] buff_x_1_load_3_reg_1313;
reg   [31:0] buff_x_2_load_3_reg_1318;
reg   [31:0] buff_x_3_load_3_reg_1323;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_x_load_4_reg_1368;
reg   [31:0] buff_x_1_load_4_reg_1373;
reg   [31:0] buff_x_2_load_4_reg_1378;
reg   [31:0] buff_x_3_load_4_reg_1383;
reg   [31:0] buff_x_load_5_reg_1388;
reg   [31:0] buff_x_1_load_5_reg_1393;
reg   [31:0] buff_x_2_load_5_reg_1398;
reg   [31:0] buff_x_3_load_5_reg_1403;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_x_load_6_reg_1448;
reg   [31:0] buff_x_1_load_6_reg_1453;
reg   [31:0] buff_x_2_load_6_reg_1458;
reg   [31:0] buff_x_3_load_6_reg_1463;
reg   [31:0] buff_x_load_7_reg_1468;
reg   [31:0] buff_x_1_load_7_reg_1473;
reg   [31:0] buff_x_2_load_7_reg_1478;
reg   [31:0] buff_x_3_load_7_reg_1483;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_x_load_8_reg_1528;
reg   [31:0] buff_x_1_load_8_reg_1533;
reg   [31:0] buff_x_2_load_8_reg_1538;
reg   [31:0] buff_x_3_load_8_reg_1543;
reg   [31:0] buff_x_load_9_reg_1548;
reg   [31:0] buff_x_1_load_9_reg_1553;
reg   [31:0] buff_x_2_load_9_reg_1558;
reg   [31:0] buff_x_3_load_9_reg_1563;
wire    ap_CS_fsm_state10;
reg   [31:0] buff_x_load_10_reg_1608;
reg   [31:0] buff_x_1_load_10_reg_1613;
reg   [31:0] buff_x_2_load_10_reg_1618;
reg   [31:0] buff_x_3_load_10_reg_1623;
reg   [31:0] buff_x_load_11_reg_1628;
reg   [31:0] buff_x_1_load_11_reg_1633;
reg   [31:0] buff_x_2_load_11_reg_1638;
reg   [31:0] buff_x_3_load_11_reg_1643;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_x_load_12_reg_1688;
reg   [31:0] buff_x_1_load_12_reg_1693;
reg   [31:0] buff_x_2_load_12_reg_1698;
reg   [31:0] buff_x_3_load_12_reg_1703;
reg   [31:0] buff_x_load_13_reg_1708;
reg   [31:0] buff_x_1_load_13_reg_1713;
reg   [31:0] buff_x_2_load_13_reg_1718;
reg   [31:0] buff_x_3_load_13_reg_1723;
reg   [31:0] buff_x_load_14_reg_1728;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_x_1_load_14_reg_1733;
reg   [31:0] buff_x_2_load_14_reg_1738;
reg   [31:0] buff_x_3_load_14_reg_1743;
reg   [31:0] buff_x_load_15_reg_1748;
reg   [31:0] buff_x_1_load_15_reg_1753;
reg   [31:0] buff_x_2_load_15_reg_1758;
reg   [31:0] buff_x_3_load_15_reg_1763;
reg   [8:0] buff_A_address0;
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
reg   [8:0] buff_A_1_address0;
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
reg   [8:0] buff_A_2_address0;
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
reg   [8:0] buff_A_3_address0;
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
reg   [8:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg    buff_A_4_ce1;
wire   [31:0] buff_A_4_q1;
reg    buff_A_4_ce2;
wire   [31:0] buff_A_4_q2;
reg    buff_A_4_ce3;
wire   [31:0] buff_A_4_q3;
reg    buff_A_4_ce4;
wire   [31:0] buff_A_4_q4;
reg    buff_A_4_ce5;
wire   [31:0] buff_A_4_q5;
reg    buff_A_4_ce6;
wire   [31:0] buff_A_4_q6;
reg    buff_A_4_ce7;
wire   [31:0] buff_A_4_q7;
reg    buff_A_4_ce8;
wire   [31:0] buff_A_4_q8;
reg    buff_A_4_ce9;
wire   [31:0] buff_A_4_q9;
reg    buff_A_4_ce10;
wire   [31:0] buff_A_4_q10;
reg    buff_A_4_ce11;
wire   [31:0] buff_A_4_q11;
reg    buff_A_4_ce12;
wire   [31:0] buff_A_4_q12;
reg    buff_A_4_ce13;
wire   [31:0] buff_A_4_q13;
reg    buff_A_4_ce14;
wire   [31:0] buff_A_4_q14;
reg    buff_A_4_ce15;
wire   [31:0] buff_A_4_q15;
reg   [8:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg    buff_A_5_ce1;
wire   [31:0] buff_A_5_q1;
reg    buff_A_5_ce2;
wire   [31:0] buff_A_5_q2;
reg    buff_A_5_ce3;
wire   [31:0] buff_A_5_q3;
reg    buff_A_5_ce4;
wire   [31:0] buff_A_5_q4;
reg    buff_A_5_ce5;
wire   [31:0] buff_A_5_q5;
reg    buff_A_5_ce6;
wire   [31:0] buff_A_5_q6;
reg    buff_A_5_ce7;
wire   [31:0] buff_A_5_q7;
reg    buff_A_5_ce8;
wire   [31:0] buff_A_5_q8;
reg    buff_A_5_ce9;
wire   [31:0] buff_A_5_q9;
reg    buff_A_5_ce10;
wire   [31:0] buff_A_5_q10;
reg    buff_A_5_ce11;
wire   [31:0] buff_A_5_q11;
reg    buff_A_5_ce12;
wire   [31:0] buff_A_5_q12;
reg    buff_A_5_ce13;
wire   [31:0] buff_A_5_q13;
reg    buff_A_5_ce14;
wire   [31:0] buff_A_5_q14;
reg    buff_A_5_ce15;
wire   [31:0] buff_A_5_q15;
reg   [8:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg    buff_A_6_ce1;
wire   [31:0] buff_A_6_q1;
reg    buff_A_6_ce2;
wire   [31:0] buff_A_6_q2;
reg    buff_A_6_ce3;
wire   [31:0] buff_A_6_q3;
reg    buff_A_6_ce4;
wire   [31:0] buff_A_6_q4;
reg    buff_A_6_ce5;
wire   [31:0] buff_A_6_q5;
reg    buff_A_6_ce6;
wire   [31:0] buff_A_6_q6;
reg    buff_A_6_ce7;
wire   [31:0] buff_A_6_q7;
reg    buff_A_6_ce8;
wire   [31:0] buff_A_6_q8;
reg    buff_A_6_ce9;
wire   [31:0] buff_A_6_q9;
reg    buff_A_6_ce10;
wire   [31:0] buff_A_6_q10;
reg    buff_A_6_ce11;
wire   [31:0] buff_A_6_q11;
reg    buff_A_6_ce12;
wire   [31:0] buff_A_6_q12;
reg    buff_A_6_ce13;
wire   [31:0] buff_A_6_q13;
reg    buff_A_6_ce14;
wire   [31:0] buff_A_6_q14;
reg    buff_A_6_ce15;
wire   [31:0] buff_A_6_q15;
reg   [8:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg    buff_A_7_ce1;
wire   [31:0] buff_A_7_q1;
reg    buff_A_7_ce2;
wire   [31:0] buff_A_7_q2;
reg    buff_A_7_ce3;
wire   [31:0] buff_A_7_q3;
reg    buff_A_7_ce4;
wire   [31:0] buff_A_7_q4;
reg    buff_A_7_ce5;
wire   [31:0] buff_A_7_q5;
reg    buff_A_7_ce6;
wire   [31:0] buff_A_7_q6;
reg    buff_A_7_ce7;
wire   [31:0] buff_A_7_q7;
reg    buff_A_7_ce8;
wire   [31:0] buff_A_7_q8;
reg    buff_A_7_ce9;
wire   [31:0] buff_A_7_q9;
reg    buff_A_7_ce10;
wire   [31:0] buff_A_7_q10;
reg    buff_A_7_ce11;
wire   [31:0] buff_A_7_q11;
reg    buff_A_7_ce12;
wire   [31:0] buff_A_7_q12;
reg    buff_A_7_ce13;
wire   [31:0] buff_A_7_q13;
reg    buff_A_7_ce14;
wire   [31:0] buff_A_7_q14;
reg    buff_A_7_ce15;
wire   [31:0] buff_A_7_q15;
wire   [31:0] buff_x_q0;
wire   [31:0] buff_x_q1;
wire   [31:0] buff_x_1_q0;
wire   [31:0] buff_x_1_q1;
wire   [31:0] buff_x_2_q0;
wire   [31:0] buff_x_2_q1;
wire   [31:0] buff_x_3_q0;
wire   [31:0] buff_x_3_q1;
reg   [3:0] buff_y_out_address0;
reg    buff_y_out_ce0;
reg    buff_y_out_we0;
reg   [31:0] buff_y_out_d0;
wire   [31:0] buff_y_out_q0;
reg    buff_y_out_ce1;
wire   [31:0] buff_y_out_q1;
reg   [3:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
reg    buff_y_out_1_we0;
reg   [31:0] buff_y_out_1_d0;
wire   [31:0] buff_y_out_1_q0;
reg    buff_y_out_1_ce1;
wire   [31:0] buff_y_out_1_q1;
reg   [3:0] buff_y_out_2_address0;
reg    buff_y_out_2_ce0;
reg    buff_y_out_2_we0;
reg   [31:0] buff_y_out_2_d0;
wire   [31:0] buff_y_out_2_q0;
reg    buff_y_out_2_ce1;
wire   [31:0] buff_y_out_2_q1;
reg   [3:0] buff_y_out_3_address0;
reg    buff_y_out_3_ce0;
reg    buff_y_out_3_we0;
reg   [31:0] buff_y_out_3_d0;
wire   [31:0] buff_y_out_3_q0;
reg    buff_y_out_3_ce1;
wire   [31:0] buff_y_out_3_q1;
reg   [3:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
reg    tmp1_ce1;
reg    tmp1_we1;
wire   [31:0] tmp1_q1;
reg   [3:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg    tmp1_1_ce1;
reg    tmp1_1_we1;
wire   [31:0] tmp1_1_q1;
reg   [3:0] tmp1_2_address0;
reg    tmp1_2_ce0;
reg    tmp1_2_we0;
reg   [31:0] tmp1_2_d0;
wire   [31:0] tmp1_2_q0;
reg    tmp1_2_ce1;
reg    tmp1_2_we1;
wire   [31:0] tmp1_2_q1;
reg   [3:0] tmp1_3_address0;
reg    tmp1_3_ce0;
reg    tmp1_3_we0;
reg   [31:0] tmp1_3_d0;
wire   [31:0] tmp1_3_q0;
reg    tmp1_3_ce1;
reg    tmp1_3_we1;
wire   [31:0] tmp1_3_q1;
wire    grp_atax_Pipeline_lprd_2_fu_879_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_879_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_879_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_879_ap_ready;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_879_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_A_0_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_879_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_879_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_879_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_d0;
wire    grp_atax_Pipeline_lp1_fu_901_ap_start;
wire    grp_atax_Pipeline_lp1_fu_901_ap_done;
wire    grp_atax_Pipeline_lp1_fu_901_ap_idle;
wire    grp_atax_Pipeline_lp1_fu_901_ap_ready;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address0;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address1;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address2;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address3;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address4;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address5;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address6;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address7;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address8;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address9;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address10;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address11;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address12;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address13;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address14;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_address15;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address1;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address2;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address3;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address4;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address5;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address6;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address7;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address8;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address9;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address10;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address11;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address12;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address13;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address14;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_1_address15;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address1;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address2;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address3;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address4;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address5;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address6;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address7;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address8;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address9;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address10;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address11;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address12;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address13;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address14;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_2_address15;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address1;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address2;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address3;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address4;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address5;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address6;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address7;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address8;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address9;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address10;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address11;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address12;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address13;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address14;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_3_address15;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address0;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address1;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address2;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address3;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address4;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address5;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address6;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address7;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address8;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address9;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address10;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address11;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address12;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address13;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address14;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_4_address15;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address0;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address1;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address2;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address3;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address4;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address5;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address6;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address7;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address8;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address9;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address10;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address11;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address12;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address13;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address14;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_5_address15;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address0;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address1;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address2;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address3;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address4;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address5;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address6;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address7;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address8;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address9;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address10;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address11;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address12;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address13;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address14;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_6_address15;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address0;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address1;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address2;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address3;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address4;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address5;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address6;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address7;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address8;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address9;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address10;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address11;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address12;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address13;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address14;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_901_buff_A_7_address15;
wire    grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce15;
wire   [3:0] grp_atax_Pipeline_lp1_fu_901_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_tmp1_3_d0;
wire   [3:0] grp_atax_Pipeline_lp1_fu_901_tmp1_3_address1;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_3_ce1;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_3_we1;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_tmp1_3_d1;
wire   [3:0] grp_atax_Pipeline_lp1_fu_901_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_tmp1_2_d0;
wire   [3:0] grp_atax_Pipeline_lp1_fu_901_tmp1_2_address1;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_2_ce1;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_2_we1;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_tmp1_2_d1;
wire   [3:0] grp_atax_Pipeline_lp1_fu_901_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_tmp1_1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_fu_901_tmp1_1_address1;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_1_ce1;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_1_we1;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_tmp1_1_d1;
wire   [3:0] grp_atax_Pipeline_lp1_fu_901_tmp1_address0;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_tmp1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_fu_901_tmp1_address1;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_ce1;
wire    grp_atax_Pipeline_lp1_fu_901_tmp1_we1;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_tmp1_d1;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_din1;
wire    grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_ce;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_ap_start;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_ap_done;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_ap_idle;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_ap_ready;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_2_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_4_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_5_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_6_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_7_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_7_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_d0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_ce1;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_d0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_ce1;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_d0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_ce1;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_d0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_ce1;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_opcode;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_din1;
wire    grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_1009_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_y_out_write;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_1_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_2_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_3_ce0;
reg    grp_atax_Pipeline_lprd_2_fu_879_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_lp1_fu_901_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_atax_Pipeline_lp3_lp4_fu_989_ap_start_reg;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
reg    grp_atax_Pipeline_lpwr_1_fu_1009_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire   [63:0] zext_ln11_fu_1039_p1;
wire   [0:0] icmp_ln11_fu_1027_p2;
wire   [63:0] zext_ln5_fu_1064_p1;
reg   [6:0] i_fu_102;
reg    x_ce0_local;
reg    buff_x_ce1_local;
reg   [3:0] buff_x_address1_local;
reg    buff_x_ce0_local;
reg   [3:0] buff_x_address0_local;
reg    buff_x_we0_local;
wire   [1:0] trunc_ln11_1_fu_1048_p1;
wire   [31:0] bitcast_ln12_fu_1080_p1;
reg    buff_x_1_ce1_local;
reg   [3:0] buff_x_1_address1_local;
reg    buff_x_1_ce0_local;
reg   [3:0] buff_x_1_address0_local;
reg    buff_x_1_we0_local;
reg    buff_x_2_ce1_local;
reg   [3:0] buff_x_2_address1_local;
reg    buff_x_2_ce0_local;
reg   [3:0] buff_x_2_address0_local;
reg    buff_x_2_we0_local;
reg    buff_x_3_ce1_local;
reg   [3:0] buff_x_3_address1_local;
reg    buff_x_3_ce0_local;
reg   [3:0] buff_x_3_address0_local;
reg    buff_x_3_we0_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_2_ce0_local;
reg    tmp1_2_we0_local;
reg    tmp1_2_ce0_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    buff_y_out_3_we0_local;
reg    buff_y_out_3_ce0_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
wire   [3:0] lshr_ln5_1_fu_1055_p4;
wire   [31:0] grp_fu_1768_p2;
reg   [31:0] grp_fu_1768_p0;
reg   [31:0] grp_fu_1768_p1;
reg    grp_fu_1768_ce;
wire   [31:0] grp_fu_1772_p2;
reg   [31:0] grp_fu_1772_p0;
reg   [31:0] grp_fu_1772_p1;
reg    grp_fu_1772_ce;
reg   [16:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_atax_Pipeline_lprd_2_fu_879_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp1_fu_901_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_lp4_fu_989_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_1009_ap_start_reg = 1'b0;
#0 i_fu_102 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_d0),.q0(buff_A_q0),.address1(grp_atax_Pipeline_lp1_fu_901_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_atax_Pipeline_lp1_fu_901_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_atax_Pipeline_lp1_fu_901_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_atax_Pipeline_lp1_fu_901_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_atax_Pipeline_lp1_fu_901_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_atax_Pipeline_lp1_fu_901_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_atax_Pipeline_lp1_fu_901_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_atax_Pipeline_lp1_fu_901_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_atax_Pipeline_lp1_fu_901_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_atax_Pipeline_lp1_fu_901_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_atax_Pipeline_lp1_fu_901_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_atax_Pipeline_lp1_fu_901_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_atax_Pipeline_lp1_fu_901_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_atax_Pipeline_lp1_fu_901_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_atax_Pipeline_lp1_fu_901_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1),.address2(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address2),.ce2(buff_A_4_ce2),.q2(buff_A_4_q2),.address3(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address3),.ce3(buff_A_4_ce3),.q3(buff_A_4_q3),.address4(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address4),.ce4(buff_A_4_ce4),.q4(buff_A_4_q4),.address5(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address5),.ce5(buff_A_4_ce5),.q5(buff_A_4_q5),.address6(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address6),.ce6(buff_A_4_ce6),.q6(buff_A_4_q6),.address7(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address7),.ce7(buff_A_4_ce7),.q7(buff_A_4_q7),.address8(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address8),.ce8(buff_A_4_ce8),.q8(buff_A_4_q8),.address9(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address9),.ce9(buff_A_4_ce9),.q9(buff_A_4_q9),.address10(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address10),.ce10(buff_A_4_ce10),.q10(buff_A_4_q10),.address11(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address11),.ce11(buff_A_4_ce11),.q11(buff_A_4_q11),.address12(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address12),.ce12(buff_A_4_ce12),.q12(buff_A_4_q12),.address13(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address13),.ce13(buff_A_4_ce13),.q13(buff_A_4_q13),.address14(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address14),.ce14(buff_A_4_ce14),.q14(buff_A_4_q14),.address15(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address15),.ce15(buff_A_4_ce15),.q15(buff_A_4_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1),.address2(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address2),.ce2(buff_A_5_ce2),.q2(buff_A_5_q2),.address3(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address3),.ce3(buff_A_5_ce3),.q3(buff_A_5_q3),.address4(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address4),.ce4(buff_A_5_ce4),.q4(buff_A_5_q4),.address5(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address5),.ce5(buff_A_5_ce5),.q5(buff_A_5_q5),.address6(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address6),.ce6(buff_A_5_ce6),.q6(buff_A_5_q6),.address7(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address7),.ce7(buff_A_5_ce7),.q7(buff_A_5_q7),.address8(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address8),.ce8(buff_A_5_ce8),.q8(buff_A_5_q8),.address9(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address9),.ce9(buff_A_5_ce9),.q9(buff_A_5_q9),.address10(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address10),.ce10(buff_A_5_ce10),.q10(buff_A_5_q10),.address11(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address11),.ce11(buff_A_5_ce11),.q11(buff_A_5_q11),.address12(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address12),.ce12(buff_A_5_ce12),.q12(buff_A_5_q12),.address13(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address13),.ce13(buff_A_5_ce13),.q13(buff_A_5_q13),.address14(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address14),.ce14(buff_A_5_ce14),.q14(buff_A_5_q14),.address15(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address15),.ce15(buff_A_5_ce15),.q15(buff_A_5_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1),.address2(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address2),.ce2(buff_A_6_ce2),.q2(buff_A_6_q2),.address3(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address3),.ce3(buff_A_6_ce3),.q3(buff_A_6_q3),.address4(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address4),.ce4(buff_A_6_ce4),.q4(buff_A_6_q4),.address5(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address5),.ce5(buff_A_6_ce5),.q5(buff_A_6_q5),.address6(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address6),.ce6(buff_A_6_ce6),.q6(buff_A_6_q6),.address7(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address7),.ce7(buff_A_6_ce7),.q7(buff_A_6_q7),.address8(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address8),.ce8(buff_A_6_ce8),.q8(buff_A_6_q8),.address9(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address9),.ce9(buff_A_6_ce9),.q9(buff_A_6_q9),.address10(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address10),.ce10(buff_A_6_ce10),.q10(buff_A_6_q10),.address11(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address11),.ce11(buff_A_6_ce11),.q11(buff_A_6_q11),.address12(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address12),.ce12(buff_A_6_ce12),.q12(buff_A_6_q12),.address13(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address13),.ce13(buff_A_6_ce13),.q13(buff_A_6_q13),.address14(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address14),.ce14(buff_A_6_ce14),.q14(buff_A_6_q14),.address15(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address15),.ce15(buff_A_6_ce15),.q15(buff_A_6_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1),.address2(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address2),.ce2(buff_A_7_ce2),.q2(buff_A_7_q2),.address3(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address3),.ce3(buff_A_7_ce3),.q3(buff_A_7_q3),.address4(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address4),.ce4(buff_A_7_ce4),.q4(buff_A_7_q4),.address5(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address5),.ce5(buff_A_7_ce5),.q5(buff_A_7_q5),.address6(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address6),.ce6(buff_A_7_ce6),.q6(buff_A_7_q6),.address7(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address7),.ce7(buff_A_7_ce7),.q7(buff_A_7_q7),.address8(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address8),.ce8(buff_A_7_ce8),.q8(buff_A_7_q8),.address9(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address9),.ce9(buff_A_7_ce9),.q9(buff_A_7_q9),.address10(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address10),.ce10(buff_A_7_ce10),.q10(buff_A_7_q10),.address11(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address11),.ce11(buff_A_7_ce11),.q11(buff_A_7_q11),.address12(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address12),.ce12(buff_A_7_ce12),.q12(buff_A_7_q12),.address13(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address13),.ce13(buff_A_7_ce13),.q13(buff_A_7_q13),.address14(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address14),.ce14(buff_A_7_ce14),.q14(buff_A_7_q14),.address15(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address15),.ce15(buff_A_7_ce15),.q15(buff_A_7_q15));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0_local),.ce0(buff_x_ce0_local),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_1080_p1),.q0(buff_x_q0),.address1(buff_x_address1_local),.ce1(buff_x_ce1_local),.q1(buff_x_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0_local),.ce0(buff_x_1_ce0_local),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_1080_p1),.q0(buff_x_1_q0),.address1(buff_x_1_address1_local),.ce1(buff_x_1_ce1_local),.q1(buff_x_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0_local),.ce0(buff_x_2_ce0_local),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_1080_p1),.q0(buff_x_2_q0),.address1(buff_x_2_address1_local),.ce1(buff_x_2_ce1_local),.q1(buff_x_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0_local),.ce0(buff_x_3_ce0_local),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_1080_p1),.q0(buff_x_3_q0),.address1(buff_x_3_address1_local),.ce1(buff_x_3_ce1_local),.q1(buff_x_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0),.d0(buff_y_out_d0),.q0(buff_y_out_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_address1),.ce1(buff_y_out_ce1),.q1(buff_y_out_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0),.d0(buff_y_out_1_d0),.q0(buff_y_out_1_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_address1),.ce1(buff_y_out_1_ce1),.q1(buff_y_out_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_2_address0),.ce0(buff_y_out_2_ce0),.we0(buff_y_out_2_we0),.d0(buff_y_out_2_d0),.q0(buff_y_out_2_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_address1),.ce1(buff_y_out_2_ce1),.q1(buff_y_out_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_3_address0),.ce0(buff_y_out_3_ce0),.we0(buff_y_out_3_we0),.d0(buff_y_out_3_d0),.q0(buff_y_out_3_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_address1),.ce1(buff_y_out_3_ce1),.q1(buff_y_out_3_q1));
atax_tmp1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0),.address1(grp_atax_Pipeline_lp1_fu_901_tmp1_address1),.ce1(tmp1_ce1),.we1(tmp1_we1),.d1(grp_atax_Pipeline_lp1_fu_901_tmp1_d1),.q1(tmp1_q1));
atax_tmp1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0),.address1(grp_atax_Pipeline_lp1_fu_901_tmp1_1_address1),.ce1(tmp1_1_ce1),.we1(tmp1_1_we1),.d1(grp_atax_Pipeline_lp1_fu_901_tmp1_1_d1),.q1(tmp1_1_q1));
atax_tmp1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_2_address0),.ce0(tmp1_2_ce0),.we0(tmp1_2_we0),.d0(tmp1_2_d0),.q0(tmp1_2_q0),.address1(grp_atax_Pipeline_lp1_fu_901_tmp1_2_address1),.ce1(tmp1_2_ce1),.we1(tmp1_2_we1),.d1(grp_atax_Pipeline_lp1_fu_901_tmp1_2_d1),.q1(tmp1_2_q1));
atax_tmp1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_3_address0),.ce0(tmp1_3_ce0),.we0(tmp1_3_we0),.d0(tmp1_3_d0),.q0(tmp1_3_q0),.address1(grp_atax_Pipeline_lp1_fu_901_tmp1_3_address1),.ce1(tmp1_3_ce1),.we1(tmp1_3_we1),.d1(grp_atax_Pipeline_lp1_fu_901_tmp1_3_d1),.q1(tmp1_3_q1));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_879(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_879_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_879_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_879_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_879_ap_ready),.i(trunc_ln11_reg_1155),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_879_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_879_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_879_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_879_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_879_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_879_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_879_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_879_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_d0),.buff_A_4_address0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_ce0),.buff_A_4_we0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_we0),.buff_A_4_d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_d0),.buff_A_5_address0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_ce0),.buff_A_5_we0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_we0),.buff_A_5_d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_d0),.buff_A_6_address0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_ce0),.buff_A_6_we0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_we0),.buff_A_6_d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_d0),.buff_A_7_address0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_ce0),.buff_A_7_we0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_we0),.buff_A_7_d0(grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_d0),.empty(trunc_ln11_2_reg_1163));
atax_atax_Pipeline_lp1 grp_atax_Pipeline_lp1_fu_901(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_fu_901_ap_start),.ap_done(grp_atax_Pipeline_lp1_fu_901_ap_done),.ap_idle(grp_atax_Pipeline_lp1_fu_901_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_fu_901_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_fu_901_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_fu_901_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp1_fu_901_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp1_fu_901_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_atax_Pipeline_lp1_fu_901_buff_A_address2),.buff_A_ce2(grp_atax_Pipeline_lp1_fu_901_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_atax_Pipeline_lp1_fu_901_buff_A_address3),.buff_A_ce3(grp_atax_Pipeline_lp1_fu_901_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_atax_Pipeline_lp1_fu_901_buff_A_address4),.buff_A_ce4(grp_atax_Pipeline_lp1_fu_901_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_atax_Pipeline_lp1_fu_901_buff_A_address5),.buff_A_ce5(grp_atax_Pipeline_lp1_fu_901_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_atax_Pipeline_lp1_fu_901_buff_A_address6),.buff_A_ce6(grp_atax_Pipeline_lp1_fu_901_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_atax_Pipeline_lp1_fu_901_buff_A_address7),.buff_A_ce7(grp_atax_Pipeline_lp1_fu_901_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_atax_Pipeline_lp1_fu_901_buff_A_address8),.buff_A_ce8(grp_atax_Pipeline_lp1_fu_901_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_atax_Pipeline_lp1_fu_901_buff_A_address9),.buff_A_ce9(grp_atax_Pipeline_lp1_fu_901_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_atax_Pipeline_lp1_fu_901_buff_A_address10),.buff_A_ce10(grp_atax_Pipeline_lp1_fu_901_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_atax_Pipeline_lp1_fu_901_buff_A_address11),.buff_A_ce11(grp_atax_Pipeline_lp1_fu_901_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_atax_Pipeline_lp1_fu_901_buff_A_address12),.buff_A_ce12(grp_atax_Pipeline_lp1_fu_901_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_atax_Pipeline_lp1_fu_901_buff_A_address13),.buff_A_ce13(grp_atax_Pipeline_lp1_fu_901_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_atax_Pipeline_lp1_fu_901_buff_A_address14),.buff_A_ce14(grp_atax_Pipeline_lp1_fu_901_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_atax_Pipeline_lp1_fu_901_buff_A_address15),.buff_A_ce15(grp_atax_Pipeline_lp1_fu_901_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address2),.buff_A_1_ce2(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address3),.buff_A_1_ce3(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address4),.buff_A_1_ce4(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address5),.buff_A_1_ce5(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address6),.buff_A_1_ce6(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address7),.buff_A_1_ce7(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address8),.buff_A_1_ce8(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address9),.buff_A_1_ce9(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address10),.buff_A_1_ce10(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address11),.buff_A_1_ce11(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address12),.buff_A_1_ce12(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address13),.buff_A_1_ce13(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address14),.buff_A_1_ce14(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_atax_Pipeline_lp1_fu_901_buff_A_1_address15),.buff_A_1_ce15(grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address2),.buff_A_2_ce2(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address3),.buff_A_2_ce3(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address4),.buff_A_2_ce4(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address5),.buff_A_2_ce5(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address6),.buff_A_2_ce6(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address7),.buff_A_2_ce7(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address8),.buff_A_2_ce8(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address9),.buff_A_2_ce9(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address10),.buff_A_2_ce10(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address11),.buff_A_2_ce11(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address12),.buff_A_2_ce12(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address13),.buff_A_2_ce13(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address14),.buff_A_2_ce14(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_atax_Pipeline_lp1_fu_901_buff_A_2_address15),.buff_A_2_ce15(grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address2),.buff_A_3_ce2(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address3),.buff_A_3_ce3(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address4),.buff_A_3_ce4(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address5),.buff_A_3_ce5(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address6),.buff_A_3_ce6(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address7),.buff_A_3_ce7(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address8),.buff_A_3_ce8(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address9),.buff_A_3_ce9(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address10),.buff_A_3_ce10(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address11),.buff_A_3_ce11(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address12),.buff_A_3_ce12(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address13),.buff_A_3_ce13(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address14),.buff_A_3_ce14(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_atax_Pipeline_lp1_fu_901_buff_A_3_address15),.buff_A_3_ce15(grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_A_4_address0(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_4_address2(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address2),.buff_A_4_ce2(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce2),.buff_A_4_q2(buff_A_4_q2),.buff_A_4_address3(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address3),.buff_A_4_ce3(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce3),.buff_A_4_q3(buff_A_4_q3),.buff_A_4_address4(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address4),.buff_A_4_ce4(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce4),.buff_A_4_q4(buff_A_4_q4),.buff_A_4_address5(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address5),.buff_A_4_ce5(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce5),.buff_A_4_q5(buff_A_4_q5),.buff_A_4_address6(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address6),.buff_A_4_ce6(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce6),.buff_A_4_q6(buff_A_4_q6),.buff_A_4_address7(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address7),.buff_A_4_ce7(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce7),.buff_A_4_q7(buff_A_4_q7),.buff_A_4_address8(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address8),.buff_A_4_ce8(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce8),.buff_A_4_q8(buff_A_4_q8),.buff_A_4_address9(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address9),.buff_A_4_ce9(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce9),.buff_A_4_q9(buff_A_4_q9),.buff_A_4_address10(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address10),.buff_A_4_ce10(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce10),.buff_A_4_q10(buff_A_4_q10),.buff_A_4_address11(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address11),.buff_A_4_ce11(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce11),.buff_A_4_q11(buff_A_4_q11),.buff_A_4_address12(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address12),.buff_A_4_ce12(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce12),.buff_A_4_q12(buff_A_4_q12),.buff_A_4_address13(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address13),.buff_A_4_ce13(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce13),.buff_A_4_q13(buff_A_4_q13),.buff_A_4_address14(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address14),.buff_A_4_ce14(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce14),.buff_A_4_q14(buff_A_4_q14),.buff_A_4_address15(grp_atax_Pipeline_lp1_fu_901_buff_A_4_address15),.buff_A_4_ce15(grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce15),.buff_A_4_q15(buff_A_4_q15),.buff_A_5_address0(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_5_address2(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address2),.buff_A_5_ce2(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce2),.buff_A_5_q2(buff_A_5_q2),.buff_A_5_address3(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address3),.buff_A_5_ce3(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce3),.buff_A_5_q3(buff_A_5_q3),.buff_A_5_address4(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address4),.buff_A_5_ce4(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce4),.buff_A_5_q4(buff_A_5_q4),.buff_A_5_address5(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address5),.buff_A_5_ce5(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce5),.buff_A_5_q5(buff_A_5_q5),.buff_A_5_address6(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address6),.buff_A_5_ce6(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce6),.buff_A_5_q6(buff_A_5_q6),.buff_A_5_address7(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address7),.buff_A_5_ce7(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce7),.buff_A_5_q7(buff_A_5_q7),.buff_A_5_address8(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address8),.buff_A_5_ce8(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce8),.buff_A_5_q8(buff_A_5_q8),.buff_A_5_address9(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address9),.buff_A_5_ce9(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce9),.buff_A_5_q9(buff_A_5_q9),.buff_A_5_address10(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address10),.buff_A_5_ce10(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce10),.buff_A_5_q10(buff_A_5_q10),.buff_A_5_address11(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address11),.buff_A_5_ce11(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce11),.buff_A_5_q11(buff_A_5_q11),.buff_A_5_address12(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address12),.buff_A_5_ce12(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce12),.buff_A_5_q12(buff_A_5_q12),.buff_A_5_address13(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address13),.buff_A_5_ce13(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce13),.buff_A_5_q13(buff_A_5_q13),.buff_A_5_address14(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address14),.buff_A_5_ce14(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce14),.buff_A_5_q14(buff_A_5_q14),.buff_A_5_address15(grp_atax_Pipeline_lp1_fu_901_buff_A_5_address15),.buff_A_5_ce15(grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce15),.buff_A_5_q15(buff_A_5_q15),.buff_A_6_address0(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_6_address2(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address2),.buff_A_6_ce2(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce2),.buff_A_6_q2(buff_A_6_q2),.buff_A_6_address3(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address3),.buff_A_6_ce3(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce3),.buff_A_6_q3(buff_A_6_q3),.buff_A_6_address4(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address4),.buff_A_6_ce4(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce4),.buff_A_6_q4(buff_A_6_q4),.buff_A_6_address5(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address5),.buff_A_6_ce5(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce5),.buff_A_6_q5(buff_A_6_q5),.buff_A_6_address6(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address6),.buff_A_6_ce6(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce6),.buff_A_6_q6(buff_A_6_q6),.buff_A_6_address7(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address7),.buff_A_6_ce7(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce7),.buff_A_6_q7(buff_A_6_q7),.buff_A_6_address8(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address8),.buff_A_6_ce8(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce8),.buff_A_6_q8(buff_A_6_q8),.buff_A_6_address9(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address9),.buff_A_6_ce9(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce9),.buff_A_6_q9(buff_A_6_q9),.buff_A_6_address10(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address10),.buff_A_6_ce10(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce10),.buff_A_6_q10(buff_A_6_q10),.buff_A_6_address11(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address11),.buff_A_6_ce11(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce11),.buff_A_6_q11(buff_A_6_q11),.buff_A_6_address12(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address12),.buff_A_6_ce12(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce12),.buff_A_6_q12(buff_A_6_q12),.buff_A_6_address13(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address13),.buff_A_6_ce13(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce13),.buff_A_6_q13(buff_A_6_q13),.buff_A_6_address14(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address14),.buff_A_6_ce14(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce14),.buff_A_6_q14(buff_A_6_q14),.buff_A_6_address15(grp_atax_Pipeline_lp1_fu_901_buff_A_6_address15),.buff_A_6_ce15(grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce15),.buff_A_6_q15(buff_A_6_q15),.buff_A_7_address0(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_7_address2(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address2),.buff_A_7_ce2(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce2),.buff_A_7_q2(buff_A_7_q2),.buff_A_7_address3(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address3),.buff_A_7_ce3(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce3),.buff_A_7_q3(buff_A_7_q3),.buff_A_7_address4(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address4),.buff_A_7_ce4(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce4),.buff_A_7_q4(buff_A_7_q4),.buff_A_7_address5(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address5),.buff_A_7_ce5(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce5),.buff_A_7_q5(buff_A_7_q5),.buff_A_7_address6(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address6),.buff_A_7_ce6(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce6),.buff_A_7_q6(buff_A_7_q6),.buff_A_7_address7(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address7),.buff_A_7_ce7(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce7),.buff_A_7_q7(buff_A_7_q7),.buff_A_7_address8(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address8),.buff_A_7_ce8(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce8),.buff_A_7_q8(buff_A_7_q8),.buff_A_7_address9(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address9),.buff_A_7_ce9(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce9),.buff_A_7_q9(buff_A_7_q9),.buff_A_7_address10(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address10),.buff_A_7_ce10(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce10),.buff_A_7_q10(buff_A_7_q10),.buff_A_7_address11(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address11),.buff_A_7_ce11(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce11),.buff_A_7_q11(buff_A_7_q11),.buff_A_7_address12(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address12),.buff_A_7_ce12(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce12),.buff_A_7_q12(buff_A_7_q12),.buff_A_7_address13(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address13),.buff_A_7_ce13(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce13),.buff_A_7_q13(buff_A_7_q13),.buff_A_7_address14(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address14),.buff_A_7_ce14(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce14),.buff_A_7_q14(buff_A_7_q14),.buff_A_7_address15(grp_atax_Pipeline_lp1_fu_901_buff_A_7_address15),.buff_A_7_ce15(grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce15),.buff_A_7_q15(buff_A_7_q15),.tmp1_3_address0(grp_atax_Pipeline_lp1_fu_901_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_fu_901_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_fu_901_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_fu_901_tmp1_3_d0),.tmp1_3_q0(tmp1_3_q0),.tmp1_3_address1(grp_atax_Pipeline_lp1_fu_901_tmp1_3_address1),.tmp1_3_ce1(grp_atax_Pipeline_lp1_fu_901_tmp1_3_ce1),.tmp1_3_we1(grp_atax_Pipeline_lp1_fu_901_tmp1_3_we1),.tmp1_3_d1(grp_atax_Pipeline_lp1_fu_901_tmp1_3_d1),.tmp1_3_q1(tmp1_3_q1),.tmp1_2_address0(grp_atax_Pipeline_lp1_fu_901_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_fu_901_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_fu_901_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_fu_901_tmp1_2_d0),.tmp1_2_q0(tmp1_2_q0),.tmp1_2_address1(grp_atax_Pipeline_lp1_fu_901_tmp1_2_address1),.tmp1_2_ce1(grp_atax_Pipeline_lp1_fu_901_tmp1_2_ce1),.tmp1_2_we1(grp_atax_Pipeline_lp1_fu_901_tmp1_2_we1),.tmp1_2_d1(grp_atax_Pipeline_lp1_fu_901_tmp1_2_d1),.tmp1_2_q1(tmp1_2_q1),.tmp1_1_address0(grp_atax_Pipeline_lp1_fu_901_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_fu_901_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_fu_901_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_fu_901_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.tmp1_1_address1(grp_atax_Pipeline_lp1_fu_901_tmp1_1_address1),.tmp1_1_ce1(grp_atax_Pipeline_lp1_fu_901_tmp1_1_ce1),.tmp1_1_we1(grp_atax_Pipeline_lp1_fu_901_tmp1_1_we1),.tmp1_1_d1(grp_atax_Pipeline_lp1_fu_901_tmp1_1_d1),.tmp1_1_q1(tmp1_1_q1),.tmp1_address0(grp_atax_Pipeline_lp1_fu_901_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_fu_901_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_fu_901_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_fu_901_tmp1_d0),.tmp1_q0(tmp1_q0),.tmp1_address1(grp_atax_Pipeline_lp1_fu_901_tmp1_address1),.tmp1_ce1(grp_atax_Pipeline_lp1_fu_901_tmp1_ce1),.tmp1_we1(grp_atax_Pipeline_lp1_fu_901_tmp1_we1),.tmp1_d1(grp_atax_Pipeline_lp1_fu_901_tmp1_d1),.tmp1_q1(tmp1_q1),.buff_x_load(buff_x_load_reg_1208),.buff_x_1_load(buff_x_1_load_reg_1213),.buff_x_2_load(buff_x_2_load_reg_1218),.buff_x_3_load(buff_x_3_load_reg_1223),.buff_x_load_1(buff_x_load_1_reg_1228),.buff_x_1_load_1(buff_x_1_load_1_reg_1233),.buff_x_2_load_1(buff_x_2_load_1_reg_1238),.buff_x_3_load_1(buff_x_3_load_1_reg_1243),.buff_x_load_2(buff_x_load_2_reg_1288),.buff_x_1_load_2(buff_x_1_load_2_reg_1293),.buff_x_2_load_2(buff_x_2_load_2_reg_1298),.buff_x_3_load_2(buff_x_3_load_2_reg_1303),.buff_x_load_3(buff_x_load_3_reg_1308),.buff_x_1_load_3(buff_x_1_load_3_reg_1313),.buff_x_2_load_3(buff_x_2_load_3_reg_1318),.buff_x_3_load_3(buff_x_3_load_3_reg_1323),.buff_x_load_4(buff_x_load_4_reg_1368),.buff_x_1_load_4(buff_x_1_load_4_reg_1373),.buff_x_2_load_4(buff_x_2_load_4_reg_1378),.buff_x_3_load_4(buff_x_3_load_4_reg_1383),.buff_x_load_5(buff_x_load_5_reg_1388),.buff_x_1_load_5(buff_x_1_load_5_reg_1393),.buff_x_2_load_5(buff_x_2_load_5_reg_1398),.buff_x_3_load_5(buff_x_3_load_5_reg_1403),.buff_x_load_6(buff_x_load_6_reg_1448),.buff_x_1_load_6(buff_x_1_load_6_reg_1453),.buff_x_2_load_6(buff_x_2_load_6_reg_1458),.buff_x_3_load_6(buff_x_3_load_6_reg_1463),.buff_x_load_7(buff_x_load_7_reg_1468),.buff_x_1_load_7(buff_x_1_load_7_reg_1473),.buff_x_2_load_7(buff_x_2_load_7_reg_1478),.buff_x_3_load_7(buff_x_3_load_7_reg_1483),.buff_x_load_8(buff_x_load_8_reg_1528),.buff_x_1_load_8(buff_x_1_load_8_reg_1533),.buff_x_2_load_8(buff_x_2_load_8_reg_1538),.buff_x_3_load_8(buff_x_3_load_8_reg_1543),.buff_x_load_9(buff_x_load_9_reg_1548),.buff_x_1_load_9(buff_x_1_load_9_reg_1553),.buff_x_2_load_9(buff_x_2_load_9_reg_1558),.buff_x_3_load_9(buff_x_3_load_9_reg_1563),.buff_x_load_10(buff_x_load_10_reg_1608),.buff_x_1_load_10(buff_x_1_load_10_reg_1613),.buff_x_2_load_10(buff_x_2_load_10_reg_1618),.buff_x_3_load_10(buff_x_3_load_10_reg_1623),.buff_x_load_11(buff_x_load_11_reg_1628),.buff_x_1_load_11(buff_x_1_load_11_reg_1633),.buff_x_2_load_11(buff_x_2_load_11_reg_1638),.buff_x_3_load_11(buff_x_3_load_11_reg_1643),.buff_x_load_12(buff_x_load_12_reg_1688),.buff_x_1_load_12(buff_x_1_load_12_reg_1693),.buff_x_2_load_12(buff_x_2_load_12_reg_1698),.buff_x_3_load_12(buff_x_3_load_12_reg_1703),.buff_x_load_13(buff_x_load_13_reg_1708),.buff_x_1_load_13(buff_x_1_load_13_reg_1713),.buff_x_2_load_13(buff_x_2_load_13_reg_1718),.buff_x_3_load_13(buff_x_3_load_13_reg_1723),.buff_x_load_14(buff_x_load_14_reg_1728),.buff_x_1_load_14(buff_x_1_load_14_reg_1733),.buff_x_2_load_14(buff_x_2_load_14_reg_1738),.buff_x_3_load_14(buff_x_3_load_14_reg_1743),.buff_x_load_15(buff_x_load_15_reg_1748),.buff_x_1_load_15(buff_x_1_load_15_reg_1753),.buff_x_2_load_15(buff_x_2_load_15_reg_1758),.buff_x_3_load_15(buff_x_3_load_15_reg_1763),.grp_fu_1768_p_din0(grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_din0),.grp_fu_1768_p_din1(grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_din1),.grp_fu_1768_p_opcode(grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_opcode),.grp_fu_1768_p_dout0(grp_fu_1768_p2),.grp_fu_1768_p_ce(grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_ce),.grp_fu_1772_p_din0(grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_din0),.grp_fu_1772_p_din1(grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_din1),.grp_fu_1772_p_dout0(grp_fu_1772_p2),.grp_fu_1772_p_ce(grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_ce));
atax_atax_Pipeline_lp3_lp4 grp_atax_Pipeline_lp3_lp4_fu_989(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_lp4_fu_989_ap_start),.ap_done(grp_atax_Pipeline_lp3_lp4_fu_989_ap_done),.ap_idle(grp_atax_Pipeline_lp3_lp4_fu_989_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_lp4_fu_989_ap_ready),.tmp1_address0(grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.buff_A_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_y_out_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_ce0),.buff_y_out_we0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_we0),.buff_y_out_d0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_d0),.buff_y_out_address1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_address1),.buff_y_out_ce1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_ce1),.buff_y_out_q1(buff_y_out_q1),.buff_y_out_1_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_ce0),.buff_y_out_1_we0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_we0),.buff_y_out_1_d0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_d0),.buff_y_out_1_address1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_address1),.buff_y_out_1_ce1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_ce1),.buff_y_out_1_q1(buff_y_out_1_q1),.buff_y_out_2_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_ce0),.buff_y_out_2_we0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_we0),.buff_y_out_2_d0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_d0),.buff_y_out_2_address1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_address1),.buff_y_out_2_ce1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_ce1),.buff_y_out_2_q1(buff_y_out_2_q1),.buff_y_out_3_address0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_ce0),.buff_y_out_3_we0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_we0),.buff_y_out_3_d0(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_d0),.buff_y_out_3_address1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_address1),.buff_y_out_3_ce1(grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_ce1),.buff_y_out_3_q1(buff_y_out_3_q1),.grp_fu_1768_p_din0(grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_din0),.grp_fu_1768_p_din1(grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_din1),.grp_fu_1768_p_opcode(grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_opcode),.grp_fu_1768_p_dout0(grp_fu_1768_p2),.grp_fu_1768_p_ce(grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_ce),.grp_fu_1772_p_din0(grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_din0),.grp_fu_1772_p_din1(grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_din1),.grp_fu_1772_p_dout0(grp_fu_1772_p2),.grp_fu_1772_p_ce(grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_1009(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_1009_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_1009_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_1009_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_1009_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_1009_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_1009_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U376(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1768_p0),.din1(grp_fu_1768_p1),.ce(grp_fu_1768_ce),.dout(grp_fu_1768_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U377(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1772_p0),.din1(grp_fu_1772_p1),.ce(grp_fu_1772_ce),.dout(grp_fu_1772_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_fu_901_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_atax_Pipeline_lp1_fu_901_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_fu_901_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_fu_901_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_lp4_fu_989_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_atax_Pipeline_lp3_lp4_fu_989_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_lp4_fu_989_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_lp4_fu_989_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_879_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_Pipeline_lprd_2_fu_879_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_879_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_879_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_1009_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_atax_Pipeline_lpwr_1_fu_1009_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_1009_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_1009_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_102 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_102 <= add_ln11_reg_1105;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_1105 <= add_ln11_fu_1033_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_1_load_10_reg_1613 <= buff_x_1_q0;
        buff_x_1_load_11_reg_1633 <= buff_x_1_q1;
        buff_x_2_load_10_reg_1618 <= buff_x_2_q0;
        buff_x_2_load_11_reg_1638 <= buff_x_2_q1;
        buff_x_3_load_10_reg_1623 <= buff_x_3_q0;
        buff_x_3_load_11_reg_1643 <= buff_x_3_q1;
        buff_x_load_10_reg_1608 <= buff_x_q0;
        buff_x_load_11_reg_1628 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_1_load_12_reg_1693 <= buff_x_1_q0;
        buff_x_1_load_13_reg_1713 <= buff_x_1_q1;
        buff_x_2_load_12_reg_1698 <= buff_x_2_q0;
        buff_x_2_load_13_reg_1718 <= buff_x_2_q1;
        buff_x_3_load_12_reg_1703 <= buff_x_3_q0;
        buff_x_3_load_13_reg_1723 <= buff_x_3_q1;
        buff_x_load_12_reg_1688 <= buff_x_q0;
        buff_x_load_13_reg_1708 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_x_1_load_14_reg_1733 <= buff_x_1_q0;
        buff_x_1_load_15_reg_1753 <= buff_x_1_q1;
        buff_x_2_load_14_reg_1738 <= buff_x_2_q0;
        buff_x_2_load_15_reg_1758 <= buff_x_2_q1;
        buff_x_3_load_14_reg_1743 <= buff_x_3_q0;
        buff_x_3_load_15_reg_1763 <= buff_x_3_q1;
        buff_x_load_14_reg_1728 <= buff_x_q0;
        buff_x_load_15_reg_1748 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_load_1_reg_1233 <= buff_x_1_q0;
        buff_x_1_load_reg_1213 <= buff_x_1_q1;
        buff_x_2_load_1_reg_1238 <= buff_x_2_q0;
        buff_x_2_load_reg_1218 <= buff_x_2_q1;
        buff_x_3_load_1_reg_1243 <= buff_x_3_q0;
        buff_x_3_load_reg_1223 <= buff_x_3_q1;
        buff_x_load_1_reg_1228 <= buff_x_q0;
        buff_x_load_reg_1208 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_load_2_reg_1293 <= buff_x_1_q0;
        buff_x_1_load_3_reg_1313 <= buff_x_1_q1;
        buff_x_2_load_2_reg_1298 <= buff_x_2_q0;
        buff_x_2_load_3_reg_1318 <= buff_x_2_q1;
        buff_x_3_load_2_reg_1303 <= buff_x_3_q0;
        buff_x_3_load_3_reg_1323 <= buff_x_3_q1;
        buff_x_load_2_reg_1288 <= buff_x_q0;
        buff_x_load_3_reg_1308 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_load_4_reg_1373 <= buff_x_1_q0;
        buff_x_1_load_5_reg_1393 <= buff_x_1_q1;
        buff_x_2_load_4_reg_1378 <= buff_x_2_q0;
        buff_x_2_load_5_reg_1398 <= buff_x_2_q1;
        buff_x_3_load_4_reg_1383 <= buff_x_3_q0;
        buff_x_3_load_5_reg_1403 <= buff_x_3_q1;
        buff_x_load_4_reg_1368 <= buff_x_q0;
        buff_x_load_5_reg_1388 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_load_6_reg_1453 <= buff_x_1_q0;
        buff_x_1_load_7_reg_1473 <= buff_x_1_q1;
        buff_x_2_load_6_reg_1458 <= buff_x_2_q0;
        buff_x_2_load_7_reg_1478 <= buff_x_2_q1;
        buff_x_3_load_6_reg_1463 <= buff_x_3_q0;
        buff_x_3_load_7_reg_1483 <= buff_x_3_q1;
        buff_x_load_6_reg_1448 <= buff_x_q0;
        buff_x_load_7_reg_1468 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_load_8_reg_1533 <= buff_x_1_q0;
        buff_x_1_load_9_reg_1553 <= buff_x_1_q1;
        buff_x_2_load_8_reg_1538 <= buff_x_2_q0;
        buff_x_2_load_9_reg_1558 <= buff_x_2_q1;
        buff_x_3_load_8_reg_1543 <= buff_x_3_q0;
        buff_x_3_load_9_reg_1563 <= buff_x_3_q1;
        buff_x_load_8_reg_1528 <= buff_x_q0;
        buff_x_load_9_reg_1548 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_2_reg_1163 <= trunc_ln11_2_fu_1051_p1;
        trunc_ln11_reg_1155 <= trunc_ln11_fu_1044_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_fu_901_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_lp4_fu_989_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_1009_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
    if ((grp_atax_Pipeline_lprd_2_fu_879_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_atax_Pipeline_lpwr_1_fu_1009_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_atax_Pipeline_lpwr_1_fu_1009_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce10 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce11 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce12 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce13 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce14 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce15 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce2 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce3 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce4 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce5 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce6 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce7 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce8 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce9 = grp_atax_Pipeline_lp1_fu_901_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce10 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce11 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce12 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce13 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce14 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce15 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce2 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce3 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce4 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce5 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce6 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce7 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce8 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce9 = grp_atax_Pipeline_lp1_fu_901_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce10 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce11 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce12 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce13 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce14 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce15 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce2 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce3 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce4 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce5 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce6 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce7 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce8 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce9 = grp_atax_Pipeline_lp1_fu_901_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce10 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce10;
    end else begin
        buff_A_4_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce11 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce11;
    end else begin
        buff_A_4_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce12 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce12;
    end else begin
        buff_A_4_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce13 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce13;
    end else begin
        buff_A_4_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce14 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce14;
    end else begin
        buff_A_4_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce15 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce15;
    end else begin
        buff_A_4_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce2 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce2;
    end else begin
        buff_A_4_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce3 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce3;
    end else begin
        buff_A_4_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce4 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce4;
    end else begin
        buff_A_4_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce5 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce5;
    end else begin
        buff_A_4_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce6 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce6;
    end else begin
        buff_A_4_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce7 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce7;
    end else begin
        buff_A_4_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce8 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce8;
    end else begin
        buff_A_4_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_4_ce9 = grp_atax_Pipeline_lp1_fu_901_buff_A_4_ce9;
    end else begin
        buff_A_4_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_we0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce10 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce10;
    end else begin
        buff_A_5_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce11 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce11;
    end else begin
        buff_A_5_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce12 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce12;
    end else begin
        buff_A_5_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce13 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce13;
    end else begin
        buff_A_5_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce14 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce14;
    end else begin
        buff_A_5_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce15 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce15;
    end else begin
        buff_A_5_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce2 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce2;
    end else begin
        buff_A_5_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce3 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce3;
    end else begin
        buff_A_5_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce4 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce4;
    end else begin
        buff_A_5_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce5 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce5;
    end else begin
        buff_A_5_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce6 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce6;
    end else begin
        buff_A_5_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce7 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce7;
    end else begin
        buff_A_5_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce8 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce8;
    end else begin
        buff_A_5_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_5_ce9 = grp_atax_Pipeline_lp1_fu_901_buff_A_5_ce9;
    end else begin
        buff_A_5_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_we0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce10 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce10;
    end else begin
        buff_A_6_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce11 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce11;
    end else begin
        buff_A_6_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce12 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce12;
    end else begin
        buff_A_6_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce13 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce13;
    end else begin
        buff_A_6_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce14 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce14;
    end else begin
        buff_A_6_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce15 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce15;
    end else begin
        buff_A_6_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce2 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce2;
    end else begin
        buff_A_6_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce3 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce3;
    end else begin
        buff_A_6_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce4 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce4;
    end else begin
        buff_A_6_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce5 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce5;
    end else begin
        buff_A_6_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce6 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce6;
    end else begin
        buff_A_6_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce7 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce7;
    end else begin
        buff_A_6_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce8 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce8;
    end else begin
        buff_A_6_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_6_ce9 = grp_atax_Pipeline_lp1_fu_901_buff_A_6_ce9;
    end else begin
        buff_A_6_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_we0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce10 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce10;
    end else begin
        buff_A_7_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce11 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce11;
    end else begin
        buff_A_7_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce12 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce12;
    end else begin
        buff_A_7_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce13 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce13;
    end else begin
        buff_A_7_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce14 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce14;
    end else begin
        buff_A_7_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce15 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce15;
    end else begin
        buff_A_7_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce2 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce2;
    end else begin
        buff_A_7_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce3 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce3;
    end else begin
        buff_A_7_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce4 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce4;
    end else begin
        buff_A_7_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce5 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce5;
    end else begin
        buff_A_7_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce6 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce6;
    end else begin
        buff_A_7_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce7 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce7;
    end else begin
        buff_A_7_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce8 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce8;
    end else begin
        buff_A_7_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_7_ce9 = grp_atax_Pipeline_lp1_fu_901_buff_A_7_ce9;
    end else begin
        buff_A_7_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_we0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_fu_901_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce10 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce11 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce12 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce13 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce14 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce15 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce2 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce3 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce4 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce5 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce6 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce7 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce8 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce9 = grp_atax_Pipeline_lp1_fu_901_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_879_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
        buff_x_1_address0_local = zext_ln5_fu_1064_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address0_local = 64'd1;
    end else begin
        buff_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_x_1_ce1_local = 1'b1;
    end else begin
        buff_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd1))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_2_address0_local = zext_ln5_fu_1064_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_2_address0_local = 64'd1;
    end else begin
        buff_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_2_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_2_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_2_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_2_address1_local = 64'd0;
    end else begin
        buff_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_x_2_ce1_local = 1'b1;
    end else begin
        buff_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd2))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_3_address0_local = zext_ln5_fu_1064_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_3_address0_local = 64'd1;
    end else begin
        buff_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_x_3_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_x_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_3_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_3_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_3_address1_local = 64'd0;
    end else begin
        buff_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_x_3_ce1_local = 1'b1;
    end else begin
        buff_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
        buff_x_address0_local = zext_ln5_fu_1064_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address0_local = 64'd1;
    end else begin
        buff_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_x_ce1_local = 1'b1;
    end else begin
        buff_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd0))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = zext_ln5_fu_1064_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_ce1 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_ce1;
    end else begin
        buff_y_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_d0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_d0;
    end else begin
        buff_y_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_1_we0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_1_we0;
    end else begin
        buff_y_out_1_we0 = buff_y_out_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd1))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = zext_ln5_fu_1064_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_ce1 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_ce1;
    end else begin
        buff_y_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_d0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_d0;
    end else begin
        buff_y_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_2_we0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_2_we0;
    end else begin
        buff_y_out_2_we0 = buff_y_out_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd2))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = zext_ln5_fu_1064_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_ce1 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_ce1;
    end else begin
        buff_y_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_d0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_d0;
    end else begin
        buff_y_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_3_we0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_3_we0;
    end else begin
        buff_y_out_3_we0 = buff_y_out_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd3))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = zext_ln5_fu_1064_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_1009_buff_y_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_ce1 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_ce1;
    end else begin
        buff_y_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_d0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_d0;
    end else begin
        buff_y_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y_out_we0 = grp_atax_Pipeline_lp3_lp4_fu_989_buff_y_out_we0;
    end else begin
        buff_y_out_we0 = buff_y_out_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd0))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1768_ce = grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1768_ce = grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_ce;
    end else begin
        grp_fu_1768_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1768_p0 = grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1768_p0 = grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_din0;
    end else begin
        grp_fu_1768_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1768_p1 = grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1768_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1768_p1 = grp_atax_Pipeline_lp1_fu_901_grp_fu_1768_p_din1;
    end else begin
        grp_fu_1768_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1772_ce = grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1772_ce = grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_ce;
    end else begin
        grp_fu_1772_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1772_p0 = grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1772_p0 = grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_din0;
    end else begin
        grp_fu_1772_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1772_p1 = grp_atax_Pipeline_lp3_lp4_fu_989_grp_fu_1772_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1772_p1 = grp_atax_Pipeline_lp1_fu_901_grp_fu_1772_p_din1;
    end else begin
        grp_fu_1772_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_fu_901_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_1064_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_fu_901_tmp1_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_ce1 = grp_atax_Pipeline_lp1_fu_901_tmp1_1_ce1;
    end else begin
        tmp1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_fu_901_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_fu_901_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd1))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_1_we1 = grp_atax_Pipeline_lp1_fu_901_tmp1_1_we1;
    end else begin
        tmp1_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_fu_901_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_1064_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_fu_901_tmp1_2_ce0;
    end else begin
        tmp1_2_ce0 = tmp1_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_ce1 = grp_atax_Pipeline_lp1_fu_901_tmp1_2_ce1;
    end else begin
        tmp1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_d0 = grp_atax_Pipeline_lp1_fu_901_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_fu_901_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd2))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_2_we1 = grp_atax_Pipeline_lp1_fu_901_tmp1_2_we1;
    end else begin
        tmp1_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_fu_901_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_1064_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_fu_901_tmp1_3_ce0;
    end else begin
        tmp1_3_ce0 = tmp1_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_ce1 = grp_atax_Pipeline_lp1_fu_901_tmp1_3_ce1;
    end else begin
        tmp1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_d0 = grp_atax_Pipeline_lp1_fu_901_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_fu_901_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_3_we1 = grp_atax_Pipeline_lp1_fu_901_tmp1_3_we1;
    end else begin
        tmp1_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_fu_901_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_1064_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_989_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_fu_901_tmp1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_ce1 = grp_atax_Pipeline_lp1_fu_901_tmp1_ce1;
    end else begin
        tmp1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_fu_901_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_fu_901_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (trunc_ln11_1_fu_1048_p1 == 2'd0))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp1_we1 = grp_atax_Pipeline_lp1_fu_901_tmp1_we1;
    end else begin
        tmp1_we1 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state17)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_1009_y_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1027_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_Pipeline_lprd_2_fu_879_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state13) & (grp_atax_Pipeline_lp1_fu_901_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_atax_Pipeline_lp3_lp4_fu_989_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (grp_atax_Pipeline_lpwr_1_fu_1009_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_879_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_879_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_879_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_879_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_879_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_879_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_879_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_879_A_3_ce0;
assign add_ln11_fu_1033_p2 = (i_fu_102 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln12_fu_1080_p1 = x_q0;
assign grp_atax_Pipeline_lp1_fu_901_ap_start = grp_atax_Pipeline_lp1_fu_901_ap_start_reg;
assign grp_atax_Pipeline_lp3_lp4_fu_989_ap_start = grp_atax_Pipeline_lp3_lp4_fu_989_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_879_ap_start = grp_atax_Pipeline_lprd_2_fu_879_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_1009_ap_start = grp_atax_Pipeline_lpwr_1_fu_1009_ap_start_reg;
assign icmp_ln11_fu_1027_p2 = ((i_fu_102 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_1055_p4 = {{i_fu_102[5:2]}};
assign trunc_ln11_1_fu_1048_p1 = i_fu_102[1:0];
assign trunc_ln11_2_fu_1051_p1 = i_fu_102[0:0];
assign trunc_ln11_fu_1044_p1 = i_fu_102[5:0];
assign x_address0 = zext_ln11_fu_1039_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_1009_y_out_din;
assign zext_ln11_fu_1039_p1 = i_fu_102;
assign zext_ln5_fu_1064_p1 = lshr_ln5_1_fu_1055_p4;
endmodule 