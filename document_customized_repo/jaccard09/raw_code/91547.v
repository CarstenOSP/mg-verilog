module mvt (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,x1_address0,x1_ce0,x1_q0,x2_address0,x2_ce0,x2_q0,y1_address0,y1_ce0,y1_q0,y2_dout,y2_empty_n,y2_read,x1_out_din,x1_out_full_n,x1_out_write,x2_out_din,x2_out_full_n,x2_out_write); 
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
output  [5:0] x1_address0;
output   x1_ce0;
input  [31:0] x1_q0;
output  [5:0] x2_address0;
output   x2_ce0;
input  [31:0] x2_q0;
output  [5:0] y1_address0;
output   y1_ce0;
input  [31:0] y1_q0;
input  [31:0] y2_dout;
input   y2_empty_n;
output   y2_read;
output  [31:0] x1_out_din;
input   x1_out_full_n;
output   x1_out_write;
output  [31:0] x2_out_din;
input   x2_out_full_n;
output   x2_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg x1_out_write;
reg x2_out_write;
(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    y2_blk_n;
wire    ap_CS_fsm_state3;
wire   [6:0] add_ln13_fu_974_p2;
reg   [6:0] add_ln13_reg_1058;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_987_p1;
reg   [5:0] trunc_ln13_reg_1098;
wire   [0:0] trunc_ln13_1_fu_991_p1;
reg   [0:0] trunc_ln13_1_reg_1103;
wire   [4:0] lshr_ln6_fu_995_p4;
reg   [4:0] lshr_ln6_reg_1108;
reg   [31:0] buff_y1_load_reg_1113;
wire    ap_CS_fsm_state5;
reg   [31:0] buff_y1_1_load_reg_1118;
reg   [31:0] buff_y1_load_1_reg_1123;
reg   [31:0] buff_y1_1_load_1_reg_1128;
reg   [31:0] buff_y1_load_2_reg_1153;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_y1_1_load_2_reg_1158;
reg   [31:0] buff_y1_load_3_reg_1163;
reg   [31:0] buff_y1_1_load_3_reg_1168;
reg   [31:0] buff_y1_load_4_reg_1193;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_y1_1_load_4_reg_1198;
reg   [31:0] buff_y1_load_5_reg_1203;
reg   [31:0] buff_y1_1_load_5_reg_1208;
reg   [31:0] buff_y1_load_6_reg_1233;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_y1_1_load_6_reg_1238;
reg   [31:0] buff_y1_load_7_reg_1243;
reg   [31:0] buff_y1_1_load_7_reg_1248;
reg   [31:0] buff_y1_load_8_reg_1273;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_y1_1_load_8_reg_1278;
reg   [31:0] buff_y1_load_9_reg_1283;
reg   [31:0] buff_y1_1_load_9_reg_1288;
reg   [31:0] buff_y1_load_10_reg_1313;
wire    ap_CS_fsm_state10;
reg   [31:0] buff_y1_1_load_10_reg_1318;
reg   [31:0] buff_y1_load_11_reg_1323;
reg   [31:0] buff_y1_1_load_11_reg_1328;
reg   [31:0] buff_y1_load_12_reg_1353;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_y1_1_load_12_reg_1358;
reg   [31:0] buff_y1_load_13_reg_1363;
reg   [31:0] buff_y1_1_load_13_reg_1368;
reg   [31:0] buff_y1_load_14_reg_1393;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_y1_1_load_14_reg_1398;
reg   [31:0] buff_y1_load_15_reg_1403;
reg   [31:0] buff_y1_1_load_15_reg_1408;
reg   [31:0] buff_y1_load_16_reg_1433;
wire    ap_CS_fsm_state13;
reg   [31:0] buff_y1_1_load_16_reg_1438;
reg   [31:0] buff_y1_load_17_reg_1443;
reg   [31:0] buff_y1_1_load_17_reg_1448;
reg   [31:0] buff_y1_load_18_reg_1473;
wire    ap_CS_fsm_state14;
reg   [31:0] buff_y1_1_load_18_reg_1478;
reg   [31:0] buff_y1_load_19_reg_1483;
reg   [31:0] buff_y1_1_load_19_reg_1488;
reg   [31:0] buff_y1_load_20_reg_1513;
wire    ap_CS_fsm_state15;
reg   [31:0] buff_y1_1_load_20_reg_1518;
reg   [31:0] buff_y1_load_21_reg_1523;
reg   [31:0] buff_y1_1_load_21_reg_1528;
reg   [31:0] buff_y1_load_22_reg_1553;
wire    ap_CS_fsm_state16;
reg   [31:0] buff_y1_1_load_22_reg_1558;
reg   [31:0] buff_y1_load_23_reg_1563;
reg   [31:0] buff_y1_1_load_23_reg_1568;
reg   [31:0] buff_y1_load_24_reg_1593;
wire    ap_CS_fsm_state17;
reg   [31:0] buff_y1_1_load_24_reg_1598;
reg   [31:0] buff_y1_load_25_reg_1603;
reg   [31:0] buff_y1_1_load_25_reg_1608;
reg   [31:0] buff_y1_load_26_reg_1633;
wire    ap_CS_fsm_state18;
reg   [31:0] buff_y1_1_load_26_reg_1638;
reg   [31:0] buff_y1_load_27_reg_1643;
reg   [31:0] buff_y1_1_load_27_reg_1648;
reg   [31:0] buff_y1_load_28_reg_1673;
wire    ap_CS_fsm_state19;
reg   [31:0] buff_y1_1_load_28_reg_1678;
reg   [31:0] buff_y1_load_29_reg_1683;
reg   [31:0] buff_y1_1_load_29_reg_1688;
reg   [31:0] buff_y1_load_30_reg_1713;
wire    ap_CS_fsm_state20;
reg   [31:0] buff_y1_1_load_30_reg_1718;
reg   [31:0] buff_y1_load_31_reg_1723;
reg   [31:0] buff_y1_1_load_31_reg_1728;
reg   [9:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [9:0] buff_A_address1;
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
reg   [9:0] buff_A_1_address1;
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
reg   [9:0] buff_A_2_address1;
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
reg   [9:0] buff_A_3_address1;
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
reg   [4:0] buff_x1_address0;
reg    buff_x1_ce0;
reg    buff_x1_we0;
reg   [31:0] buff_x1_d0;
wire   [31:0] buff_x1_q0;
reg    buff_x1_ce1;
wire   [31:0] buff_x1_q1;
reg   [4:0] buff_x1_1_address0;
reg    buff_x1_1_ce0;
reg    buff_x1_1_we0;
reg   [31:0] buff_x1_1_d0;
wire   [31:0] buff_x1_1_q0;
reg    buff_x1_1_ce1;
wire   [31:0] buff_x1_1_q1;
reg   [4:0] buff_x2_address0;
reg    buff_x2_ce0;
reg    buff_x2_we0;
reg   [31:0] buff_x2_d0;
wire   [31:0] buff_x2_q0;
reg   [4:0] buff_x2_1_address0;
reg    buff_x2_1_ce0;
reg    buff_x2_1_we0;
reg   [31:0] buff_x2_1_d0;
wire   [31:0] buff_x2_1_q0;
wire   [31:0] buff_y1_q0;
wire   [31:0] buff_y1_q1;
wire   [31:0] buff_y1_1_q0;
wire   [31:0] buff_y1_1_q1;
reg   [4:0] buff_y2_address0;
reg    buff_y2_ce0;
wire   [31:0] buff_y2_q0;
reg    buff_y2_ce1;
wire   [31:0] buff_y2_q1;
reg   [4:0] buff_y2_1_address0;
reg    buff_y2_1_ce0;
wire   [31:0] buff_y2_1_q0;
reg    buff_y2_1_ce1;
wire   [31:0] buff_y2_1_q1;
wire    grp_mvt_Pipeline_lprd_2_fu_843_ap_start;
wire    grp_mvt_Pipeline_lprd_2_fu_843_ap_done;
wire    grp_mvt_Pipeline_lprd_2_fu_843_ap_idle;
wire    grp_mvt_Pipeline_lprd_2_fu_843_ap_ready;
wire   [10:0] grp_mvt_Pipeline_lprd_2_fu_843_A_0_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_A_0_ce0;
wire   [10:0] grp_mvt_Pipeline_lprd_2_fu_843_A_1_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_A_1_ce0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_843_buff_A_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_buff_A_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_buff_A_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_843_buff_A_d0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_d0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_d0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_d0;
wire    grp_mvt_Pipeline_lp1_fu_858_ap_start;
wire    grp_mvt_Pipeline_lp1_fu_858_ap_done;
wire    grp_mvt_Pipeline_lp1_fu_858_ap_idle;
wire    grp_mvt_Pipeline_lp1_fu_858_ap_ready;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address0;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce0;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address1;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce1;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address2;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce2;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address3;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce3;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address4;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce4;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address5;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce5;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address6;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce6;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address7;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce7;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address8;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce8;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address9;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce9;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address10;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce10;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address11;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce11;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address12;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce12;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address13;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce13;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address14;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce14;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_address15;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_ce15;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address0;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce0;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address1;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce1;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address2;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce2;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address3;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce3;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address4;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce4;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address5;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce5;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address6;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce6;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address7;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce7;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address8;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce8;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address9;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce9;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address10;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce10;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address11;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce11;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address12;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce12;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address13;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce13;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address14;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce14;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address15;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce15;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address0;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce0;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address1;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce1;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address2;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce2;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address3;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce3;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address4;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce4;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address5;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce5;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address6;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce6;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address7;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce7;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address8;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce8;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address9;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce9;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address10;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce10;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address11;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce11;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address12;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce12;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address13;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce13;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address14;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce14;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address15;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce15;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address0;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce0;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address1;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce1;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address2;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce2;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address3;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce3;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address4;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce4;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address5;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce5;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address6;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce6;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address7;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce7;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address8;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce8;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address9;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce9;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address10;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce10;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address11;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce11;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address12;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce12;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address13;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce13;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address14;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce14;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address15;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce15;
wire   [4:0] grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_address0;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_ce0;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_d0;
wire   [4:0] grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_address1;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_ce1;
wire   [4:0] grp_mvt_Pipeline_lp1_fu_858_buff_x1_address0;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_x1_ce0;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_x1_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_858_buff_x1_d0;
wire   [4:0] grp_mvt_Pipeline_lp1_fu_858_buff_x1_address1;
wire    grp_mvt_Pipeline_lp1_fu_858_buff_x1_ce1;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_din1;
wire   [1:0] grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_opcode;
wire    grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_ce;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_din1;
wire    grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_ce;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_ap_done;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_ap_idle;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_ap_ready;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_ce0;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_ce1;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_ce0;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_ce1;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_ce0;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_ce1;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_ce0;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_ce1;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_ce0;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_ce1;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_ce0;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_ce1;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_d0;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_d0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_din1;
wire   [1:0] grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_opcode;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_ce;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_din1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_ce;
wire    grp_mvt_Pipeline_lpwr_fu_948_ap_start;
wire    grp_mvt_Pipeline_lpwr_fu_948_ap_done;
wire    grp_mvt_Pipeline_lpwr_fu_948_ap_idle;
wire    grp_mvt_Pipeline_lpwr_fu_948_ap_ready;
wire   [31:0] grp_mvt_Pipeline_lpwr_fu_948_x1_out_din;
wire    grp_mvt_Pipeline_lpwr_fu_948_x1_out_write;
wire   [31:0] grp_mvt_Pipeline_lpwr_fu_948_x2_out_din;
wire    grp_mvt_Pipeline_lpwr_fu_948_x2_out_write;
wire   [4:0] grp_mvt_Pipeline_lpwr_fu_948_buff_x1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_948_buff_x1_ce0;
wire   [4:0] grp_mvt_Pipeline_lpwr_fu_948_buff_x2_address0;
wire    grp_mvt_Pipeline_lpwr_fu_948_buff_x2_ce0;
wire   [4:0] grp_mvt_Pipeline_lpwr_fu_948_buff_x1_1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_948_buff_x1_1_ce0;
wire   [4:0] grp_mvt_Pipeline_lpwr_fu_948_buff_x2_1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_948_buff_x2_1_ce0;
reg    grp_mvt_Pipeline_lprd_2_fu_843_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_mvt_Pipeline_lp1_fu_858_ap_start_reg;
wire    ap_CS_fsm_state21;
reg    grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start_reg;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
reg    grp_mvt_Pipeline_lpwr_fu_948_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire   [63:0] zext_ln13_fu_980_p1;
wire   [0:0] icmp_ln13_fu_968_p2;
wire   [63:0] zext_ln6_fu_1005_p1;
reg   [6:0] i_fu_130;
reg    y2_read_local;
reg    x1_ce0_local;
reg    x2_ce0_local;
reg    y1_ce0_local;
reg    buff_y1_ce1_local;
reg   [4:0] buff_y1_address1_local;
reg    buff_y1_ce0_local;
reg   [4:0] buff_y1_address0_local;
reg    buff_y1_we0_local;
wire   [31:0] bitcast_ln16_fu_1029_p1;
reg    buff_y1_1_ce1_local;
reg   [4:0] buff_y1_1_address1_local;
reg    buff_y1_1_ce0_local;
reg   [4:0] buff_y1_1_address0_local;
reg    buff_y1_1_we0_local;
reg    buff_x1_we0_local;
wire   [31:0] bitcast_ln14_fu_1017_p1;
reg    buff_x1_ce0_local;
reg    buff_x2_we0_local;
wire   [31:0] bitcast_ln15_fu_1023_p1;
reg    buff_x2_ce0_local;
reg    buff_y2_we0_local;
wire   [31:0] bitcast_ln17_fu_1035_p1;
reg    buff_y2_ce0_local;
reg    buff_x1_1_we0_local;
reg    buff_x1_1_ce0_local;
reg    buff_x2_1_we0_local;
reg    buff_x2_1_ce0_local;
reg    buff_y2_1_we0_local;
reg    buff_y2_1_ce0_local;
wire   [31:0] grp_fu_1733_p2;
reg   [31:0] grp_fu_1733_p0;
reg   [31:0] grp_fu_1733_p1;
reg    grp_fu_1733_ce;
wire   [31:0] grp_fu_1737_p2;
reg   [31:0] grp_fu_1737_p0;
reg   [31:0] grp_fu_1737_p1;
reg    grp_fu_1737_ce;
reg   [24:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
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
#0 grp_mvt_Pipeline_lprd_2_fu_843_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lp1_fu_858_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lpwr_fu_948_ap_start_reg = 1'b0;
#0 i_fu_130 = 7'd0;
end
mvt_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_mvt_Pipeline_lp1_fu_858_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_mvt_Pipeline_lp1_fu_858_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_mvt_Pipeline_lp1_fu_858_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_mvt_Pipeline_lp1_fu_858_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_mvt_Pipeline_lp1_fu_858_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_mvt_Pipeline_lp1_fu_858_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_mvt_Pipeline_lp1_fu_858_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_mvt_Pipeline_lp1_fu_858_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_mvt_Pipeline_lp1_fu_858_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_mvt_Pipeline_lp1_fu_858_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_mvt_Pipeline_lp1_fu_858_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_mvt_Pipeline_lp1_fu_858_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_mvt_Pipeline_lp1_fu_858_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_mvt_Pipeline_lp1_fu_858_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
mvt_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
mvt_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
mvt_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_address0),.ce0(buff_x1_ce0),.we0(buff_x1_we0),.d0(buff_x1_d0),.q0(buff_x1_q0),.address1(grp_mvt_Pipeline_lp1_fu_858_buff_x1_address1),.ce1(buff_x1_ce1),.q1(buff_x1_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_1_address0),.ce0(buff_x1_1_ce0),.we0(buff_x1_1_we0),.d0(buff_x1_1_d0),.q0(buff_x1_1_q0),.address1(grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_address1),.ce1(buff_x1_1_ce1),.q1(buff_x1_1_q1));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_address0),.ce0(buff_x2_ce0),.we0(buff_x2_we0),.d0(buff_x2_d0),.q0(buff_x2_q0));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_1_address0),.ce0(buff_x2_1_ce0),.we0(buff_x2_1_we0),.d0(buff_x2_1_d0),.q0(buff_x2_1_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_address0_local),.ce0(buff_y1_ce0_local),.we0(buff_y1_we0_local),.d0(bitcast_ln16_fu_1029_p1),.q0(buff_y1_q0),.address1(buff_y1_address1_local),.ce1(buff_y1_ce1_local),.q1(buff_y1_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_1_address0_local),.ce0(buff_y1_1_ce0_local),.we0(buff_y1_1_we0_local),.d0(bitcast_ln16_fu_1029_p1),.q0(buff_y1_1_q0),.address1(buff_y1_1_address1_local),.ce1(buff_y1_1_ce1_local),.q1(buff_y1_1_q1));
mvt_buff_y2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_address0),.ce0(buff_y2_ce0),.we0(buff_y2_we0_local),.d0(bitcast_ln17_fu_1035_p1),.q0(buff_y2_q0),.address1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_address1),.ce1(buff_y2_ce1),.q1(buff_y2_q1));
mvt_buff_y2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_1_address0),.ce0(buff_y2_1_ce0),.we0(buff_y2_1_we0_local),.d0(bitcast_ln17_fu_1035_p1),.q0(buff_y2_1_q0),.address1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_address1),.ce1(buff_y2_1_ce1),.q1(buff_y2_1_q1));
mvt_mvt_Pipeline_lprd_2 grp_mvt_Pipeline_lprd_2_fu_843(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lprd_2_fu_843_ap_start),.ap_done(grp_mvt_Pipeline_lprd_2_fu_843_ap_done),.ap_idle(grp_mvt_Pipeline_lprd_2_fu_843_ap_idle),.ap_ready(grp_mvt_Pipeline_lprd_2_fu_843_ap_ready),.i(trunc_ln13_reg_1098),.A_0_address0(grp_mvt_Pipeline_lprd_2_fu_843_A_0_address0),.A_0_ce0(grp_mvt_Pipeline_lprd_2_fu_843_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_mvt_Pipeline_lprd_2_fu_843_A_1_address0),.A_1_ce0(grp_mvt_Pipeline_lprd_2_fu_843_A_1_ce0),.A_1_q0(A_1_q0),.lshr_ln6(lshr_ln6_reg_1108),.buff_A_address0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_ce0),.buff_A_we0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_we0),.buff_A_d0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_d0),.buff_A_1_address0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_ce0),.buff_A_1_we0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_we0),.buff_A_1_d0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_d0),.buff_A_2_address0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_ce0),.buff_A_2_we0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_we0),.buff_A_2_d0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_d0),.buff_A_3_address0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_ce0),.buff_A_3_we0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_we0),.buff_A_3_d0(grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_d0),.empty(trunc_ln13_1_reg_1103));
mvt_mvt_Pipeline_lp1 grp_mvt_Pipeline_lp1_fu_858(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lp1_fu_858_ap_start),.ap_done(grp_mvt_Pipeline_lp1_fu_858_ap_done),.ap_idle(grp_mvt_Pipeline_lp1_fu_858_ap_idle),.ap_ready(grp_mvt_Pipeline_lp1_fu_858_ap_ready),.buff_A_address0(grp_mvt_Pipeline_lp1_fu_858_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_mvt_Pipeline_lp1_fu_858_buff_A_address1),.buff_A_ce1(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_mvt_Pipeline_lp1_fu_858_buff_A_address2),.buff_A_ce2(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_mvt_Pipeline_lp1_fu_858_buff_A_address3),.buff_A_ce3(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_mvt_Pipeline_lp1_fu_858_buff_A_address4),.buff_A_ce4(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_mvt_Pipeline_lp1_fu_858_buff_A_address5),.buff_A_ce5(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_mvt_Pipeline_lp1_fu_858_buff_A_address6),.buff_A_ce6(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_mvt_Pipeline_lp1_fu_858_buff_A_address7),.buff_A_ce7(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_mvt_Pipeline_lp1_fu_858_buff_A_address8),.buff_A_ce8(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_mvt_Pipeline_lp1_fu_858_buff_A_address9),.buff_A_ce9(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_mvt_Pipeline_lp1_fu_858_buff_A_address10),.buff_A_ce10(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_mvt_Pipeline_lp1_fu_858_buff_A_address11),.buff_A_ce11(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_mvt_Pipeline_lp1_fu_858_buff_A_address12),.buff_A_ce12(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_mvt_Pipeline_lp1_fu_858_buff_A_address13),.buff_A_ce13(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_mvt_Pipeline_lp1_fu_858_buff_A_address14),.buff_A_ce14(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_mvt_Pipeline_lp1_fu_858_buff_A_address15),.buff_A_ce15(grp_mvt_Pipeline_lp1_fu_858_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address1),.buff_A_1_ce1(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address2),.buff_A_1_ce2(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address3),.buff_A_1_ce3(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address4),.buff_A_1_ce4(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address5),.buff_A_1_ce5(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address6),.buff_A_1_ce6(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address7),.buff_A_1_ce7(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address8),.buff_A_1_ce8(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address9),.buff_A_1_ce9(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address10),.buff_A_1_ce10(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address11),.buff_A_1_ce11(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address12),.buff_A_1_ce12(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address13),.buff_A_1_ce13(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address14),.buff_A_1_ce14(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address15),.buff_A_1_ce15(grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address1),.buff_A_2_ce1(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address2),.buff_A_2_ce2(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address3),.buff_A_2_ce3(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address4),.buff_A_2_ce4(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address5),.buff_A_2_ce5(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address6),.buff_A_2_ce6(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address7),.buff_A_2_ce7(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address8),.buff_A_2_ce8(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address9),.buff_A_2_ce9(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address10),.buff_A_2_ce10(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address11),.buff_A_2_ce11(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address12),.buff_A_2_ce12(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address13),.buff_A_2_ce13(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address14),.buff_A_2_ce14(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address15),.buff_A_2_ce15(grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address1),.buff_A_3_ce1(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address2),.buff_A_3_ce2(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address3),.buff_A_3_ce3(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address4),.buff_A_3_ce4(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address5),.buff_A_3_ce5(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address6),.buff_A_3_ce6(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address7),.buff_A_3_ce7(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address8),.buff_A_3_ce8(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address9),.buff_A_3_ce9(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address10),.buff_A_3_ce10(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address11),.buff_A_3_ce11(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address12),.buff_A_3_ce12(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address13),.buff_A_3_ce13(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address14),.buff_A_3_ce14(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address15),.buff_A_3_ce15(grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_x1_1_address0(grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_address0),.buff_x1_1_ce0(grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_ce0),.buff_x1_1_we0(grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_we0),.buff_x1_1_d0(grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_d0),.buff_x1_1_address1(grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_address1),.buff_x1_1_ce1(grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_ce1),.buff_x1_1_q1(buff_x1_1_q1),.buff_x1_address0(grp_mvt_Pipeline_lp1_fu_858_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lp1_fu_858_buff_x1_ce0),.buff_x1_we0(grp_mvt_Pipeline_lp1_fu_858_buff_x1_we0),.buff_x1_d0(grp_mvt_Pipeline_lp1_fu_858_buff_x1_d0),.buff_x1_address1(grp_mvt_Pipeline_lp1_fu_858_buff_x1_address1),.buff_x1_ce1(grp_mvt_Pipeline_lp1_fu_858_buff_x1_ce1),.buff_x1_q1(buff_x1_q1),.buff_y1_load(buff_y1_load_reg_1113),.buff_y1_1_load(buff_y1_1_load_reg_1118),.buff_y1_load_1(buff_y1_load_1_reg_1123),.buff_y1_1_load_1(buff_y1_1_load_1_reg_1128),.buff_y1_load_2(buff_y1_load_2_reg_1153),.buff_y1_1_load_2(buff_y1_1_load_2_reg_1158),.buff_y1_load_3(buff_y1_load_3_reg_1163),.buff_y1_1_load_3(buff_y1_1_load_3_reg_1168),.buff_y1_load_4(buff_y1_load_4_reg_1193),.buff_y1_1_load_4(buff_y1_1_load_4_reg_1198),.buff_y1_load_5(buff_y1_load_5_reg_1203),.buff_y1_1_load_5(buff_y1_1_load_5_reg_1208),.buff_y1_load_6(buff_y1_load_6_reg_1233),.buff_y1_1_load_6(buff_y1_1_load_6_reg_1238),.buff_y1_load_7(buff_y1_load_7_reg_1243),.buff_y1_1_load_7(buff_y1_1_load_7_reg_1248),.buff_y1_load_8(buff_y1_load_8_reg_1273),.buff_y1_1_load_8(buff_y1_1_load_8_reg_1278),.buff_y1_load_9(buff_y1_load_9_reg_1283),.buff_y1_1_load_9(buff_y1_1_load_9_reg_1288),.buff_y1_load_10(buff_y1_load_10_reg_1313),.buff_y1_1_load_10(buff_y1_1_load_10_reg_1318),.buff_y1_load_11(buff_y1_load_11_reg_1323),.buff_y1_1_load_11(buff_y1_1_load_11_reg_1328),.buff_y1_load_12(buff_y1_load_12_reg_1353),.buff_y1_1_load_12(buff_y1_1_load_12_reg_1358),.buff_y1_load_13(buff_y1_load_13_reg_1363),.buff_y1_1_load_13(buff_y1_1_load_13_reg_1368),.buff_y1_load_14(buff_y1_load_14_reg_1393),.buff_y1_1_load_14(buff_y1_1_load_14_reg_1398),.buff_y1_load_15(buff_y1_load_15_reg_1403),.buff_y1_1_load_15(buff_y1_1_load_15_reg_1408),.buff_y1_load_16(buff_y1_load_16_reg_1433),.buff_y1_1_load_16(buff_y1_1_load_16_reg_1438),.buff_y1_load_17(buff_y1_load_17_reg_1443),.buff_y1_1_load_17(buff_y1_1_load_17_reg_1448),.buff_y1_load_18(buff_y1_load_18_reg_1473),.buff_y1_1_load_18(buff_y1_1_load_18_reg_1478),.buff_y1_load_19(buff_y1_load_19_reg_1483),.buff_y1_1_load_19(buff_y1_1_load_19_reg_1488),.buff_y1_load_20(buff_y1_load_20_reg_1513),.buff_y1_1_load_20(buff_y1_1_load_20_reg_1518),.buff_y1_load_21(buff_y1_load_21_reg_1523),.buff_y1_1_load_21(buff_y1_1_load_21_reg_1528),.buff_y1_load_22(buff_y1_load_22_reg_1553),.buff_y1_1_load_22(buff_y1_1_load_22_reg_1558),.buff_y1_load_23(buff_y1_load_23_reg_1563),.buff_y1_1_load_23(buff_y1_1_load_23_reg_1568),.buff_y1_load_24(buff_y1_load_24_reg_1593),.buff_y1_1_load_24(buff_y1_1_load_24_reg_1598),.buff_y1_load_25(buff_y1_load_25_reg_1603),.buff_y1_1_load_25(buff_y1_1_load_25_reg_1608),.buff_y1_load_26(buff_y1_load_26_reg_1633),.buff_y1_1_load_26(buff_y1_1_load_26_reg_1638),.buff_y1_load_27(buff_y1_load_27_reg_1643),.buff_y1_1_load_27(buff_y1_1_load_27_reg_1648),.buff_y1_load_28(buff_y1_load_28_reg_1673),.buff_y1_1_load_28(buff_y1_1_load_28_reg_1678),.buff_y1_load_29(buff_y1_load_29_reg_1683),.buff_y1_1_load_29(buff_y1_1_load_29_reg_1688),.buff_y1_load_30(buff_y1_load_30_reg_1713),.buff_y1_1_load_30(buff_y1_1_load_30_reg_1718),.buff_y1_load_31(buff_y1_load_31_reg_1723),.buff_y1_1_load_31(buff_y1_1_load_31_reg_1728),.grp_fu_1733_p_din0(grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_din0),.grp_fu_1733_p_din1(grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_din1),.grp_fu_1733_p_opcode(grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_opcode),.grp_fu_1733_p_dout0(grp_fu_1733_p2),.grp_fu_1733_p_ce(grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_ce),.grp_fu_1737_p_din0(grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_din0),.grp_fu_1737_p_din1(grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_din1),.grp_fu_1737_p_dout0(grp_fu_1737_p2),.grp_fu_1737_p_ce(grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_ce));
mvt_mvt_Pipeline_lp3_lp4 grp_mvt_Pipeline_lp3_lp4_fu_936(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start),.ap_done(grp_mvt_Pipeline_lp3_lp4_fu_936_ap_done),.ap_idle(grp_mvt_Pipeline_lp3_lp4_fu_936_ap_idle),.ap_ready(grp_mvt_Pipeline_lp3_lp4_fu_936_ap_ready),.buff_A_address0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_address1),.buff_A_ce1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_address1),.buff_A_1_ce1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_address1),.buff_A_2_ce1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_address1),.buff_A_3_ce1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_y2_address0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_address0),.buff_y2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_ce0),.buff_y2_q0(buff_y2_q0),.buff_y2_address1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_address1),.buff_y2_ce1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_ce1),.buff_y2_q1(buff_y2_q1),.buff_y2_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_address0),.buff_y2_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_ce0),.buff_y2_1_q0(buff_y2_1_q0),.buff_y2_1_address1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_address1),.buff_y2_1_ce1(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_ce1),.buff_y2_1_q1(buff_y2_1_q1),.buff_x2_address0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_ce0),.buff_x2_we0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_we0),.buff_x2_d0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_d0),.buff_x2_q0(buff_x2_q0),.buff_x2_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_address0),.buff_x2_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_ce0),.buff_x2_1_we0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_we0),.buff_x2_1_d0(grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_d0),.buff_x2_1_q0(buff_x2_1_q0),.grp_fu_1733_p_din0(grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_din0),.grp_fu_1733_p_din1(grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_din1),.grp_fu_1733_p_opcode(grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_opcode),.grp_fu_1733_p_dout0(grp_fu_1733_p2),.grp_fu_1733_p_ce(grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_ce),.grp_fu_1737_p_din0(grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_din0),.grp_fu_1737_p_din1(grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_din1),.grp_fu_1737_p_dout0(grp_fu_1737_p2),.grp_fu_1737_p_ce(grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_ce));
mvt_mvt_Pipeline_lpwr grp_mvt_Pipeline_lpwr_fu_948(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lpwr_fu_948_ap_start),.ap_done(grp_mvt_Pipeline_lpwr_fu_948_ap_done),.ap_idle(grp_mvt_Pipeline_lpwr_fu_948_ap_idle),.ap_ready(grp_mvt_Pipeline_lpwr_fu_948_ap_ready),.x1_out_din(grp_mvt_Pipeline_lpwr_fu_948_x1_out_din),.x1_out_full_n(x1_out_full_n),.x1_out_write(grp_mvt_Pipeline_lpwr_fu_948_x1_out_write),.x2_out_din(grp_mvt_Pipeline_lpwr_fu_948_x2_out_din),.x2_out_full_n(x2_out_full_n),.x2_out_write(grp_mvt_Pipeline_lpwr_fu_948_x2_out_write),.buff_x1_address0(grp_mvt_Pipeline_lpwr_fu_948_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lpwr_fu_948_buff_x1_ce0),.buff_x1_q0(buff_x1_q0),.buff_x2_address0(grp_mvt_Pipeline_lpwr_fu_948_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lpwr_fu_948_buff_x2_ce0),.buff_x2_q0(buff_x2_q0),.buff_x1_1_address0(grp_mvt_Pipeline_lpwr_fu_948_buff_x1_1_address0),.buff_x1_1_ce0(grp_mvt_Pipeline_lpwr_fu_948_buff_x1_1_ce0),.buff_x1_1_q0(buff_x1_1_q0),.buff_x2_1_address0(grp_mvt_Pipeline_lpwr_fu_948_buff_x2_1_address0),.buff_x2_1_ce0(grp_mvt_Pipeline_lpwr_fu_948_buff_x2_1_ce0),.buff_x2_1_q0(buff_x2_1_q0));
mvt_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U162(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1733_p0),.din1(grp_fu_1733_p1),.ce(grp_fu_1733_ce),.dout(grp_fu_1733_p2));
mvt_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U163(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1737_p0),.din1(grp_fu_1737_p1),.ce(grp_fu_1737_ce),.dout(grp_fu_1737_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lp1_fu_858_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_mvt_Pipeline_lp1_fu_858_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lp1_fu_858_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lp1_fu_858_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lp3_lp4_fu_936_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lprd_2_fu_843_ap_start_reg <= 1'b0;
    end else begin
        if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_mvt_Pipeline_lprd_2_fu_843_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lprd_2_fu_843_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lprd_2_fu_843_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lpwr_fu_948_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_mvt_Pipeline_lpwr_fu_948_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lpwr_fu_948_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lpwr_fu_948_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_130 <= 7'd0;
    end else if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_fu_130 <= add_ln13_reg_1058;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_1058 <= add_ln13_fu_974_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_1_load_10_reg_1318 <= buff_y1_1_q0;
        buff_y1_1_load_11_reg_1328 <= buff_y1_1_q1;
        buff_y1_load_10_reg_1313 <= buff_y1_q0;
        buff_y1_load_11_reg_1323 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_1_load_12_reg_1358 <= buff_y1_1_q0;
        buff_y1_1_load_13_reg_1368 <= buff_y1_1_q1;
        buff_y1_load_12_reg_1353 <= buff_y1_q0;
        buff_y1_load_13_reg_1363 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y1_1_load_14_reg_1398 <= buff_y1_1_q0;
        buff_y1_1_load_15_reg_1408 <= buff_y1_1_q1;
        buff_y1_load_14_reg_1393 <= buff_y1_q0;
        buff_y1_load_15_reg_1403 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y1_1_load_16_reg_1438 <= buff_y1_1_q0;
        buff_y1_1_load_17_reg_1448 <= buff_y1_1_q1;
        buff_y1_load_16_reg_1433 <= buff_y1_q0;
        buff_y1_load_17_reg_1443 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y1_1_load_18_reg_1478 <= buff_y1_1_q0;
        buff_y1_1_load_19_reg_1488 <= buff_y1_1_q1;
        buff_y1_load_18_reg_1473 <= buff_y1_q0;
        buff_y1_load_19_reg_1483 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_1_load_1_reg_1128 <= buff_y1_1_q0;
        buff_y1_1_load_reg_1118 <= buff_y1_1_q1;
        buff_y1_load_1_reg_1123 <= buff_y1_q0;
        buff_y1_load_reg_1113 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y1_1_load_20_reg_1518 <= buff_y1_1_q0;
        buff_y1_1_load_21_reg_1528 <= buff_y1_1_q1;
        buff_y1_load_20_reg_1513 <= buff_y1_q0;
        buff_y1_load_21_reg_1523 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y1_1_load_22_reg_1558 <= buff_y1_1_q0;
        buff_y1_1_load_23_reg_1568 <= buff_y1_1_q1;
        buff_y1_load_22_reg_1553 <= buff_y1_q0;
        buff_y1_load_23_reg_1563 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y1_1_load_24_reg_1598 <= buff_y1_1_q0;
        buff_y1_1_load_25_reg_1608 <= buff_y1_1_q1;
        buff_y1_load_24_reg_1593 <= buff_y1_q0;
        buff_y1_load_25_reg_1603 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y1_1_load_26_reg_1638 <= buff_y1_1_q0;
        buff_y1_1_load_27_reg_1648 <= buff_y1_1_q1;
        buff_y1_load_26_reg_1633 <= buff_y1_q0;
        buff_y1_load_27_reg_1643 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y1_1_load_28_reg_1678 <= buff_y1_1_q0;
        buff_y1_1_load_29_reg_1688 <= buff_y1_1_q1;
        buff_y1_load_28_reg_1673 <= buff_y1_q0;
        buff_y1_load_29_reg_1683 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_1_load_2_reg_1158 <= buff_y1_1_q0;
        buff_y1_1_load_3_reg_1168 <= buff_y1_1_q1;
        buff_y1_load_2_reg_1153 <= buff_y1_q0;
        buff_y1_load_3_reg_1163 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        buff_y1_1_load_30_reg_1718 <= buff_y1_1_q0;
        buff_y1_1_load_31_reg_1728 <= buff_y1_1_q1;
        buff_y1_load_30_reg_1713 <= buff_y1_q0;
        buff_y1_load_31_reg_1723 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_1_load_4_reg_1198 <= buff_y1_1_q0;
        buff_y1_1_load_5_reg_1208 <= buff_y1_1_q1;
        buff_y1_load_4_reg_1193 <= buff_y1_q0;
        buff_y1_load_5_reg_1203 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_1_load_6_reg_1238 <= buff_y1_1_q0;
        buff_y1_1_load_7_reg_1248 <= buff_y1_1_q1;
        buff_y1_load_6_reg_1233 <= buff_y1_q0;
        buff_y1_load_7_reg_1243 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_1_load_8_reg_1278 <= buff_y1_1_q0;
        buff_y1_1_load_9_reg_1288 <= buff_y1_1_q1;
        buff_y1_load_8_reg_1273 <= buff_y1_q0;
        buff_y1_load_9_reg_1283 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln6_reg_1108 <= {{i_fu_130[5:1]}};
        trunc_ln13_1_reg_1103 <= trunc_ln13_1_fu_991_p1;
        trunc_ln13_reg_1098 <= trunc_ln13_fu_987_p1;
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
    if ((grp_mvt_Pipeline_lp1_fu_858_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lp3_lp4_fu_936_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end
assign ap_ST_fsm_state24_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lpwr_fu_948_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((y2_empty_n == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_mvt_Pipeline_lprd_2_fu_843_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state25) & (grp_mvt_Pipeline_lpwr_fu_948_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state25) & (grp_mvt_Pipeline_lpwr_fu_948_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_address1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_address1 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_1_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce1 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce10 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce11 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce12 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce13 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce14 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce15 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce2 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce3 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce4 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce5 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce6 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce7 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce8 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_1_ce9 = grp_mvt_Pipeline_lp1_fu_858_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_2_address1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_address1 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_2_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce1 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce10 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce11 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce12 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce13 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce14 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce15 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce2 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce3 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce4 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce5 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce6 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce7 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce8 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_2_ce9 = grp_mvt_Pipeline_lp1_fu_858_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_3_address1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_address1 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_3_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce1 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce10 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce11 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce12 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce13 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce14 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce15 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce2 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce3 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce4 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce5 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce6 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce7 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce8 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_3_ce9 = grp_mvt_Pipeline_lp1_fu_858_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_address0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address0 = grp_mvt_Pipeline_lp1_fu_858_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_address1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_address1 = grp_mvt_Pipeline_lp1_fu_858_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_A_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce1 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce10 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce11 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce12 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce13 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce14 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce15 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce2 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce3 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce4 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce5 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce6 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce7 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce8 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_A_ce9 = grp_mvt_Pipeline_lp1_fu_858_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_mvt_Pipeline_lprd_2_fu_843_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_x1_1_address0 = grp_mvt_Pipeline_lpwr_fu_948_buff_x1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_1_address0 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_address0;
    end else begin
        buff_x1_1_address0 = zext_ln6_fu_1005_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_x1_1_ce0 = grp_mvt_Pipeline_lpwr_fu_948_buff_x1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_1_ce0 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_ce0;
    end else begin
        buff_x1_1_ce0 = buff_x1_1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_1_ce0_local = 1'b1;
    end else begin
        buff_x1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_1_ce1 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_ce1;
    end else begin
        buff_x1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_1_d0 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_d0;
    end else begin
        buff_x1_1_d0 = bitcast_ln14_fu_1017_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_1_we0 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_1_we0;
    end else begin
        buff_x1_1_we0 = buff_x1_1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_991_p1 == 1'd1))) begin
        buff_x1_1_we0_local = 1'b1;
    end else begin
        buff_x1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lpwr_fu_948_buff_x1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_address0;
    end else begin
        buff_x1_address0 = zext_ln6_fu_1005_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lpwr_fu_948_buff_x1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_ce0;
    end else begin
        buff_x1_ce0 = buff_x1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_ce0_local = 1'b1;
    end else begin
        buff_x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_ce1 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_ce1;
    end else begin
        buff_x1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_d0 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_d0;
    end else begin
        buff_x1_d0 = bitcast_ln14_fu_1017_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        buff_x1_we0 = grp_mvt_Pipeline_lp1_fu_858_buff_x1_we0;
    end else begin
        buff_x1_we0 = buff_x1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_991_p1 == 1'd0))) begin
        buff_x1_we0_local = 1'b1;
    end else begin
        buff_x1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_x2_1_address0 = grp_mvt_Pipeline_lpwr_fu_948_buff_x2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_x2_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_address0;
    end else begin
        buff_x2_1_address0 = zext_ln6_fu_1005_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_x2_1_ce0 = grp_mvt_Pipeline_lpwr_fu_948_buff_x2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_x2_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_ce0;
    end else begin
        buff_x2_1_ce0 = buff_x2_1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_1_ce0_local = 1'b1;
    end else begin
        buff_x2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_x2_1_d0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_d0;
    end else begin
        buff_x2_1_d0 = bitcast_ln15_fu_1023_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_x2_1_we0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_1_we0;
    end else begin
        buff_x2_1_we0 = buff_x2_1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_991_p1 == 1'd1))) begin
        buff_x2_1_we0_local = 1'b1;
    end else begin
        buff_x2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lpwr_fu_948_buff_x2_address0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_address0;
    end else begin
        buff_x2_address0 = zext_ln6_fu_1005_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lpwr_fu_948_buff_x2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_ce0;
    end else begin
        buff_x2_ce0 = buff_x2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_x2_d0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_d0;
    end else begin
        buff_x2_d0 = bitcast_ln15_fu_1023_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_x2_we0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_x2_we0;
    end else begin
        buff_x2_we0 = buff_x2_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_991_p1 == 1'd0))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y1_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y1_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y1_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y1_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y1_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y1_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y1_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y1_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y1_1_address0_local = zext_ln6_fu_1005_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_1_address0_local = 64'd1;
    end else begin
        buff_y1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y1_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y1_1_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y1_1_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y1_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y1_1_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y1_1_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y1_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y1_1_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_1_address1_local = 64'd0;
    end else begin
        buff_y1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y1_1_ce0_local = 1'b1;
    end else begin
        buff_y1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_y1_1_ce1_local = 1'b1;
    end else begin
        buff_y1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_991_p1 == 1'd1))) begin
        buff_y1_1_we0_local = 1'b1;
    end else begin
        buff_y1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y1_address0_local = zext_ln6_fu_1005_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_address0_local = 64'd1;
    end else begin
        buff_y1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        buff_y1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        buff_y1_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_y1_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        buff_y1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y1_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_y1_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_y1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y1_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_address1_local = 64'd0;
    end else begin
        buff_y1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y1_ce0_local = 1'b1;
    end else begin
        buff_y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        buff_y1_ce1_local = 1'b1;
    end else begin
        buff_y1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_991_p1 == 1'd0))) begin
        buff_y1_we0_local = 1'b1;
    end else begin
        buff_y1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y2_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_address0;
    end else begin
        buff_y2_1_address0 = zext_ln6_fu_1005_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y2_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_ce0;
    end else begin
        buff_y2_1_ce0 = buff_y2_1_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_1_ce0_local = 1'b1;
    end else begin
        buff_y2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y2_1_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_1_ce1;
    end else begin
        buff_y2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_991_p1 == 1'd1))) begin
        buff_y2_1_we0_local = 1'b1;
    end else begin
        buff_y2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_address0;
    end else begin
        buff_y2_address0 = zext_ln6_fu_1005_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_ce0;
    end else begin
        buff_y2_ce0 = buff_y2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_ce0_local = 1'b1;
    end else begin
        buff_y2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        buff_y2_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_936_buff_y2_ce1;
    end else begin
        buff_y2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_991_p1 == 1'd0))) begin
        buff_y2_we0_local = 1'b1;
    end else begin
        buff_y2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1733_ce = grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1733_ce = grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_ce;
    end else begin
        grp_fu_1733_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1733_p0 = grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1733_p0 = grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_din0;
    end else begin
        grp_fu_1733_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1733_p1 = grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1733_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1733_p1 = grp_mvt_Pipeline_lp1_fu_858_grp_fu_1733_p_din1;
    end else begin
        grp_fu_1733_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1737_ce = grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1737_ce = grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_ce;
    end else begin
        grp_fu_1737_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1737_p0 = grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1737_p0 = grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_din0;
    end else begin
        grp_fu_1737_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_1737_p1 = grp_mvt_Pipeline_lp3_lp4_fu_936_grp_fu_1737_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1737_p1 = grp_mvt_Pipeline_lp1_fu_858_grp_fu_1737_p_din1;
    end else begin
        grp_fu_1737_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x1_ce0_local = 1'b1;
    end else begin
        x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        x1_out_write = grp_mvt_Pipeline_lpwr_fu_948_x1_out_write;
    end else begin
        x1_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x2_ce0_local = 1'b1;
    end else begin
        x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        x2_out_write = grp_mvt_Pipeline_lpwr_fu_948_x2_out_write;
    end else begin
        x2_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y1_ce0_local = 1'b1;
    end else begin
        y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        y2_blk_n = y2_empty_n;
    end else begin
        y2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        y2_read_local = 1'b1;
    end else begin
        y2_read_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_968_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_mvt_Pipeline_lprd_2_fu_843_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((grp_mvt_Pipeline_lp1_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((1'b1 == ap_CS_fsm_state23) & (grp_mvt_Pipeline_lp3_lp4_fu_936_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((1'b1 == ap_CS_fsm_state25) & (grp_mvt_Pipeline_lpwr_fu_948_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_mvt_Pipeline_lprd_2_fu_843_A_0_address0;
assign A_0_ce0 = grp_mvt_Pipeline_lprd_2_fu_843_A_0_ce0;
assign A_1_address0 = grp_mvt_Pipeline_lprd_2_fu_843_A_1_address0;
assign A_1_ce0 = grp_mvt_Pipeline_lprd_2_fu_843_A_1_ce0;
assign add_ln13_fu_974_p2 = (i_fu_130 + 7'd1);
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
assign bitcast_ln14_fu_1017_p1 = x1_q0;
assign bitcast_ln15_fu_1023_p1 = x2_q0;
assign bitcast_ln16_fu_1029_p1 = y1_q0;
assign bitcast_ln17_fu_1035_p1 = y2_dout;
assign grp_mvt_Pipeline_lp1_fu_858_ap_start = grp_mvt_Pipeline_lp1_fu_858_ap_start_reg;
assign grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start = grp_mvt_Pipeline_lp3_lp4_fu_936_ap_start_reg;
assign grp_mvt_Pipeline_lprd_2_fu_843_ap_start = grp_mvt_Pipeline_lprd_2_fu_843_ap_start_reg;
assign grp_mvt_Pipeline_lpwr_fu_948_ap_start = grp_mvt_Pipeline_lpwr_fu_948_ap_start_reg;
assign icmp_ln13_fu_968_p2 = ((i_fu_130 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_995_p4 = {{i_fu_130[5:1]}};
assign trunc_ln13_1_fu_991_p1 = i_fu_130[0:0];
assign trunc_ln13_fu_987_p1 = i_fu_130[5:0];
assign x1_address0 = zext_ln13_fu_980_p1;
assign x1_ce0 = x1_ce0_local;
assign x1_out_din = grp_mvt_Pipeline_lpwr_fu_948_x1_out_din;
assign x2_address0 = zext_ln13_fu_980_p1;
assign x2_ce0 = x2_ce0_local;
assign x2_out_din = grp_mvt_Pipeline_lpwr_fu_948_x2_out_din;
assign y1_address0 = zext_ln13_fu_980_p1;
assign y1_ce0 = y1_ce0_local;
assign y2_read = y2_read_local;
assign zext_ln13_fu_980_p1 = i_fu_130;
assign zext_ln6_fu_1005_p1 = lshr_ln6_fu_995_p4;
endmodule 