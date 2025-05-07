module mvt (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,x1_address0,x1_ce0,x1_q0,x2_address0,x2_ce0,x2_q0,y1_address0,y1_ce0,y1_q0,y2_dout,y2_empty_n,y2_read,x1_out_din,x1_out_full_n,x1_out_write,x2_out_din,x2_out_full_n,x2_out_write); 
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
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    y2_blk_n;
wire    ap_CS_fsm_state3;
wire   [6:0] add_ln13_fu_1106_p2;
reg   [6:0] add_ln13_reg_1204;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_1119_p1;
reg   [5:0] trunc_ln13_reg_1264;
reg   [31:0] buff_y1_load_reg_1272;
wire    ap_CS_fsm_state5;
reg   [31:0] buff_y1_1_load_reg_1277;
reg   [31:0] buff_y1_2_load_reg_1282;
reg   [31:0] buff_y1_3_load_reg_1287;
reg   [31:0] buff_y1_load_1_reg_1292;
reg   [31:0] buff_y1_1_load_1_reg_1297;
reg   [31:0] buff_y1_2_load_1_reg_1302;
reg   [31:0] buff_y1_3_load_1_reg_1307;
reg   [31:0] buff_y1_load_2_reg_1352;
wire    ap_CS_fsm_state6;
reg   [31:0] buff_y1_1_load_2_reg_1357;
reg   [31:0] buff_y1_2_load_2_reg_1362;
reg   [31:0] buff_y1_3_load_2_reg_1367;
reg   [31:0] buff_y1_load_3_reg_1372;
reg   [31:0] buff_y1_1_load_3_reg_1377;
reg   [31:0] buff_y1_2_load_3_reg_1382;
reg   [31:0] buff_y1_3_load_3_reg_1387;
reg   [31:0] buff_y1_load_4_reg_1432;
wire    ap_CS_fsm_state7;
reg   [31:0] buff_y1_1_load_4_reg_1437;
reg   [31:0] buff_y1_2_load_4_reg_1442;
reg   [31:0] buff_y1_3_load_4_reg_1447;
reg   [31:0] buff_y1_load_5_reg_1452;
reg   [31:0] buff_y1_1_load_5_reg_1457;
reg   [31:0] buff_y1_2_load_5_reg_1462;
reg   [31:0] buff_y1_3_load_5_reg_1467;
reg   [31:0] buff_y1_load_6_reg_1512;
wire    ap_CS_fsm_state8;
reg   [31:0] buff_y1_1_load_6_reg_1517;
reg   [31:0] buff_y1_2_load_6_reg_1522;
reg   [31:0] buff_y1_3_load_6_reg_1527;
reg   [31:0] buff_y1_load_7_reg_1532;
reg   [31:0] buff_y1_1_load_7_reg_1537;
reg   [31:0] buff_y1_2_load_7_reg_1542;
reg   [31:0] buff_y1_3_load_7_reg_1547;
reg   [31:0] buff_y1_load_8_reg_1592;
wire    ap_CS_fsm_state9;
reg   [31:0] buff_y1_1_load_8_reg_1597;
reg   [31:0] buff_y1_2_load_8_reg_1602;
reg   [31:0] buff_y1_3_load_8_reg_1607;
reg   [31:0] buff_y1_load_9_reg_1612;
reg   [31:0] buff_y1_1_load_9_reg_1617;
reg   [31:0] buff_y1_2_load_9_reg_1622;
reg   [31:0] buff_y1_3_load_9_reg_1627;
reg   [31:0] buff_y1_load_10_reg_1672;
wire    ap_CS_fsm_state10;
reg   [31:0] buff_y1_1_load_10_reg_1677;
reg   [31:0] buff_y1_2_load_10_reg_1682;
reg   [31:0] buff_y1_3_load_10_reg_1687;
reg   [31:0] buff_y1_load_11_reg_1692;
reg   [31:0] buff_y1_1_load_11_reg_1697;
reg   [31:0] buff_y1_2_load_11_reg_1702;
reg   [31:0] buff_y1_3_load_11_reg_1707;
reg   [31:0] buff_y1_load_12_reg_1752;
wire    ap_CS_fsm_state11;
reg   [31:0] buff_y1_1_load_12_reg_1757;
reg   [31:0] buff_y1_2_load_12_reg_1762;
reg   [31:0] buff_y1_3_load_12_reg_1767;
reg   [31:0] buff_y1_load_13_reg_1772;
reg   [31:0] buff_y1_1_load_13_reg_1777;
reg   [31:0] buff_y1_2_load_13_reg_1782;
reg   [31:0] buff_y1_3_load_13_reg_1787;
reg   [31:0] buff_y1_load_14_reg_1832;
wire    ap_CS_fsm_state12;
reg   [31:0] buff_y1_1_load_14_reg_1837;
reg   [31:0] buff_y1_2_load_14_reg_1842;
reg   [31:0] buff_y1_3_load_14_reg_1847;
reg   [31:0] buff_y1_load_15_reg_1852;
reg   [31:0] buff_y1_1_load_15_reg_1857;
reg   [31:0] buff_y1_2_load_15_reg_1862;
reg   [31:0] buff_y1_3_load_15_reg_1867;
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
reg   [3:0] buff_x1_address0;
reg    buff_x1_ce0;
reg    buff_x1_we0;
reg   [31:0] buff_x1_d0;
wire   [31:0] buff_x1_q0;
reg    buff_x1_ce1;
wire   [31:0] buff_x1_q1;
reg   [3:0] buff_x1_1_address0;
reg    buff_x1_1_ce0;
reg    buff_x1_1_we0;
reg   [31:0] buff_x1_1_d0;
wire   [31:0] buff_x1_1_q0;
reg    buff_x1_1_ce1;
wire   [31:0] buff_x1_1_q1;
reg   [3:0] buff_x1_2_address0;
reg    buff_x1_2_ce0;
reg    buff_x1_2_we0;
reg   [31:0] buff_x1_2_d0;
wire   [31:0] buff_x1_2_q0;
reg    buff_x1_2_ce1;
wire   [31:0] buff_x1_2_q1;
reg   [3:0] buff_x1_3_address0;
reg    buff_x1_3_ce0;
reg    buff_x1_3_we0;
reg   [31:0] buff_x1_3_d0;
wire   [31:0] buff_x1_3_q0;
reg    buff_x1_3_ce1;
wire   [31:0] buff_x1_3_q1;
reg   [3:0] buff_x2_address0;
reg    buff_x2_ce0;
reg    buff_x2_we0;
reg   [31:0] buff_x2_d0;
wire   [31:0] buff_x2_q0;
reg   [3:0] buff_x2_1_address0;
reg    buff_x2_1_ce0;
reg    buff_x2_1_we0;
reg   [31:0] buff_x2_1_d0;
wire   [31:0] buff_x2_1_q0;
reg   [3:0] buff_x2_2_address0;
reg    buff_x2_2_ce0;
reg    buff_x2_2_we0;
reg   [31:0] buff_x2_2_d0;
wire   [31:0] buff_x2_2_q0;
reg   [3:0] buff_x2_3_address0;
reg    buff_x2_3_ce0;
reg    buff_x2_3_we0;
reg   [31:0] buff_x2_3_d0;
wire   [31:0] buff_x2_3_q0;
wire   [31:0] buff_y1_q0;
wire   [31:0] buff_y1_q1;
wire   [31:0] buff_y1_1_q0;
wire   [31:0] buff_y1_1_q1;
wire   [31:0] buff_y1_2_q0;
wire   [31:0] buff_y1_2_q1;
wire   [31:0] buff_y1_3_q0;
wire   [31:0] buff_y1_3_q1;
reg   [3:0] buff_y2_address0;
reg    buff_y2_ce0;
wire   [31:0] buff_y2_q0;
reg   [3:0] buff_y2_1_address0;
reg    buff_y2_1_ce0;
wire   [31:0] buff_y2_1_q0;
reg   [3:0] buff_y2_2_address0;
reg    buff_y2_2_ce0;
wire   [31:0] buff_y2_2_q0;
reg   [3:0] buff_y2_3_address0;
reg    buff_y2_3_ce0;
wire   [31:0] buff_y2_3_q0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_ap_start;
wire    grp_mvt_Pipeline_lprd_2_fu_959_ap_done;
wire    grp_mvt_Pipeline_lprd_2_fu_959_ap_idle;
wire    grp_mvt_Pipeline_lprd_2_fu_959_ap_ready;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_959_A_0_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_A_0_ce0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_959_A_1_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_A_1_ce0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_959_A_2_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_A_2_ce0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_959_A_3_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_A_3_ce0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_959_buff_A_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_buff_A_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_buff_A_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_959_buff_A_d0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_d0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_d0;
wire   [9:0] grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_address0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_ce0;
wire    grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_d0;
wire    grp_mvt_Pipeline_lp1_fu_976_ap_start;
wire    grp_mvt_Pipeline_lp1_fu_976_ap_done;
wire    grp_mvt_Pipeline_lp1_fu_976_ap_idle;
wire    grp_mvt_Pipeline_lp1_fu_976_ap_ready;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce0;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address1;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce1;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address2;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce2;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address3;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce3;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address4;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce4;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address5;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce5;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address6;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce6;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address7;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce7;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address8;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce8;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address9;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce9;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address10;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce10;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address11;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce11;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address12;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce12;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address13;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce13;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address14;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce14;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_address15;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_ce15;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce0;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address1;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce1;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address2;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce2;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address3;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce3;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address4;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce4;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address5;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce5;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address6;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce6;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address7;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce7;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address8;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce8;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address9;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce9;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address10;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce10;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address11;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce11;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address12;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce12;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address13;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce13;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address14;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce14;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address15;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce15;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce0;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address1;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce1;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address2;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce2;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address3;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce3;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address4;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce4;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address5;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce5;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address6;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce6;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address7;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce7;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address8;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce8;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address9;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce9;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address10;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce10;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address11;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce11;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address12;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce12;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address13;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce13;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address14;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce14;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address15;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce15;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce0;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address1;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce1;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address2;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce2;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address3;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce3;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address4;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce4;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address5;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce5;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address6;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce6;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address7;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce7;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address8;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce8;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address9;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce9;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address10;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce10;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address11;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce11;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address12;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce12;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address13;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce13;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address14;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce14;
wire   [9:0] grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address15;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce15;
wire   [3:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_address0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_ce0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_d0;
wire   [3:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_address1;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_ce1;
wire   [3:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_address0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_ce0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_d0;
wire   [3:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_address1;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_ce1;
wire   [3:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_address0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_ce0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_d0;
wire   [3:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_address1;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_ce1;
wire   [3:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_address0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_ce0;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_d0;
wire   [3:0] grp_mvt_Pipeline_lp1_fu_976_buff_x1_address1;
wire    grp_mvt_Pipeline_lp1_fu_976_buff_x1_ce1;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_din1;
wire   [1:0] grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_opcode;
wire    grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_ce;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_din1;
wire    grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_ce;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_done;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_idle;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_ready;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_ce0;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_ce1;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_ce0;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_ce1;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_ce0;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_ce1;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_ce0;
wire   [9:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_ce1;
wire   [3:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_ce0;
wire   [3:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_2_ce0;
wire   [3:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_1_ce0;
wire   [3:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_3_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_3_ce0;
wire   [3:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_d0;
wire   [3:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_d0;
wire   [3:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_d0;
wire   [3:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_d0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_din1;
wire   [1:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_opcode;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_ce;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_din1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_ce;
wire    grp_mvt_Pipeline_lpwr_fu_1076_ap_start;
wire    grp_mvt_Pipeline_lpwr_fu_1076_ap_done;
wire    grp_mvt_Pipeline_lpwr_fu_1076_ap_idle;
wire    grp_mvt_Pipeline_lpwr_fu_1076_ap_ready;
wire   [31:0] grp_mvt_Pipeline_lpwr_fu_1076_x1_out_din;
wire    grp_mvt_Pipeline_lpwr_fu_1076_x1_out_write;
wire   [31:0] grp_mvt_Pipeline_lpwr_fu_1076_x2_out_din;
wire    grp_mvt_Pipeline_lpwr_fu_1076_x2_out_write;
wire   [3:0] grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_ce0;
wire   [3:0] grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_address0;
wire    grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_ce0;
wire   [3:0] grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_1_ce0;
wire   [3:0] grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_1_ce0;
wire   [3:0] grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_2_address0;
wire    grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_2_ce0;
wire   [3:0] grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_2_address0;
wire    grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_2_ce0;
wire   [3:0] grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_3_address0;
wire    grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_3_ce0;
wire   [3:0] grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_3_address0;
wire    grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_3_ce0;
reg    grp_mvt_Pipeline_lprd_2_fu_959_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_mvt_Pipeline_lp1_fu_976_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start_reg;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
reg    grp_mvt_Pipeline_lpwr_fu_1076_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire   [63:0] zext_ln13_fu_1112_p1;
wire   [0:0] icmp_ln13_fu_1100_p2;
wire   [63:0] zext_ln6_fu_1135_p1;
reg   [6:0] i_fu_110;
reg    y2_read_local;
reg    x1_ce0_local;
reg    x2_ce0_local;
reg    y1_ce0_local;
reg    buff_y1_ce1_local;
reg   [3:0] buff_y1_address1_local;
reg    buff_y1_ce0_local;
reg   [3:0] buff_y1_address0_local;
reg    buff_y1_we0_local;
wire   [1:0] trunc_ln13_1_fu_1123_p1;
wire   [31:0] bitcast_ln16_fu_1171_p1;
reg    buff_y1_1_ce1_local;
reg   [3:0] buff_y1_1_address1_local;
reg    buff_y1_1_ce0_local;
reg   [3:0] buff_y1_1_address0_local;
reg    buff_y1_1_we0_local;
reg    buff_y1_2_ce1_local;
reg   [3:0] buff_y1_2_address1_local;
reg    buff_y1_2_ce0_local;
reg   [3:0] buff_y1_2_address0_local;
reg    buff_y1_2_we0_local;
reg    buff_y1_3_ce1_local;
reg   [3:0] buff_y1_3_address1_local;
reg    buff_y1_3_ce0_local;
reg   [3:0] buff_y1_3_address0_local;
reg    buff_y1_3_we0_local;
reg    buff_x1_2_we0_local;
wire   [31:0] bitcast_ln14_fu_1155_p1;
reg    buff_x1_2_ce0_local;
reg    buff_x2_2_we0_local;
wire   [31:0] bitcast_ln15_fu_1163_p1;
reg    buff_x2_2_ce0_local;
reg    buff_y2_2_we0_local;
wire   [31:0] bitcast_ln17_fu_1179_p1;
reg    buff_y2_2_ce0_local;
reg    buff_x1_1_we0_local;
reg    buff_x1_1_ce0_local;
reg    buff_x2_1_we0_local;
reg    buff_x2_1_ce0_local;
reg    buff_y2_1_we0_local;
reg    buff_y2_1_ce0_local;
reg    buff_x1_we0_local;
reg    buff_x1_ce0_local;
reg    buff_x2_we0_local;
reg    buff_x2_ce0_local;
reg    buff_y2_we0_local;
reg    buff_y2_ce0_local;
reg    buff_x1_3_we0_local;
reg    buff_x1_3_ce0_local;
reg    buff_x2_3_we0_local;
reg    buff_x2_3_ce0_local;
reg    buff_y2_3_we0_local;
reg    buff_y2_3_ce0_local;
wire   [3:0] lshr_ln6_fu_1126_p4;
wire   [31:0] grp_fu_1872_p2;
reg   [31:0] grp_fu_1872_p0;
reg   [31:0] grp_fu_1872_p1;
reg    grp_fu_1872_ce;
wire   [31:0] grp_fu_1876_p2;
reg   [31:0] grp_fu_1876_p0;
reg   [31:0] grp_fu_1876_p1;
reg    grp_fu_1876_ce;
reg   [16:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_mvt_Pipeline_lprd_2_fu_959_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lp1_fu_976_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lpwr_fu_1076_ap_start_reg = 1'b0;
#0 i_fu_110 = 7'd0;
end
mvt_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1),.address2(grp_mvt_Pipeline_lp1_fu_976_buff_A_address2),.ce2(buff_A_ce2),.q2(buff_A_q2),.address3(grp_mvt_Pipeline_lp1_fu_976_buff_A_address3),.ce3(buff_A_ce3),.q3(buff_A_q3),.address4(grp_mvt_Pipeline_lp1_fu_976_buff_A_address4),.ce4(buff_A_ce4),.q4(buff_A_q4),.address5(grp_mvt_Pipeline_lp1_fu_976_buff_A_address5),.ce5(buff_A_ce5),.q5(buff_A_q5),.address6(grp_mvt_Pipeline_lp1_fu_976_buff_A_address6),.ce6(buff_A_ce6),.q6(buff_A_q6),.address7(grp_mvt_Pipeline_lp1_fu_976_buff_A_address7),.ce7(buff_A_ce7),.q7(buff_A_q7),.address8(grp_mvt_Pipeline_lp1_fu_976_buff_A_address8),.ce8(buff_A_ce8),.q8(buff_A_q8),.address9(grp_mvt_Pipeline_lp1_fu_976_buff_A_address9),.ce9(buff_A_ce9),.q9(buff_A_q9),.address10(grp_mvt_Pipeline_lp1_fu_976_buff_A_address10),.ce10(buff_A_ce10),.q10(buff_A_q10),.address11(grp_mvt_Pipeline_lp1_fu_976_buff_A_address11),.ce11(buff_A_ce11),.q11(buff_A_q11),.address12(grp_mvt_Pipeline_lp1_fu_976_buff_A_address12),.ce12(buff_A_ce12),.q12(buff_A_q12),.address13(grp_mvt_Pipeline_lp1_fu_976_buff_A_address13),.ce13(buff_A_ce13),.q13(buff_A_q13),.address14(grp_mvt_Pipeline_lp1_fu_976_buff_A_address14),.ce14(buff_A_ce14),.q14(buff_A_q14),.address15(grp_mvt_Pipeline_lp1_fu_976_buff_A_address15),.ce15(buff_A_ce15),.q15(buff_A_q15));
mvt_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1),.address2(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address2),.ce2(buff_A_1_ce2),.q2(buff_A_1_q2),.address3(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address3),.ce3(buff_A_1_ce3),.q3(buff_A_1_q3),.address4(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address4),.ce4(buff_A_1_ce4),.q4(buff_A_1_q4),.address5(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address5),.ce5(buff_A_1_ce5),.q5(buff_A_1_q5),.address6(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address6),.ce6(buff_A_1_ce6),.q6(buff_A_1_q6),.address7(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address7),.ce7(buff_A_1_ce7),.q7(buff_A_1_q7),.address8(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address8),.ce8(buff_A_1_ce8),.q8(buff_A_1_q8),.address9(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address9),.ce9(buff_A_1_ce9),.q9(buff_A_1_q9),.address10(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address10),.ce10(buff_A_1_ce10),.q10(buff_A_1_q10),.address11(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address11),.ce11(buff_A_1_ce11),.q11(buff_A_1_q11),.address12(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address12),.ce12(buff_A_1_ce12),.q12(buff_A_1_q12),.address13(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address13),.ce13(buff_A_1_ce13),.q13(buff_A_1_q13),.address14(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address14),.ce14(buff_A_1_ce14),.q14(buff_A_1_q14),.address15(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address15),.ce15(buff_A_1_ce15),.q15(buff_A_1_q15));
mvt_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_d0),.q0(buff_A_2_q0),.address1(buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1),.address2(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address2),.ce2(buff_A_2_ce2),.q2(buff_A_2_q2),.address3(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address3),.ce3(buff_A_2_ce3),.q3(buff_A_2_q3),.address4(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address4),.ce4(buff_A_2_ce4),.q4(buff_A_2_q4),.address5(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address5),.ce5(buff_A_2_ce5),.q5(buff_A_2_q5),.address6(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address6),.ce6(buff_A_2_ce6),.q6(buff_A_2_q6),.address7(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address7),.ce7(buff_A_2_ce7),.q7(buff_A_2_q7),.address8(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address8),.ce8(buff_A_2_ce8),.q8(buff_A_2_q8),.address9(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address9),.ce9(buff_A_2_ce9),.q9(buff_A_2_q9),.address10(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address10),.ce10(buff_A_2_ce10),.q10(buff_A_2_q10),.address11(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address11),.ce11(buff_A_2_ce11),.q11(buff_A_2_q11),.address12(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address12),.ce12(buff_A_2_ce12),.q12(buff_A_2_q12),.address13(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address13),.ce13(buff_A_2_ce13),.q13(buff_A_2_q13),.address14(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address14),.ce14(buff_A_2_ce14),.q14(buff_A_2_q14),.address15(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address15),.ce15(buff_A_2_ce15),.q15(buff_A_2_q15));
mvt_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_d0),.q0(buff_A_3_q0),.address1(buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1),.address2(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address2),.ce2(buff_A_3_ce2),.q2(buff_A_3_q2),.address3(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address3),.ce3(buff_A_3_ce3),.q3(buff_A_3_q3),.address4(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address4),.ce4(buff_A_3_ce4),.q4(buff_A_3_q4),.address5(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address5),.ce5(buff_A_3_ce5),.q5(buff_A_3_q5),.address6(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address6),.ce6(buff_A_3_ce6),.q6(buff_A_3_q6),.address7(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address7),.ce7(buff_A_3_ce7),.q7(buff_A_3_q7),.address8(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address8),.ce8(buff_A_3_ce8),.q8(buff_A_3_q8),.address9(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address9),.ce9(buff_A_3_ce9),.q9(buff_A_3_q9),.address10(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address10),.ce10(buff_A_3_ce10),.q10(buff_A_3_q10),.address11(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address11),.ce11(buff_A_3_ce11),.q11(buff_A_3_q11),.address12(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address12),.ce12(buff_A_3_ce12),.q12(buff_A_3_q12),.address13(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address13),.ce13(buff_A_3_ce13),.q13(buff_A_3_q13),.address14(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address14),.ce14(buff_A_3_ce14),.q14(buff_A_3_q14),.address15(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address15),.ce15(buff_A_3_ce15),.q15(buff_A_3_q15));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_address0),.ce0(buff_x1_ce0),.we0(buff_x1_we0),.d0(buff_x1_d0),.q0(buff_x1_q0),.address1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_address1),.ce1(buff_x1_ce1),.q1(buff_x1_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_1_address0),.ce0(buff_x1_1_ce0),.we0(buff_x1_1_we0),.d0(buff_x1_1_d0),.q0(buff_x1_1_q0),.address1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_address1),.ce1(buff_x1_1_ce1),.q1(buff_x1_1_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_2_address0),.ce0(buff_x1_2_ce0),.we0(buff_x1_2_we0),.d0(buff_x1_2_d0),.q0(buff_x1_2_q0),.address1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_address1),.ce1(buff_x1_2_ce1),.q1(buff_x1_2_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_3_address0),.ce0(buff_x1_3_ce0),.we0(buff_x1_3_we0),.d0(buff_x1_3_d0),.q0(buff_x1_3_q0),.address1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_address1),.ce1(buff_x1_3_ce1),.q1(buff_x1_3_q1));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_address0),.ce0(buff_x2_ce0),.we0(buff_x2_we0),.d0(buff_x2_d0),.q0(buff_x2_q0));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_1_address0),.ce0(buff_x2_1_ce0),.we0(buff_x2_1_we0),.d0(buff_x2_1_d0),.q0(buff_x2_1_q0));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x2_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_2_address0),.ce0(buff_x2_2_ce0),.we0(buff_x2_2_we0),.d0(buff_x2_2_d0),.q0(buff_x2_2_q0));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x2_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_3_address0),.ce0(buff_x2_3_ce0),.we0(buff_x2_3_we0),.d0(buff_x2_3_d0),.q0(buff_x2_3_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_address0_local),.ce0(buff_y1_ce0_local),.we0(buff_y1_we0_local),.d0(bitcast_ln16_fu_1171_p1),.q0(buff_y1_q0),.address1(buff_y1_address1_local),.ce1(buff_y1_ce1_local),.q1(buff_y1_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_1_address0_local),.ce0(buff_y1_1_ce0_local),.we0(buff_y1_1_we0_local),.d0(bitcast_ln16_fu_1171_p1),.q0(buff_y1_1_q0),.address1(buff_y1_1_address1_local),.ce1(buff_y1_1_ce1_local),.q1(buff_y1_1_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_2_address0_local),.ce0(buff_y1_2_ce0_local),.we0(buff_y1_2_we0_local),.d0(bitcast_ln16_fu_1171_p1),.q0(buff_y1_2_q0),.address1(buff_y1_2_address1_local),.ce1(buff_y1_2_ce1_local),.q1(buff_y1_2_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_3_address0_local),.ce0(buff_y1_3_ce0_local),.we0(buff_y1_3_we0_local),.d0(bitcast_ln16_fu_1171_p1),.q0(buff_y1_3_q0),.address1(buff_y1_3_address1_local),.ce1(buff_y1_3_ce1_local),.q1(buff_y1_3_q1));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_address0),.ce0(buff_y2_ce0),.we0(buff_y2_we0_local),.d0(bitcast_ln17_fu_1179_p1),.q0(buff_y2_q0));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_1_address0),.ce0(buff_y2_1_ce0),.we0(buff_y2_1_we0_local),.d0(bitcast_ln17_fu_1179_p1),.q0(buff_y2_1_q0));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y2_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_2_address0),.ce0(buff_y2_2_ce0),.we0(buff_y2_2_we0_local),.d0(bitcast_ln17_fu_1179_p1),.q0(buff_y2_2_q0));
mvt_buff_x2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y2_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_3_address0),.ce0(buff_y2_3_ce0),.we0(buff_y2_3_we0_local),.d0(bitcast_ln17_fu_1179_p1),.q0(buff_y2_3_q0));
mvt_mvt_Pipeline_lprd_2 grp_mvt_Pipeline_lprd_2_fu_959(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lprd_2_fu_959_ap_start),.ap_done(grp_mvt_Pipeline_lprd_2_fu_959_ap_done),.ap_idle(grp_mvt_Pipeline_lprd_2_fu_959_ap_idle),.ap_ready(grp_mvt_Pipeline_lprd_2_fu_959_ap_ready),.i(trunc_ln13_reg_1264),.A_0_address0(grp_mvt_Pipeline_lprd_2_fu_959_A_0_address0),.A_0_ce0(grp_mvt_Pipeline_lprd_2_fu_959_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_mvt_Pipeline_lprd_2_fu_959_A_1_address0),.A_1_ce0(grp_mvt_Pipeline_lprd_2_fu_959_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_mvt_Pipeline_lprd_2_fu_959_A_2_address0),.A_2_ce0(grp_mvt_Pipeline_lprd_2_fu_959_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_mvt_Pipeline_lprd_2_fu_959_A_3_address0),.A_3_ce0(grp_mvt_Pipeline_lprd_2_fu_959_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_ce0),.buff_A_we0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_we0),.buff_A_d0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_d0),.buff_A_1_address0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_ce0),.buff_A_1_we0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_we0),.buff_A_1_d0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_d0),.buff_A_2_address0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_ce0),.buff_A_2_we0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_we0),.buff_A_2_d0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_d0),.buff_A_3_address0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_ce0),.buff_A_3_we0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_we0),.buff_A_3_d0(grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_d0));
mvt_mvt_Pipeline_lp1 grp_mvt_Pipeline_lp1_fu_976(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lp1_fu_976_ap_start),.ap_done(grp_mvt_Pipeline_lp1_fu_976_ap_done),.ap_idle(grp_mvt_Pipeline_lp1_fu_976_ap_idle),.ap_ready(grp_mvt_Pipeline_lp1_fu_976_ap_ready),.buff_A_address0(grp_mvt_Pipeline_lp1_fu_976_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_mvt_Pipeline_lp1_fu_976_buff_A_address1),.buff_A_ce1(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_address2(grp_mvt_Pipeline_lp1_fu_976_buff_A_address2),.buff_A_ce2(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce2),.buff_A_q2(buff_A_q2),.buff_A_address3(grp_mvt_Pipeline_lp1_fu_976_buff_A_address3),.buff_A_ce3(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce3),.buff_A_q3(buff_A_q3),.buff_A_address4(grp_mvt_Pipeline_lp1_fu_976_buff_A_address4),.buff_A_ce4(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce4),.buff_A_q4(buff_A_q4),.buff_A_address5(grp_mvt_Pipeline_lp1_fu_976_buff_A_address5),.buff_A_ce5(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce5),.buff_A_q5(buff_A_q5),.buff_A_address6(grp_mvt_Pipeline_lp1_fu_976_buff_A_address6),.buff_A_ce6(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce6),.buff_A_q6(buff_A_q6),.buff_A_address7(grp_mvt_Pipeline_lp1_fu_976_buff_A_address7),.buff_A_ce7(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce7),.buff_A_q7(buff_A_q7),.buff_A_address8(grp_mvt_Pipeline_lp1_fu_976_buff_A_address8),.buff_A_ce8(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce8),.buff_A_q8(buff_A_q8),.buff_A_address9(grp_mvt_Pipeline_lp1_fu_976_buff_A_address9),.buff_A_ce9(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce9),.buff_A_q9(buff_A_q9),.buff_A_address10(grp_mvt_Pipeline_lp1_fu_976_buff_A_address10),.buff_A_ce10(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce10),.buff_A_q10(buff_A_q10),.buff_A_address11(grp_mvt_Pipeline_lp1_fu_976_buff_A_address11),.buff_A_ce11(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce11),.buff_A_q11(buff_A_q11),.buff_A_address12(grp_mvt_Pipeline_lp1_fu_976_buff_A_address12),.buff_A_ce12(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce12),.buff_A_q12(buff_A_q12),.buff_A_address13(grp_mvt_Pipeline_lp1_fu_976_buff_A_address13),.buff_A_ce13(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce13),.buff_A_q13(buff_A_q13),.buff_A_address14(grp_mvt_Pipeline_lp1_fu_976_buff_A_address14),.buff_A_ce14(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce14),.buff_A_q14(buff_A_q14),.buff_A_address15(grp_mvt_Pipeline_lp1_fu_976_buff_A_address15),.buff_A_ce15(grp_mvt_Pipeline_lp1_fu_976_buff_A_ce15),.buff_A_q15(buff_A_q15),.buff_A_1_address0(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address1),.buff_A_1_ce1(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_1_address2(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address2),.buff_A_1_ce2(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce2),.buff_A_1_q2(buff_A_1_q2),.buff_A_1_address3(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address3),.buff_A_1_ce3(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce3),.buff_A_1_q3(buff_A_1_q3),.buff_A_1_address4(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address4),.buff_A_1_ce4(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce4),.buff_A_1_q4(buff_A_1_q4),.buff_A_1_address5(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address5),.buff_A_1_ce5(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce5),.buff_A_1_q5(buff_A_1_q5),.buff_A_1_address6(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address6),.buff_A_1_ce6(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce6),.buff_A_1_q6(buff_A_1_q6),.buff_A_1_address7(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address7),.buff_A_1_ce7(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce7),.buff_A_1_q7(buff_A_1_q7),.buff_A_1_address8(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address8),.buff_A_1_ce8(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce8),.buff_A_1_q8(buff_A_1_q8),.buff_A_1_address9(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address9),.buff_A_1_ce9(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce9),.buff_A_1_q9(buff_A_1_q9),.buff_A_1_address10(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address10),.buff_A_1_ce10(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce10),.buff_A_1_q10(buff_A_1_q10),.buff_A_1_address11(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address11),.buff_A_1_ce11(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce11),.buff_A_1_q11(buff_A_1_q11),.buff_A_1_address12(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address12),.buff_A_1_ce12(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce12),.buff_A_1_q12(buff_A_1_q12),.buff_A_1_address13(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address13),.buff_A_1_ce13(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce13),.buff_A_1_q13(buff_A_1_q13),.buff_A_1_address14(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address14),.buff_A_1_ce14(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce14),.buff_A_1_q14(buff_A_1_q14),.buff_A_1_address15(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address15),.buff_A_1_ce15(grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce15),.buff_A_1_q15(buff_A_1_q15),.buff_A_2_address0(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address1),.buff_A_2_ce1(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_2_address2(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address2),.buff_A_2_ce2(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce2),.buff_A_2_q2(buff_A_2_q2),.buff_A_2_address3(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address3),.buff_A_2_ce3(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce3),.buff_A_2_q3(buff_A_2_q3),.buff_A_2_address4(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address4),.buff_A_2_ce4(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce4),.buff_A_2_q4(buff_A_2_q4),.buff_A_2_address5(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address5),.buff_A_2_ce5(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce5),.buff_A_2_q5(buff_A_2_q5),.buff_A_2_address6(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address6),.buff_A_2_ce6(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce6),.buff_A_2_q6(buff_A_2_q6),.buff_A_2_address7(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address7),.buff_A_2_ce7(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce7),.buff_A_2_q7(buff_A_2_q7),.buff_A_2_address8(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address8),.buff_A_2_ce8(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce8),.buff_A_2_q8(buff_A_2_q8),.buff_A_2_address9(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address9),.buff_A_2_ce9(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce9),.buff_A_2_q9(buff_A_2_q9),.buff_A_2_address10(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address10),.buff_A_2_ce10(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce10),.buff_A_2_q10(buff_A_2_q10),.buff_A_2_address11(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address11),.buff_A_2_ce11(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce11),.buff_A_2_q11(buff_A_2_q11),.buff_A_2_address12(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address12),.buff_A_2_ce12(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce12),.buff_A_2_q12(buff_A_2_q12),.buff_A_2_address13(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address13),.buff_A_2_ce13(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce13),.buff_A_2_q13(buff_A_2_q13),.buff_A_2_address14(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address14),.buff_A_2_ce14(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce14),.buff_A_2_q14(buff_A_2_q14),.buff_A_2_address15(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address15),.buff_A_2_ce15(grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce15),.buff_A_2_q15(buff_A_2_q15),.buff_A_3_address0(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address1),.buff_A_3_ce1(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_A_3_address2(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address2),.buff_A_3_ce2(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce2),.buff_A_3_q2(buff_A_3_q2),.buff_A_3_address3(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address3),.buff_A_3_ce3(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce3),.buff_A_3_q3(buff_A_3_q3),.buff_A_3_address4(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address4),.buff_A_3_ce4(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce4),.buff_A_3_q4(buff_A_3_q4),.buff_A_3_address5(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address5),.buff_A_3_ce5(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce5),.buff_A_3_q5(buff_A_3_q5),.buff_A_3_address6(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address6),.buff_A_3_ce6(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce6),.buff_A_3_q6(buff_A_3_q6),.buff_A_3_address7(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address7),.buff_A_3_ce7(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce7),.buff_A_3_q7(buff_A_3_q7),.buff_A_3_address8(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address8),.buff_A_3_ce8(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce8),.buff_A_3_q8(buff_A_3_q8),.buff_A_3_address9(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address9),.buff_A_3_ce9(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce9),.buff_A_3_q9(buff_A_3_q9),.buff_A_3_address10(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address10),.buff_A_3_ce10(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce10),.buff_A_3_q10(buff_A_3_q10),.buff_A_3_address11(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address11),.buff_A_3_ce11(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce11),.buff_A_3_q11(buff_A_3_q11),.buff_A_3_address12(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address12),.buff_A_3_ce12(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce12),.buff_A_3_q12(buff_A_3_q12),.buff_A_3_address13(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address13),.buff_A_3_ce13(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce13),.buff_A_3_q13(buff_A_3_q13),.buff_A_3_address14(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address14),.buff_A_3_ce14(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce14),.buff_A_3_q14(buff_A_3_q14),.buff_A_3_address15(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address15),.buff_A_3_ce15(grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce15),.buff_A_3_q15(buff_A_3_q15),.buff_x1_3_address0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_address0),.buff_x1_3_ce0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_ce0),.buff_x1_3_we0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_we0),.buff_x1_3_d0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_d0),.buff_x1_3_address1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_address1),.buff_x1_3_ce1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_ce1),.buff_x1_3_q1(buff_x1_3_q1),.buff_x1_2_address0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_address0),.buff_x1_2_ce0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_ce0),.buff_x1_2_we0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_we0),.buff_x1_2_d0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_d0),.buff_x1_2_address1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_address1),.buff_x1_2_ce1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_ce1),.buff_x1_2_q1(buff_x1_2_q1),.buff_x1_1_address0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_address0),.buff_x1_1_ce0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_ce0),.buff_x1_1_we0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_we0),.buff_x1_1_d0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_d0),.buff_x1_1_address1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_address1),.buff_x1_1_ce1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_ce1),.buff_x1_1_q1(buff_x1_1_q1),.buff_x1_address0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_ce0),.buff_x1_we0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_we0),.buff_x1_d0(grp_mvt_Pipeline_lp1_fu_976_buff_x1_d0),.buff_x1_address1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_address1),.buff_x1_ce1(grp_mvt_Pipeline_lp1_fu_976_buff_x1_ce1),.buff_x1_q1(buff_x1_q1),.buff_y1_load(buff_y1_load_reg_1272),.buff_y1_1_load(buff_y1_1_load_reg_1277),.buff_y1_2_load(buff_y1_2_load_reg_1282),.buff_y1_3_load(buff_y1_3_load_reg_1287),.buff_y1_load_1(buff_y1_load_1_reg_1292),.buff_y1_1_load_1(buff_y1_1_load_1_reg_1297),.buff_y1_2_load_1(buff_y1_2_load_1_reg_1302),.buff_y1_3_load_1(buff_y1_3_load_1_reg_1307),.buff_y1_load_2(buff_y1_load_2_reg_1352),.buff_y1_1_load_2(buff_y1_1_load_2_reg_1357),.buff_y1_2_load_2(buff_y1_2_load_2_reg_1362),.buff_y1_3_load_2(buff_y1_3_load_2_reg_1367),.buff_y1_load_3(buff_y1_load_3_reg_1372),.buff_y1_1_load_3(buff_y1_1_load_3_reg_1377),.buff_y1_2_load_3(buff_y1_2_load_3_reg_1382),.buff_y1_3_load_3(buff_y1_3_load_3_reg_1387),.buff_y1_load_4(buff_y1_load_4_reg_1432),.buff_y1_1_load_4(buff_y1_1_load_4_reg_1437),.buff_y1_2_load_4(buff_y1_2_load_4_reg_1442),.buff_y1_3_load_4(buff_y1_3_load_4_reg_1447),.buff_y1_load_5(buff_y1_load_5_reg_1452),.buff_y1_1_load_5(buff_y1_1_load_5_reg_1457),.buff_y1_2_load_5(buff_y1_2_load_5_reg_1462),.buff_y1_3_load_5(buff_y1_3_load_5_reg_1467),.buff_y1_load_6(buff_y1_load_6_reg_1512),.buff_y1_1_load_6(buff_y1_1_load_6_reg_1517),.buff_y1_2_load_6(buff_y1_2_load_6_reg_1522),.buff_y1_3_load_6(buff_y1_3_load_6_reg_1527),.buff_y1_load_7(buff_y1_load_7_reg_1532),.buff_y1_1_load_7(buff_y1_1_load_7_reg_1537),.buff_y1_2_load_7(buff_y1_2_load_7_reg_1542),.buff_y1_3_load_7(buff_y1_3_load_7_reg_1547),.buff_y1_load_8(buff_y1_load_8_reg_1592),.buff_y1_1_load_8(buff_y1_1_load_8_reg_1597),.buff_y1_2_load_8(buff_y1_2_load_8_reg_1602),.buff_y1_3_load_8(buff_y1_3_load_8_reg_1607),.buff_y1_load_9(buff_y1_load_9_reg_1612),.buff_y1_1_load_9(buff_y1_1_load_9_reg_1617),.buff_y1_2_load_9(buff_y1_2_load_9_reg_1622),.buff_y1_3_load_9(buff_y1_3_load_9_reg_1627),.buff_y1_load_10(buff_y1_load_10_reg_1672),.buff_y1_1_load_10(buff_y1_1_load_10_reg_1677),.buff_y1_2_load_10(buff_y1_2_load_10_reg_1682),.buff_y1_3_load_10(buff_y1_3_load_10_reg_1687),.buff_y1_load_11(buff_y1_load_11_reg_1692),.buff_y1_1_load_11(buff_y1_1_load_11_reg_1697),.buff_y1_2_load_11(buff_y1_2_load_11_reg_1702),.buff_y1_3_load_11(buff_y1_3_load_11_reg_1707),.buff_y1_load_12(buff_y1_load_12_reg_1752),.buff_y1_1_load_12(buff_y1_1_load_12_reg_1757),.buff_y1_2_load_12(buff_y1_2_load_12_reg_1762),.buff_y1_3_load_12(buff_y1_3_load_12_reg_1767),.buff_y1_load_13(buff_y1_load_13_reg_1772),.buff_y1_1_load_13(buff_y1_1_load_13_reg_1777),.buff_y1_2_load_13(buff_y1_2_load_13_reg_1782),.buff_y1_3_load_13(buff_y1_3_load_13_reg_1787),.buff_y1_load_14(buff_y1_load_14_reg_1832),.buff_y1_1_load_14(buff_y1_1_load_14_reg_1837),.buff_y1_2_load_14(buff_y1_2_load_14_reg_1842),.buff_y1_3_load_14(buff_y1_3_load_14_reg_1847),.buff_y1_load_15(buff_y1_load_15_reg_1852),.buff_y1_1_load_15(buff_y1_1_load_15_reg_1857),.buff_y1_2_load_15(buff_y1_2_load_15_reg_1862),.buff_y1_3_load_15(buff_y1_3_load_15_reg_1867),.grp_fu_1872_p_din0(grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_din0),.grp_fu_1872_p_din1(grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_din1),.grp_fu_1872_p_opcode(grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_opcode),.grp_fu_1872_p_dout0(grp_fu_1872_p2),.grp_fu_1872_p_ce(grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_ce),.grp_fu_1876_p_din0(grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_din0),.grp_fu_1876_p_din1(grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_din1),.grp_fu_1876_p_dout0(grp_fu_1876_p2),.grp_fu_1876_p_ce(grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_ce));
mvt_mvt_Pipeline_lp3_lp4 grp_mvt_Pipeline_lp3_lp4_fu_1060(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start),.ap_done(grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_done),.ap_idle(grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_idle),.ap_ready(grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_ready),.buff_A_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_address1),.buff_A_ce1(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_address1),.buff_A_1_ce1(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_address0),.buff_A_2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_address1),.buff_A_2_ce1(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_address0),.buff_A_3_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_address1),.buff_A_3_ce1(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_y2_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_address0),.buff_y2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_ce0),.buff_y2_q0(buff_y2_q0),.buff_y2_2_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_2_address0),.buff_y2_2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_2_ce0),.buff_y2_2_q0(buff_y2_2_q0),.buff_y2_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_1_address0),.buff_y2_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_1_ce0),.buff_y2_1_q0(buff_y2_1_q0),.buff_y2_3_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_3_address0),.buff_y2_3_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_3_ce0),.buff_y2_3_q0(buff_y2_3_q0),.buff_x2_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_ce0),.buff_x2_we0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_we0),.buff_x2_d0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_d0),.buff_x2_q0(buff_x2_q0),.buff_x2_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_address0),.buff_x2_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_ce0),.buff_x2_1_we0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_we0),.buff_x2_1_d0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_d0),.buff_x2_1_q0(buff_x2_1_q0),.buff_x2_2_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_address0),.buff_x2_2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_ce0),.buff_x2_2_we0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_we0),.buff_x2_2_d0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_d0),.buff_x2_2_q0(buff_x2_2_q0),.buff_x2_3_address0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_address0),.buff_x2_3_ce0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_ce0),.buff_x2_3_we0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_we0),.buff_x2_3_d0(grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_d0),.buff_x2_3_q0(buff_x2_3_q0),.grp_fu_1872_p_din0(grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_din0),.grp_fu_1872_p_din1(grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_din1),.grp_fu_1872_p_opcode(grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_opcode),.grp_fu_1872_p_dout0(grp_fu_1872_p2),.grp_fu_1872_p_ce(grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_ce),.grp_fu_1876_p_din0(grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_din0),.grp_fu_1876_p_din1(grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_din1),.grp_fu_1876_p_dout0(grp_fu_1876_p2),.grp_fu_1876_p_ce(grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_ce));
mvt_mvt_Pipeline_lpwr grp_mvt_Pipeline_lpwr_fu_1076(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lpwr_fu_1076_ap_start),.ap_done(grp_mvt_Pipeline_lpwr_fu_1076_ap_done),.ap_idle(grp_mvt_Pipeline_lpwr_fu_1076_ap_idle),.ap_ready(grp_mvt_Pipeline_lpwr_fu_1076_ap_ready),.x1_out_din(grp_mvt_Pipeline_lpwr_fu_1076_x1_out_din),.x1_out_full_n(x1_out_full_n),.x1_out_write(grp_mvt_Pipeline_lpwr_fu_1076_x1_out_write),.x2_out_din(grp_mvt_Pipeline_lpwr_fu_1076_x2_out_din),.x2_out_full_n(x2_out_full_n),.x2_out_write(grp_mvt_Pipeline_lpwr_fu_1076_x2_out_write),.buff_x1_address0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_ce0),.buff_x1_q0(buff_x1_q0),.buff_x2_address0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_ce0),.buff_x2_q0(buff_x2_q0),.buff_x1_1_address0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_1_address0),.buff_x1_1_ce0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_1_ce0),.buff_x1_1_q0(buff_x1_1_q0),.buff_x2_1_address0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_1_address0),.buff_x2_1_ce0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_1_ce0),.buff_x2_1_q0(buff_x2_1_q0),.buff_x1_2_address0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_2_address0),.buff_x1_2_ce0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_2_ce0),.buff_x1_2_q0(buff_x1_2_q0),.buff_x2_2_address0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_2_address0),.buff_x2_2_ce0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_2_ce0),.buff_x2_2_q0(buff_x2_2_q0),.buff_x1_3_address0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_3_address0),.buff_x1_3_ce0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_3_ce0),.buff_x1_3_q0(buff_x1_3_q0),.buff_x2_3_address0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_3_address0),.buff_x2_3_ce0(grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_3_ce0),.buff_x2_3_q0(buff_x2_3_q0));
mvt_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U241(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1872_p0),.din1(grp_fu_1872_p1),.ce(grp_fu_1872_ce),.dout(grp_fu_1872_p2));
mvt_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U242(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1876_p0),.din1(grp_fu_1876_p1),.ce(grp_fu_1876_ce),.dout(grp_fu_1876_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lp1_fu_976_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_mvt_Pipeline_lp1_fu_976_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lp1_fu_976_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lp1_fu_976_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lprd_2_fu_959_ap_start_reg <= 1'b0;
    end else begin
        if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_mvt_Pipeline_lprd_2_fu_959_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lprd_2_fu_959_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lprd_2_fu_959_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lpwr_fu_1076_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_mvt_Pipeline_lpwr_fu_1076_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lpwr_fu_1076_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lpwr_fu_1076_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_110 <= 7'd0;
    end else if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_fu_110 <= add_ln13_reg_1204;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_1204 <= add_ln13_fu_1106_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_1_load_10_reg_1677 <= buff_y1_1_q0;
        buff_y1_1_load_11_reg_1697 <= buff_y1_1_q1;
        buff_y1_2_load_10_reg_1682 <= buff_y1_2_q0;
        buff_y1_2_load_11_reg_1702 <= buff_y1_2_q1;
        buff_y1_3_load_10_reg_1687 <= buff_y1_3_q0;
        buff_y1_3_load_11_reg_1707 <= buff_y1_3_q1;
        buff_y1_load_10_reg_1672 <= buff_y1_q0;
        buff_y1_load_11_reg_1692 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_1_load_12_reg_1757 <= buff_y1_1_q0;
        buff_y1_1_load_13_reg_1777 <= buff_y1_1_q1;
        buff_y1_2_load_12_reg_1762 <= buff_y1_2_q0;
        buff_y1_2_load_13_reg_1782 <= buff_y1_2_q1;
        buff_y1_3_load_12_reg_1767 <= buff_y1_3_q0;
        buff_y1_3_load_13_reg_1787 <= buff_y1_3_q1;
        buff_y1_load_12_reg_1752 <= buff_y1_q0;
        buff_y1_load_13_reg_1772 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_y1_1_load_14_reg_1837 <= buff_y1_1_q0;
        buff_y1_1_load_15_reg_1857 <= buff_y1_1_q1;
        buff_y1_2_load_14_reg_1842 <= buff_y1_2_q0;
        buff_y1_2_load_15_reg_1862 <= buff_y1_2_q1;
        buff_y1_3_load_14_reg_1847 <= buff_y1_3_q0;
        buff_y1_3_load_15_reg_1867 <= buff_y1_3_q1;
        buff_y1_load_14_reg_1832 <= buff_y1_q0;
        buff_y1_load_15_reg_1852 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_1_load_1_reg_1297 <= buff_y1_1_q0;
        buff_y1_1_load_reg_1277 <= buff_y1_1_q1;
        buff_y1_2_load_1_reg_1302 <= buff_y1_2_q0;
        buff_y1_2_load_reg_1282 <= buff_y1_2_q1;
        buff_y1_3_load_1_reg_1307 <= buff_y1_3_q0;
        buff_y1_3_load_reg_1287 <= buff_y1_3_q1;
        buff_y1_load_1_reg_1292 <= buff_y1_q0;
        buff_y1_load_reg_1272 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_1_load_2_reg_1357 <= buff_y1_1_q0;
        buff_y1_1_load_3_reg_1377 <= buff_y1_1_q1;
        buff_y1_2_load_2_reg_1362 <= buff_y1_2_q0;
        buff_y1_2_load_3_reg_1382 <= buff_y1_2_q1;
        buff_y1_3_load_2_reg_1367 <= buff_y1_3_q0;
        buff_y1_3_load_3_reg_1387 <= buff_y1_3_q1;
        buff_y1_load_2_reg_1352 <= buff_y1_q0;
        buff_y1_load_3_reg_1372 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_1_load_4_reg_1437 <= buff_y1_1_q0;
        buff_y1_1_load_5_reg_1457 <= buff_y1_1_q1;
        buff_y1_2_load_4_reg_1442 <= buff_y1_2_q0;
        buff_y1_2_load_5_reg_1462 <= buff_y1_2_q1;
        buff_y1_3_load_4_reg_1447 <= buff_y1_3_q0;
        buff_y1_3_load_5_reg_1467 <= buff_y1_3_q1;
        buff_y1_load_4_reg_1432 <= buff_y1_q0;
        buff_y1_load_5_reg_1452 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_1_load_6_reg_1517 <= buff_y1_1_q0;
        buff_y1_1_load_7_reg_1537 <= buff_y1_1_q1;
        buff_y1_2_load_6_reg_1522 <= buff_y1_2_q0;
        buff_y1_2_load_7_reg_1542 <= buff_y1_2_q1;
        buff_y1_3_load_6_reg_1527 <= buff_y1_3_q0;
        buff_y1_3_load_7_reg_1547 <= buff_y1_3_q1;
        buff_y1_load_6_reg_1512 <= buff_y1_q0;
        buff_y1_load_7_reg_1532 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_1_load_8_reg_1597 <= buff_y1_1_q0;
        buff_y1_1_load_9_reg_1617 <= buff_y1_1_q1;
        buff_y1_2_load_8_reg_1602 <= buff_y1_2_q0;
        buff_y1_2_load_9_reg_1622 <= buff_y1_2_q1;
        buff_y1_3_load_8_reg_1607 <= buff_y1_3_q0;
        buff_y1_3_load_9_reg_1627 <= buff_y1_3_q1;
        buff_y1_load_8_reg_1592 <= buff_y1_q0;
        buff_y1_load_9_reg_1612 <= buff_y1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_1264 <= trunc_ln13_fu_1119_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lp1_fu_976_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lpwr_fu_1076_ap_done == 1'b0)) begin
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
always @ (*) begin
    if ((y2_empty_n == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_mvt_Pipeline_lprd_2_fu_959_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_mvt_Pipeline_lpwr_fu_1076_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_mvt_Pipeline_lpwr_fu_1076_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_address1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_address1 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_1_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce1 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce10 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce10;
    end else begin
        buff_A_1_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce11 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce11;
    end else begin
        buff_A_1_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce12 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce12;
    end else begin
        buff_A_1_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce13 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce13;
    end else begin
        buff_A_1_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce14 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce14;
    end else begin
        buff_A_1_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce15 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce15;
    end else begin
        buff_A_1_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce2 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce2;
    end else begin
        buff_A_1_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce3 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce3;
    end else begin
        buff_A_1_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce4 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce4;
    end else begin
        buff_A_1_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce5 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce5;
    end else begin
        buff_A_1_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce6 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce6;
    end else begin
        buff_A_1_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce7 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce7;
    end else begin
        buff_A_1_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce8 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce8;
    end else begin
        buff_A_1_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_1_ce9 = grp_mvt_Pipeline_lp1_fu_976_buff_A_1_ce9;
    end else begin
        buff_A_1_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_address1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_address1 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_address1;
    end else begin
        buff_A_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_2_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce1 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce10 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce10;
    end else begin
        buff_A_2_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce11 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce11;
    end else begin
        buff_A_2_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce12 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce12;
    end else begin
        buff_A_2_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce13 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce13;
    end else begin
        buff_A_2_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce14 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce14;
    end else begin
        buff_A_2_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce15 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce15;
    end else begin
        buff_A_2_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce2 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce2;
    end else begin
        buff_A_2_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce3 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce3;
    end else begin
        buff_A_2_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce4 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce4;
    end else begin
        buff_A_2_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce5 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce5;
    end else begin
        buff_A_2_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce6 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce6;
    end else begin
        buff_A_2_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce7 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce7;
    end else begin
        buff_A_2_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce8 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce8;
    end else begin
        buff_A_2_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_2_ce9 = grp_mvt_Pipeline_lp1_fu_976_buff_A_2_ce9;
    end else begin
        buff_A_2_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_address1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_address1 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_address1;
    end else begin
        buff_A_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_3_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce1 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce10 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce10;
    end else begin
        buff_A_3_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce11 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce11;
    end else begin
        buff_A_3_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce12 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce12;
    end else begin
        buff_A_3_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce13 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce13;
    end else begin
        buff_A_3_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce14 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce14;
    end else begin
        buff_A_3_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce15 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce15;
    end else begin
        buff_A_3_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce2 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce2;
    end else begin
        buff_A_3_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce3 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce3;
    end else begin
        buff_A_3_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce4 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce4;
    end else begin
        buff_A_3_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce5 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce5;
    end else begin
        buff_A_3_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce6 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce6;
    end else begin
        buff_A_3_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce7 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce7;
    end else begin
        buff_A_3_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce8 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce8;
    end else begin
        buff_A_3_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_3_ce9 = grp_mvt_Pipeline_lp1_fu_976_buff_A_3_ce9;
    end else begin
        buff_A_3_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address0 = grp_mvt_Pipeline_lp1_fu_976_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_address1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_address1 = grp_mvt_Pipeline_lp1_fu_976_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_A_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce1 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce10 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce10;
    end else begin
        buff_A_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce11 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce11;
    end else begin
        buff_A_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce12 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce12;
    end else begin
        buff_A_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce13 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce13;
    end else begin
        buff_A_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce14 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce14;
    end else begin
        buff_A_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce15 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce15;
    end else begin
        buff_A_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce2 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce2;
    end else begin
        buff_A_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce3 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce3;
    end else begin
        buff_A_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce4 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce4;
    end else begin
        buff_A_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce5 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce5;
    end else begin
        buff_A_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce6 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce6;
    end else begin
        buff_A_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce7 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce7;
    end else begin
        buff_A_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce8 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce8;
    end else begin
        buff_A_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_A_ce9 = grp_mvt_Pipeline_lp1_fu_976_buff_A_ce9;
    end else begin
        buff_A_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_mvt_Pipeline_lprd_2_fu_959_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x1_1_address0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_1_address0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_address0;
    end else begin
        buff_x1_1_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x1_1_ce0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_1_ce0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_1_ce1 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_ce1;
    end else begin
        buff_x1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_1_d0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_d0;
    end else begin
        buff_x1_1_d0 = bitcast_ln14_fu_1155_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_1_we0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_1_we0;
    end else begin
        buff_x1_1_we0 = buff_x1_1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd1))) begin
        buff_x1_1_we0_local = 1'b1;
    end else begin
        buff_x1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x1_2_address0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_2_address0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_address0;
    end else begin
        buff_x1_2_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x1_2_ce0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_2_ce0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_ce0;
    end else begin
        buff_x1_2_ce0 = buff_x1_2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_2_ce0_local = 1'b1;
    end else begin
        buff_x1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_2_ce1 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_ce1;
    end else begin
        buff_x1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_2_d0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_d0;
    end else begin
        buff_x1_2_d0 = bitcast_ln14_fu_1155_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_2_we0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_2_we0;
    end else begin
        buff_x1_2_we0 = buff_x1_2_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd2))) begin
        buff_x1_2_we0_local = 1'b1;
    end else begin
        buff_x1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x1_3_address0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_3_address0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_address0;
    end else begin
        buff_x1_3_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x1_3_ce0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_3_ce0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_ce0;
    end else begin
        buff_x1_3_ce0 = buff_x1_3_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x1_3_ce0_local = 1'b1;
    end else begin
        buff_x1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_3_ce1 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_ce1;
    end else begin
        buff_x1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_3_d0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_d0;
    end else begin
        buff_x1_3_d0 = bitcast_ln14_fu_1155_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_3_we0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_3_we0;
    end else begin
        buff_x1_3_we0 = buff_x1_3_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd3))) begin
        buff_x1_3_we0_local = 1'b1;
    end else begin
        buff_x1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_address0;
    end else begin
        buff_x1_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_ce1 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_ce1;
    end else begin
        buff_x1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_d0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_d0;
    end else begin
        buff_x1_d0 = bitcast_ln14_fu_1155_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        buff_x1_we0 = grp_mvt_Pipeline_lp1_fu_976_buff_x1_we0;
    end else begin
        buff_x1_we0 = buff_x1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd0))) begin
        buff_x1_we0_local = 1'b1;
    end else begin
        buff_x1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x2_1_address0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_address0;
    end else begin
        buff_x2_1_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x2_1_ce0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_1_d0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_d0;
    end else begin
        buff_x2_1_d0 = bitcast_ln15_fu_1163_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_1_we0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_1_we0;
    end else begin
        buff_x2_1_we0 = buff_x2_1_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd1))) begin
        buff_x2_1_we0_local = 1'b1;
    end else begin
        buff_x2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x2_2_address0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_address0;
    end else begin
        buff_x2_2_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x2_2_ce0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_ce0;
    end else begin
        buff_x2_2_ce0 = buff_x2_2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_2_ce0_local = 1'b1;
    end else begin
        buff_x2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_2_d0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_d0;
    end else begin
        buff_x2_2_d0 = bitcast_ln15_fu_1163_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_2_we0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_2_we0;
    end else begin
        buff_x2_2_we0 = buff_x2_2_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd2))) begin
        buff_x2_2_we0_local = 1'b1;
    end else begin
        buff_x2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x2_3_address0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_3_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_address0;
    end else begin
        buff_x2_3_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x2_3_ce0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_3_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_ce0;
    end else begin
        buff_x2_3_ce0 = buff_x2_3_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x2_3_ce0_local = 1'b1;
    end else begin
        buff_x2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_3_d0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_d0;
    end else begin
        buff_x2_3_d0 = bitcast_ln15_fu_1163_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_3_we0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_3_we0;
    end else begin
        buff_x2_3_we0 = buff_x2_3_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd3))) begin
        buff_x2_3_we0_local = 1'b1;
    end else begin
        buff_x2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_address0;
    end else begin
        buff_x2_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lpwr_fu_1076_buff_x2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_d0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_d0;
    end else begin
        buff_x2_d0 = bitcast_ln15_fu_1163_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_x2_we0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_x2_we0;
    end else begin
        buff_x2_we0 = buff_x2_we0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd0))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
        buff_y1_1_address0_local = zext_ln6_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_1_address0_local = 64'd1;
    end else begin
        buff_y1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y1_1_ce0_local = 1'b1;
    end else begin
        buff_y1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_y1_1_ce1_local = 1'b1;
    end else begin
        buff_y1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd1))) begin
        buff_y1_1_we0_local = 1'b1;
    end else begin
        buff_y1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y1_2_address0_local = zext_ln6_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_2_address0_local = 64'd1;
    end else begin
        buff_y1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_2_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_2_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_2_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_2_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_2_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_2_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_2_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_2_address1_local = 64'd0;
    end else begin
        buff_y1_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y1_2_ce0_local = 1'b1;
    end else begin
        buff_y1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_y1_2_ce1_local = 1'b1;
    end else begin
        buff_y1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd2))) begin
        buff_y1_2_we0_local = 1'b1;
    end else begin
        buff_y1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y1_3_address0_local = zext_ln6_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_3_address0_local = 64'd1;
    end else begin
        buff_y1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y1_3_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_y1_3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y1_3_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y1_3_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y1_3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y1_3_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_y1_3_address1_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_3_address1_local = 64'd0;
    end else begin
        buff_y1_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y1_3_ce0_local = 1'b1;
    end else begin
        buff_y1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_y1_3_ce1_local = 1'b1;
    end else begin
        buff_y1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd3))) begin
        buff_y1_3_we0_local = 1'b1;
    end else begin
        buff_y1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
        buff_y1_address0_local = zext_ln6_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_address0_local = 64'd1;
    end else begin
        buff_y1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        buff_y1_ce0_local = 1'b1;
    end else begin
        buff_y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2))) begin
        buff_y1_ce1_local = 1'b1;
    end else begin
        buff_y1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd0))) begin
        buff_y1_we0_local = 1'b1;
    end else begin
        buff_y1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y2_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_1_address0;
    end else begin
        buff_y2_1_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y2_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_1_ce0;
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
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd1))) begin
        buff_y2_1_we0_local = 1'b1;
    end else begin
        buff_y2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y2_2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_2_address0;
    end else begin
        buff_y2_2_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y2_2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_2_ce0;
    end else begin
        buff_y2_2_ce0 = buff_y2_2_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_2_ce0_local = 1'b1;
    end else begin
        buff_y2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd2))) begin
        buff_y2_2_we0_local = 1'b1;
    end else begin
        buff_y2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y2_3_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_3_address0;
    end else begin
        buff_y2_3_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y2_3_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_3_ce0;
    end else begin
        buff_y2_3_ce0 = buff_y2_3_ce0_local;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y2_3_ce0_local = 1'b1;
    end else begin
        buff_y2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd3))) begin
        buff_y2_3_we0_local = 1'b1;
    end else begin
        buff_y2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_address0;
    end else begin
        buff_y2_address0 = zext_ln6_fu_1135_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        buff_y2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_buff_y2_ce0;
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
    if (((y2_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state3) & (trunc_ln13_1_fu_1123_p1 == 2'd0))) begin
        buff_y2_we0_local = 1'b1;
    end else begin
        buff_y2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1872_ce = grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1872_ce = grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_ce;
    end else begin
        grp_fu_1872_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1872_p0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1872_p0 = grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_din0;
    end else begin
        grp_fu_1872_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1872_p1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1872_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1872_p1 = grp_mvt_Pipeline_lp1_fu_976_grp_fu_1872_p_din1;
    end else begin
        grp_fu_1872_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1876_ce = grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1876_ce = grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_ce;
    end else begin
        grp_fu_1876_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1876_p0 = grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1876_p0 = grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_din0;
    end else begin
        grp_fu_1876_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_1876_p1 = grp_mvt_Pipeline_lp3_lp4_fu_1060_grp_fu_1876_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1876_p1 = grp_mvt_Pipeline_lp1_fu_976_grp_fu_1876_p_din1;
    end else begin
        grp_fu_1876_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state17)) begin
        x1_out_write = grp_mvt_Pipeline_lpwr_fu_1076_x1_out_write;
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
    if ((1'b1 == ap_CS_fsm_state17)) begin
        x2_out_write = grp_mvt_Pipeline_lpwr_fu_1076_x2_out_write;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_1100_p2 == 1'd1))) begin
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
            if (((grp_mvt_Pipeline_lprd_2_fu_959_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((grp_mvt_Pipeline_lp1_fu_976_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (grp_mvt_Pipeline_lpwr_fu_1076_ap_done == 1'b1))) begin
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
assign A_0_address0 = grp_mvt_Pipeline_lprd_2_fu_959_A_0_address0;
assign A_0_ce0 = grp_mvt_Pipeline_lprd_2_fu_959_A_0_ce0;
assign A_1_address0 = grp_mvt_Pipeline_lprd_2_fu_959_A_1_address0;
assign A_1_ce0 = grp_mvt_Pipeline_lprd_2_fu_959_A_1_ce0;
assign A_2_address0 = grp_mvt_Pipeline_lprd_2_fu_959_A_2_address0;
assign A_2_ce0 = grp_mvt_Pipeline_lprd_2_fu_959_A_2_ce0;
assign A_3_address0 = grp_mvt_Pipeline_lprd_2_fu_959_A_3_address0;
assign A_3_ce0 = grp_mvt_Pipeline_lprd_2_fu_959_A_3_ce0;
assign add_ln13_fu_1106_p2 = (i_fu_110 + 7'd1);
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
assign bitcast_ln14_fu_1155_p1 = x1_q0;
assign bitcast_ln15_fu_1163_p1 = x2_q0;
assign bitcast_ln16_fu_1171_p1 = y1_q0;
assign bitcast_ln17_fu_1179_p1 = y2_dout;
assign grp_mvt_Pipeline_lp1_fu_976_ap_start = grp_mvt_Pipeline_lp1_fu_976_ap_start_reg;
assign grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start = grp_mvt_Pipeline_lp3_lp4_fu_1060_ap_start_reg;
assign grp_mvt_Pipeline_lprd_2_fu_959_ap_start = grp_mvt_Pipeline_lprd_2_fu_959_ap_start_reg;
assign grp_mvt_Pipeline_lpwr_fu_1076_ap_start = grp_mvt_Pipeline_lpwr_fu_1076_ap_start_reg;
assign icmp_ln13_fu_1100_p2 = ((i_fu_110 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_1126_p4 = {{i_fu_110[5:2]}};
assign trunc_ln13_1_fu_1123_p1 = i_fu_110[1:0];
assign trunc_ln13_fu_1119_p1 = i_fu_110[5:0];
assign x1_address0 = zext_ln13_fu_1112_p1;
assign x1_ce0 = x1_ce0_local;
assign x1_out_din = grp_mvt_Pipeline_lpwr_fu_1076_x1_out_din;
assign x2_address0 = zext_ln13_fu_1112_p1;
assign x2_ce0 = x2_ce0_local;
assign x2_out_din = grp_mvt_Pipeline_lpwr_fu_1076_x2_out_din;
assign y1_address0 = zext_ln13_fu_1112_p1;
assign y1_ce0 = y1_ce0_local;
assign y2_read = y2_read_local;
assign zext_ln13_fu_1112_p1 = i_fu_110;
assign zext_ln6_fu_1135_p1 = lshr_ln6_fu_1126_p4;
endmodule 