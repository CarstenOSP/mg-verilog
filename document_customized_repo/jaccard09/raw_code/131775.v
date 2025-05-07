module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;
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
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln13_fu_1435_p2;
reg   [6:0] add_ln13_reg_1539;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1447_p1;
reg   [5:0] trunc_ln13_reg_1634;
wire    ap_CS_fsm_state3;
reg   [31:0] buff_p_load_reg_1642;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_p_1_load_reg_1647;
reg   [31:0] buff_p_2_load_reg_1652;
reg   [31:0] buff_p_3_load_reg_1657;
reg   [31:0] buff_p_4_load_reg_1662;
reg   [31:0] buff_p_5_load_reg_1667;
reg   [31:0] buff_p_6_load_reg_1672;
reg   [31:0] buff_p_7_load_reg_1677;
reg   [31:0] buff_p_load_1_reg_1682;
reg   [31:0] buff_p_1_load_1_reg_1687;
reg   [31:0] buff_p_2_load_1_reg_1692;
reg   [31:0] buff_p_3_load_1_reg_1697;
reg   [31:0] buff_p_4_load_1_reg_1702;
reg   [31:0] buff_p_5_load_1_reg_1707;
reg   [31:0] buff_p_6_load_1_reg_1712;
reg   [31:0] buff_p_7_load_1_reg_1717;
reg   [31:0] buff_p_load_2_reg_1802;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_p_1_load_2_reg_1807;
reg   [31:0] buff_p_2_load_2_reg_1812;
reg   [31:0] buff_p_3_load_2_reg_1817;
reg   [31:0] buff_p_4_load_2_reg_1822;
reg   [31:0] buff_p_5_load_2_reg_1827;
reg   [31:0] buff_p_6_load_2_reg_1832;
reg   [31:0] buff_p_7_load_2_reg_1837;
reg   [31:0] buff_p_load_3_reg_1842;
reg   [31:0] buff_p_1_load_3_reg_1847;
reg   [31:0] buff_p_2_load_3_reg_1852;
reg   [31:0] buff_p_3_load_3_reg_1857;
reg   [31:0] buff_p_4_load_3_reg_1862;
reg   [31:0] buff_p_5_load_3_reg_1867;
reg   [31:0] buff_p_6_load_3_reg_1872;
reg   [31:0] buff_p_7_load_3_reg_1877;
reg   [31:0] buff_p_load_4_reg_1962;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_p_1_load_4_reg_1967;
reg   [31:0] buff_p_2_load_4_reg_1972;
reg   [31:0] buff_p_3_load_4_reg_1977;
reg   [31:0] buff_p_4_load_4_reg_1982;
reg   [31:0] buff_p_5_load_4_reg_1987;
reg   [31:0] buff_p_6_load_4_reg_1992;
reg   [31:0] buff_p_7_load_4_reg_1997;
reg   [31:0] buff_p_load_5_reg_2002;
reg   [31:0] buff_p_1_load_5_reg_2007;
reg   [31:0] buff_p_2_load_5_reg_2012;
reg   [31:0] buff_p_3_load_5_reg_2017;
reg   [31:0] buff_p_4_load_5_reg_2022;
reg   [31:0] buff_p_5_load_5_reg_2027;
reg   [31:0] buff_p_6_load_5_reg_2032;
reg   [31:0] buff_p_7_load_5_reg_2037;
reg   [31:0] buff_p_load_6_reg_2122;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_p_1_load_6_reg_2127;
reg   [31:0] buff_p_2_load_6_reg_2132;
reg   [31:0] buff_p_3_load_6_reg_2137;
reg   [31:0] buff_p_4_load_6_reg_2142;
reg   [31:0] buff_p_5_load_6_reg_2147;
reg   [31:0] buff_p_6_load_6_reg_2152;
reg   [31:0] buff_p_7_load_6_reg_2157;
reg   [31:0] buff_p_load_7_reg_2162;
reg   [31:0] buff_p_1_load_7_reg_2167;
reg   [31:0] buff_p_2_load_7_reg_2172;
reg   [31:0] buff_p_3_load_7_reg_2177;
reg   [31:0] buff_p_4_load_7_reg_2182;
reg   [31:0] buff_p_5_load_7_reg_2187;
reg   [31:0] buff_p_6_load_7_reg_2192;
reg   [31:0] buff_p_7_load_7_reg_2197;
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
wire   [31:0] buff_p_q0;
wire   [31:0] buff_p_q1;
wire   [31:0] buff_p_1_q0;
wire   [31:0] buff_p_1_q1;
wire   [31:0] buff_p_2_q0;
wire   [31:0] buff_p_2_q1;
wire   [31:0] buff_p_3_q0;
wire   [31:0] buff_p_3_q1;
wire   [31:0] buff_p_4_q0;
wire   [31:0] buff_p_4_q1;
wire   [31:0] buff_p_5_q0;
wire   [31:0] buff_p_5_q1;
wire   [31:0] buff_p_6_q0;
wire   [31:0] buff_p_6_q1;
wire   [31:0] buff_p_7_q0;
wire   [31:0] buff_p_7_q1;
reg   [2:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg   [2:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg   [2:0] buff_r_2_address0;
reg    buff_r_2_ce0;
wire   [31:0] buff_r_2_q0;
reg   [2:0] buff_r_3_address0;
reg    buff_r_3_ce0;
wire   [31:0] buff_r_3_q0;
reg   [2:0] buff_r_4_address0;
reg    buff_r_4_ce0;
wire   [31:0] buff_r_4_q0;
reg   [2:0] buff_r_5_address0;
reg    buff_r_5_ce0;
wire   [31:0] buff_r_5_q0;
reg   [2:0] buff_r_6_address0;
reg    buff_r_6_ce0;
wire   [31:0] buff_r_6_q0;
reg   [2:0] buff_r_7_address0;
reg    buff_r_7_ce0;
wire   [31:0] buff_r_7_q0;
reg   [2:0] buff_s_out_address0;
reg    buff_s_out_ce0;
reg    buff_s_out_we0;
reg   [31:0] buff_s_out_d0;
wire   [31:0] buff_s_out_q0;
reg    buff_s_out_ce1;
wire   [31:0] buff_s_out_q1;
reg   [2:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
reg    buff_s_out_1_we0;
reg   [31:0] buff_s_out_1_d0;
wire   [31:0] buff_s_out_1_q0;
reg    buff_s_out_1_ce1;
wire   [31:0] buff_s_out_1_q1;
reg   [2:0] buff_s_out_2_address0;
reg    buff_s_out_2_ce0;
reg    buff_s_out_2_we0;
reg   [31:0] buff_s_out_2_d0;
wire   [31:0] buff_s_out_2_q0;
reg    buff_s_out_2_ce1;
wire   [31:0] buff_s_out_2_q1;
reg   [2:0] buff_s_out_3_address0;
reg    buff_s_out_3_ce0;
reg    buff_s_out_3_we0;
reg   [31:0] buff_s_out_3_d0;
wire   [31:0] buff_s_out_3_q0;
reg    buff_s_out_3_ce1;
wire   [31:0] buff_s_out_3_q1;
reg   [2:0] buff_s_out_4_address0;
reg    buff_s_out_4_ce0;
reg    buff_s_out_4_we0;
reg   [31:0] buff_s_out_4_d0;
wire   [31:0] buff_s_out_4_q0;
reg   [2:0] buff_s_out_5_address0;
reg    buff_s_out_5_ce0;
reg    buff_s_out_5_we0;
reg   [31:0] buff_s_out_5_d0;
wire   [31:0] buff_s_out_5_q0;
reg   [2:0] buff_s_out_6_address0;
reg    buff_s_out_6_ce0;
reg    buff_s_out_6_we0;
reg   [31:0] buff_s_out_6_d0;
wire   [31:0] buff_s_out_6_q0;
reg   [2:0] buff_s_out_7_address0;
reg    buff_s_out_7_ce0;
reg    buff_s_out_7_we0;
reg   [31:0] buff_s_out_7_d0;
wire   [31:0] buff_s_out_7_q0;
reg   [2:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg    buff_q_out_ce1;
wire   [31:0] buff_q_out_q1;
reg   [2:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg    buff_q_out_1_ce1;
wire   [31:0] buff_q_out_1_q1;
reg   [2:0] buff_q_out_2_address0;
reg    buff_q_out_2_ce0;
reg    buff_q_out_2_we0;
reg   [31:0] buff_q_out_2_d0;
wire   [31:0] buff_q_out_2_q0;
reg    buff_q_out_2_ce1;
wire   [31:0] buff_q_out_2_q1;
reg   [2:0] buff_q_out_3_address0;
reg    buff_q_out_3_ce0;
reg    buff_q_out_3_we0;
reg   [31:0] buff_q_out_3_d0;
wire   [31:0] buff_q_out_3_q0;
reg    buff_q_out_3_ce1;
wire   [31:0] buff_q_out_3_q1;
reg   [2:0] buff_q_out_4_address0;
reg    buff_q_out_4_ce0;
reg    buff_q_out_4_we0;
reg   [31:0] buff_q_out_4_d0;
wire   [31:0] buff_q_out_4_q0;
reg    buff_q_out_4_ce1;
wire   [31:0] buff_q_out_4_q1;
reg   [2:0] buff_q_out_5_address0;
reg    buff_q_out_5_ce0;
reg    buff_q_out_5_we0;
reg   [31:0] buff_q_out_5_d0;
wire   [31:0] buff_q_out_5_q0;
reg    buff_q_out_5_ce1;
wire   [31:0] buff_q_out_5_q1;
reg   [2:0] buff_q_out_6_address0;
reg    buff_q_out_6_ce0;
reg    buff_q_out_6_we0;
reg   [31:0] buff_q_out_6_d0;
wire   [31:0] buff_q_out_6_q0;
reg    buff_q_out_6_ce1;
wire   [31:0] buff_q_out_6_q1;
reg   [2:0] buff_q_out_7_address0;
reg    buff_q_out_7_ce0;
reg    buff_q_out_7_we0;
reg   [31:0] buff_q_out_7_d0;
wire   [31:0] buff_q_out_7_q0;
reg    buff_q_out_7_ce1;
wire   [31:0] buff_q_out_7_q1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_idle;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_ready;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_4_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_5_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_6_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_7_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_d0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_ce;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_A_0_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_d0;
wire   [8:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_d0;
wire    grp_bicg_Pipeline_lp3_fu_1297_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_1297_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_1297_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_1297_ap_ready;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address2;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address3;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address4;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address5;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address6;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address7;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address8;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address9;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address10;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address11;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address12;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address13;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address14;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_address15;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address2;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address3;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address4;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address5;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address6;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address7;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address8;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address9;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address10;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address11;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address12;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address13;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address14;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address15;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address2;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address3;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address4;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address5;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address6;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address7;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address8;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address9;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address10;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address11;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address12;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address13;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address14;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address15;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address2;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address3;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address4;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address5;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address6;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address7;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address8;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address9;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address10;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address11;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address12;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address13;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address14;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address15;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address2;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address3;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address4;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address5;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address6;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address7;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address8;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address9;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address10;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address11;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address12;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address13;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address14;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address15;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address2;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address3;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address4;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address5;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address6;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address7;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address8;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address9;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address10;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address11;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address12;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address13;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address14;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address15;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address2;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address3;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address4;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address5;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address6;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address7;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address8;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address9;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address10;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address11;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address12;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address13;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address14;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address15;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce15;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce0;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce1;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address2;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce2;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address3;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce3;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address4;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce4;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address5;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce5;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address6;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce6;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address7;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce7;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address8;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce8;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address9;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce9;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address10;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce10;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address11;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce11;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address12;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce12;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address13;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce13;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address14;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce14;
wire   [8:0] grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address15;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce15;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_ce1;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_ce1;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1397_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1397_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1397_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1397_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1397_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1397_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1397_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1397_q_out_write;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_7_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_7_ce0;
reg    grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start_reg;
wire   [0:0] icmp_ln13_fu_1429_p2;
reg    grp_bicg_Pipeline_lprd_2_fu_1268_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_bicg_Pipeline_lp3_fu_1297_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_bicg_Pipeline_lpwr_fu_1397_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln13_fu_1441_p1;
wire   [63:0] zext_ln5_fu_1462_p1;
reg   [6:0] i_fu_106;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_p_ce1_local;
reg   [2:0] buff_p_address1_local;
reg    buff_p_ce0_local;
reg   [2:0] buff_p_address0_local;
reg    buff_p_we0_local;
wire   [2:0] trunc_ln13_1_fu_1450_p1;
wire   [31:0] bitcast_ln14_fu_1498_p1;
reg    buff_p_1_ce1_local;
reg   [2:0] buff_p_1_address1_local;
reg    buff_p_1_ce0_local;
reg   [2:0] buff_p_1_address0_local;
reg    buff_p_1_we0_local;
reg    buff_p_2_ce1_local;
reg   [2:0] buff_p_2_address1_local;
reg    buff_p_2_ce0_local;
reg   [2:0] buff_p_2_address0_local;
reg    buff_p_2_we0_local;
reg    buff_p_3_ce1_local;
reg   [2:0] buff_p_3_address1_local;
reg    buff_p_3_ce0_local;
reg   [2:0] buff_p_3_address0_local;
reg    buff_p_3_we0_local;
reg    buff_p_4_ce1_local;
reg   [2:0] buff_p_4_address1_local;
reg    buff_p_4_ce0_local;
reg   [2:0] buff_p_4_address0_local;
reg    buff_p_4_we0_local;
reg    buff_p_5_ce1_local;
reg   [2:0] buff_p_5_address1_local;
reg    buff_p_5_ce0_local;
reg   [2:0] buff_p_5_address0_local;
reg    buff_p_5_we0_local;
reg    buff_p_6_ce1_local;
reg   [2:0] buff_p_6_address1_local;
reg    buff_p_6_ce0_local;
reg   [2:0] buff_p_6_address0_local;
reg    buff_p_6_we0_local;
reg    buff_p_7_ce1_local;
reg   [2:0] buff_p_7_address1_local;
reg    buff_p_7_ce0_local;
reg   [2:0] buff_p_7_address0_local;
reg    buff_p_7_we0_local;
reg    buff_r_6_we0_local;
wire   [31:0] bitcast_ln15_fu_1510_p1;
reg    buff_r_6_ce0_local;
reg    buff_s_out_6_we0_local;
reg    buff_s_out_6_ce0_local;
reg    buff_q_out_6_we0_local;
reg    buff_q_out_6_ce0_local;
reg    buff_r_5_we0_local;
reg    buff_r_5_ce0_local;
reg    buff_s_out_5_we0_local;
reg    buff_s_out_5_ce0_local;
reg    buff_q_out_5_we0_local;
reg    buff_q_out_5_ce0_local;
reg    buff_r_4_we0_local;
reg    buff_r_4_ce0_local;
reg    buff_s_out_4_we0_local;
reg    buff_s_out_4_ce0_local;
reg    buff_q_out_4_we0_local;
reg    buff_q_out_4_ce0_local;
reg    buff_r_3_we0_local;
reg    buff_r_3_ce0_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_3_ce0_local;
reg    buff_r_2_we0_local;
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
reg    buff_r_7_we0_local;
reg    buff_r_7_ce0_local;
reg    buff_s_out_7_we0_local;
reg    buff_s_out_7_ce0_local;
reg    buff_q_out_7_we0_local;
reg    buff_q_out_7_ce0_local;
wire   [2:0] lshr_ln5_fu_1453_p4;
wire   [31:0] grp_fu_2202_p2;
reg   [31:0] grp_fu_2202_p0;
reg   [31:0] grp_fu_2202_p1;
reg    grp_fu_2202_ce;
wire   [31:0] grp_fu_2206_p2;
reg   [31:0] grp_fu_2206_p0;
reg   [31:0] grp_fu_2206_p1;
reg    grp_fu_2206_ce;
wire   [31:0] grp_fu_2210_p2;
reg   [31:0] grp_fu_2210_p0;
reg   [31:0] grp_fu_2210_p1;
reg    grp_fu_2210_ce;
wire   [31:0] grp_fu_2214_p2;
reg   [31:0] grp_fu_2214_p0;
reg   [31:0] grp_fu_2214_p1;
reg    grp_fu_2214_ce;
wire   [31:0] grp_fu_2218_p2;
reg   [31:0] grp_fu_2218_p0;
reg   [31:0] grp_fu_2218_p1;
reg    grp_fu_2218_ce;
wire   [31:0] grp_fu_2222_p2;
reg   [31:0] grp_fu_2222_p0;
reg   [31:0] grp_fu_2222_p1;
reg    grp_fu_2222_ce;
wire   [31:0] grp_fu_2226_p2;
reg   [31:0] grp_fu_2226_p0;
reg   [31:0] grp_fu_2226_p1;
reg    grp_fu_2226_ce;
wire   [31:0] grp_fu_2230_p2;
reg   [31:0] grp_fu_2230_p0;
reg   [31:0] grp_fu_2230_p1;
reg    grp_fu_2230_ce;
reg   [11:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lprd_2_fu_1268_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_1297_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1397_ap_start_reg = 1'b0;
#0 i_fu_106 = 7'd0;
end
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_d0),.q0(buff_A_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_d0),.q0(buff_A_4_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address1),.ce1(buff_A_4_ce1),.q1(buff_A_4_q1),.address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address2),.ce2(buff_A_4_ce2),.q2(buff_A_4_q2),.address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address3),.ce3(buff_A_4_ce3),.q3(buff_A_4_q3),.address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address4),.ce4(buff_A_4_ce4),.q4(buff_A_4_q4),.address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address5),.ce5(buff_A_4_ce5),.q5(buff_A_4_q5),.address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address6),.ce6(buff_A_4_ce6),.q6(buff_A_4_q6),.address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address7),.ce7(buff_A_4_ce7),.q7(buff_A_4_q7),.address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address8),.ce8(buff_A_4_ce8),.q8(buff_A_4_q8),.address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address9),.ce9(buff_A_4_ce9),.q9(buff_A_4_q9),.address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address10),.ce10(buff_A_4_ce10),.q10(buff_A_4_q10),.address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address11),.ce11(buff_A_4_ce11),.q11(buff_A_4_q11),.address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address12),.ce12(buff_A_4_ce12),.q12(buff_A_4_q12),.address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address13),.ce13(buff_A_4_ce13),.q13(buff_A_4_q13),.address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address14),.ce14(buff_A_4_ce14),.q14(buff_A_4_q14),.address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address15),.ce15(buff_A_4_ce15),.q15(buff_A_4_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_d0),.q0(buff_A_5_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address1),.ce1(buff_A_5_ce1),.q1(buff_A_5_q1),.address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address2),.ce2(buff_A_5_ce2),.q2(buff_A_5_q2),.address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address3),.ce3(buff_A_5_ce3),.q3(buff_A_5_q3),.address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address4),.ce4(buff_A_5_ce4),.q4(buff_A_5_q4),.address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address5),.ce5(buff_A_5_ce5),.q5(buff_A_5_q5),.address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address6),.ce6(buff_A_5_ce6),.q6(buff_A_5_q6),.address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address7),.ce7(buff_A_5_ce7),.q7(buff_A_5_q7),.address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address8),.ce8(buff_A_5_ce8),.q8(buff_A_5_q8),.address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address9),.ce9(buff_A_5_ce9),.q9(buff_A_5_q9),.address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address10),.ce10(buff_A_5_ce10),.q10(buff_A_5_q10),.address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address11),.ce11(buff_A_5_ce11),.q11(buff_A_5_q11),.address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address12),.ce12(buff_A_5_ce12),.q12(buff_A_5_q12),.address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address13),.ce13(buff_A_5_ce13),.q13(buff_A_5_q13),.address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address14),.ce14(buff_A_5_ce14),.q14(buff_A_5_q14),.address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address15),.ce15(buff_A_5_ce15),.q15(buff_A_5_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_d0),.q0(buff_A_6_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address1),.ce1(buff_A_6_ce1),.q1(buff_A_6_q1),.address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address2),.ce2(buff_A_6_ce2),.q2(buff_A_6_q2),.address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address3),.ce3(buff_A_6_ce3),.q3(buff_A_6_q3),.address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address4),.ce4(buff_A_6_ce4),.q4(buff_A_6_q4),.address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address5),.ce5(buff_A_6_ce5),.q5(buff_A_6_q5),.address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address6),.ce6(buff_A_6_ce6),.q6(buff_A_6_q6),.address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address7),.ce7(buff_A_6_ce7),.q7(buff_A_6_q7),.address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address8),.ce8(buff_A_6_ce8),.q8(buff_A_6_q8),.address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address9),.ce9(buff_A_6_ce9),.q9(buff_A_6_q9),.address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address10),.ce10(buff_A_6_ce10),.q10(buff_A_6_q10),.address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address11),.ce11(buff_A_6_ce11),.q11(buff_A_6_q11),.address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address12),.ce12(buff_A_6_ce12),.q12(buff_A_6_q12),.address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address13),.ce13(buff_A_6_ce13),.q13(buff_A_6_q13),.address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address14),.ce14(buff_A_6_ce14),.q14(buff_A_6_q14),.address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address15),.ce15(buff_A_6_ce15),.q15(buff_A_6_q15));
bicg_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 512 ),.AddressWidth( 9 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_d0),.q0(buff_A_7_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address1),.ce1(buff_A_7_ce1),.q1(buff_A_7_q1),.address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address2),.ce2(buff_A_7_ce2),.q2(buff_A_7_q2),.address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address3),.ce3(buff_A_7_ce3),.q3(buff_A_7_q3),.address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address4),.ce4(buff_A_7_ce4),.q4(buff_A_7_q4),.address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address5),.ce5(buff_A_7_ce5),.q5(buff_A_7_q5),.address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address6),.ce6(buff_A_7_ce6),.q6(buff_A_7_q6),.address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address7),.ce7(buff_A_7_ce7),.q7(buff_A_7_q7),.address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address8),.ce8(buff_A_7_ce8),.q8(buff_A_7_q8),.address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address9),.ce9(buff_A_7_ce9),.q9(buff_A_7_q9),.address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address10),.ce10(buff_A_7_ce10),.q10(buff_A_7_q10),.address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address11),.ce11(buff_A_7_ce11),.q11(buff_A_7_q11),.address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address12),.ce12(buff_A_7_ce12),.q12(buff_A_7_q12),.address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address13),.ce13(buff_A_7_ce13),.q13(buff_A_7_q13),.address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address14),.ce14(buff_A_7_ce14),.q14(buff_A_7_q14),.address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address15),.ce15(buff_A_7_ce15),.q15(buff_A_7_q15));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0_local),.ce0(buff_p_ce0_local),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_1498_p1),.q0(buff_p_q0),.address1(buff_p_address1_local),.ce1(buff_p_ce1_local),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0_local),.ce0(buff_p_1_ce0_local),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_1498_p1),.q0(buff_p_1_q0),.address1(buff_p_1_address1_local),.ce1(buff_p_1_ce1_local),.q1(buff_p_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0_local),.ce0(buff_p_2_ce0_local),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_1498_p1),.q0(buff_p_2_q0),.address1(buff_p_2_address1_local),.ce1(buff_p_2_ce1_local),.q1(buff_p_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0_local),.ce0(buff_p_3_ce0_local),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_1498_p1),.q0(buff_p_3_q0),.address1(buff_p_3_address1_local),.ce1(buff_p_3_ce1_local),.q1(buff_p_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_4_address0_local),.ce0(buff_p_4_ce0_local),.we0(buff_p_4_we0_local),.d0(bitcast_ln14_fu_1498_p1),.q0(buff_p_4_q0),.address1(buff_p_4_address1_local),.ce1(buff_p_4_ce1_local),.q1(buff_p_4_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_5_address0_local),.ce0(buff_p_5_ce0_local),.we0(buff_p_5_we0_local),.d0(bitcast_ln14_fu_1498_p1),.q0(buff_p_5_q0),.address1(buff_p_5_address1_local),.ce1(buff_p_5_ce1_local),.q1(buff_p_5_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_6_address0_local),.ce0(buff_p_6_ce0_local),.we0(buff_p_6_we0_local),.d0(bitcast_ln14_fu_1498_p1),.q0(buff_p_6_q0),.address1(buff_p_6_address1_local),.ce1(buff_p_6_ce1_local),.q1(buff_p_6_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_p_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_7_address0_local),.ce0(buff_p_7_ce0_local),.we0(buff_p_7_we0_local),.d0(bitcast_ln14_fu_1498_p1),.q0(buff_p_7_q0),.address1(buff_p_7_address1_local),.ce1(buff_p_7_ce1_local),.q1(buff_p_7_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_1510_p1),.q0(buff_r_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_1510_p1),.q0(buff_r_1_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_1510_p1),.q0(buff_r_2_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_1510_p1),.q0(buff_r_3_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_4_address0),.ce0(buff_r_4_ce0),.we0(buff_r_4_we0_local),.d0(bitcast_ln15_fu_1510_p1),.q0(buff_r_4_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_5_address0),.ce0(buff_r_5_ce0),.we0(buff_r_5_we0_local),.d0(bitcast_ln15_fu_1510_p1),.q0(buff_r_5_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_6_address0),.ce0(buff_r_6_ce0),.we0(buff_r_6_we0_local),.d0(bitcast_ln15_fu_1510_p1),.q0(buff_r_6_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_r_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_7_address0),.ce0(buff_r_7_ce0),.we0(buff_r_7_we0_local),.d0(bitcast_ln15_fu_1510_p1),.q0(buff_r_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0),.d0(buff_s_out_d0),.q0(buff_s_out_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_address1),.ce1(buff_s_out_ce1),.q1(buff_s_out_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0),.d0(buff_s_out_1_d0),.q0(buff_s_out_1_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_address1),.ce1(buff_s_out_1_ce1),.q1(buff_s_out_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0),.d0(buff_s_out_2_d0),.q0(buff_s_out_2_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_address1),.ce1(buff_s_out_2_ce1),.q1(buff_s_out_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0),.d0(buff_s_out_3_d0),.q0(buff_s_out_3_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_address1),.ce1(buff_s_out_3_ce1),.q1(buff_s_out_3_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_4_address0),.ce0(buff_s_out_4_ce0),.we0(buff_s_out_4_we0),.d0(buff_s_out_4_d0),.q0(buff_s_out_4_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_5_address0),.ce0(buff_s_out_5_ce0),.we0(buff_s_out_5_we0),.d0(buff_s_out_5_d0),.q0(buff_s_out_5_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_6_address0),.ce0(buff_s_out_6_ce0),.we0(buff_s_out_6_we0),.d0(buff_s_out_6_d0),.q0(buff_s_out_6_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_7_address0),.ce0(buff_s_out_7_ce0),.we0(buff_s_out_7_we0),.d0(buff_s_out_7_d0),.q0(buff_s_out_7_q0));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_address1),.ce1(buff_q_out_ce1),.q1(buff_q_out_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_address1),.ce1(buff_q_out_1_ce1),.q1(buff_q_out_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_address1),.ce1(buff_q_out_2_ce1),.q1(buff_q_out_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_address1),.ce1(buff_q_out_3_ce1),.q1(buff_q_out_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_4_address0),.ce0(buff_q_out_4_ce0),.we0(buff_q_out_4_we0),.d0(buff_q_out_4_d0),.q0(buff_q_out_4_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_address1),.ce1(buff_q_out_4_ce1),.q1(buff_q_out_4_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_5_address0),.ce0(buff_q_out_5_ce0),.we0(buff_q_out_5_we0),.d0(buff_q_out_5_d0),.q0(buff_q_out_5_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_address1),.ce1(buff_q_out_5_ce1),.q1(buff_q_out_5_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_6_address0),.ce0(buff_q_out_6_ce0),.we0(buff_q_out_6_we0),.d0(buff_q_out_6_d0),.q0(buff_q_out_6_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_address1),.ce1(buff_q_out_6_ce1),.q1(buff_q_out_6_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_q_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_7_address0),.ce0(buff_q_out_7_ce0),.we0(buff_q_out_7_we0),.d0(buff_q_out_7_d0),.q0(buff_q_out_7_q0),.address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_address1),.ce1(buff_q_out_7_ce1),.q1(buff_q_out_7_q1));
bicg_bicg_Pipeline_lp1_lp2 grp_bicg_Pipeline_lp1_lp2_fu_1240(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start),.ap_done(grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_ready),.buff_r_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_r_4_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_4_address0),.buff_r_4_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_4_ce0),.buff_r_4_q0(buff_r_4_q0),.buff_r_5_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_5_address0),.buff_r_5_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_5_ce0),.buff_r_5_q0(buff_r_5_q0),.buff_r_6_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_6_address0),.buff_r_6_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_6_ce0),.buff_r_6_q0(buff_r_6_q0),.buff_r_7_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_7_address0),.buff_r_7_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_7_ce0),.buff_r_7_q0(buff_r_7_q0),.buff_A_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_s_out_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_ce0),.buff_s_out_we0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_we0),.buff_s_out_d0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_d0),.buff_s_out_address1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_address1),.buff_s_out_ce1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_ce1),.buff_s_out_q1(buff_s_out_q1),.buff_s_out_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_ce0),.buff_s_out_1_we0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_we0),.buff_s_out_1_d0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_d0),.buff_s_out_1_address1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_address1),.buff_s_out_1_ce1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_ce1),.buff_s_out_1_q1(buff_s_out_1_q1),.buff_s_out_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_ce0),.buff_s_out_2_we0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_we0),.buff_s_out_2_d0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_d0),.buff_s_out_2_address1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_address1),.buff_s_out_2_ce1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_ce1),.buff_s_out_2_q1(buff_s_out_2_q1),.buff_s_out_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_ce0),.buff_s_out_3_we0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_we0),.buff_s_out_3_d0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_d0),.buff_s_out_3_address1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_address1),.buff_s_out_3_ce1(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_ce1),.buff_s_out_3_q1(buff_s_out_3_q1),.buff_s_out_4_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_ce0),.buff_s_out_4_we0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_we0),.buff_s_out_4_d0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_d0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_ce0),.buff_s_out_5_we0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_we0),.buff_s_out_5_d0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_d0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_ce0),.buff_s_out_6_we0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_we0),.buff_s_out_6_d0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_d0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_ce0),.buff_s_out_7_we0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_we0),.buff_s_out_7_d0(grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_d0),.buff_s_out_7_q0(buff_s_out_7_q0),.grp_fu_2202_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_din0),.grp_fu_2202_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_din1),.grp_fu_2202_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_opcode),.grp_fu_2202_p_dout0(grp_fu_2202_p2),.grp_fu_2202_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_ce),.grp_fu_2206_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_din0),.grp_fu_2206_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_din1),.grp_fu_2206_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_opcode),.grp_fu_2206_p_dout0(grp_fu_2206_p2),.grp_fu_2206_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_ce),.grp_fu_2210_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_din0),.grp_fu_2210_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_din1),.grp_fu_2210_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_opcode),.grp_fu_2210_p_dout0(grp_fu_2210_p2),.grp_fu_2210_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_ce),.grp_fu_2214_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_din0),.grp_fu_2214_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_din1),.grp_fu_2214_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_opcode),.grp_fu_2214_p_dout0(grp_fu_2214_p2),.grp_fu_2214_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_ce),.grp_fu_2218_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_din0),.grp_fu_2218_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_din1),.grp_fu_2218_p_dout0(grp_fu_2218_p2),.grp_fu_2218_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_ce),.grp_fu_2222_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_din0),.grp_fu_2222_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_din1),.grp_fu_2222_p_dout0(grp_fu_2222_p2),.grp_fu_2222_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_ce),.grp_fu_2226_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_din0),.grp_fu_2226_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_din1),.grp_fu_2226_p_dout0(grp_fu_2226_p2),.grp_fu_2226_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_ce),.grp_fu_2230_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_din0),.grp_fu_2230_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_din1),.grp_fu_2230_p_dout0(grp_fu_2230_p2),.grp_fu_2230_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_ce));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_1268(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_1268_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_1268_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_1268_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_1268_ap_ready),.i(trunc_ln13_reg_1634),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_1268_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1268_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1268_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1268_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_A_3_ce0),.A_3_q0(A_3_q0),.A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1268_A_4_address0),.A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_A_4_ce0),.A_4_q0(A_4_q0),.A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1268_A_5_address0),.A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_A_5_ce0),.A_5_q0(A_5_q0),.A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1268_A_6_address0),.A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_A_6_ce0),.A_6_q0(A_6_q0),.A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1268_A_7_address0),.A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_A_7_ce0),.A_7_q0(A_7_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_d0));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_1297(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_1297_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_1297_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_1297_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_1297_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address2),.buff_A_ce2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address3),.buff_A_ce3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address4),.buff_A_ce4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address5),.buff_A_ce5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address6),.buff_A_ce6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address7),.buff_A_ce7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address8),.buff_A_ce8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address9),.buff_A_ce9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address10),.buff_A_ce10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address11),.buff_A_ce11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address12),.buff_A_ce12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address13),.buff_A_ce13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address14),.buff_A_ce14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_address15),.buff_A_ce15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address2),.buff_A_1_ce2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address3),.buff_A_1_ce3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address4),.buff_A_1_ce4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address5),.buff_A_1_ce5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address6),.buff_A_1_ce6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address7),.buff_A_1_ce7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address8),.buff_A_1_ce8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address9),.buff_A_1_ce9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address10),.buff_A_1_ce10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address11),.buff_A_1_ce11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address12),.buff_A_1_ce12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address13),.buff_A_1_ce13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address14),.buff_A_1_ce14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address15),.buff_A_1_ce15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address2),.buff_A_2_ce2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address3),.buff_A_2_ce3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address4),.buff_A_2_ce4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address5),.buff_A_2_ce5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address6),.buff_A_2_ce6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address7),.buff_A_2_ce7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address8),.buff_A_2_ce8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address9),.buff_A_2_ce9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address10),.buff_A_2_ce10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address11),.buff_A_2_ce11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address12),.buff_A_2_ce12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address13),.buff_A_2_ce13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address14),.buff_A_2_ce14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address15),.buff_A_2_ce15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address2),.buff_A_3_ce2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address3),.buff_A_3_ce3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address4),.buff_A_3_ce4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address5),.buff_A_3_ce5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address6),.buff_A_3_ce6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address7),.buff_A_3_ce7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address8),.buff_A_3_ce8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address9),.buff_A_3_ce9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address10),.buff_A_3_ce10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address11),.buff_A_3_ce11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address12),.buff_A_3_ce12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address13),.buff_A_3_ce13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address14),.buff_A_3_ce14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address15),.buff_A_3_ce15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_A_4_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_4_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address1),.buff_A_4_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce1),.buff_A_4_q1(buff_A_4_q1),.buff_A_4_address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address2),.buff_A_4_ce2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce2),.buff_A_4_q2(buff_A_4_q2),.buff_A_4_address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address3),.buff_A_4_ce3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce3),.buff_A_4_q3(buff_A_4_q3),.buff_A_4_address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address4),.buff_A_4_ce4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce4),.buff_A_4_q4(buff_A_4_q4),.buff_A_4_address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address5),.buff_A_4_ce5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce5),.buff_A_4_q5(buff_A_4_q5),.buff_A_4_address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address6),.buff_A_4_ce6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce6),.buff_A_4_q6(buff_A_4_q6),.buff_A_4_address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address7),.buff_A_4_ce7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce7),.buff_A_4_q7(buff_A_4_q7),.buff_A_4_address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address8),.buff_A_4_ce8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce8),.buff_A_4_q8(buff_A_4_q8),.buff_A_4_address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address9),.buff_A_4_ce9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce9),.buff_A_4_q9(buff_A_4_q9),.buff_A_4_address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address10),.buff_A_4_ce10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce10),.buff_A_4_q10(buff_A_4_q10),.buff_A_4_address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address11),.buff_A_4_ce11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce11),.buff_A_4_q11(buff_A_4_q11),.buff_A_4_address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address12),.buff_A_4_ce12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce12),.buff_A_4_q12(buff_A_4_q12),.buff_A_4_address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address13),.buff_A_4_ce13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce13),.buff_A_4_q13(buff_A_4_q13),.buff_A_4_address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address14),.buff_A_4_ce14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce14),.buff_A_4_q14(buff_A_4_q14),.buff_A_4_address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address15),.buff_A_4_ce15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce15),.buff_A_4_q15(buff_A_4_q15),.buff_A_5_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_5_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address1),.buff_A_5_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce1),.buff_A_5_q1(buff_A_5_q1),.buff_A_5_address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address2),.buff_A_5_ce2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce2),.buff_A_5_q2(buff_A_5_q2),.buff_A_5_address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address3),.buff_A_5_ce3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce3),.buff_A_5_q3(buff_A_5_q3),.buff_A_5_address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address4),.buff_A_5_ce4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce4),.buff_A_5_q4(buff_A_5_q4),.buff_A_5_address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address5),.buff_A_5_ce5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce5),.buff_A_5_q5(buff_A_5_q5),.buff_A_5_address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address6),.buff_A_5_ce6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce6),.buff_A_5_q6(buff_A_5_q6),.buff_A_5_address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address7),.buff_A_5_ce7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce7),.buff_A_5_q7(buff_A_5_q7),.buff_A_5_address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address8),.buff_A_5_ce8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce8),.buff_A_5_q8(buff_A_5_q8),.buff_A_5_address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address9),.buff_A_5_ce9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce9),.buff_A_5_q9(buff_A_5_q9),.buff_A_5_address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address10),.buff_A_5_ce10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce10),.buff_A_5_q10(buff_A_5_q10),.buff_A_5_address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address11),.buff_A_5_ce11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce11),.buff_A_5_q11(buff_A_5_q11),.buff_A_5_address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address12),.buff_A_5_ce12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce12),.buff_A_5_q12(buff_A_5_q12),.buff_A_5_address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address13),.buff_A_5_ce13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce13),.buff_A_5_q13(buff_A_5_q13),.buff_A_5_address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address14),.buff_A_5_ce14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce14),.buff_A_5_q14(buff_A_5_q14),.buff_A_5_address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address15),.buff_A_5_ce15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce15),.buff_A_5_q15(buff_A_5_q15),.buff_A_6_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_6_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address1),.buff_A_6_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce1),.buff_A_6_q1(buff_A_6_q1),.buff_A_6_address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address2),.buff_A_6_ce2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce2),.buff_A_6_q2(buff_A_6_q2),.buff_A_6_address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address3),.buff_A_6_ce3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce3),.buff_A_6_q3(buff_A_6_q3),.buff_A_6_address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address4),.buff_A_6_ce4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce4),.buff_A_6_q4(buff_A_6_q4),.buff_A_6_address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address5),.buff_A_6_ce5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce5),.buff_A_6_q5(buff_A_6_q5),.buff_A_6_address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address6),.buff_A_6_ce6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce6),.buff_A_6_q6(buff_A_6_q6),.buff_A_6_address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address7),.buff_A_6_ce7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce7),.buff_A_6_q7(buff_A_6_q7),.buff_A_6_address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address8),.buff_A_6_ce8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce8),.buff_A_6_q8(buff_A_6_q8),.buff_A_6_address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address9),.buff_A_6_ce9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce9),.buff_A_6_q9(buff_A_6_q9),.buff_A_6_address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address10),.buff_A_6_ce10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce10),.buff_A_6_q10(buff_A_6_q10),.buff_A_6_address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address11),.buff_A_6_ce11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce11),.buff_A_6_q11(buff_A_6_q11),.buff_A_6_address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address12),.buff_A_6_ce12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce12),.buff_A_6_q12(buff_A_6_q12),.buff_A_6_address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address13),.buff_A_6_ce13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce13),.buff_A_6_q13(buff_A_6_q13),.buff_A_6_address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address14),.buff_A_6_ce14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce14),.buff_A_6_q14(buff_A_6_q14),.buff_A_6_address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address15),.buff_A_6_ce15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce15),.buff_A_6_q15(buff_A_6_q15),.buff_A_7_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_7_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address1),.buff_A_7_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce1),.buff_A_7_q1(buff_A_7_q1),.buff_A_7_address2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address2),.buff_A_7_ce2(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce2),.buff_A_7_q2(buff_A_7_q2),.buff_A_7_address3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address3),.buff_A_7_ce3(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce3),.buff_A_7_q3(buff_A_7_q3),.buff_A_7_address4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address4),.buff_A_7_ce4(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce4),.buff_A_7_q4(buff_A_7_q4),.buff_A_7_address5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address5),.buff_A_7_ce5(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce5),.buff_A_7_q5(buff_A_7_q5),.buff_A_7_address6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address6),.buff_A_7_ce6(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce6),.buff_A_7_q6(buff_A_7_q6),.buff_A_7_address7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address7),.buff_A_7_ce7(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce7),.buff_A_7_q7(buff_A_7_q7),.buff_A_7_address8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address8),.buff_A_7_ce8(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce8),.buff_A_7_q8(buff_A_7_q8),.buff_A_7_address9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address9),.buff_A_7_ce9(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce9),.buff_A_7_q9(buff_A_7_q9),.buff_A_7_address10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address10),.buff_A_7_ce10(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce10),.buff_A_7_q10(buff_A_7_q10),.buff_A_7_address11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address11),.buff_A_7_ce11(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce11),.buff_A_7_q11(buff_A_7_q11),.buff_A_7_address12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address12),.buff_A_7_ce12(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce12),.buff_A_7_q12(buff_A_7_q12),.buff_A_7_address13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address13),.buff_A_7_ce13(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce13),.buff_A_7_q13(buff_A_7_q13),.buff_A_7_address14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address14),.buff_A_7_ce14(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce14),.buff_A_7_q14(buff_A_7_q14),.buff_A_7_address15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address15),.buff_A_7_ce15(grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce15),.buff_A_7_q15(buff_A_7_q15),.buff_q_out_7_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_ce0),.buff_q_out_7_we0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_we0),.buff_q_out_7_d0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_d0),.buff_q_out_7_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_address1),.buff_q_out_7_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_ce1),.buff_q_out_7_q1(buff_q_out_7_q1),.buff_q_out_6_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_ce0),.buff_q_out_6_we0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_we0),.buff_q_out_6_d0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_d0),.buff_q_out_6_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_address1),.buff_q_out_6_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_ce1),.buff_q_out_6_q1(buff_q_out_6_q1),.buff_q_out_5_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_ce0),.buff_q_out_5_we0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_we0),.buff_q_out_5_d0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_d0),.buff_q_out_5_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_address1),.buff_q_out_5_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_ce1),.buff_q_out_5_q1(buff_q_out_5_q1),.buff_q_out_4_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_ce0),.buff_q_out_4_we0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_we0),.buff_q_out_4_d0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_d0),.buff_q_out_4_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_address1),.buff_q_out_4_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_ce1),.buff_q_out_4_q1(buff_q_out_4_q1),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_d0),.buff_q_out_3_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_address1),.buff_q_out_3_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_ce1),.buff_q_out_3_q1(buff_q_out_3_q1),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_d0),.buff_q_out_2_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_address1),.buff_q_out_2_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_ce1),.buff_q_out_2_q1(buff_q_out_2_q1),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_d0),.buff_q_out_1_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_address1),.buff_q_out_1_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_ce1),.buff_q_out_1_q1(buff_q_out_1_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_d0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_ce1),.buff_q_out_q1(buff_q_out_q1),.buff_p_load(buff_p_load_reg_1642),.buff_p_1_load(buff_p_1_load_reg_1647),.buff_p_2_load(buff_p_2_load_reg_1652),.buff_p_3_load(buff_p_3_load_reg_1657),.buff_p_4_load(buff_p_4_load_reg_1662),.buff_p_5_load(buff_p_5_load_reg_1667),.buff_p_6_load(buff_p_6_load_reg_1672),.buff_p_7_load(buff_p_7_load_reg_1677),.buff_p_load_1(buff_p_load_1_reg_1682),.buff_p_1_load_1(buff_p_1_load_1_reg_1687),.buff_p_2_load_1(buff_p_2_load_1_reg_1692),.buff_p_3_load_1(buff_p_3_load_1_reg_1697),.buff_p_4_load_1(buff_p_4_load_1_reg_1702),.buff_p_5_load_1(buff_p_5_load_1_reg_1707),.buff_p_6_load_1(buff_p_6_load_1_reg_1712),.buff_p_7_load_1(buff_p_7_load_1_reg_1717),.buff_p_load_2(buff_p_load_2_reg_1802),.buff_p_1_load_2(buff_p_1_load_2_reg_1807),.buff_p_2_load_2(buff_p_2_load_2_reg_1812),.buff_p_3_load_2(buff_p_3_load_2_reg_1817),.buff_p_4_load_2(buff_p_4_load_2_reg_1822),.buff_p_5_load_2(buff_p_5_load_2_reg_1827),.buff_p_6_load_2(buff_p_6_load_2_reg_1832),.buff_p_7_load_2(buff_p_7_load_2_reg_1837),.buff_p_load_3(buff_p_load_3_reg_1842),.buff_p_1_load_3(buff_p_1_load_3_reg_1847),.buff_p_2_load_3(buff_p_2_load_3_reg_1852),.buff_p_3_load_3(buff_p_3_load_3_reg_1857),.buff_p_4_load_3(buff_p_4_load_3_reg_1862),.buff_p_5_load_3(buff_p_5_load_3_reg_1867),.buff_p_6_load_3(buff_p_6_load_3_reg_1872),.buff_p_7_load_3(buff_p_7_load_3_reg_1877),.buff_p_load_4(buff_p_load_4_reg_1962),.buff_p_1_load_4(buff_p_1_load_4_reg_1967),.buff_p_2_load_4(buff_p_2_load_4_reg_1972),.buff_p_3_load_4(buff_p_3_load_4_reg_1977),.buff_p_4_load_4(buff_p_4_load_4_reg_1982),.buff_p_5_load_4(buff_p_5_load_4_reg_1987),.buff_p_6_load_4(buff_p_6_load_4_reg_1992),.buff_p_7_load_4(buff_p_7_load_4_reg_1997),.buff_p_load_5(buff_p_load_5_reg_2002),.buff_p_1_load_5(buff_p_1_load_5_reg_2007),.buff_p_2_load_5(buff_p_2_load_5_reg_2012),.buff_p_3_load_5(buff_p_3_load_5_reg_2017),.buff_p_4_load_5(buff_p_4_load_5_reg_2022),.buff_p_5_load_5(buff_p_5_load_5_reg_2027),.buff_p_6_load_5(buff_p_6_load_5_reg_2032),.buff_p_7_load_5(buff_p_7_load_5_reg_2037),.buff_p_load_6(buff_p_load_6_reg_2122),.buff_p_1_load_6(buff_p_1_load_6_reg_2127),.buff_p_2_load_6(buff_p_2_load_6_reg_2132),.buff_p_3_load_6(buff_p_3_load_6_reg_2137),.buff_p_4_load_6(buff_p_4_load_6_reg_2142),.buff_p_5_load_6(buff_p_5_load_6_reg_2147),.buff_p_6_load_6(buff_p_6_load_6_reg_2152),.buff_p_7_load_6(buff_p_7_load_6_reg_2157),.buff_p_load_7(buff_p_load_7_reg_2162),.buff_p_1_load_7(buff_p_1_load_7_reg_2167),.buff_p_2_load_7(buff_p_2_load_7_reg_2172),.buff_p_3_load_7(buff_p_3_load_7_reg_2177),.buff_p_4_load_7(buff_p_4_load_7_reg_2182),.buff_p_5_load_7(buff_p_5_load_7_reg_2187),.buff_p_6_load_7(buff_p_6_load_7_reg_2192),.buff_p_7_load_7(buff_p_7_load_7_reg_2197),.grp_fu_2202_p_din0(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_din0),.grp_fu_2202_p_din1(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_din1),.grp_fu_2202_p_opcode(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_opcode),.grp_fu_2202_p_dout0(grp_fu_2202_p2),.grp_fu_2202_p_ce(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_ce),.grp_fu_2206_p_din0(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_din0),.grp_fu_2206_p_din1(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_din1),.grp_fu_2206_p_opcode(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_opcode),.grp_fu_2206_p_dout0(grp_fu_2206_p2),.grp_fu_2206_p_ce(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_ce),.grp_fu_2210_p_din0(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_din0),.grp_fu_2210_p_din1(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_din1),.grp_fu_2210_p_opcode(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_opcode),.grp_fu_2210_p_dout0(grp_fu_2210_p2),.grp_fu_2210_p_ce(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_ce),.grp_fu_2214_p_din0(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_din0),.grp_fu_2214_p_din1(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_din1),.grp_fu_2214_p_opcode(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_opcode),.grp_fu_2214_p_dout0(grp_fu_2214_p2),.grp_fu_2214_p_ce(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_ce),.grp_fu_2218_p_din0(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_din0),.grp_fu_2218_p_din1(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_din1),.grp_fu_2218_p_dout0(grp_fu_2218_p2),.grp_fu_2218_p_ce(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_ce),.grp_fu_2222_p_din0(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_din0),.grp_fu_2222_p_din1(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_din1),.grp_fu_2222_p_dout0(grp_fu_2222_p2),.grp_fu_2222_p_ce(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_ce),.grp_fu_2226_p_din0(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_din0),.grp_fu_2226_p_din1(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_din1),.grp_fu_2226_p_dout0(grp_fu_2226_p2),.grp_fu_2226_p_ce(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_ce),.grp_fu_2230_p_din0(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_din0),.grp_fu_2230_p_din1(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_din1),.grp_fu_2230_p_dout0(grp_fu_2230_p2),.grp_fu_2230_p_ce(grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1397(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1397_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1397_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1397_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1397_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1397_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1397_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1397_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1397_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0),.buff_s_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_4_ce0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_q_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_4_address0),.buff_q_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_4_ce0),.buff_q_out_4_q0(buff_q_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_5_ce0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_q_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_5_address0),.buff_q_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_5_ce0),.buff_q_out_5_q0(buff_q_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_6_ce0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_q_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_6_address0),.buff_q_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_6_ce0),.buff_q_out_6_q0(buff_q_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_7_ce0),.buff_s_out_7_q0(buff_s_out_7_q0),.buff_q_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_7_address0),.buff_q_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_7_ce0),.buff_q_out_7_q0(buff_q_out_7_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U409(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2202_p0),.din1(grp_fu_2202_p1),.ce(grp_fu_2202_ce),.dout(grp_fu_2202_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U410(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2206_p0),.din1(grp_fu_2206_p1),.ce(grp_fu_2206_ce),.dout(grp_fu_2206_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U411(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2210_p0),.din1(grp_fu_2210_p1),.ce(grp_fu_2210_ce),.dout(grp_fu_2210_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U412(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2214_p0),.din1(grp_fu_2214_p1),.ce(grp_fu_2214_ce),.dout(grp_fu_2214_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U413(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2218_p0),.din1(grp_fu_2218_p1),.ce(grp_fu_2218_ce),.dout(grp_fu_2218_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U414(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2222_p0),.din1(grp_fu_2222_p1),.ce(grp_fu_2222_ce),.dout(grp_fu_2222_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U415(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2226_p0),.din1(grp_fu_2226_p1),.ce(grp_fu_2226_ce),.dout(grp_fu_2226_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U416(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2230_p0),.din1(grp_fu_2230_p1),.ce(grp_fu_2230_ce),.dout(grp_fu_2230_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln13_fu_1429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_1297_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_bicg_Pipeline_lp3_fu_1297_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_1297_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_1297_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_1268_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bicg_Pipeline_lprd_2_fu_1268_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_1268_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_1268_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1397_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_bicg_Pipeline_lpwr_fu_1397_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1397_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1397_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_106 <= add_ln13_reg_1539;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_1539 <= add_ln13_fu_1435_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_load_1_reg_1687 <= buff_p_1_q0;
        buff_p_1_load_reg_1647 <= buff_p_1_q1;
        buff_p_2_load_1_reg_1692 <= buff_p_2_q0;
        buff_p_2_load_reg_1652 <= buff_p_2_q1;
        buff_p_3_load_1_reg_1697 <= buff_p_3_q0;
        buff_p_3_load_reg_1657 <= buff_p_3_q1;
        buff_p_4_load_1_reg_1702 <= buff_p_4_q0;
        buff_p_4_load_reg_1662 <= buff_p_4_q1;
        buff_p_5_load_1_reg_1707 <= buff_p_5_q0;
        buff_p_5_load_reg_1667 <= buff_p_5_q1;
        buff_p_6_load_1_reg_1712 <= buff_p_6_q0;
        buff_p_6_load_reg_1672 <= buff_p_6_q1;
        buff_p_7_load_1_reg_1717 <= buff_p_7_q0;
        buff_p_7_load_reg_1677 <= buff_p_7_q1;
        buff_p_load_1_reg_1682 <= buff_p_q0;
        buff_p_load_reg_1642 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_load_2_reg_1807 <= buff_p_1_q0;
        buff_p_1_load_3_reg_1847 <= buff_p_1_q1;
        buff_p_2_load_2_reg_1812 <= buff_p_2_q0;
        buff_p_2_load_3_reg_1852 <= buff_p_2_q1;
        buff_p_3_load_2_reg_1817 <= buff_p_3_q0;
        buff_p_3_load_3_reg_1857 <= buff_p_3_q1;
        buff_p_4_load_2_reg_1822 <= buff_p_4_q0;
        buff_p_4_load_3_reg_1862 <= buff_p_4_q1;
        buff_p_5_load_2_reg_1827 <= buff_p_5_q0;
        buff_p_5_load_3_reg_1867 <= buff_p_5_q1;
        buff_p_6_load_2_reg_1832 <= buff_p_6_q0;
        buff_p_6_load_3_reg_1872 <= buff_p_6_q1;
        buff_p_7_load_2_reg_1837 <= buff_p_7_q0;
        buff_p_7_load_3_reg_1877 <= buff_p_7_q1;
        buff_p_load_2_reg_1802 <= buff_p_q0;
        buff_p_load_3_reg_1842 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_load_4_reg_1967 <= buff_p_1_q0;
        buff_p_1_load_5_reg_2007 <= buff_p_1_q1;
        buff_p_2_load_4_reg_1972 <= buff_p_2_q0;
        buff_p_2_load_5_reg_2012 <= buff_p_2_q1;
        buff_p_3_load_4_reg_1977 <= buff_p_3_q0;
        buff_p_3_load_5_reg_2017 <= buff_p_3_q1;
        buff_p_4_load_4_reg_1982 <= buff_p_4_q0;
        buff_p_4_load_5_reg_2022 <= buff_p_4_q1;
        buff_p_5_load_4_reg_1987 <= buff_p_5_q0;
        buff_p_5_load_5_reg_2027 <= buff_p_5_q1;
        buff_p_6_load_4_reg_1992 <= buff_p_6_q0;
        buff_p_6_load_5_reg_2032 <= buff_p_6_q1;
        buff_p_7_load_4_reg_1997 <= buff_p_7_q0;
        buff_p_7_load_5_reg_2037 <= buff_p_7_q1;
        buff_p_load_4_reg_1962 <= buff_p_q0;
        buff_p_load_5_reg_2002 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_p_1_load_6_reg_2127 <= buff_p_1_q0;
        buff_p_1_load_7_reg_2167 <= buff_p_1_q1;
        buff_p_2_load_6_reg_2132 <= buff_p_2_q0;
        buff_p_2_load_7_reg_2172 <= buff_p_2_q1;
        buff_p_3_load_6_reg_2137 <= buff_p_3_q0;
        buff_p_3_load_7_reg_2177 <= buff_p_3_q1;
        buff_p_4_load_6_reg_2142 <= buff_p_4_q0;
        buff_p_4_load_7_reg_2182 <= buff_p_4_q1;
        buff_p_5_load_6_reg_2147 <= buff_p_5_q0;
        buff_p_5_load_7_reg_2187 <= buff_p_5_q1;
        buff_p_6_load_6_reg_2152 <= buff_p_6_q0;
        buff_p_6_load_7_reg_2192 <= buff_p_6_q1;
        buff_p_7_load_6_reg_2157 <= buff_p_7_q0;
        buff_p_7_load_7_reg_2197 <= buff_p_7_q1;
        buff_p_load_6_reg_2122 <= buff_p_q0;
        buff_p_load_7_reg_2162 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_1634 <= trunc_ln13_fu_1447_p1;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_fu_1297_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1397_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
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
    if ((grp_bicg_Pipeline_lprd_2_fu_1268_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (grp_bicg_Pipeline_lpwr_fu_1397_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state12) & (grp_bicg_Pipeline_lpwr_fu_1397_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce10 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce11 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce12 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce13 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce14 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce15 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce2 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce3 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce4 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce5 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce6 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce7 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce8 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_1_ce9 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce10 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce11 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce12 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce13 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce14 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce15 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce2 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce3 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce4 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce5 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce6 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce7 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce8 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_2_ce9 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce10 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce11 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce12 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce13 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce14 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce15 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce2 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce3 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce4 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce5 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce6 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce7 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce8 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_3_ce9 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce1;
    end else begin
        buff_A_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce10 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce10;
    end else begin
        buff_A_4_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce11 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce11;
    end else begin
        buff_A_4_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce12 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce12;
    end else begin
        buff_A_4_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce13 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce13;
    end else begin
        buff_A_4_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce14 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce14;
    end else begin
        buff_A_4_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce15 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce15;
    end else begin
        buff_A_4_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce2 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce2;
    end else begin
        buff_A_4_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce3 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce3;
    end else begin
        buff_A_4_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce4 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce4;
    end else begin
        buff_A_4_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce5 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce5;
    end else begin
        buff_A_4_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce6 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce6;
    end else begin
        buff_A_4_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce7 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce7;
    end else begin
        buff_A_4_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce8 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce8;
    end else begin
        buff_A_4_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_4_ce9 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_4_ce9;
    end else begin
        buff_A_4_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce1;
    end else begin
        buff_A_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce10 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce10;
    end else begin
        buff_A_5_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce11 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce11;
    end else begin
        buff_A_5_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce12 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce12;
    end else begin
        buff_A_5_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce13 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce13;
    end else begin
        buff_A_5_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce14 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce14;
    end else begin
        buff_A_5_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce15 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce15;
    end else begin
        buff_A_5_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce2 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce2;
    end else begin
        buff_A_5_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce3 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce3;
    end else begin
        buff_A_5_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce4 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce4;
    end else begin
        buff_A_5_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce5 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce5;
    end else begin
        buff_A_5_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce6 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce6;
    end else begin
        buff_A_5_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce7 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce7;
    end else begin
        buff_A_5_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce8 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce8;
    end else begin
        buff_A_5_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_5_ce9 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_5_ce9;
    end else begin
        buff_A_5_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce1;
    end else begin
        buff_A_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce10 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce10;
    end else begin
        buff_A_6_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce11 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce11;
    end else begin
        buff_A_6_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce12 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce12;
    end else begin
        buff_A_6_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce13 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce13;
    end else begin
        buff_A_6_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce14 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce14;
    end else begin
        buff_A_6_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce15 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce15;
    end else begin
        buff_A_6_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce2 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce2;
    end else begin
        buff_A_6_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce3 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce3;
    end else begin
        buff_A_6_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce4 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce4;
    end else begin
        buff_A_6_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce5 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce5;
    end else begin
        buff_A_6_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce6 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce6;
    end else begin
        buff_A_6_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce7 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce7;
    end else begin
        buff_A_6_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce8 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce8;
    end else begin
        buff_A_6_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_6_ce9 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_6_ce9;
    end else begin
        buff_A_6_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce1;
    end else begin
        buff_A_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce10 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce10;
    end else begin
        buff_A_7_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce11 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce11;
    end else begin
        buff_A_7_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce12 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce12;
    end else begin
        buff_A_7_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce13 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce13;
    end else begin
        buff_A_7_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce14 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce14;
    end else begin
        buff_A_7_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce15 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce15;
    end else begin
        buff_A_7_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce2 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce2;
    end else begin
        buff_A_7_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce3 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce3;
    end else begin
        buff_A_7_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce4 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce4;
    end else begin
        buff_A_7_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce5 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce5;
    end else begin
        buff_A_7_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce6 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce6;
    end else begin
        buff_A_7_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce7 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce7;
    end else begin
        buff_A_7_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce8 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce8;
    end else begin
        buff_A_7_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_7_ce9 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_7_ce9;
    end else begin
        buff_A_7_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce10 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce11 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce12 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce13 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce14 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce15 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce2 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce3 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce4 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce5 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce6 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce7 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce8 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_A_ce9 = grp_bicg_Pipeline_lp3_fu_1297_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_1268_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_1_address0_local = zext_ln5_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_1_address0_local = 64'd1;
    end else begin
        buff_p_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_1_address1_local = 64'd0;
    end else begin
        buff_p_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_1_ce1_local = 1'b1;
    end else begin
        buff_p_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_2_address0_local = zext_ln5_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_2_address0_local = 64'd1;
    end else begin
        buff_p_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_2_address1_local = 64'd0;
    end else begin
        buff_p_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_2_ce1_local = 1'b1;
    end else begin
        buff_p_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_3_address0_local = zext_ln5_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_3_address0_local = 64'd1;
    end else begin
        buff_p_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_3_address1_local = 64'd0;
    end else begin
        buff_p_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_3_ce1_local = 1'b1;
    end else begin
        buff_p_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_4_address0_local = zext_ln5_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_4_address0_local = 64'd1;
    end else begin
        buff_p_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_4_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_4_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_4_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_4_address1_local = 64'd0;
    end else begin
        buff_p_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_4_ce0_local = 1'b1;
    end else begin
        buff_p_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_4_ce1_local = 1'b1;
    end else begin
        buff_p_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_4_we0_local = 1'b1;
    end else begin
        buff_p_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_5_address0_local = zext_ln5_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_5_address0_local = 64'd1;
    end else begin
        buff_p_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_5_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_5_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_5_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_5_address1_local = 64'd0;
    end else begin
        buff_p_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_5_ce0_local = 1'b1;
    end else begin
        buff_p_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_5_ce1_local = 1'b1;
    end else begin
        buff_p_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_5_we0_local = 1'b1;
    end else begin
        buff_p_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_6_address0_local = zext_ln5_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_6_address0_local = 64'd1;
    end else begin
        buff_p_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_6_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_6_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_6_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_6_address1_local = 64'd0;
    end else begin
        buff_p_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_6_ce0_local = 1'b1;
    end else begin
        buff_p_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_6_ce1_local = 1'b1;
    end else begin
        buff_p_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_6_we0_local = 1'b1;
    end else begin
        buff_p_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_7_address0_local = zext_ln5_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_7_address0_local = 64'd1;
    end else begin
        buff_p_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_7_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_7_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_7_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_7_address1_local = 64'd0;
    end else begin
        buff_p_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_7_ce0_local = 1'b1;
    end else begin
        buff_p_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_7_ce1_local = 1'b1;
    end else begin
        buff_p_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_7_we0_local = 1'b1;
    end else begin
        buff_p_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_address0_local = zext_ln5_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_address0_local = 64'd1;
    end else begin
        buff_p_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_p_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_p_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_p_address1_local = 64'd0;
    end else begin
        buff_p_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1)))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_1_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_ce1;
    end else begin
        buff_q_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_2_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_ce1;
    end else begin
        buff_q_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_3_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_ce1;
    end else begin
        buff_q_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_4_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_address0;
    end else begin
        buff_q_out_4_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_4_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_ce0;
    end else begin
        buff_q_out_4_ce0 = buff_q_out_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_4_ce0_local = 1'b1;
    end else begin
        buff_q_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_4_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_ce1;
    end else begin
        buff_q_out_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_4_d0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_d0;
    end else begin
        buff_q_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_4_we0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_4_we0;
    end else begin
        buff_q_out_4_we0 = buff_q_out_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_4_we0_local = 1'b1;
    end else begin
        buff_q_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_5_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_address0;
    end else begin
        buff_q_out_5_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_5_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_ce0;
    end else begin
        buff_q_out_5_ce0 = buff_q_out_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_5_ce0_local = 1'b1;
    end else begin
        buff_q_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_5_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_ce1;
    end else begin
        buff_q_out_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_5_d0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_d0;
    end else begin
        buff_q_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_5_we0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_5_we0;
    end else begin
        buff_q_out_5_we0 = buff_q_out_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_5_we0_local = 1'b1;
    end else begin
        buff_q_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_6_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_address0;
    end else begin
        buff_q_out_6_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_6_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_ce0;
    end else begin
        buff_q_out_6_ce0 = buff_q_out_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_6_ce0_local = 1'b1;
    end else begin
        buff_q_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_6_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_ce1;
    end else begin
        buff_q_out_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_6_d0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_d0;
    end else begin
        buff_q_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_6_we0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_6_we0;
    end else begin
        buff_q_out_6_we0 = buff_q_out_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_6_we0_local = 1'b1;
    end else begin
        buff_q_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_7_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_address0;
    end else begin
        buff_q_out_7_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_7_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_ce0;
    end else begin
        buff_q_out_7_ce0 = buff_q_out_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_7_ce0_local = 1'b1;
    end else begin
        buff_q_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_7_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_ce1;
    end else begin
        buff_q_out_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_7_d0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_d0;
    end else begin
        buff_q_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_7_we0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_7_we0;
    end else begin
        buff_q_out_7_we0 = buff_q_out_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_7_we0_local = 1'b1;
    end else begin
        buff_q_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_1297_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_1_ce0;
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
    if (((trunc_ln13_1_fu_1450_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_2_ce0;
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
    if (((trunc_ln13_1_fu_1450_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_3_ce0;
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
    if (((trunc_ln13_1_fu_1450_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_4_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_4_address0;
    end else begin
        buff_r_4_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_4_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_4_ce0;
    end else begin
        buff_r_4_ce0 = buff_r_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_4_ce0_local = 1'b1;
    end else begin
        buff_r_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_4_we0_local = 1'b1;
    end else begin
        buff_r_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_5_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_5_address0;
    end else begin
        buff_r_5_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_5_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_5_ce0;
    end else begin
        buff_r_5_ce0 = buff_r_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_5_ce0_local = 1'b1;
    end else begin
        buff_r_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_5_we0_local = 1'b1;
    end else begin
        buff_r_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_6_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_6_address0;
    end else begin
        buff_r_6_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_6_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_6_ce0;
    end else begin
        buff_r_6_ce0 = buff_r_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_6_ce0_local = 1'b1;
    end else begin
        buff_r_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_6_we0_local = 1'b1;
    end else begin
        buff_r_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_7_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_7_address0;
    end else begin
        buff_r_7_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_7_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_7_ce0;
    end else begin
        buff_r_7_ce0 = buff_r_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_7_ce0_local = 1'b1;
    end else begin
        buff_r_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_7_we0_local = 1'b1;
    end else begin
        buff_r_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_r_ce0;
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
    if (((trunc_ln13_1_fu_1450_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_ce1;
    end else begin
        buff_s_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_d0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_d0;
    end else begin
        buff_s_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_1_we0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_1_we0;
    end else begin
        buff_s_out_1_we0 = buff_s_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_ce1;
    end else begin
        buff_s_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_d0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_d0;
    end else begin
        buff_s_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_2_we0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_2_we0;
    end else begin
        buff_s_out_2_we0 = buff_s_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_ce1;
    end else begin
        buff_s_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_d0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_d0;
    end else begin
        buff_s_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_3_we0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_3_we0;
    end else begin
        buff_s_out_3_we0 = buff_s_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_address0;
    end else begin
        buff_s_out_4_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_ce0;
    end else begin
        buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_d0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_d0;
    end else begin
        buff_s_out_4_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_4_we0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_4_we0;
    end else begin
        buff_s_out_4_we0 = buff_s_out_4_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_address0;
    end else begin
        buff_s_out_5_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_ce0;
    end else begin
        buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_d0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_d0;
    end else begin
        buff_s_out_5_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_5_we0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_5_we0;
    end else begin
        buff_s_out_5_we0 = buff_s_out_5_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_address0;
    end else begin
        buff_s_out_6_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_ce0;
    end else begin
        buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_d0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_d0;
    end else begin
        buff_s_out_6_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_6_we0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_6_we0;
    end else begin
        buff_s_out_6_we0 = buff_s_out_6_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_address0;
    end else begin
        buff_s_out_7_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_ce0;
    end else begin
        buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_d0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_d0;
    end else begin
        buff_s_out_7_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_7_we0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_7_we0;
    end else begin
        buff_s_out_7_we0 = buff_s_out_7_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = zext_ln5_fu_1462_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1397_buff_s_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_ce1;
    end else begin
        buff_s_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_d0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_d0;
    end else begin
        buff_s_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_s_out_we0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_buff_s_out_we0;
    end else begin
        buff_s_out_we0 = buff_s_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_1450_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2202_ce = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2202_ce = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_ce;
    end else begin
        grp_fu_2202_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2202_p0 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2202_p0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_din0;
    end else begin
        grp_fu_2202_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2202_p1 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2202_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2202_p1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2202_p_din1;
    end else begin
        grp_fu_2202_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2206_ce = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2206_ce = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_ce;
    end else begin
        grp_fu_2206_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2206_p0 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2206_p0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_din0;
    end else begin
        grp_fu_2206_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2206_p1 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2206_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2206_p1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2206_p_din1;
    end else begin
        grp_fu_2206_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2210_ce = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2210_ce = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_ce;
    end else begin
        grp_fu_2210_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2210_p0 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2210_p0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_din0;
    end else begin
        grp_fu_2210_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2210_p1 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2210_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2210_p1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2210_p_din1;
    end else begin
        grp_fu_2210_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2214_ce = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2214_ce = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_ce;
    end else begin
        grp_fu_2214_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2214_p0 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2214_p0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_din0;
    end else begin
        grp_fu_2214_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2214_p1 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2214_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2214_p1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2214_p_din1;
    end else begin
        grp_fu_2214_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2218_ce = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2218_ce = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_ce;
    end else begin
        grp_fu_2218_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2218_p0 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2218_p0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_din0;
    end else begin
        grp_fu_2218_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2218_p1 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2218_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2218_p1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2218_p_din1;
    end else begin
        grp_fu_2218_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2222_ce = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2222_ce = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_ce;
    end else begin
        grp_fu_2222_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2222_p0 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2222_p0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_din0;
    end else begin
        grp_fu_2222_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2222_p1 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2222_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2222_p1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2222_p_din1;
    end else begin
        grp_fu_2222_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2226_ce = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2226_ce = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_ce;
    end else begin
        grp_fu_2226_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2226_p0 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2226_p0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_din0;
    end else begin
        grp_fu_2226_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2226_p1 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2226_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2226_p1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2226_p_din1;
    end else begin
        grp_fu_2226_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2230_ce = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2230_ce = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_ce;
    end else begin
        grp_fu_2230_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2230_p0 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2230_p0 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_din0;
    end else begin
        grp_fu_2230_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2230_p1 = grp_bicg_Pipeline_lp3_fu_1297_grp_fu_2230_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2230_p1 = grp_bicg_Pipeline_lp1_lp2_fu_1240_grp_fu_2230_p_din1;
    end else begin
        grp_fu_2230_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1397_q_out_write;
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1397_s_out_write;
    end else begin
        s_out_write = 1'b0;
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
            if (((icmp_ln13_fu_1429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (grp_bicg_Pipeline_lprd_2_fu_1268_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_bicg_Pipeline_lp3_fu_1297_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_bicg_Pipeline_lpwr_fu_1397_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_3_ce0;
assign A_4_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_4_address0;
assign A_4_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_4_ce0;
assign A_5_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_5_address0;
assign A_5_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_5_ce0;
assign A_6_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_6_address0;
assign A_6_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_6_ce0;
assign A_7_address0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_7_address0;
assign A_7_ce0 = grp_bicg_Pipeline_lprd_2_fu_1268_A_7_ce0;
assign add_ln13_fu_1435_p2 = (i_fu_106 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln14_fu_1498_p1 = p_q0;
assign bitcast_ln15_fu_1510_p1 = r_q0;
assign grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start = grp_bicg_Pipeline_lp1_lp2_fu_1240_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_1297_ap_start = grp_bicg_Pipeline_lp3_fu_1297_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_1268_ap_start = grp_bicg_Pipeline_lprd_2_fu_1268_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1397_ap_start = grp_bicg_Pipeline_lpwr_fu_1397_ap_start_reg;
assign icmp_ln13_fu_1429_p2 = ((i_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_1453_p4 = {{i_fu_106[5:3]}};
assign p_address0 = zext_ln13_fu_1441_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1397_q_out_din;
assign r_address0 = zext_ln13_fu_1441_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1397_s_out_din;
assign trunc_ln13_1_fu_1450_p1 = i_fu_106[2:0];
assign trunc_ln13_fu_1447_p1 = i_fu_106[5:0];
assign zext_ln13_fu_1441_p1 = i_fu_106;
assign zext_ln5_fu_1462_p1 = lshr_ln5_fu_1453_p4;
endmodule 