module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [8:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [8:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [8:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [8:0] A_4_address0;
output   A_4_ce0;
input  [31:0] A_4_q0;
output  [8:0] A_5_address0;
output   A_5_ce0;
input  [31:0] A_5_q0;
output  [8:0] A_6_address0;
output   A_6_ce0;
input  [31:0] A_6_q0;
output  [8:0] A_7_address0;
output   A_7_ce0;
input  [31:0] A_7_q0;
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
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_1280_p2;
reg   [6:0] add_ln11_reg_1363;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_1291_p1;
reg   [5:0] trunc_ln11_reg_1453;
wire    ap_CS_fsm_state3;
reg   [31:0] buff_x_load_reg_1461;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_x_1_load_reg_1466;
reg   [31:0] buff_x_2_load_reg_1471;
reg   [31:0] buff_x_3_load_reg_1476;
reg   [31:0] buff_x_4_load_reg_1481;
reg   [31:0] buff_x_5_load_reg_1486;
reg   [31:0] buff_x_6_load_reg_1491;
reg   [31:0] buff_x_7_load_reg_1496;
reg   [31:0] buff_x_load_1_reg_1501;
reg   [31:0] buff_x_1_load_1_reg_1506;
reg   [31:0] buff_x_2_load_1_reg_1511;
reg   [31:0] buff_x_3_load_1_reg_1516;
reg   [31:0] buff_x_4_load_1_reg_1521;
reg   [31:0] buff_x_5_load_1_reg_1526;
reg   [31:0] buff_x_6_load_1_reg_1531;
reg   [31:0] buff_x_7_load_1_reg_1536;
reg   [31:0] buff_x_load_2_reg_1621;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_x_1_load_2_reg_1626;
reg   [31:0] buff_x_2_load_2_reg_1631;
reg   [31:0] buff_x_3_load_2_reg_1636;
reg   [31:0] buff_x_4_load_2_reg_1641;
reg   [31:0] buff_x_5_load_2_reg_1646;
reg   [31:0] buff_x_6_load_2_reg_1651;
reg   [31:0] buff_x_7_load_2_reg_1656;
reg   [31:0] buff_x_load_3_reg_1661;
reg   [31:0] buff_x_1_load_3_reg_1666;
reg   [31:0] buff_x_2_load_3_reg_1671;
reg   [31:0] buff_x_3_load_3_reg_1676;
reg   [31:0] buff_x_4_load_3_reg_1681;
reg   [31:0] buff_x_5_load_3_reg_1686;
reg   [31:0] buff_x_6_load_3_reg_1691;
reg   [31:0] buff_x_7_load_3_reg_1696;
reg   [31:0] buff_x_load_4_reg_1781;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_x_1_load_4_reg_1786;
reg   [31:0] buff_x_2_load_4_reg_1791;
reg   [31:0] buff_x_3_load_4_reg_1796;
reg   [31:0] buff_x_4_load_4_reg_1801;
reg   [31:0] buff_x_5_load_4_reg_1806;
reg   [31:0] buff_x_6_load_4_reg_1811;
reg   [31:0] buff_x_7_load_4_reg_1816;
reg   [31:0] buff_x_load_5_reg_1821;
reg   [31:0] buff_x_1_load_5_reg_1826;
reg   [31:0] buff_x_2_load_5_reg_1831;
reg   [31:0] buff_x_3_load_5_reg_1836;
reg   [31:0] buff_x_4_load_5_reg_1841;
reg   [31:0] buff_x_5_load_5_reg_1846;
reg   [31:0] buff_x_6_load_5_reg_1851;
reg   [31:0] buff_x_7_load_5_reg_1856;
reg   [31:0] buff_x_load_6_reg_1941;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_x_1_load_6_reg_1946;
reg   [31:0] buff_x_2_load_6_reg_1951;
reg   [31:0] buff_x_3_load_6_reg_1956;
reg   [31:0] buff_x_4_load_6_reg_1961;
reg   [31:0] buff_x_5_load_6_reg_1966;
reg   [31:0] buff_x_6_load_6_reg_1971;
reg   [31:0] buff_x_7_load_6_reg_1976;
reg   [31:0] buff_x_load_7_reg_1981;
reg   [31:0] buff_x_1_load_7_reg_1986;
reg   [31:0] buff_x_2_load_7_reg_1991;
reg   [31:0] buff_x_3_load_7_reg_1996;
reg   [31:0] buff_x_4_load_7_reg_2001;
reg   [31:0] buff_x_5_load_7_reg_2006;
reg   [31:0] buff_x_6_load_7_reg_2011;
reg   [31:0] buff_x_7_load_7_reg_2016;
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
wire   [31:0] buff_x_4_q0;
wire   [31:0] buff_x_4_q1;
wire   [31:0] buff_x_5_q0;
wire   [31:0] buff_x_5_q1;
wire   [31:0] buff_x_6_q0;
wire   [31:0] buff_x_6_q1;
wire   [31:0] buff_x_7_q0;
wire   [31:0] buff_x_7_q1;
reg   [2:0] buff_y_out_address0;
reg    buff_y_out_ce0;
reg    buff_y_out_we0;
reg   [31:0] buff_y_out_d0;
wire   [31:0] buff_y_out_q0;
reg    buff_y_out_ce1;
wire   [31:0] buff_y_out_q1;
reg   [2:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
reg    buff_y_out_1_we0;
reg   [31:0] buff_y_out_1_d0;
wire   [31:0] buff_y_out_1_q0;
reg    buff_y_out_1_ce1;
wire   [31:0] buff_y_out_1_q1;
reg   [2:0] buff_y_out_2_address0;
reg    buff_y_out_2_ce0;
reg    buff_y_out_2_we0;
reg   [31:0] buff_y_out_2_d0;
wire   [31:0] buff_y_out_2_q0;
reg    buff_y_out_2_ce1;
wire   [31:0] buff_y_out_2_q1;
reg   [2:0] buff_y_out_3_address0;
reg    buff_y_out_3_ce0;
reg    buff_y_out_3_we0;
reg   [31:0] buff_y_out_3_d0;
wire   [31:0] buff_y_out_3_q0;
reg    buff_y_out_3_ce1;
wire   [31:0] buff_y_out_3_q1;
reg   [2:0] buff_y_out_4_address0;
reg    buff_y_out_4_ce0;
reg    buff_y_out_4_we0;
reg   [31:0] buff_y_out_4_d0;
wire   [31:0] buff_y_out_4_q0;
reg    buff_y_out_4_ce1;
wire   [31:0] buff_y_out_4_q1;
reg   [2:0] buff_y_out_5_address0;
reg    buff_y_out_5_ce0;
reg    buff_y_out_5_we0;
reg   [31:0] buff_y_out_5_d0;
wire   [31:0] buff_y_out_5_q0;
reg    buff_y_out_5_ce1;
wire   [31:0] buff_y_out_5_q1;
reg   [2:0] buff_y_out_6_address0;
reg    buff_y_out_6_ce0;
reg    buff_y_out_6_we0;
reg   [31:0] buff_y_out_6_d0;
wire   [31:0] buff_y_out_6_q0;
reg    buff_y_out_6_ce1;
wire   [31:0] buff_y_out_6_q1;
reg   [2:0] buff_y_out_7_address0;
reg    buff_y_out_7_ce0;
reg    buff_y_out_7_we0;
reg   [31:0] buff_y_out_7_d0;
wire   [31:0] buff_y_out_7_q0;
reg    buff_y_out_7_ce1;
wire   [31:0] buff_y_out_7_q1;
reg   [2:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
reg    tmp1_ce1;
wire   [31:0] tmp1_q1;
reg   [2:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg    tmp1_1_ce1;
wire   [31:0] tmp1_1_q1;
reg   [2:0] tmp1_2_address0;
reg    tmp1_2_ce0;
reg    tmp1_2_we0;
reg   [31:0] tmp1_2_d0;
wire   [31:0] tmp1_2_q0;
reg    tmp1_2_ce1;
wire   [31:0] tmp1_2_q1;
reg   [2:0] tmp1_3_address0;
reg    tmp1_3_ce0;
reg    tmp1_3_we0;
reg   [31:0] tmp1_3_d0;
wire   [31:0] tmp1_3_q0;
reg    tmp1_3_ce1;
wire   [31:0] tmp1_3_q1;
reg   [2:0] tmp1_4_address0;
reg    tmp1_4_ce0;
reg    tmp1_4_we0;
reg   [31:0] tmp1_4_d0;
wire   [31:0] tmp1_4_q0;
reg    tmp1_4_ce1;
wire   [31:0] tmp1_4_q1;
reg   [2:0] tmp1_5_address0;
reg    tmp1_5_ce0;
reg    tmp1_5_we0;
reg   [31:0] tmp1_5_d0;
wire   [31:0] tmp1_5_q0;
reg    tmp1_5_ce1;
wire   [31:0] tmp1_5_q1;
reg   [2:0] tmp1_6_address0;
reg    tmp1_6_ce0;
reg    tmp1_6_we0;
reg   [31:0] tmp1_6_d0;
wire   [31:0] tmp1_6_q0;
reg    tmp1_6_ce1;
wire   [31:0] tmp1_6_q1;
reg   [2:0] tmp1_7_address0;
reg    tmp1_7_ce0;
reg    tmp1_7_we0;
reg   [31:0] tmp1_7_d0;
wire   [31:0] tmp1_7_q0;
reg    tmp1_7_ce1;
wire   [31:0] tmp1_7_q1;
wire    grp_atax_Pipeline_lprd_2_fu_1095_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_1095_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_1095_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_1095_ap_ready;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_A_0_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_d0;
wire   [8:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_address0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_d0;
wire    grp_atax_Pipeline_lp1_fu_1124_ap_start;
wire    grp_atax_Pipeline_lp1_fu_1124_ap_done;
wire    grp_atax_Pipeline_lp1_fu_1124_ap_idle;
wire    grp_atax_Pipeline_lp1_fu_1124_ap_ready;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address2;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address3;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address4;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address5;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address6;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address7;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address8;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address9;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address10;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address11;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address12;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address13;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address14;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_address15;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address2;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address3;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address4;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address5;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address6;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address7;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address8;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address9;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address10;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address11;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address12;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address13;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address14;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address15;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address2;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address3;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address4;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address5;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address6;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address7;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address8;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address9;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address10;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address11;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address12;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address13;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address14;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address15;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address2;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address3;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address4;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address5;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address6;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address7;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address8;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address9;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address10;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address11;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address12;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address13;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address14;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address15;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address2;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address3;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address4;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address5;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address6;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address7;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address8;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address9;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address10;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address11;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address12;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address13;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address14;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address15;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address2;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address3;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address4;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address5;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address6;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address7;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address8;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address9;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address10;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address11;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address12;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address13;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address14;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address15;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address2;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address3;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address4;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address5;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address6;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address7;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address8;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address9;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address10;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address11;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address12;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address13;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address14;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address15;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce15;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce0;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce1;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address2;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce2;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address3;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce3;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address4;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce4;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address5;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce5;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address6;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce6;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address7;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce7;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address8;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce8;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address9;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce9;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address10;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce10;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address11;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce11;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address12;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce12;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address13;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce13;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address14;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce14;
wire   [8:0] grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address15;
wire    grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce15;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_7_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_7_ce0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_7_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_7_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_7_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_7_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_6_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_6_ce0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_6_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_6_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_6_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_6_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_5_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_5_ce0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_5_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_5_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_5_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_5_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_4_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_4_ce0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_4_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_4_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_4_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_4_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_3_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_3_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_3_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_2_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_2_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_2_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_1_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_1_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_1_ce1;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_address0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_d0;
wire   [2:0] grp_atax_Pipeline_lp1_fu_1124_tmp1_address1;
wire    grp_atax_Pipeline_lp1_fu_1124_tmp1_ce1;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_opcode;
wire    grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_din1;
wire    grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_ce;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_ap_done;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_ap_idle;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_ap_ready;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_1_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_2_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_3_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_4_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_4_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_5_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_5_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_6_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_6_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_7_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_7_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_1_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_2_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_3_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_4_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_4_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_5_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_5_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_6_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_6_ce0;
wire   [8:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_7_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_7_ce0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_ce1;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_opcode;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_din1;
wire    grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_1252_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_y_out_write;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_1_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_2_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_3_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_4_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_4_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_5_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_5_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_6_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_6_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_7_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_7_ce0;
reg    grp_atax_Pipeline_lprd_2_fu_1095_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_atax_Pipeline_lp1_fu_1124_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_atax_Pipeline_lpwr_1_fu_1252_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln11_fu_1286_p1;
wire   [0:0] icmp_ln11_fu_1274_p2;
wire   [63:0] zext_ln5_fu_1306_p1;
reg   [6:0] i_fu_102;
reg    x_ce0_local;
reg    buff_x_ce1_local;
reg   [2:0] buff_x_address1_local;
reg    buff_x_ce0_local;
reg   [2:0] buff_x_address0_local;
reg    buff_x_we0_local;
wire   [2:0] trunc_ln11_1_fu_1294_p1;
wire   [31:0] bitcast_ln12_fu_1334_p1;
reg    buff_x_1_ce1_local;
reg   [2:0] buff_x_1_address1_local;
reg    buff_x_1_ce0_local;
reg   [2:0] buff_x_1_address0_local;
reg    buff_x_1_we0_local;
reg    buff_x_2_ce1_local;
reg   [2:0] buff_x_2_address1_local;
reg    buff_x_2_ce0_local;
reg   [2:0] buff_x_2_address0_local;
reg    buff_x_2_we0_local;
reg    buff_x_3_ce1_local;
reg   [2:0] buff_x_3_address1_local;
reg    buff_x_3_ce0_local;
reg   [2:0] buff_x_3_address0_local;
reg    buff_x_3_we0_local;
reg    buff_x_4_ce1_local;
reg   [2:0] buff_x_4_address1_local;
reg    buff_x_4_ce0_local;
reg   [2:0] buff_x_4_address0_local;
reg    buff_x_4_we0_local;
reg    buff_x_5_ce1_local;
reg   [2:0] buff_x_5_address1_local;
reg    buff_x_5_ce0_local;
reg   [2:0] buff_x_5_address0_local;
reg    buff_x_5_we0_local;
reg    buff_x_6_ce1_local;
reg   [2:0] buff_x_6_address1_local;
reg    buff_x_6_ce0_local;
reg   [2:0] buff_x_6_address0_local;
reg    buff_x_6_we0_local;
reg    buff_x_7_ce1_local;
reg   [2:0] buff_x_7_address1_local;
reg    buff_x_7_ce0_local;
reg   [2:0] buff_x_7_address0_local;
reg    buff_x_7_we0_local;
reg    buff_y_out_6_we0_local;
reg    buff_y_out_6_ce0_local;
reg    tmp1_6_we0_local;
reg    tmp1_6_ce0_local;
reg    buff_y_out_5_we0_local;
reg    buff_y_out_5_ce0_local;
reg    tmp1_5_we0_local;
reg    tmp1_5_ce0_local;
reg    buff_y_out_4_we0_local;
reg    buff_y_out_4_ce0_local;
reg    tmp1_4_we0_local;
reg    tmp1_4_ce0_local;
reg    buff_y_out_3_we0_local;
reg    buff_y_out_3_ce0_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
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
reg    buff_y_out_7_we0_local;
reg    buff_y_out_7_ce0_local;
reg    tmp1_7_we0_local;
reg    tmp1_7_ce0_local;
wire   [2:0] lshr_ln5_fu_1297_p4;
wire   [31:0] grp_fu_2021_p2;
reg   [31:0] grp_fu_2021_p0;
reg   [31:0] grp_fu_2021_p1;
reg    grp_fu_2021_ce;
wire   [31:0] grp_fu_2025_p2;
reg   [31:0] grp_fu_2025_p0;
reg   [31:0] grp_fu_2025_p1;
reg    grp_fu_2025_ce;
reg   [13:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_atax_Pipeline_lprd_2_fu_1095_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp1_fu_1124_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_1252_ap_start_reg = 1'b0;
#0 i_fu_102 = 7'd0;
end
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_d0),.q0(buff_A_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1),.address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address2),.ce2(buff_A_4_ce2),.q2(buff_A_4_q2),.address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address3),.ce3(buff_A_4_ce3),.q3(buff_A_4_q3),.address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address4),.ce4(buff_A_4_ce4),.q4(buff_A_4_q4),.address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address5),.ce5(buff_A_4_ce5),.q5(buff_A_4_q5),.address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address6),.ce6(buff_A_4_ce6),.q6(buff_A_4_q6),.address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address7),.ce7(buff_A_4_ce7),.q7(buff_A_4_q7),.address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address8),.ce8(buff_A_4_ce8),.q8(buff_A_4_q8),.address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address9),.ce9(buff_A_4_ce9),.q9(buff_A_4_q9),.address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address10),.ce10(buff_A_4_ce10),.q10(buff_A_4_q10),.address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address11),.ce11(buff_A_4_ce11),.q11(buff_A_4_q11),.address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address12),.ce12(buff_A_4_ce12),.q12(buff_A_4_q12),.address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address13),.ce13(buff_A_4_ce13),.q13(buff_A_4_q13),.address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address14),.ce14(buff_A_4_ce14),.q14(buff_A_4_q14),.address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address15),.ce15(buff_A_4_ce15),.q15(buff_A_4_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1),.address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address2),.ce2(buff_A_5_ce2),.q2(buff_A_5_q2),.address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address3),.ce3(buff_A_5_ce3),.q3(buff_A_5_q3),.address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address4),.ce4(buff_A_5_ce4),.q4(buff_A_5_q4),.address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address5),.ce5(buff_A_5_ce5),.q5(buff_A_5_q5),.address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address6),.ce6(buff_A_5_ce6),.q6(buff_A_5_q6),.address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address7),.ce7(buff_A_5_ce7),.q7(buff_A_5_q7),.address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address8),.ce8(buff_A_5_ce8),.q8(buff_A_5_q8),.address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address9),.ce9(buff_A_5_ce9),.q9(buff_A_5_q9),.address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address10),.ce10(buff_A_5_ce10),.q10(buff_A_5_q10),.address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address11),.ce11(buff_A_5_ce11),.q11(buff_A_5_q11),.address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address12),.ce12(buff_A_5_ce12),.q12(buff_A_5_q12),.address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address13),.ce13(buff_A_5_ce13),.q13(buff_A_5_q13),.address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address14),.ce14(buff_A_5_ce14),.q14(buff_A_5_q14),.address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address15),.ce15(buff_A_5_ce15),.q15(buff_A_5_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1),.address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address2),.ce2(buff_A_6_ce2),.q2(buff_A_6_q2),.address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address3),.ce3(buff_A_6_ce3),.q3(buff_A_6_q3),.address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address4),.ce4(buff_A_6_ce4),.q4(buff_A_6_q4),.address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address5),.ce5(buff_A_6_ce5),.q5(buff_A_6_q5),.address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address6),.ce6(buff_A_6_ce6),.q6(buff_A_6_q6),.address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address7),.ce7(buff_A_6_ce7),.q7(buff_A_6_q7),.address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address8),.ce8(buff_A_6_ce8),.q8(buff_A_6_q8),.address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address9),.ce9(buff_A_6_ce9),.q9(buff_A_6_q9),.address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address10),.ce10(buff_A_6_ce10),.q10(buff_A_6_q10),.address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address11),.ce11(buff_A_6_ce11),.q11(buff_A_6_q11),.address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address12),.ce12(buff_A_6_ce12),.q12(buff_A_6_q12),.address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address13),.ce13(buff_A_6_ce13),.q13(buff_A_6_q13),.address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address14),.ce14(buff_A_6_ce14),.q14(buff_A_6_q14),.address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address15),.ce15(buff_A_6_ce15),.q15(buff_A_6_q15));
atax_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1),.address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address2),.ce2(buff_A_7_ce2),.q2(buff_A_7_q2),.address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address3),.ce3(buff_A_7_ce3),.q3(buff_A_7_q3),.address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address4),.ce4(buff_A_7_ce4),.q4(buff_A_7_q4),.address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address5),.ce5(buff_A_7_ce5),.q5(buff_A_7_q5),.address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address6),.ce6(buff_A_7_ce6),.q6(buff_A_7_q6),.address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address7),.ce7(buff_A_7_ce7),.q7(buff_A_7_q7),.address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address8),.ce8(buff_A_7_ce8),.q8(buff_A_7_q8),.address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address9),.ce9(buff_A_7_ce9),.q9(buff_A_7_q9),.address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address10),.ce10(buff_A_7_ce10),.q10(buff_A_7_q10),.address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address11),.ce11(buff_A_7_ce11),.q11(buff_A_7_q11),.address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address12),.ce12(buff_A_7_ce12),.q12(buff_A_7_q12),.address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address13),.ce13(buff_A_7_ce13),.q13(buff_A_7_q13),.address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address14),.ce14(buff_A_7_ce14),.q14(buff_A_7_q14),.address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address15),.ce15(buff_A_7_ce15),.q15(buff_A_7_q15));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0_local),.ce0(buff_x_ce0_local),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_1334_p1),.q0(buff_x_q0),.address1(buff_x_address1_local),.ce1(buff_x_ce1_local),.q1(buff_x_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0_local),.ce0(buff_x_1_ce0_local),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_1334_p1),.q0(buff_x_1_q0),.address1(buff_x_1_address1_local),.ce1(buff_x_1_ce1_local),.q1(buff_x_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0_local),.ce0(buff_x_2_ce0_local),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_1334_p1),.q0(buff_x_2_q0),.address1(buff_x_2_address1_local),.ce1(buff_x_2_ce1_local),.q1(buff_x_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0_local),.ce0(buff_x_3_ce0_local),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_1334_p1),.q0(buff_x_3_q0),.address1(buff_x_3_address1_local),.ce1(buff_x_3_ce1_local),.q1(buff_x_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_4_address0_local),.ce0(buff_x_4_ce0_local),.we0(buff_x_4_we0_local),.d0(bitcast_ln12_fu_1334_p1),.q0(buff_x_4_q0),.address1(buff_x_4_address1_local),.ce1(buff_x_4_ce1_local),.q1(buff_x_4_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_5_address0_local),.ce0(buff_x_5_ce0_local),.we0(buff_x_5_we0_local),.d0(bitcast_ln12_fu_1334_p1),.q0(buff_x_5_q0),.address1(buff_x_5_address1_local),.ce1(buff_x_5_ce1_local),.q1(buff_x_5_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_6_address0_local),.ce0(buff_x_6_ce0_local),.we0(buff_x_6_we0_local),.d0(bitcast_ln12_fu_1334_p1),.q0(buff_x_6_q0),.address1(buff_x_6_address1_local),.ce1(buff_x_6_ce1_local),.q1(buff_x_6_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_x_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_7_address0_local),.ce0(buff_x_7_ce0_local),.we0(buff_x_7_we0_local),.d0(bitcast_ln12_fu_1334_p1),.q0(buff_x_7_q0),.address1(buff_x_7_address1_local),.ce1(buff_x_7_ce1_local),.q1(buff_x_7_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0),.d0(buff_y_out_d0),.q0(buff_y_out_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_address1),.ce1(buff_y_out_ce1),.q1(buff_y_out_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0),.d0(buff_y_out_1_d0),.q0(buff_y_out_1_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_address1),.ce1(buff_y_out_1_ce1),.q1(buff_y_out_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_2_address0),.ce0(buff_y_out_2_ce0),.we0(buff_y_out_2_we0),.d0(buff_y_out_2_d0),.q0(buff_y_out_2_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_address1),.ce1(buff_y_out_2_ce1),.q1(buff_y_out_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_3_address0),.ce0(buff_y_out_3_ce0),.we0(buff_y_out_3_we0),.d0(buff_y_out_3_d0),.q0(buff_y_out_3_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_address1),.ce1(buff_y_out_3_ce1),.q1(buff_y_out_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_4_address0),.ce0(buff_y_out_4_ce0),.we0(buff_y_out_4_we0),.d0(buff_y_out_4_d0),.q0(buff_y_out_4_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_address1),.ce1(buff_y_out_4_ce1),.q1(buff_y_out_4_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_5_address0),.ce0(buff_y_out_5_ce0),.we0(buff_y_out_5_we0),.d0(buff_y_out_5_d0),.q0(buff_y_out_5_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_address1),.ce1(buff_y_out_5_ce1),.q1(buff_y_out_5_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_6_address0),.ce0(buff_y_out_6_ce0),.we0(buff_y_out_6_we0),.d0(buff_y_out_6_d0),.q0(buff_y_out_6_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_address1),.ce1(buff_y_out_6_ce1),.q1(buff_y_out_6_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_7_address0),.ce0(buff_y_out_7_ce0),.we0(buff_y_out_7_we0),.d0(buff_y_out_7_d0),.q0(buff_y_out_7_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_address1),.ce1(buff_y_out_7_ce1),.q1(buff_y_out_7_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_address1),.ce1(tmp1_ce1),.q1(tmp1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_1_address1),.ce1(tmp1_1_ce1),.q1(tmp1_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_2_address0),.ce0(tmp1_2_ce0),.we0(tmp1_2_we0),.d0(tmp1_2_d0),.q0(tmp1_2_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_2_address1),.ce1(tmp1_2_ce1),.q1(tmp1_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_3_address0),.ce0(tmp1_3_ce0),.we0(tmp1_3_we0),.d0(tmp1_3_d0),.q0(tmp1_3_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_3_address1),.ce1(tmp1_3_ce1),.q1(tmp1_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_4_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_4_address0),.ce0(tmp1_4_ce0),.we0(tmp1_4_we0),.d0(tmp1_4_d0),.q0(tmp1_4_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_4_address1),.ce1(tmp1_4_ce1),.q1(tmp1_4_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_5_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_5_address0),.ce0(tmp1_5_ce0),.we0(tmp1_5_we0),.d0(tmp1_5_d0),.q0(tmp1_5_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_5_address1),.ce1(tmp1_5_ce1),.q1(tmp1_5_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_6_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_6_address0),.ce0(tmp1_6_ce0),.we0(tmp1_6_we0),.d0(tmp1_6_d0),.q0(tmp1_6_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_6_address1),.ce1(tmp1_6_ce1),.q1(tmp1_6_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
tmp1_7_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_7_address0),.ce0(tmp1_7_ce0),.we0(tmp1_7_we0),.d0(tmp1_7_d0),.q0(tmp1_7_q0),.address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_7_address1),.ce1(tmp1_7_ce1),.q1(tmp1_7_q1));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_1095(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_1095_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_1095_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_1095_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_1095_ap_ready),.i(trunc_ln11_reg_1453),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_1095_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_1095_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_1095_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1095_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_1095_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1095_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_1095_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1095_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_atax_Pipeline_lprd_2_fu_1095_A_4_address0),.A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1095_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_atax_Pipeline_lprd_2_fu_1095_A_5_address0),.A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1095_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_atax_Pipeline_lprd_2_fu_1095_A_6_address0),.A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1095_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_atax_Pipeline_lprd_2_fu_1095_A_7_address0),.A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1095_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_d0),.buff_A_4_address0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_ce0),.buff_A_4_we0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_we0),.buff_A_4_d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_d0),.buff_A_5_address0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_ce0),.buff_A_5_we0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_we0),.buff_A_5_d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_d0),.buff_A_6_address0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_ce0),.buff_A_6_we0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_we0),.buff_A_6_d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_d0),.buff_A_7_address0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_ce0),.buff_A_7_we0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_we0),.buff_A_7_d0(grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_d0));
atax_atax_Pipeline_lp1 grp_atax_Pipeline_lp1_fu_1124(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_fu_1124_ap_start),.ap_done(grp_atax_Pipeline_lp1_fu_1124_ap_done),.ap_idle(grp_atax_Pipeline_lp1_fu_1124_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_fu_1124_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_fu_1124_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_address2),.buff_A_ce2(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_address3),.buff_A_ce3(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_address4),.buff_A_ce4(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_address5),.buff_A_ce5(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_address6),.buff_A_ce6(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_address7),.buff_A_ce7(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_address8),.buff_A_ce8(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_address9),.buff_A_ce9(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_address10),.buff_A_ce10(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_address11),.buff_A_ce11(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_address12),.buff_A_ce12(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_address13),.buff_A_ce13(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_address14),.buff_A_ce14(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_address15),.buff_A_ce15(grp_atax_Pipeline_lp1_fu_1124_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address2),.buff_A_1_ce2(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address3),.buff_A_1_ce3(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address4),.buff_A_1_ce4(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address5),.buff_A_1_ce5(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address6),.buff_A_1_ce6(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address7),.buff_A_1_ce7(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address8),.buff_A_1_ce8(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address9),.buff_A_1_ce9(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address10),.buff_A_1_ce10(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address11),.buff_A_1_ce11(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address12),.buff_A_1_ce12(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address13),.buff_A_1_ce13(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address14),.buff_A_1_ce14(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address15),.buff_A_1_ce15(grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address2),.buff_A_2_ce2(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address3),.buff_A_2_ce3(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address4),.buff_A_2_ce4(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address5),.buff_A_2_ce5(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address6),.buff_A_2_ce6(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address7),.buff_A_2_ce7(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address8),.buff_A_2_ce8(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address9),.buff_A_2_ce9(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address10),.buff_A_2_ce10(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address11),.buff_A_2_ce11(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address12),.buff_A_2_ce12(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address13),.buff_A_2_ce13(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address14),.buff_A_2_ce14(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address15),.buff_A_2_ce15(grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address2),.buff_A_3_ce2(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address3),.buff_A_3_ce3(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address4),.buff_A_3_ce4(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address5),.buff_A_3_ce5(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address6),.buff_A_3_ce6(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address7),.buff_A_3_ce7(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address8),.buff_A_3_ce8(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address9),.buff_A_3_ce9(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address10),.buff_A_3_ce10(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address11),.buff_A_3_ce11(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address12),.buff_A_3_ce12(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address13),.buff_A_3_ce13(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address14),.buff_A_3_ce14(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address15),.buff_A_3_ce15(grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_A_4_address0(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address1),.buff_A_4_ce1(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_4_address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address2),.buff_A_4_ce2(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce2),.buff_A_4_q2(buff_A_4_q2),.buff_A_4_address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address3),.buff_A_4_ce3(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce3),.buff_A_4_q3(buff_A_4_q3),.buff_A_4_address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address4),.buff_A_4_ce4(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce4),.buff_A_4_q4(buff_A_4_q4),.buff_A_4_address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address5),.buff_A_4_ce5(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce5),.buff_A_4_q5(buff_A_4_q5),.buff_A_4_address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address6),.buff_A_4_ce6(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce6),.buff_A_4_q6(buff_A_4_q6),.buff_A_4_address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address7),.buff_A_4_ce7(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce7),.buff_A_4_q7(buff_A_4_q7),.buff_A_4_address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address8),.buff_A_4_ce8(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce8),.buff_A_4_q8(buff_A_4_q8),.buff_A_4_address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address9),.buff_A_4_ce9(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce9),.buff_A_4_q9(buff_A_4_q9),.buff_A_4_address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address10),.buff_A_4_ce10(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce10),.buff_A_4_q10(buff_A_4_q10),.buff_A_4_address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address11),.buff_A_4_ce11(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce11),.buff_A_4_q11(buff_A_4_q11),.buff_A_4_address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address12),.buff_A_4_ce12(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce12),.buff_A_4_q12(buff_A_4_q12),.buff_A_4_address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address13),.buff_A_4_ce13(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce13),.buff_A_4_q13(buff_A_4_q13),.buff_A_4_address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address14),.buff_A_4_ce14(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce14),.buff_A_4_q14(buff_A_4_q14),.buff_A_4_address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address15),.buff_A_4_ce15(grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce15),.buff_A_4_q15(buff_A_4_q15),.buff_A_5_address0(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address1),.buff_A_5_ce1(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_5_address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address2),.buff_A_5_ce2(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce2),.buff_A_5_q2(buff_A_5_q2),.buff_A_5_address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address3),.buff_A_5_ce3(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce3),.buff_A_5_q3(buff_A_5_q3),.buff_A_5_address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address4),.buff_A_5_ce4(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce4),.buff_A_5_q4(buff_A_5_q4),.buff_A_5_address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address5),.buff_A_5_ce5(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce5),.buff_A_5_q5(buff_A_5_q5),.buff_A_5_address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address6),.buff_A_5_ce6(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce6),.buff_A_5_q6(buff_A_5_q6),.buff_A_5_address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address7),.buff_A_5_ce7(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce7),.buff_A_5_q7(buff_A_5_q7),.buff_A_5_address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address8),.buff_A_5_ce8(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce8),.buff_A_5_q8(buff_A_5_q8),.buff_A_5_address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address9),.buff_A_5_ce9(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce9),.buff_A_5_q9(buff_A_5_q9),.buff_A_5_address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address10),.buff_A_5_ce10(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce10),.buff_A_5_q10(buff_A_5_q10),.buff_A_5_address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address11),.buff_A_5_ce11(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce11),.buff_A_5_q11(buff_A_5_q11),.buff_A_5_address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address12),.buff_A_5_ce12(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce12),.buff_A_5_q12(buff_A_5_q12),.buff_A_5_address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address13),.buff_A_5_ce13(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce13),.buff_A_5_q13(buff_A_5_q13),.buff_A_5_address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address14),.buff_A_5_ce14(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce14),.buff_A_5_q14(buff_A_5_q14),.buff_A_5_address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address15),.buff_A_5_ce15(grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce15),.buff_A_5_q15(buff_A_5_q15),.buff_A_6_address0(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address1),.buff_A_6_ce1(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_6_address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address2),.buff_A_6_ce2(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce2),.buff_A_6_q2(buff_A_6_q2),.buff_A_6_address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address3),.buff_A_6_ce3(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce3),.buff_A_6_q3(buff_A_6_q3),.buff_A_6_address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address4),.buff_A_6_ce4(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce4),.buff_A_6_q4(buff_A_6_q4),.buff_A_6_address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address5),.buff_A_6_ce5(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce5),.buff_A_6_q5(buff_A_6_q5),.buff_A_6_address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address6),.buff_A_6_ce6(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce6),.buff_A_6_q6(buff_A_6_q6),.buff_A_6_address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address7),.buff_A_6_ce7(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce7),.buff_A_6_q7(buff_A_6_q7),.buff_A_6_address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address8),.buff_A_6_ce8(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce8),.buff_A_6_q8(buff_A_6_q8),.buff_A_6_address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address9),.buff_A_6_ce9(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce9),.buff_A_6_q9(buff_A_6_q9),.buff_A_6_address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address10),.buff_A_6_ce10(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce10),.buff_A_6_q10(buff_A_6_q10),.buff_A_6_address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address11),.buff_A_6_ce11(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce11),.buff_A_6_q11(buff_A_6_q11),.buff_A_6_address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address12),.buff_A_6_ce12(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce12),.buff_A_6_q12(buff_A_6_q12),.buff_A_6_address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address13),.buff_A_6_ce13(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce13),.buff_A_6_q13(buff_A_6_q13),.buff_A_6_address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address14),.buff_A_6_ce14(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce14),.buff_A_6_q14(buff_A_6_q14),.buff_A_6_address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address15),.buff_A_6_ce15(grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce15),.buff_A_6_q15(buff_A_6_q15),.buff_A_7_address0(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address1),.buff_A_7_ce1(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_7_address2(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address2),.buff_A_7_ce2(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce2),.buff_A_7_q2(buff_A_7_q2),.buff_A_7_address3(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address3),.buff_A_7_ce3(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce3),.buff_A_7_q3(buff_A_7_q3),.buff_A_7_address4(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address4),.buff_A_7_ce4(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce4),.buff_A_7_q4(buff_A_7_q4),.buff_A_7_address5(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address5),.buff_A_7_ce5(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce5),.buff_A_7_q5(buff_A_7_q5),.buff_A_7_address6(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address6),.buff_A_7_ce6(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce6),.buff_A_7_q6(buff_A_7_q6),.buff_A_7_address7(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address7),.buff_A_7_ce7(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce7),.buff_A_7_q7(buff_A_7_q7),.buff_A_7_address8(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address8),.buff_A_7_ce8(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce8),.buff_A_7_q8(buff_A_7_q8),.buff_A_7_address9(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address9),.buff_A_7_ce9(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce9),.buff_A_7_q9(buff_A_7_q9),.buff_A_7_address10(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address10),.buff_A_7_ce10(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce10),.buff_A_7_q10(buff_A_7_q10),.buff_A_7_address11(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address11),.buff_A_7_ce11(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce11),.buff_A_7_q11(buff_A_7_q11),.buff_A_7_address12(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address12),.buff_A_7_ce12(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce12),.buff_A_7_q12(buff_A_7_q12),.buff_A_7_address13(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address13),.buff_A_7_ce13(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce13),.buff_A_7_q13(buff_A_7_q13),.buff_A_7_address14(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address14),.buff_A_7_ce14(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce14),.buff_A_7_q14(buff_A_7_q14),.buff_A_7_address15(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address15),.buff_A_7_ce15(grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce15),.buff_A_7_q15(buff_A_7_q15),.tmp1_7_address0(grp_atax_Pipeline_lp1_fu_1124_tmp1_7_address0),.tmp1_7_ce0(grp_atax_Pipeline_lp1_fu_1124_tmp1_7_ce0),.tmp1_7_we0(grp_atax_Pipeline_lp1_fu_1124_tmp1_7_we0),.tmp1_7_d0(grp_atax_Pipeline_lp1_fu_1124_tmp1_7_d0),.tmp1_7_address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_7_address1),.tmp1_7_ce1(grp_atax_Pipeline_lp1_fu_1124_tmp1_7_ce1),.tmp1_7_q1(tmp1_7_q1),.tmp1_6_address0(grp_atax_Pipeline_lp1_fu_1124_tmp1_6_address0),.tmp1_6_ce0(grp_atax_Pipeline_lp1_fu_1124_tmp1_6_ce0),.tmp1_6_we0(grp_atax_Pipeline_lp1_fu_1124_tmp1_6_we0),.tmp1_6_d0(grp_atax_Pipeline_lp1_fu_1124_tmp1_6_d0),.tmp1_6_address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_6_address1),.tmp1_6_ce1(grp_atax_Pipeline_lp1_fu_1124_tmp1_6_ce1),.tmp1_6_q1(tmp1_6_q1),.tmp1_5_address0(grp_atax_Pipeline_lp1_fu_1124_tmp1_5_address0),.tmp1_5_ce0(grp_atax_Pipeline_lp1_fu_1124_tmp1_5_ce0),.tmp1_5_we0(grp_atax_Pipeline_lp1_fu_1124_tmp1_5_we0),.tmp1_5_d0(grp_atax_Pipeline_lp1_fu_1124_tmp1_5_d0),.tmp1_5_address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_5_address1),.tmp1_5_ce1(grp_atax_Pipeline_lp1_fu_1124_tmp1_5_ce1),.tmp1_5_q1(tmp1_5_q1),.tmp1_4_address0(grp_atax_Pipeline_lp1_fu_1124_tmp1_4_address0),.tmp1_4_ce0(grp_atax_Pipeline_lp1_fu_1124_tmp1_4_ce0),.tmp1_4_we0(grp_atax_Pipeline_lp1_fu_1124_tmp1_4_we0),.tmp1_4_d0(grp_atax_Pipeline_lp1_fu_1124_tmp1_4_d0),.tmp1_4_address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_4_address1),.tmp1_4_ce1(grp_atax_Pipeline_lp1_fu_1124_tmp1_4_ce1),.tmp1_4_q1(tmp1_4_q1),.tmp1_3_address0(grp_atax_Pipeline_lp1_fu_1124_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_fu_1124_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_fu_1124_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_fu_1124_tmp1_3_d0),.tmp1_3_address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_3_address1),.tmp1_3_ce1(grp_atax_Pipeline_lp1_fu_1124_tmp1_3_ce1),.tmp1_3_q1(tmp1_3_q1),.tmp1_2_address0(grp_atax_Pipeline_lp1_fu_1124_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_fu_1124_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_fu_1124_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_fu_1124_tmp1_2_d0),.tmp1_2_address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_2_address1),.tmp1_2_ce1(grp_atax_Pipeline_lp1_fu_1124_tmp1_2_ce1),.tmp1_2_q1(tmp1_2_q1),.tmp1_1_address0(grp_atax_Pipeline_lp1_fu_1124_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_fu_1124_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_fu_1124_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_fu_1124_tmp1_1_d0),.tmp1_1_address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_1_address1),.tmp1_1_ce1(grp_atax_Pipeline_lp1_fu_1124_tmp1_1_ce1),.tmp1_1_q1(tmp1_1_q1),.tmp1_address0(grp_atax_Pipeline_lp1_fu_1124_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_fu_1124_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_fu_1124_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_fu_1124_tmp1_d0),.tmp1_address1(grp_atax_Pipeline_lp1_fu_1124_tmp1_address1),.tmp1_ce1(grp_atax_Pipeline_lp1_fu_1124_tmp1_ce1),.tmp1_q1(tmp1_q1),.buff_x_load(buff_x_load_reg_1461),.buff_x_1_load(buff_x_1_load_reg_1466),.buff_x_2_load(buff_x_2_load_reg_1471),.buff_x_3_load(buff_x_3_load_reg_1476),.buff_x_4_load(buff_x_4_load_reg_1481),.buff_x_5_load(buff_x_5_load_reg_1486),.buff_x_6_load(buff_x_6_load_reg_1491),.buff_x_7_load(buff_x_7_load_reg_1496),.buff_x_load_1(buff_x_load_1_reg_1501),.buff_x_1_load_1(buff_x_1_load_1_reg_1506),.buff_x_2_load_1(buff_x_2_load_1_reg_1511),.buff_x_3_load_1(buff_x_3_load_1_reg_1516),.buff_x_4_load_1(buff_x_4_load_1_reg_1521),.buff_x_5_load_1(buff_x_5_load_1_reg_1526),.buff_x_6_load_1(buff_x_6_load_1_reg_1531),.buff_x_7_load_1(buff_x_7_load_1_reg_1536),.buff_x_load_2(buff_x_load_2_reg_1621),.buff_x_1_load_2(buff_x_1_load_2_reg_1626),.buff_x_2_load_2(buff_x_2_load_2_reg_1631),.buff_x_3_load_2(buff_x_3_load_2_reg_1636),.buff_x_4_load_2(buff_x_4_load_2_reg_1641),.buff_x_5_load_2(buff_x_5_load_2_reg_1646),.buff_x_6_load_2(buff_x_6_load_2_reg_1651),.buff_x_7_load_2(buff_x_7_load_2_reg_1656),.buff_x_load_3(buff_x_load_3_reg_1661),.buff_x_1_load_3(buff_x_1_load_3_reg_1666),.buff_x_2_load_3(buff_x_2_load_3_reg_1671),.buff_x_3_load_3(buff_x_3_load_3_reg_1676),.buff_x_4_load_3(buff_x_4_load_3_reg_1681),.buff_x_5_load_3(buff_x_5_load_3_reg_1686),.buff_x_6_load_3(buff_x_6_load_3_reg_1691),.buff_x_7_load_3(buff_x_7_load_3_reg_1696),.buff_x_load_4(buff_x_load_4_reg_1781),.buff_x_1_load_4(buff_x_1_load_4_reg_1786),.buff_x_2_load_4(buff_x_2_load_4_reg_1791),.buff_x_3_load_4(buff_x_3_load_4_reg_1796),.buff_x_4_load_4(buff_x_4_load_4_reg_1801),.buff_x_5_load_4(buff_x_5_load_4_reg_1806),.buff_x_6_load_4(buff_x_6_load_4_reg_1811),.buff_x_7_load_4(buff_x_7_load_4_reg_1816),.buff_x_load_5(buff_x_load_5_reg_1821),.buff_x_1_load_5(buff_x_1_load_5_reg_1826),.buff_x_2_load_5(buff_x_2_load_5_reg_1831),.buff_x_3_load_5(buff_x_3_load_5_reg_1836),.buff_x_4_load_5(buff_x_4_load_5_reg_1841),.buff_x_5_load_5(buff_x_5_load_5_reg_1846),.buff_x_6_load_5(buff_x_6_load_5_reg_1851),.buff_x_7_load_5(buff_x_7_load_5_reg_1856),.buff_x_load_6(buff_x_load_6_reg_1941),.buff_x_1_load_6(buff_x_1_load_6_reg_1946),.buff_x_2_load_6(buff_x_2_load_6_reg_1951),.buff_x_3_load_6(buff_x_3_load_6_reg_1956),.buff_x_4_load_6(buff_x_4_load_6_reg_1961),.buff_x_5_load_6(buff_x_5_load_6_reg_1966),.buff_x_6_load_6(buff_x_6_load_6_reg_1971),.buff_x_7_load_6(buff_x_7_load_6_reg_1976),.buff_x_load_7(buff_x_load_7_reg_1981),.buff_x_1_load_7(buff_x_1_load_7_reg_1986),.buff_x_2_load_7(buff_x_2_load_7_reg_1991),.buff_x_3_load_7(buff_x_3_load_7_reg_1996),.buff_x_4_load_7(buff_x_4_load_7_reg_2001),.buff_x_5_load_7(buff_x_5_load_7_reg_2006),.buff_x_6_load_7(buff_x_6_load_7_reg_2011),.buff_x_7_load_7(buff_x_7_load_7_reg_2016),.grp_fu_2021_p_din0(grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_din0),.grp_fu_2021_p_din1(grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_din1),.grp_fu_2021_p_opcode(grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_opcode),.grp_fu_2021_p_dout0(grp_fu_2021_p2),.grp_fu_2021_p_ce(grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_ce),.grp_fu_2025_p_din0(grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_din0),.grp_fu_2025_p_din1(grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_din1),.grp_fu_2025_p_dout0(grp_fu_2025_p2),.grp_fu_2025_p_ce(grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_ce));
atax_atax_Pipeline_lp3_lp4 grp_atax_Pipeline_lp3_lp4_fu_1224(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start),.ap_done(grp_atax_Pipeline_lp3_lp4_fu_1224_ap_done),.ap_idle(grp_atax_Pipeline_lp3_lp4_fu_1224_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_lp4_fu_1224_ap_ready),.tmp1_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.tmp1_4_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_4_address0),.tmp1_4_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_4_ce0),.tmp1_4_q0(tmp1_4_q0),.tmp1_5_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_5_address0),.tmp1_5_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_5_ce0),.tmp1_5_q0(tmp1_5_q0),.tmp1_6_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_6_address0),.tmp1_6_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_6_ce0),.tmp1_6_q0(tmp1_6_q0),.tmp1_7_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_7_address0),.tmp1_7_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_7_ce0),.tmp1_7_q0(tmp1_7_q0),.buff_A_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_4_address0),.buff_A_4_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_5_address0),.buff_A_5_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_6_address0),.buff_A_6_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_7_address0),.buff_A_7_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_y_out_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_ce0),.buff_y_out_we0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_we0),.buff_y_out_d0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_d0),.buff_y_out_address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_address1),.buff_y_out_ce1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_ce1),.buff_y_out_q1(buff_y_out_q1),.buff_y_out_1_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_ce0),.buff_y_out_1_we0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_we0),.buff_y_out_1_d0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_d0),.buff_y_out_1_address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_address1),.buff_y_out_1_ce1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_ce1),.buff_y_out_1_q1(buff_y_out_1_q1),.buff_y_out_2_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_ce0),.buff_y_out_2_we0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_we0),.buff_y_out_2_d0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_d0),.buff_y_out_2_address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_address1),.buff_y_out_2_ce1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_ce1),.buff_y_out_2_q1(buff_y_out_2_q1),.buff_y_out_3_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_ce0),.buff_y_out_3_we0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_we0),.buff_y_out_3_d0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_d0),.buff_y_out_3_address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_address1),.buff_y_out_3_ce1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_ce1),.buff_y_out_3_q1(buff_y_out_3_q1),.buff_y_out_4_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_address0),.buff_y_out_4_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_ce0),.buff_y_out_4_we0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_we0),.buff_y_out_4_d0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_d0),.buff_y_out_4_address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_address1),.buff_y_out_4_ce1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_ce1),.buff_y_out_4_q1(buff_y_out_4_q1),.buff_y_out_5_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_address0),.buff_y_out_5_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_ce0),.buff_y_out_5_we0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_we0),.buff_y_out_5_d0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_d0),.buff_y_out_5_address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_address1),.buff_y_out_5_ce1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_ce1),.buff_y_out_5_q1(buff_y_out_5_q1),.buff_y_out_6_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_address0),.buff_y_out_6_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_ce0),.buff_y_out_6_we0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_we0),.buff_y_out_6_d0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_d0),.buff_y_out_6_address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_address1),.buff_y_out_6_ce1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_ce1),.buff_y_out_6_q1(buff_y_out_6_q1),.buff_y_out_7_address0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_address0),.buff_y_out_7_ce0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_ce0),.buff_y_out_7_we0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_we0),.buff_y_out_7_d0(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_d0),.buff_y_out_7_address1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_address1),.buff_y_out_7_ce1(grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_ce1),.buff_y_out_7_q1(buff_y_out_7_q1),.grp_fu_2021_p_din0(grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_din0),.grp_fu_2021_p_din1(grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_din1),.grp_fu_2021_p_opcode(grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_opcode),.grp_fu_2021_p_dout0(grp_fu_2021_p2),.grp_fu_2021_p_ce(grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_ce),.grp_fu_2025_p_din0(grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_din0),.grp_fu_2025_p_din1(grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_din1),.grp_fu_2025_p_dout0(grp_fu_2025_p2),.grp_fu_2025_p_ce(grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_1252(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_1252_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_1252_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_1252_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_1252_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_1252_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_1252_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0),.buff_y_out_4_address0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_4_address0),.buff_y_out_4_ce0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_4_ce0),.buff_y_out_4_q0(buff_y_out_4_q0),.buff_y_out_5_address0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_5_address0),.buff_y_out_5_ce0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_5_ce0),.buff_y_out_5_q0(buff_y_out_5_q0),.buff_y_out_6_address0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_6_address0),.buff_y_out_6_ce0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_6_ce0),.buff_y_out_6_q0(buff_y_out_6_q0),.buff_y_out_7_address0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_7_address0),.buff_y_out_7_ce0(grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_7_ce0),.buff_y_out_7_q0(buff_y_out_7_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U398(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2021_p0),.din1(grp_fu_2021_p1),.ce(grp_fu_2021_ce),.dout(grp_fu_2021_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U399(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2025_p0),.din1(grp_fu_2025_p1),.ce(grp_fu_2025_ce),.dout(grp_fu_2025_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_fu_1124_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_Pipeline_lp1_fu_1124_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_fu_1124_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_fu_1124_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_lp4_fu_1224_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_1095_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_atax_Pipeline_lprd_2_fu_1095_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_1095_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_1095_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_1252_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_atax_Pipeline_lpwr_1_fu_1252_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_1252_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_1252_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_102 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_102 <= add_ln11_reg_1363;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_1363 <= add_ln11_fu_1280_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_load_1_reg_1506 <= buff_x_1_q0;
        buff_x_1_load_reg_1466 <= buff_x_1_q1;
        buff_x_2_load_1_reg_1511 <= buff_x_2_q0;
        buff_x_2_load_reg_1471 <= buff_x_2_q1;
        buff_x_3_load_1_reg_1516 <= buff_x_3_q0;
        buff_x_3_load_reg_1476 <= buff_x_3_q1;
        buff_x_4_load_1_reg_1521 <= buff_x_4_q0;
        buff_x_4_load_reg_1481 <= buff_x_4_q1;
        buff_x_5_load_1_reg_1526 <= buff_x_5_q0;
        buff_x_5_load_reg_1486 <= buff_x_5_q1;
        buff_x_6_load_1_reg_1531 <= buff_x_6_q0;
        buff_x_6_load_reg_1491 <= buff_x_6_q1;
        buff_x_7_load_1_reg_1536 <= buff_x_7_q0;
        buff_x_7_load_reg_1496 <= buff_x_7_q1;
        buff_x_load_1_reg_1501 <= buff_x_q0;
        buff_x_load_reg_1461 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_load_2_reg_1626 <= buff_x_1_q0;
        buff_x_1_load_3_reg_1666 <= buff_x_1_q1;
        buff_x_2_load_2_reg_1631 <= buff_x_2_q0;
        buff_x_2_load_3_reg_1671 <= buff_x_2_q1;
        buff_x_3_load_2_reg_1636 <= buff_x_3_q0;
        buff_x_3_load_3_reg_1676 <= buff_x_3_q1;
        buff_x_4_load_2_reg_1641 <= buff_x_4_q0;
        buff_x_4_load_3_reg_1681 <= buff_x_4_q1;
        buff_x_5_load_2_reg_1646 <= buff_x_5_q0;
        buff_x_5_load_3_reg_1686 <= buff_x_5_q1;
        buff_x_6_load_2_reg_1651 <= buff_x_6_q0;
        buff_x_6_load_3_reg_1691 <= buff_x_6_q1;
        buff_x_7_load_2_reg_1656 <= buff_x_7_q0;
        buff_x_7_load_3_reg_1696 <= buff_x_7_q1;
        buff_x_load_2_reg_1621 <= buff_x_q0;
        buff_x_load_3_reg_1661 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_load_4_reg_1786 <= buff_x_1_q0;
        buff_x_1_load_5_reg_1826 <= buff_x_1_q1;
        buff_x_2_load_4_reg_1791 <= buff_x_2_q0;
        buff_x_2_load_5_reg_1831 <= buff_x_2_q1;
        buff_x_3_load_4_reg_1796 <= buff_x_3_q0;
        buff_x_3_load_5_reg_1836 <= buff_x_3_q1;
        buff_x_4_load_4_reg_1801 <= buff_x_4_q0;
        buff_x_4_load_5_reg_1841 <= buff_x_4_q1;
        buff_x_5_load_4_reg_1806 <= buff_x_5_q0;
        buff_x_5_load_5_reg_1846 <= buff_x_5_q1;
        buff_x_6_load_4_reg_1811 <= buff_x_6_q0;
        buff_x_6_load_5_reg_1851 <= buff_x_6_q1;
        buff_x_7_load_4_reg_1816 <= buff_x_7_q0;
        buff_x_7_load_5_reg_1856 <= buff_x_7_q1;
        buff_x_load_4_reg_1781 <= buff_x_q0;
        buff_x_load_5_reg_1821 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_x_1_load_6_reg_1946 <= buff_x_1_q0;
        buff_x_1_load_7_reg_1986 <= buff_x_1_q1;
        buff_x_2_load_6_reg_1951 <= buff_x_2_q0;
        buff_x_2_load_7_reg_1991 <= buff_x_2_q1;
        buff_x_3_load_6_reg_1956 <= buff_x_3_q0;
        buff_x_3_load_7_reg_1996 <= buff_x_3_q1;
        buff_x_4_load_6_reg_1961 <= buff_x_4_q0;
        buff_x_4_load_7_reg_2001 <= buff_x_4_q1;
        buff_x_5_load_6_reg_1966 <= buff_x_5_q0;
        buff_x_5_load_7_reg_2006 <= buff_x_5_q1;
        buff_x_6_load_6_reg_1971 <= buff_x_6_q0;
        buff_x_6_load_7_reg_2011 <= buff_x_6_q1;
        buff_x_7_load_6_reg_1976 <= buff_x_7_q0;
        buff_x_7_load_7_reg_2016 <= buff_x_7_q1;
        buff_x_load_6_reg_1941 <= buff_x_q0;
        buff_x_load_7_reg_1981 <= buff_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_reg_1453 <= trunc_ln11_fu_1291_p1;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_fu_1124_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_lp4_fu_1224_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_1252_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
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
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lprd_2_fu_1095_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state14) & (grp_atax_Pipeline_lpwr_1_fu_1252_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (grp_atax_Pipeline_lpwr_1_fu_1252_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce10 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce11 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce12 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce13 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce14 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce15 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce2 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce3 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce4 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce5 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce6 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce7 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce8 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce9 = grp_atax_Pipeline_lp1_fu_1124_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce10 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce11 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce12 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce13 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce14 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce15 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce2 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce3 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce4 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce5 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce6 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce7 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce8 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce9 = grp_atax_Pipeline_lp1_fu_1124_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce10 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce11 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce12 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce13 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce14 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce15 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce2 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce3 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce4 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce5 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce6 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce7 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce8 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce9 = grp_atax_Pipeline_lp1_fu_1124_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce10 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce10;
    end else begin
        buff_A_4_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce11 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce11;
    end else begin
        buff_A_4_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce12 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce12;
    end else begin
        buff_A_4_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce13 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce13;
    end else begin
        buff_A_4_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce14 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce14;
    end else begin
        buff_A_4_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce15 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce15;
    end else begin
        buff_A_4_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce2 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce2;
    end else begin
        buff_A_4_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce3 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce3;
    end else begin
        buff_A_4_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce4 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce4;
    end else begin
        buff_A_4_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce5 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce5;
    end else begin
        buff_A_4_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce6 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce6;
    end else begin
        buff_A_4_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce7 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce7;
    end else begin
        buff_A_4_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce8 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce8;
    end else begin
        buff_A_4_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce9 = grp_atax_Pipeline_lp1_fu_1124_buff_A_4_ce9;
    end else begin
        buff_A_4_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce10 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce10;
    end else begin
        buff_A_5_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce11 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce11;
    end else begin
        buff_A_5_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce12 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce12;
    end else begin
        buff_A_5_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce13 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce13;
    end else begin
        buff_A_5_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce14 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce14;
    end else begin
        buff_A_5_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce15 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce15;
    end else begin
        buff_A_5_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce2 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce2;
    end else begin
        buff_A_5_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce3 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce3;
    end else begin
        buff_A_5_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce4 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce4;
    end else begin
        buff_A_5_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce5 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce5;
    end else begin
        buff_A_5_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce6 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce6;
    end else begin
        buff_A_5_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce7 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce7;
    end else begin
        buff_A_5_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce8 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce8;
    end else begin
        buff_A_5_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce9 = grp_atax_Pipeline_lp1_fu_1124_buff_A_5_ce9;
    end else begin
        buff_A_5_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce10 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce10;
    end else begin
        buff_A_6_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce11 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce11;
    end else begin
        buff_A_6_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce12 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce12;
    end else begin
        buff_A_6_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce13 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce13;
    end else begin
        buff_A_6_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce14 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce14;
    end else begin
        buff_A_6_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce15 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce15;
    end else begin
        buff_A_6_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce2 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce2;
    end else begin
        buff_A_6_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce3 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce3;
    end else begin
        buff_A_6_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce4 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce4;
    end else begin
        buff_A_6_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce5 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce5;
    end else begin
        buff_A_6_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce6 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce6;
    end else begin
        buff_A_6_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce7 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce7;
    end else begin
        buff_A_6_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce8 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce8;
    end else begin
        buff_A_6_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce9 = grp_atax_Pipeline_lp1_fu_1124_buff_A_6_ce9;
    end else begin
        buff_A_6_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce10 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce10;
    end else begin
        buff_A_7_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce11 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce11;
    end else begin
        buff_A_7_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce12 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce12;
    end else begin
        buff_A_7_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce13 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce13;
    end else begin
        buff_A_7_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce14 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce14;
    end else begin
        buff_A_7_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce15 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce15;
    end else begin
        buff_A_7_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce2 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce2;
    end else begin
        buff_A_7_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce3 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce3;
    end else begin
        buff_A_7_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce4 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce4;
    end else begin
        buff_A_7_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce5 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce5;
    end else begin
        buff_A_7_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce6 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce6;
    end else begin
        buff_A_7_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce7 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce7;
    end else begin
        buff_A_7_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce8 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce8;
    end else begin
        buff_A_7_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce9 = grp_atax_Pipeline_lp1_fu_1124_buff_A_7_ce9;
    end else begin
        buff_A_7_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce10 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce11 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce12 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce13 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce14 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce15 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce2 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce3 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce4 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce5 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce6 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce7 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce8 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce9 = grp_atax_Pipeline_lp1_fu_1124_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_1095_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_1_address0_local = zext_ln5_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address0_local = 64'd1;
    end else begin
        buff_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address1_local = 64'd0;
    end else begin
        buff_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_1_ce1_local = 1'b1;
    end else begin
        buff_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_2_address0_local = zext_ln5_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_2_address0_local = 64'd1;
    end else begin
        buff_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_2_address1_local = 64'd0;
    end else begin
        buff_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_2_ce1_local = 1'b1;
    end else begin
        buff_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_3_address0_local = zext_ln5_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_3_address0_local = 64'd1;
    end else begin
        buff_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_3_address1_local = 64'd0;
    end else begin
        buff_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_3_ce1_local = 1'b1;
    end else begin
        buff_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_4_address0_local = zext_ln5_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_4_address0_local = 64'd1;
    end else begin
        buff_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_4_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_4_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_4_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_4_address1_local = 64'd0;
    end else begin
        buff_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_4_ce0_local = 1'b1;
    end else begin
        buff_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_4_ce1_local = 1'b1;
    end else begin
        buff_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_4_we0_local = 1'b1;
    end else begin
        buff_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_5_address0_local = zext_ln5_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_5_address0_local = 64'd1;
    end else begin
        buff_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_5_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_5_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_5_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_5_address1_local = 64'd0;
    end else begin
        buff_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_5_ce0_local = 1'b1;
    end else begin
        buff_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_5_ce1_local = 1'b1;
    end else begin
        buff_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_5_we0_local = 1'b1;
    end else begin
        buff_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_6_address0_local = zext_ln5_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_6_address0_local = 64'd1;
    end else begin
        buff_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_6_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_6_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_6_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_6_address1_local = 64'd0;
    end else begin
        buff_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_6_ce0_local = 1'b1;
    end else begin
        buff_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_6_ce1_local = 1'b1;
    end else begin
        buff_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_6_we0_local = 1'b1;
    end else begin
        buff_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_7_address0_local = zext_ln5_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_7_address0_local = 64'd1;
    end else begin
        buff_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_7_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_7_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_7_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_7_address1_local = 64'd0;
    end else begin
        buff_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_7_ce0_local = 1'b1;
    end else begin
        buff_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_7_ce1_local = 1'b1;
    end else begin
        buff_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_7_we0_local = 1'b1;
    end else begin
        buff_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_address0_local = zext_ln5_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address0_local = 64'd1;
    end else begin
        buff_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address1_local = 64'd0;
    end else begin
        buff_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        buff_x_ce1_local = 1'b1;
    end else begin
        buff_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_ce1 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_ce1;
    end else begin
        buff_y_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_d0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_d0;
    end else begin
        buff_y_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_1_we0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_1_we0;
    end else begin
        buff_y_out_1_we0 = buff_y_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_ce1 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_ce1;
    end else begin
        buff_y_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_d0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_d0;
    end else begin
        buff_y_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_2_we0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_2_we0;
    end else begin
        buff_y_out_2_we0 = buff_y_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_ce1 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_ce1;
    end else begin
        buff_y_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_d0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_d0;
    end else begin
        buff_y_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_3_we0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_3_we0;
    end else begin
        buff_y_out_3_we0 = buff_y_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_address0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_address0;
    end else begin
        buff_y_out_4_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_4_ce0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_ce0;
    end else begin
        buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_ce1 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_ce1;
    end else begin
        buff_y_out_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_d0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_d0;
    end else begin
        buff_y_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_4_we0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_4_we0;
    end else begin
        buff_y_out_4_we0 = buff_y_out_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_4_we0_local = 1'b1;
    end else begin
        buff_y_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_address0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_address0;
    end else begin
        buff_y_out_5_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_5_ce0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_ce0;
    end else begin
        buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_ce1 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_ce1;
    end else begin
        buff_y_out_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_d0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_d0;
    end else begin
        buff_y_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_5_we0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_5_we0;
    end else begin
        buff_y_out_5_we0 = buff_y_out_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_5_we0_local = 1'b1;
    end else begin
        buff_y_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_address0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_address0;
    end else begin
        buff_y_out_6_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_6_ce0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_ce0;
    end else begin
        buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_ce1 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_ce1;
    end else begin
        buff_y_out_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_d0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_d0;
    end else begin
        buff_y_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_6_we0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_6_we0;
    end else begin
        buff_y_out_6_we0 = buff_y_out_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_6_we0_local = 1'b1;
    end else begin
        buff_y_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_address0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_address0;
    end else begin
        buff_y_out_7_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_7_ce0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_ce0;
    end else begin
        buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_ce1 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_ce1;
    end else begin
        buff_y_out_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_d0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_d0;
    end else begin
        buff_y_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_7_we0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_7_we0;
    end else begin
        buff_y_out_7_we0 = buff_y_out_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_7_we0_local = 1'b1;
    end else begin
        buff_y_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_1252_buff_y_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_ce1 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_ce1;
    end else begin
        buff_y_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_d0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_d0;
    end else begin
        buff_y_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y_out_we0 = grp_atax_Pipeline_lp3_lp4_fu_1224_buff_y_out_we0;
    end else begin
        buff_y_out_we0 = buff_y_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2021_ce = grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2021_ce = grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_ce;
    end else begin
        grp_fu_2021_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2021_p0 = grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2021_p0 = grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_din0;
    end else begin
        grp_fu_2021_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2021_p1 = grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2021_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2021_p1 = grp_atax_Pipeline_lp1_fu_1124_grp_fu_2021_p_din1;
    end else begin
        grp_fu_2021_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2025_ce = grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2025_ce = grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_ce;
    end else begin
        grp_fu_2025_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2025_p0 = grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2025_p0 = grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_din0;
    end else begin
        grp_fu_2025_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2025_p1 = grp_atax_Pipeline_lp3_lp4_fu_1224_grp_fu_2025_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2025_p1 = grp_atax_Pipeline_lp1_fu_1124_grp_fu_2025_p_din1;
    end else begin
        grp_fu_2025_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_ce1 = grp_atax_Pipeline_lp1_fu_1124_tmp1_1_ce1;
    end else begin
        tmp1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_ce1 = grp_atax_Pipeline_lp1_fu_1124_tmp1_2_ce1;
    end else begin
        tmp1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_d0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_ce1 = grp_atax_Pipeline_lp1_fu_1124_tmp1_3_ce1;
    end else begin
        tmp1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_d0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_4_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_address0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_4_address0;
    end else begin
        tmp1_4_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_4_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_ce0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_4_ce0;
    end else begin
        tmp1_4_ce0 = tmp1_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_ce1 = grp_atax_Pipeline_lp1_fu_1124_tmp1_4_ce1;
    end else begin
        tmp1_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_d0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_4_d0;
    end else begin
        tmp1_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_4_we0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_4_we0;
    end else begin
        tmp1_4_we0 = tmp1_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_5_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_address0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_5_address0;
    end else begin
        tmp1_5_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_5_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_ce0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_5_ce0;
    end else begin
        tmp1_5_ce0 = tmp1_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_ce1 = grp_atax_Pipeline_lp1_fu_1124_tmp1_5_ce1;
    end else begin
        tmp1_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_d0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_5_d0;
    end else begin
        tmp1_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_5_we0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_5_we0;
    end else begin
        tmp1_5_we0 = tmp1_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_6_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_address0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_6_address0;
    end else begin
        tmp1_6_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_6_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_ce0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_6_ce0;
    end else begin
        tmp1_6_ce0 = tmp1_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_ce1 = grp_atax_Pipeline_lp1_fu_1124_tmp1_6_ce1;
    end else begin
        tmp1_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_d0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_6_d0;
    end else begin
        tmp1_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_6_we0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_6_we0;
    end else begin
        tmp1_6_we0 = tmp1_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_7_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_address0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_7_address0;
    end else begin
        tmp1_7_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_7_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_ce0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_7_ce0;
    end else begin
        tmp1_7_ce0 = tmp1_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_ce1 = grp_atax_Pipeline_lp1_fu_1124_tmp1_7_ce1;
    end else begin
        tmp1_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_d0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_7_d0;
    end else begin
        tmp1_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_7_we0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_7_we0;
    end else begin
        tmp1_7_we0 = tmp1_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_1306_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_1224_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_ce1 = grp_atax_Pipeline_lp1_fu_1124_tmp1_ce1;
    end else begin
        tmp1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_fu_1124_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_1294_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if ((1'b1 == ap_CS_fsm_state14)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_1252_y_out_write;
    end else begin
        y_out_write = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln11_fu_1274_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_atax_Pipeline_lprd_2_fu_1095_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_atax_Pipeline_lp1_fu_1124_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_atax_Pipeline_lp3_lp4_fu_1224_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (grp_atax_Pipeline_lpwr_1_fu_1252_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_1095_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_1095_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_1095_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_1095_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_A_3_ce0;
assign A_4_address0 = grp_atax_Pipeline_lprd_2_fu_1095_A_4_address0;
assign A_4_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_A_4_ce0;
assign A_5_address0 = grp_atax_Pipeline_lprd_2_fu_1095_A_5_address0;
assign A_5_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_A_5_ce0;
assign A_6_address0 = grp_atax_Pipeline_lprd_2_fu_1095_A_6_address0;
assign A_6_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_A_6_ce0;
assign A_7_address0 = grp_atax_Pipeline_lprd_2_fu_1095_A_7_address0;
assign A_7_ce0 = grp_atax_Pipeline_lprd_2_fu_1095_A_7_ce0;
assign add_ln11_fu_1280_p2 = (i_fu_102 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln12_fu_1334_p1 = x_q0;
assign grp_atax_Pipeline_lp1_fu_1124_ap_start = grp_atax_Pipeline_lp1_fu_1124_ap_start_reg;
assign grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start = grp_atax_Pipeline_lp3_lp4_fu_1224_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_1095_ap_start = grp_atax_Pipeline_lprd_2_fu_1095_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_1252_ap_start = grp_atax_Pipeline_lpwr_1_fu_1252_ap_start_reg;
assign icmp_ln11_fu_1274_p2 = ((i_fu_102 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1297_p4 = {{i_fu_102[5:3]}};
assign trunc_ln11_1_fu_1294_p1 = i_fu_102[2:0];
assign trunc_ln11_fu_1291_p1 = i_fu_102[5:0];
assign x_address0 = zext_ln11_fu_1286_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_1252_y_out_din;
assign zext_ln11_fu_1286_p1 = i_fu_102;
assign zext_ln5_fu_1306_p1 = lshr_ln5_fu_1297_p4;
endmodule 