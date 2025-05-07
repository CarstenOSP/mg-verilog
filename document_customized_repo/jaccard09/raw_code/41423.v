module stencil3d (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_address0,C_ce0,C_q0,C_address1,C_ce1,C_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_1_address1,sol_1_ce1,sol_1_we1,sol_1_d1,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_2_address1,sol_2_ce1,sol_2_we1,sol_2_d1,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_3_address1,sol_3_ce1,sol_3_we1,sol_3_d1,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_4_address1,sol_4_ce1,sol_4_we1,sol_4_d1,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_5_address1,sol_5_ce1,sol_5_we1,sol_5_d1,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_6_address1,sol_6_ce1,sol_6_we1,sol_6_d1,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_7_address1,sol_7_ce1,sol_7_we1,sol_7_d1,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_8_address1,sol_8_ce1,sol_8_we1,sol_8_d1,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_9_address1,sol_9_ce1,sol_9_we1,sol_9_d1,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_10_address1,sol_10_ce1,sol_10_we1,sol_10_d1,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_11_address1,sol_11_ce1,sol_11_we1,sol_11_d1,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_12_address1,sol_12_ce1,sol_12_we1,sol_12_d1,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_13_address1,sol_13_ce1,sol_13_we1,sol_13_d1,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_14_address1,sol_14_ce1,sol_14_we1,sol_14_d1,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_15_address1,sol_15_ce1,sol_15_we1,sol_15_d1); 
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] C_address0;
output   C_ce0;
input  [31:0] C_q0;
output  [0:0] C_address1;
output   C_ce1;
input  [31:0] C_q1;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [9:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [9:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [9:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [9:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [9:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [9:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [9:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [9:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [9:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [9:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [9:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [9:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [9:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [9:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [9:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [9:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [9:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_1_address1;
output   sol_1_ce1;
output   sol_1_we1;
output  [31:0] sol_1_d1;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_2_address1;
output   sol_2_ce1;
output   sol_2_we1;
output  [31:0] sol_2_d1;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_3_address1;
output   sol_3_ce1;
output   sol_3_we1;
output  [31:0] sol_3_d1;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_4_address1;
output   sol_4_ce1;
output   sol_4_we1;
output  [31:0] sol_4_d1;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_5_address1;
output   sol_5_ce1;
output   sol_5_we1;
output  [31:0] sol_5_d1;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_6_address1;
output   sol_6_ce1;
output   sol_6_we1;
output  [31:0] sol_6_d1;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_7_address1;
output   sol_7_ce1;
output   sol_7_we1;
output  [31:0] sol_7_d1;
output  [9:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [9:0] sol_8_address1;
output   sol_8_ce1;
output   sol_8_we1;
output  [31:0] sol_8_d1;
output  [9:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [9:0] sol_9_address1;
output   sol_9_ce1;
output   sol_9_we1;
output  [31:0] sol_9_d1;
output  [9:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [9:0] sol_10_address1;
output   sol_10_ce1;
output   sol_10_we1;
output  [31:0] sol_10_d1;
output  [9:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [9:0] sol_11_address1;
output   sol_11_ce1;
output   sol_11_we1;
output  [31:0] sol_11_d1;
output  [9:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [9:0] sol_12_address1;
output   sol_12_ce1;
output   sol_12_we1;
output  [31:0] sol_12_d1;
output  [9:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [9:0] sol_13_address1;
output   sol_13_ce1;
output   sol_13_we1;
output  [31:0] sol_13_d1;
output  [9:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [9:0] sol_14_address1;
output   sol_14_ce1;
output   sol_14_we1;
output  [31:0] sol_14_d1;
output  [9:0] sol_15_address0;
output   sol_15_ce0;
output   sol_15_we0;
output  [31:0] sol_15_d0;
output  [9:0] sol_15_address1;
output   sol_15_ce1;
output   sol_15_we1;
output  [31:0] sol_15_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] orig_0_address0;
reg orig_0_ce0;
reg[9:0] orig_0_address1;
reg orig_0_ce1;
reg[9:0] orig_1_address0;
reg orig_1_ce0;
reg[9:0] orig_1_address1;
reg orig_1_ce1;
reg[9:0] orig_2_address0;
reg orig_2_ce0;
reg[9:0] orig_2_address1;
reg orig_2_ce1;
reg[9:0] orig_3_address0;
reg orig_3_ce0;
reg[9:0] orig_3_address1;
reg orig_3_ce1;
reg[9:0] orig_4_address0;
reg orig_4_ce0;
reg[9:0] orig_4_address1;
reg orig_4_ce1;
reg[9:0] orig_5_address0;
reg orig_5_ce0;
reg[9:0] orig_5_address1;
reg orig_5_ce1;
reg[9:0] orig_6_address0;
reg orig_6_ce0;
reg[9:0] orig_6_address1;
reg orig_6_ce1;
reg[9:0] orig_7_address0;
reg orig_7_ce0;
reg[9:0] orig_7_address1;
reg orig_7_ce1;
reg[9:0] orig_8_address0;
reg orig_8_ce0;
reg[9:0] orig_8_address1;
reg orig_8_ce1;
reg[9:0] orig_9_address0;
reg orig_9_ce0;
reg[9:0] orig_9_address1;
reg orig_9_ce1;
reg[9:0] orig_10_address0;
reg orig_10_ce0;
reg[9:0] orig_10_address1;
reg orig_10_ce1;
reg[9:0] orig_11_address0;
reg orig_11_ce0;
reg[9:0] orig_11_address1;
reg orig_11_ce1;
reg[9:0] orig_12_address0;
reg orig_12_ce0;
reg[9:0] orig_12_address1;
reg orig_12_ce1;
reg[9:0] orig_13_address0;
reg orig_13_ce0;
reg[9:0] orig_13_address1;
reg orig_13_ce1;
reg[9:0] orig_14_address0;
reg orig_14_ce0;
reg[9:0] orig_14_address1;
reg orig_14_ce1;
reg[9:0] orig_15_address0;
reg orig_15_ce0;
reg[9:0] orig_15_address1;
reg orig_15_ce1;
reg[9:0] sol_0_address0;
reg sol_0_ce0;
reg sol_0_we0;
reg[31:0] sol_0_d0;
reg[9:0] sol_0_address1;
reg sol_0_ce1;
reg sol_0_we1;
reg[31:0] sol_0_d1;
reg[9:0] sol_1_address0;
reg sol_1_ce0;
reg sol_1_we0;
reg[31:0] sol_1_d0;
reg[9:0] sol_1_address1;
reg sol_1_ce1;
reg sol_1_we1;
reg[31:0] sol_1_d1;
reg[9:0] sol_2_address0;
reg sol_2_ce0;
reg sol_2_we0;
reg[31:0] sol_2_d0;
reg[9:0] sol_2_address1;
reg sol_2_ce1;
reg sol_2_we1;
reg[31:0] sol_2_d1;
reg[9:0] sol_3_address0;
reg sol_3_ce0;
reg sol_3_we0;
reg[31:0] sol_3_d0;
reg[9:0] sol_3_address1;
reg sol_3_ce1;
reg sol_3_we1;
reg[31:0] sol_3_d1;
reg[9:0] sol_4_address0;
reg sol_4_ce0;
reg sol_4_we0;
reg[31:0] sol_4_d0;
reg[9:0] sol_4_address1;
reg sol_4_ce1;
reg sol_4_we1;
reg[31:0] sol_4_d1;
reg[9:0] sol_5_address0;
reg sol_5_ce0;
reg sol_5_we0;
reg[31:0] sol_5_d0;
reg[9:0] sol_5_address1;
reg sol_5_ce1;
reg sol_5_we1;
reg[31:0] sol_5_d1;
reg[9:0] sol_6_address0;
reg sol_6_ce0;
reg sol_6_we0;
reg[31:0] sol_6_d0;
reg[9:0] sol_6_address1;
reg sol_6_ce1;
reg sol_6_we1;
reg[31:0] sol_6_d1;
reg[9:0] sol_7_address0;
reg sol_7_ce0;
reg sol_7_we0;
reg[31:0] sol_7_d0;
reg[9:0] sol_7_address1;
reg sol_7_ce1;
reg sol_7_we1;
reg[31:0] sol_7_d1;
reg[9:0] sol_8_address0;
reg sol_8_ce0;
reg sol_8_we0;
reg[31:0] sol_8_d0;
reg[9:0] sol_8_address1;
reg sol_8_ce1;
reg sol_8_we1;
reg[31:0] sol_8_d1;
reg[9:0] sol_9_address0;
reg sol_9_ce0;
reg sol_9_we0;
reg[31:0] sol_9_d0;
reg[9:0] sol_9_address1;
reg sol_9_ce1;
reg sol_9_we1;
reg[31:0] sol_9_d1;
reg[9:0] sol_10_address0;
reg sol_10_ce0;
reg sol_10_we0;
reg[31:0] sol_10_d0;
reg[9:0] sol_10_address1;
reg sol_10_ce1;
reg sol_10_we1;
reg[31:0] sol_10_d1;
reg[9:0] sol_11_address0;
reg sol_11_ce0;
reg sol_11_we0;
reg[31:0] sol_11_d0;
reg[9:0] sol_11_address1;
reg sol_11_ce1;
reg sol_11_we1;
reg[31:0] sol_11_d1;
reg[9:0] sol_12_address0;
reg sol_12_ce0;
reg sol_12_we0;
reg[31:0] sol_12_d0;
reg[9:0] sol_12_address1;
reg sol_12_ce1;
reg sol_12_we1;
reg[31:0] sol_12_d1;
reg[9:0] sol_13_address0;
reg sol_13_ce0;
reg sol_13_we0;
reg[31:0] sol_13_d0;
reg[9:0] sol_13_address1;
reg sol_13_ce1;
reg sol_13_we1;
reg[31:0] sol_13_d1;
reg[9:0] sol_14_address0;
reg sol_14_ce0;
reg sol_14_we0;
reg[31:0] sol_14_d0;
reg[9:0] sol_14_address1;
reg sol_14_ce1;
reg sol_14_we1;
reg[31:0] sol_14_d1;
reg[9:0] sol_15_address0;
reg sol_15_ce0;
reg sol_15_we0;
reg[31:0] sol_15_d0;
reg[9:0] sol_15_address1;
reg sol_15_ce1;
reg sol_15_we1;
reg[31:0] sol_15_d1;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state5;
reg   [31:0] C_load_reg_1350;
wire    ap_CS_fsm_state6;
reg   [31:0] C_load_1_reg_1355;
reg   [4:0] i_2_reg_1360;
wire    ap_CS_fsm_state7;
wire   [9:0] tmp_s_fu_1174_p3;
reg   [9:0] tmp_s_reg_1369;
wire   [4:0] indvars_iv_next38_fu_1182_p2;
reg   [4:0] indvars_iv_next38_reg_1375;
wire   [9:0] tmp_4_fu_1194_p3;
reg   [9:0] tmp_4_reg_1383;
wire    ap_CS_fsm_state8;
wire   [63:0] p_cast16_fu_1201_p1;
reg   [63:0] p_cast16_reg_1388;
wire   [9:0] empty_10_fu_1245_p2;
reg   [9:0] empty_10_reg_1407;
wire   [4:0] indvars_iv_next25_fu_1271_p2;
reg   [4:0] indvars_iv_next25_reg_1487;
wire    ap_CS_fsm_state9;
reg   [31:0] orig_1_load_reg_1492;
reg   [31:0] orig_2_load_reg_1497;
reg   [31:0] orig_3_load_reg_1502;
reg   [31:0] orig_4_load_reg_1507;
reg   [31:0] orig_5_load_reg_1512;
reg   [31:0] orig_6_load_reg_1517;
reg   [31:0] orig_7_load_reg_1522;
reg   [31:0] orig_8_load_reg_1527;
reg   [31:0] orig_9_load_reg_1532;
reg   [31:0] orig_10_load_reg_1537;
reg   [31:0] orig_11_load_reg_1542;
reg   [31:0] orig_12_load_reg_1547;
reg   [31:0] orig_13_load_reg_1552;
reg   [31:0] orig_14_load_reg_1687;
reg   [31:0] orig_14_load_3_reg_1692;
reg   [31:0] orig_1_load_3_reg_1707;
wire    ap_CS_fsm_state10;
reg   [31:0] orig_2_load_3_reg_1712;
reg   [31:0] orig_3_load_3_reg_1717;
reg   [31:0] orig_4_load_3_reg_1722;
reg   [31:0] orig_5_load_3_reg_1727;
reg   [31:0] orig_6_load_3_reg_1732;
reg   [31:0] orig_7_load_3_reg_1737;
reg   [31:0] orig_8_load_3_reg_1742;
reg   [31:0] orig_9_load_3_reg_1747;
reg   [31:0] orig_10_load_3_reg_1752;
reg   [31:0] orig_11_load_3_reg_1757;
reg   [31:0] orig_12_load_3_reg_1762;
reg   [31:0] orig_13_load_3_reg_1767;
reg   [31:0] orig_1_load_4_reg_1772;
reg   [31:0] orig_2_load_4_reg_1777;
reg   [31:0] orig_3_load_4_reg_1782;
reg   [31:0] orig_4_load_4_reg_1787;
reg   [31:0] orig_5_load_4_reg_1792;
reg   [31:0] orig_6_load_4_reg_1797;
reg   [31:0] orig_7_load_4_reg_1802;
reg   [31:0] orig_8_load_4_reg_1807;
reg   [31:0] orig_9_load_4_reg_1812;
reg   [31:0] orig_10_load_4_reg_1817;
reg   [31:0] orig_11_load_4_reg_1822;
reg   [31:0] orig_12_load_4_reg_1827;
reg   [31:0] orig_13_load_4_reg_1832;
reg   [31:0] orig_14_load_4_reg_1907;
reg   [31:0] orig_14_load_5_reg_1912;
reg   [31:0] orig_1_load_5_reg_1992;
wire    ap_CS_fsm_state11;
reg   [31:0] orig_2_load_5_reg_1997;
reg   [31:0] orig_3_load_5_reg_2002;
reg   [31:0] orig_4_load_5_reg_2007;
reg   [31:0] orig_5_load_5_reg_2012;
reg   [31:0] orig_6_load_5_reg_2017;
reg   [31:0] orig_7_load_5_reg_2022;
reg   [31:0] orig_8_load_5_reg_2027;
reg   [31:0] orig_9_load_5_reg_2032;
reg   [31:0] orig_10_load_5_reg_2037;
reg   [31:0] orig_11_load_5_reg_2042;
reg   [31:0] orig_12_load_5_reg_2047;
reg   [31:0] orig_13_load_5_reg_2052;
reg   [31:0] orig_0_load_reg_2057;
reg   [31:0] orig_14_load_6_reg_2062;
reg   [31:0] orig_15_load_reg_2067;
reg   [31:0] orig_1_load_6_reg_2072;
reg   [31:0] orig_2_load_6_reg_2077;
reg   [31:0] orig_3_load_6_reg_2082;
reg   [31:0] orig_4_load_6_reg_2087;
reg   [31:0] orig_5_load_6_reg_2092;
reg   [31:0] orig_6_load_6_reg_2097;
reg   [31:0] orig_7_load_6_reg_2102;
reg   [31:0] orig_8_load_6_reg_2107;
reg   [31:0] orig_9_load_6_reg_2112;
reg   [31:0] orig_10_load_6_reg_2117;
reg   [31:0] orig_11_load_6_reg_2122;
reg   [31:0] orig_12_load_6_reg_2127;
reg   [31:0] orig_13_load_6_reg_2132;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_done;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_idle;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_done;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_idle;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_done;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_idle;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_0_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_15_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_15_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_ap_done;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_ap_idle;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_address0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_ce0;
wire    grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_d0;
reg   [4:0] j_reg_861;
wire   [0:0] icmp_ln36_fu_1168_p2;
wire    ap_CS_fsm_state13;
reg    grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start_reg;
reg    grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start_reg;
wire    ap_CS_fsm_state12;
wire   [63:0] p_cast17_fu_1223_p1;
wire   [0:0] icmp_ln37_fu_1188_p2;
wire   [63:0] p_cast18_fu_1254_p1;
wire   [63:0] p_cast19_fu_1284_p1;
wire   [63:0] p_cast20_fu_1315_p1;
reg   [4:0] i_fu_118;
reg    C_ce1_local;
reg    C_ce0_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_1_ce1_local;
reg   [9:0] orig_1_address1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_2_ce1_local;
reg   [9:0] orig_2_address1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_3_ce1_local;
reg   [9:0] orig_3_address1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_4_ce1_local;
reg   [9:0] orig_4_address1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_5_ce1_local;
reg   [9:0] orig_5_address1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_6_ce1_local;
reg   [9:0] orig_6_address1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg    orig_7_ce1_local;
reg   [9:0] orig_7_address1_local;
reg    orig_8_ce0_local;
reg   [9:0] orig_8_address0_local;
reg    orig_8_ce1_local;
reg   [9:0] orig_8_address1_local;
reg    orig_9_ce0_local;
reg   [9:0] orig_9_address0_local;
reg    orig_9_ce1_local;
reg   [9:0] orig_9_address1_local;
reg    orig_10_ce0_local;
reg   [9:0] orig_10_address0_local;
reg    orig_10_ce1_local;
reg   [9:0] orig_10_address1_local;
reg    orig_11_ce0_local;
reg   [9:0] orig_11_address0_local;
reg    orig_11_ce1_local;
reg   [9:0] orig_11_address1_local;
reg    orig_12_ce0_local;
reg   [9:0] orig_12_address0_local;
reg    orig_12_ce1_local;
reg   [9:0] orig_12_address1_local;
reg    orig_13_ce0_local;
reg   [9:0] orig_13_address0_local;
reg    orig_13_ce1_local;
reg   [9:0] orig_13_address1_local;
reg    orig_14_ce1_local;
reg   [9:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [9:0] orig_14_address0_local;
reg    orig_0_ce0_local;
reg    orig_15_ce0_local;
wire  signed [5:0] tmp1_cast_cast_fu_1206_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_1214_p1;
wire   [9:0] empty_fu_1218_p2;
wire  signed [9:0] tmp2_cast_fu_1241_p1;
wire   [9:0] tmp_2_fu_1277_p3;
wire   [4:0] tmp3_fu_1302_p2;
wire   [9:0] tmp_3_fu_1308_p3;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start_reg = 1'b0;
#0 i_fu_118 = 5'd0;
end
stencil3d_stencil3d_Pipeline_height_bound_col grp_stencil3d_Pipeline_height_bound_col_fu_873(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start),.ap_done(grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_done),.ap_idle(grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_idle),.ap_ready(grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_d0),.sol_15_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_address1),.sol_15_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_ce1),.sol_15_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_we1),.sol_15_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_d1),.sol_14_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_d0),.sol_14_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_address1),.sol_14_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_ce1),.sol_14_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_we1),.sol_14_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_d1),.sol_13_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_d0),.sol_13_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_address1),.sol_13_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_ce1),.sol_13_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_we1),.sol_13_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_d1),.sol_12_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_d0),.sol_12_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_address1),.sol_12_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_ce1),.sol_12_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_we1),.sol_12_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_d1),.sol_11_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_d0),.sol_11_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_address1),.sol_11_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_ce1),.sol_11_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_we1),.sol_11_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_d1),.sol_10_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_d0),.sol_10_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_address1),.sol_10_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_ce1),.sol_10_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_we1),.sol_10_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_d1),.sol_9_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_d0),.sol_9_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_address1),.sol_9_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_ce1),.sol_9_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_we1),.sol_9_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_d1),.sol_8_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_d0),.sol_8_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_address1),.sol_8_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_ce1),.sol_8_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_we1),.sol_8_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_d1),.sol_7_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_d0),.sol_7_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_address1),.sol_7_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_ce1),.sol_7_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_we1),.sol_7_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_d1),.sol_6_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_d0),.sol_6_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_address1),.sol_6_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_ce1),.sol_6_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_we1),.sol_6_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_d1),.sol_5_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_d0),.sol_5_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_address1),.sol_5_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_ce1),.sol_5_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_we1),.sol_5_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_d1),.sol_4_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_d0),.sol_4_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_address1),.sol_4_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_ce1),.sol_4_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_we1),.sol_4_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_d1),.sol_3_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_d0),.sol_3_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_address1),.sol_3_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_ce1),.sol_3_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_we1),.sol_3_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_d1),.sol_2_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_d0),.sol_2_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_address1),.sol_2_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_ce1),.sol_2_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_we1),.sol_2_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_d1),.sol_1_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_2_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_address0),.orig_2_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_ce0),.orig_2_q0(orig_2_q0),.orig_2_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_address1),.orig_2_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_ce1),.orig_2_q1(orig_2_q1),.orig_3_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_address0),.orig_3_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_ce0),.orig_3_q0(orig_3_q0),.orig_3_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_address1),.orig_3_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_ce1),.orig_3_q1(orig_3_q1),.orig_4_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_address0),.orig_4_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_address1),.orig_4_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_address0),.orig_5_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_address1),.orig_5_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_address0),.orig_6_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_address1),.orig_6_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_address0),.orig_7_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_address1),.orig_7_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_ce1),.orig_7_q1(orig_7_q1),.orig_8_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_address0),.orig_8_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_ce0),.orig_8_q0(orig_8_q0),.orig_8_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_address1),.orig_8_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_ce1),.orig_8_q1(orig_8_q1),.orig_9_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_address0),.orig_9_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_ce0),.orig_9_q0(orig_9_q0),.orig_9_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_address1),.orig_9_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_ce1),.orig_9_q1(orig_9_q1),.orig_10_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_address0),.orig_10_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_ce0),.orig_10_q0(orig_10_q0),.orig_10_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_address1),.orig_10_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_ce1),.orig_10_q1(orig_10_q1),.orig_11_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_address0),.orig_11_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_ce0),.orig_11_q0(orig_11_q0),.orig_11_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_address1),.orig_11_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_ce1),.orig_11_q1(orig_11_q1),.orig_12_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_address0),.orig_12_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_ce0),.orig_12_q0(orig_12_q0),.orig_12_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_address1),.orig_12_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_ce1),.orig_12_q1(orig_12_q1),.orig_13_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_address0),.orig_13_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_ce0),.orig_13_q0(orig_13_q0),.orig_13_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_address1),.orig_13_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_ce1),.orig_13_q1(orig_13_q1),.orig_14_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_address0),.orig_14_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_ce0),.orig_14_q0(orig_14_q0),.orig_14_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_address1),.orig_14_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_ce1),.orig_14_q1(orig_14_q1),.orig_15_address0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_ce1),.orig_15_q1(orig_15_q1));
stencil3d_stencil3d_Pipeline_col_bound_height grp_stencil3d_Pipeline_col_bound_height_fu_941(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start),.ap_done(grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_done),.ap_idle(grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_idle),.ap_ready(grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_d0),.sol_15_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_address1),.sol_15_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_ce1),.sol_15_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_we1),.sol_15_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_d1),.sol_14_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_d0),.sol_14_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_address1),.sol_14_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_ce1),.sol_14_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_we1),.sol_14_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_d1),.sol_13_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_d0),.sol_13_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_address1),.sol_13_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_ce1),.sol_13_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_we1),.sol_13_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_d1),.sol_12_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_d0),.sol_12_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_address1),.sol_12_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_ce1),.sol_12_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_we1),.sol_12_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_d1),.sol_11_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_d0),.sol_11_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_address1),.sol_11_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_ce1),.sol_11_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_we1),.sol_11_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_d1),.sol_10_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_d0),.sol_10_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_address1),.sol_10_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_ce1),.sol_10_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_we1),.sol_10_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_d1),.sol_9_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_d0),.sol_9_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_address1),.sol_9_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_ce1),.sol_9_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_we1),.sol_9_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_d1),.sol_8_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_d0),.sol_8_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_address1),.sol_8_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_ce1),.sol_8_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_we1),.sol_8_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_d1),.sol_7_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_d0),.sol_7_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_address1),.sol_7_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_ce1),.sol_7_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_we1),.sol_7_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_d1),.sol_6_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_d0),.sol_6_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_address1),.sol_6_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_ce1),.sol_6_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_we1),.sol_6_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_d1),.sol_5_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_d0),.sol_5_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_address1),.sol_5_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_ce1),.sol_5_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_we1),.sol_5_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_d1),.sol_4_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_d0),.sol_4_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_address1),.sol_4_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_ce1),.sol_4_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_we1),.sol_4_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_d1),.sol_3_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_d0),.sol_3_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_address1),.sol_3_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_ce1),.sol_3_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_we1),.sol_3_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_d1),.sol_2_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_d0),.sol_2_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_address1),.sol_2_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_ce1),.sol_2_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_we1),.sol_2_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_d1),.sol_1_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_2_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_address0),.orig_2_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_ce0),.orig_2_q0(orig_2_q0),.orig_2_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_address1),.orig_2_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_ce1),.orig_2_q1(orig_2_q1),.orig_3_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_address0),.orig_3_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_ce0),.orig_3_q0(orig_3_q0),.orig_3_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_address1),.orig_3_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_ce1),.orig_3_q1(orig_3_q1),.orig_4_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_address0),.orig_4_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_address1),.orig_4_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_address0),.orig_5_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_address1),.orig_5_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_address0),.orig_6_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_address1),.orig_6_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_address0),.orig_7_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_address1),.orig_7_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_ce1),.orig_7_q1(orig_7_q1),.orig_8_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_address0),.orig_8_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_ce0),.orig_8_q0(orig_8_q0),.orig_8_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_address1),.orig_8_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_ce1),.orig_8_q1(orig_8_q1),.orig_9_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_address0),.orig_9_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_ce0),.orig_9_q0(orig_9_q0),.orig_9_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_address1),.orig_9_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_ce1),.orig_9_q1(orig_9_q1),.orig_10_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_address0),.orig_10_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_ce0),.orig_10_q0(orig_10_q0),.orig_10_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_address1),.orig_10_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_ce1),.orig_10_q1(orig_10_q1),.orig_11_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_address0),.orig_11_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_ce0),.orig_11_q0(orig_11_q0),.orig_11_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_address1),.orig_11_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_ce1),.orig_11_q1(orig_11_q1),.orig_12_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_address0),.orig_12_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_ce0),.orig_12_q0(orig_12_q0),.orig_12_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_address1),.orig_12_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_ce1),.orig_12_q1(orig_12_q1),.orig_13_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_address0),.orig_13_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_ce0),.orig_13_q0(orig_13_q0),.orig_13_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_address1),.orig_13_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_ce1),.orig_13_q1(orig_13_q1),.orig_14_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_address0),.orig_14_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_ce0),.orig_14_q0(orig_14_q0),.orig_14_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_address1),.orig_14_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_ce1),.orig_14_q1(orig_14_q1),.orig_15_address0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_ce1),.orig_15_q1(orig_15_q1));
stencil3d_stencil3d_Pipeline_row_bound_height_row_bound_col grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start),.ap_done(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_done),.ap_idle(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_idle),.ap_ready(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_d0),.sol_0_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_d0),.orig_0_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_15_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_15_ce0),.orig_15_q0(orig_15_q0));
stencil3d_stencil3d_Pipeline_loop_row grp_stencil3d_Pipeline_loop_row_fu_1049(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start),.ap_done(grp_stencil3d_Pipeline_loop_row_fu_1049_ap_done),.ap_idle(grp_stencil3d_Pipeline_loop_row_fu_1049_ap_idle),.ap_ready(grp_stencil3d_Pipeline_loop_row_fu_1049_ap_ready),.sol_1_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_d0),.p_cast16(tmp_4_reg_1383),.sol_2_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_d0),.sol_3_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_d0),.sol_4_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_d0),.sol_5_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_d0),.sol_6_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_d0),.sol_7_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_d0),.sol_8_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_d0),.sol_9_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_d0),.sol_10_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_d0),.sol_11_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_d0),.sol_12_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_d0),.sol_13_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_d0),.sol_14_address0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_d0),.orig_1_load_8(orig_1_load_6_reg_2072),.orig_2_load_8(orig_2_load_6_reg_2077),.orig_3_load_8(orig_3_load_6_reg_2082),.orig_4_load_8(orig_4_load_6_reg_2087),.orig_5_load_8(orig_5_load_6_reg_2092),.orig_6_load_8(orig_6_load_6_reg_2097),.orig_7_load_8(orig_7_load_6_reg_2102),.orig_8_load_8(orig_8_load_6_reg_2107),.orig_9_load_8(orig_9_load_6_reg_2112),.orig_10_load_8(orig_10_load_6_reg_2117),.orig_11_load_8(orig_11_load_6_reg_2122),.orig_12_load_8(orig_12_load_6_reg_2127),.orig_13_load_8(orig_13_load_6_reg_2132),.orig_1_load_4(orig_1_load_reg_1492),.orig_2_load_4(orig_2_load_reg_1497),.orig_3_load_4(orig_3_load_reg_1502),.orig_4_load_4(orig_4_load_reg_1507),.orig_5_load_4(orig_5_load_reg_1512),.orig_6_load_4(orig_6_load_reg_1517),.orig_7_load_4(orig_7_load_reg_1522),.orig_8_load_4(orig_8_load_reg_1527),.orig_9_load_4(orig_9_load_reg_1532),.orig_10_load_4(orig_10_load_reg_1537),.orig_11_load_4(orig_11_load_reg_1542),.orig_12_load_4(orig_12_load_reg_1547),.orig_13_load_4(orig_13_load_reg_1552),.orig_1_load_5(orig_1_load_3_reg_1707),.orig_2_load_5(orig_2_load_3_reg_1712),.orig_3_load_5(orig_3_load_3_reg_1717),.orig_4_load_5(orig_4_load_3_reg_1722),.orig_5_load_5(orig_5_load_3_reg_1727),.orig_6_load_5(orig_6_load_3_reg_1732),.orig_7_load_5(orig_7_load_3_reg_1737),.orig_8_load_5(orig_8_load_3_reg_1742),.orig_9_load_5(orig_9_load_3_reg_1747),.orig_10_load_5(orig_10_load_3_reg_1752),.orig_11_load_5(orig_11_load_3_reg_1757),.orig_12_load_5(orig_12_load_3_reg_1762),.orig_13_load_5(orig_13_load_3_reg_1767),.orig_1_load_6(orig_1_load_4_reg_1772),.orig_2_load_6(orig_2_load_4_reg_1777),.orig_3_load_6(orig_3_load_4_reg_1782),.orig_4_load_6(orig_4_load_4_reg_1787),.orig_5_load_6(orig_5_load_4_reg_1792),.orig_6_load_6(orig_6_load_4_reg_1797),.orig_7_load_6(orig_7_load_4_reg_1802),.orig_8_load_6(orig_8_load_4_reg_1807),.orig_9_load_6(orig_9_load_4_reg_1812),.orig_10_load_6(orig_10_load_4_reg_1817),.orig_11_load_6(orig_11_load_4_reg_1822),.orig_12_load_6(orig_12_load_4_reg_1827),.orig_13_load_6(orig_13_load_4_reg_1832),.orig_1_load_7(orig_1_load_5_reg_1992),.orig_2_load_7(orig_2_load_5_reg_1997),.orig_3_load_7(orig_3_load_5_reg_2002),.orig_4_load_7(orig_4_load_5_reg_2007),.orig_5_load_7(orig_5_load_5_reg_2012),.orig_6_load_7(orig_6_load_5_reg_2017),.orig_7_load_7(orig_7_load_5_reg_2022),.orig_8_load_7(orig_8_load_5_reg_2027),.orig_9_load_7(orig_9_load_5_reg_2032),.orig_10_load_7(orig_10_load_5_reg_2037),.orig_11_load_7(orig_11_load_5_reg_2042),.orig_12_load_7(orig_12_load_5_reg_2047),.orig_13_load_7(orig_13_load_5_reg_2052),.orig_14_load_4(orig_14_load_reg_1687),.orig_0_load_5(orig_0_load_reg_2057),.C_load(C_load_reg_1350),.C_load_1(C_load_1_reg_1355),.orig_14_load_5(orig_14_load_3_reg_1692),.orig_14_load_6(orig_14_load_4_reg_1907),.orig_14_load_7(orig_14_load_5_reg_1912),.orig_14_load_8(orig_14_load_6_reg_2062),.orig_15_load_5(orig_15_load_reg_2067));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_loop_row_fu_1049_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_118 <= 5'd1;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln37_fu_1188_p2 == 1'd1))) begin
        i_fu_118 <= indvars_iv_next38_reg_1375;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_stencil3d_Pipeline_loop_row_fu_1049_ap_done == 1'b1))) begin
        j_reg_861 <= indvars_iv_next25_reg_1487;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_1168_p2 == 1'd0))) begin
        j_reg_861 <= 5'd1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_load_1_reg_1355 <= C_q0;
        C_load_reg_1350 <= C_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_10_reg_1407 <= empty_10_fu_1245_p2;
        p_cast16_reg_1388[9 : 0] <= p_cast16_fu_1201_p1[9 : 0];
        tmp_4_reg_1383 <= tmp_4_fu_1194_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_2_reg_1360 <= i_fu_118;
        indvars_iv_next38_reg_1375 <= indvars_iv_next38_fu_1182_p2;
        tmp_s_reg_1369[9 : 5] <= tmp_s_fu_1174_p3[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        indvars_iv_next25_reg_1487 <= indvars_iv_next25_fu_1271_p2;
        orig_10_load_reg_1537 <= orig_10_q0;
        orig_11_load_reg_1542 <= orig_11_q0;
        orig_12_load_reg_1547 <= orig_12_q0;
        orig_13_load_reg_1552 <= orig_13_q0;
        orig_14_load_3_reg_1692 <= orig_14_q0;
        orig_14_load_reg_1687 <= orig_14_q1;
        orig_1_load_reg_1492 <= orig_1_q0;
        orig_2_load_reg_1497 <= orig_2_q0;
        orig_3_load_reg_1502 <= orig_3_q0;
        orig_4_load_reg_1507 <= orig_4_q0;
        orig_5_load_reg_1512 <= orig_5_q0;
        orig_6_load_reg_1517 <= orig_6_q0;
        orig_7_load_reg_1522 <= orig_7_q0;
        orig_8_load_reg_1527 <= orig_8_q0;
        orig_9_load_reg_1532 <= orig_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        orig_0_load_reg_2057 <= orig_0_q0;
        orig_10_load_5_reg_2037 <= orig_10_q0;
        orig_10_load_6_reg_2117 <= orig_10_q1;
        orig_11_load_5_reg_2042 <= orig_11_q0;
        orig_11_load_6_reg_2122 <= orig_11_q1;
        orig_12_load_5_reg_2047 <= orig_12_q0;
        orig_12_load_6_reg_2127 <= orig_12_q1;
        orig_13_load_5_reg_2052 <= orig_13_q0;
        orig_13_load_6_reg_2132 <= orig_13_q1;
        orig_14_load_6_reg_2062 <= orig_14_q0;
        orig_15_load_reg_2067 <= orig_15_q0;
        orig_1_load_5_reg_1992 <= orig_1_q0;
        orig_1_load_6_reg_2072 <= orig_1_q1;
        orig_2_load_5_reg_1997 <= orig_2_q0;
        orig_2_load_6_reg_2077 <= orig_2_q1;
        orig_3_load_5_reg_2002 <= orig_3_q0;
        orig_3_load_6_reg_2082 <= orig_3_q1;
        orig_4_load_5_reg_2007 <= orig_4_q0;
        orig_4_load_6_reg_2087 <= orig_4_q1;
        orig_5_load_5_reg_2012 <= orig_5_q0;
        orig_5_load_6_reg_2092 <= orig_5_q1;
        orig_6_load_5_reg_2017 <= orig_6_q0;
        orig_6_load_6_reg_2097 <= orig_6_q1;
        orig_7_load_5_reg_2022 <= orig_7_q0;
        orig_7_load_6_reg_2102 <= orig_7_q1;
        orig_8_load_5_reg_2027 <= orig_8_q0;
        orig_8_load_6_reg_2107 <= orig_8_q1;
        orig_9_load_5_reg_2032 <= orig_9_q0;
        orig_9_load_6_reg_2112 <= orig_9_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_10_load_3_reg_1752 <= orig_10_q1;
        orig_10_load_4_reg_1817 <= orig_10_q0;
        orig_11_load_3_reg_1757 <= orig_11_q1;
        orig_11_load_4_reg_1822 <= orig_11_q0;
        orig_12_load_3_reg_1762 <= orig_12_q1;
        orig_12_load_4_reg_1827 <= orig_12_q0;
        orig_13_load_3_reg_1767 <= orig_13_q1;
        orig_13_load_4_reg_1832 <= orig_13_q0;
        orig_14_load_4_reg_1907 <= orig_14_q1;
        orig_14_load_5_reg_1912 <= orig_14_q0;
        orig_1_load_3_reg_1707 <= orig_1_q1;
        orig_1_load_4_reg_1772 <= orig_1_q0;
        orig_2_load_3_reg_1712 <= orig_2_q1;
        orig_2_load_4_reg_1777 <= orig_2_q0;
        orig_3_load_3_reg_1717 <= orig_3_q1;
        orig_3_load_4_reg_1782 <= orig_3_q0;
        orig_4_load_3_reg_1722 <= orig_4_q1;
        orig_4_load_4_reg_1787 <= orig_4_q0;
        orig_5_load_3_reg_1727 <= orig_5_q1;
        orig_5_load_4_reg_1792 <= orig_5_q0;
        orig_6_load_3_reg_1732 <= orig_6_q1;
        orig_6_load_4_reg_1797 <= orig_6_q0;
        orig_7_load_3_reg_1737 <= orig_7_q1;
        orig_7_load_4_reg_1802 <= orig_7_q0;
        orig_8_load_3_reg_1742 <= orig_8_q1;
        orig_8_load_4_reg_1807 <= orig_8_q0;
        orig_9_load_3_reg_1747 <= orig_9_q1;
        orig_9_load_4_reg_1812 <= orig_9_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce0_local = 1'b1;
    end else begin
        C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce1_local = 1'b1;
    end else begin
        C_ce1_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_loop_row_fu_1049_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_1168_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_1168_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_address0;
    end else begin
        orig_0_address0 = p_cast16_reg_1388;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_address1;
    end else begin
        orig_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_ce0;
    end else begin
        orig_0_ce0 = orig_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_0_ce1;
    end else begin
        orig_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_address0;
    end else begin
        orig_10_address0 = orig_10_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_10_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_10_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_10_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_address1;
    end else begin
        orig_10_address1 = orig_10_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_10_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_10_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_ce0;
    end else begin
        orig_10_ce0 = orig_10_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_10_ce1;
    end else begin
        orig_10_ce1 = orig_10_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_address0;
    end else begin
        orig_11_address0 = orig_11_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_11_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_11_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_11_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_address1;
    end else begin
        orig_11_address1 = orig_11_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_11_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_11_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_ce0;
    end else begin
        orig_11_ce0 = orig_11_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_11_ce1;
    end else begin
        orig_11_ce1 = orig_11_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_address0;
    end else begin
        orig_12_address0 = orig_12_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_12_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_12_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_12_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_address1;
    end else begin
        orig_12_address1 = orig_12_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_12_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_12_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_ce0;
    end else begin
        orig_12_ce0 = orig_12_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_12_ce1;
    end else begin
        orig_12_ce1 = orig_12_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_address0;
    end else begin
        orig_13_address0 = orig_13_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_13_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_13_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_13_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_address1;
    end else begin
        orig_13_address1 = orig_13_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_13_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_13_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_ce0;
    end else begin
        orig_13_ce0 = orig_13_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_13_ce1;
    end else begin
        orig_13_ce1 = orig_13_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_address0;
    end else begin
        orig_14_address0 = orig_14_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_14_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_14_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_14_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_address1;
    end else begin
        orig_14_address1 = orig_14_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_14_address1_local = p_cast18_fu_1254_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_14_address1_local = p_cast16_fu_1201_p1;
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_ce0;
    end else begin
        orig_14_ce0 = orig_14_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_14_ce1;
    end else begin
        orig_14_ce1 = orig_14_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_address0;
    end else begin
        orig_15_address0 = p_cast16_reg_1388;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_address1;
    end else begin
        orig_15_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_orig_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_ce0;
    end else begin
        orig_15_ce0 = orig_15_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_15_ce1;
    end else begin
        orig_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_address0;
    end else begin
        orig_1_address0 = orig_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_1_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_1_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_address1;
    end else begin
        orig_1_address1 = orig_1_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_1_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_1_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_ce0;
    end else begin
        orig_1_ce0 = orig_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_1_ce1;
    end else begin
        orig_1_ce1 = orig_1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_address0;
    end else begin
        orig_2_address0 = orig_2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_2_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_2_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_2_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_address1;
    end else begin
        orig_2_address1 = orig_2_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_2_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_2_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_ce0;
    end else begin
        orig_2_ce0 = orig_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_2_ce1;
    end else begin
        orig_2_ce1 = orig_2_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_address0;
    end else begin
        orig_3_address0 = orig_3_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_3_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_3_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_3_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_address1;
    end else begin
        orig_3_address1 = orig_3_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_3_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_3_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_ce0;
    end else begin
        orig_3_ce0 = orig_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_3_ce1;
    end else begin
        orig_3_ce1 = orig_3_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_address0;
    end else begin
        orig_4_address0 = orig_4_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_4_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_4_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_4_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_address1;
    end else begin
        orig_4_address1 = orig_4_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_4_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_4_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_ce0;
    end else begin
        orig_4_ce0 = orig_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_4_ce1;
    end else begin
        orig_4_ce1 = orig_4_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_address0;
    end else begin
        orig_5_address0 = orig_5_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_5_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_5_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_5_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_address1;
    end else begin
        orig_5_address1 = orig_5_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_5_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_5_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_ce0;
    end else begin
        orig_5_ce0 = orig_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_5_ce1;
    end else begin
        orig_5_ce1 = orig_5_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_address0;
    end else begin
        orig_6_address0 = orig_6_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_6_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_6_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_6_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_address1;
    end else begin
        orig_6_address1 = orig_6_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_6_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_6_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_ce0;
    end else begin
        orig_6_ce0 = orig_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_6_ce1;
    end else begin
        orig_6_ce1 = orig_6_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_address0;
    end else begin
        orig_7_address0 = orig_7_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_7_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_7_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_7_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_address1;
    end else begin
        orig_7_address1 = orig_7_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_7_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_7_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_ce0;
    end else begin
        orig_7_ce0 = orig_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_7_ce1;
    end else begin
        orig_7_ce1 = orig_7_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_address0;
    end else begin
        orig_8_address0 = orig_8_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_8_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_8_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_8_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_address1;
    end else begin
        orig_8_address1 = orig_8_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_8_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_8_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_ce0;
    end else begin
        orig_8_ce0 = orig_8_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_8_ce1;
    end else begin
        orig_8_ce1 = orig_8_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_address0;
    end else begin
        orig_9_address0 = orig_9_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_9_address0_local = p_cast20_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_9_address0_local = p_cast19_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_9_address0_local = p_cast17_fu_1223_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_address1;
    end else begin
        orig_9_address1 = orig_9_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        orig_9_address1_local = p_cast16_reg_1388;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        orig_9_address1_local = p_cast18_fu_1254_p1;
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_ce0;
    end else begin
        orig_9_ce0 = orig_9_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_orig_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_orig_9_ce1;
    end else begin
        orig_9_ce1 = orig_9_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_address0;
    end else begin
        sol_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_address1;
    end else begin
        sol_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_ce0;
    end else begin
        sol_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_ce1;
    end else begin
        sol_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_d0;
    end else begin
        sol_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_d1;
    end else begin
        sol_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_we0;
    end else begin
        sol_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_0_we1;
    end else begin
        sol_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_address0;
    end else begin
        sol_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_address1;
    end else begin
        sol_10_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_ce0;
    end else begin
        sol_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_ce1;
    end else begin
        sol_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_d0;
    end else begin
        sol_10_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_d1;
    end else begin
        sol_10_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_we0;
    end else begin
        sol_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_10_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_10_we1;
    end else begin
        sol_10_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_address0;
    end else begin
        sol_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_address1;
    end else begin
        sol_11_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_ce0;
    end else begin
        sol_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_ce1;
    end else begin
        sol_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_d0;
    end else begin
        sol_11_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_d1;
    end else begin
        sol_11_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_we0;
    end else begin
        sol_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_11_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_11_we1;
    end else begin
        sol_11_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_address0;
    end else begin
        sol_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_address1;
    end else begin
        sol_12_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_ce0;
    end else begin
        sol_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_ce1;
    end else begin
        sol_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_d0;
    end else begin
        sol_12_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_d1;
    end else begin
        sol_12_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_we0;
    end else begin
        sol_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_12_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_12_we1;
    end else begin
        sol_12_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_address0;
    end else begin
        sol_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_address1;
    end else begin
        sol_13_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_ce0;
    end else begin
        sol_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_ce1;
    end else begin
        sol_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_d0;
    end else begin
        sol_13_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_d1;
    end else begin
        sol_13_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_we0;
    end else begin
        sol_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_13_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_13_we1;
    end else begin
        sol_13_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_address0;
    end else begin
        sol_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_address1;
    end else begin
        sol_14_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_ce0;
    end else begin
        sol_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_ce1;
    end else begin
        sol_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_d0;
    end else begin
        sol_14_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_d1;
    end else begin
        sol_14_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_we0;
    end else begin
        sol_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_14_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_14_we1;
    end else begin
        sol_14_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_address0;
    end else begin
        sol_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_address1;
    end else begin
        sol_15_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_ce0;
    end else begin
        sol_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_ce1;
    end else begin
        sol_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_d0;
    end else begin
        sol_15_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_d1;
    end else begin
        sol_15_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_sol_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_we0;
    end else begin
        sol_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_15_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_15_we1;
    end else begin
        sol_15_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_address0;
    end else begin
        sol_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_address1;
    end else begin
        sol_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_ce0;
    end else begin
        sol_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_ce1;
    end else begin
        sol_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_d0;
    end else begin
        sol_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_d1;
    end else begin
        sol_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_we0;
    end else begin
        sol_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_1_we1;
    end else begin
        sol_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_address0;
    end else begin
        sol_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_address1;
    end else begin
        sol_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_ce0;
    end else begin
        sol_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_ce1;
    end else begin
        sol_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_d0;
    end else begin
        sol_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_d1;
    end else begin
        sol_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_we0;
    end else begin
        sol_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_2_we1;
    end else begin
        sol_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_address0;
    end else begin
        sol_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_address1;
    end else begin
        sol_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_ce0;
    end else begin
        sol_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_ce1;
    end else begin
        sol_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_d0;
    end else begin
        sol_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_d1;
    end else begin
        sol_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_we0;
    end else begin
        sol_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_3_we1;
    end else begin
        sol_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_address0;
    end else begin
        sol_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_address1;
    end else begin
        sol_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_ce0;
    end else begin
        sol_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_ce1;
    end else begin
        sol_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_d0;
    end else begin
        sol_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_d1;
    end else begin
        sol_4_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_we0;
    end else begin
        sol_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_4_we1;
    end else begin
        sol_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_address0;
    end else begin
        sol_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_address1;
    end else begin
        sol_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_ce0;
    end else begin
        sol_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_ce1;
    end else begin
        sol_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_d0;
    end else begin
        sol_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_d1;
    end else begin
        sol_5_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_we0;
    end else begin
        sol_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_5_we1;
    end else begin
        sol_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_address0;
    end else begin
        sol_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_address1;
    end else begin
        sol_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_ce0;
    end else begin
        sol_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_ce1;
    end else begin
        sol_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_d0;
    end else begin
        sol_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_d1;
    end else begin
        sol_6_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_we0;
    end else begin
        sol_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_6_we1;
    end else begin
        sol_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_address0;
    end else begin
        sol_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_address1;
    end else begin
        sol_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_ce0;
    end else begin
        sol_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_ce1;
    end else begin
        sol_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_d0;
    end else begin
        sol_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_d1;
    end else begin
        sol_7_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_we0;
    end else begin
        sol_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_7_we1;
    end else begin
        sol_7_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_address0;
    end else begin
        sol_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_address1;
    end else begin
        sol_8_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_ce0;
    end else begin
        sol_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_ce1;
    end else begin
        sol_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_d0;
    end else begin
        sol_8_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_d1;
    end else begin
        sol_8_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_we0;
    end else begin
        sol_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_8_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_8_we1;
    end else begin
        sol_8_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_address0;
    end else begin
        sol_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_address1;
    end else begin
        sol_9_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_ce0;
    end else begin
        sol_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_ce1;
    end else begin
        sol_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_d0;
    end else begin
        sol_9_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_d1;
    end else begin
        sol_9_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_loop_row_fu_1049_sol_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_we0;
    end else begin
        sol_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_941_sol_9_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_873_sol_9_we1;
    end else begin
        sol_9_we1 = 1'b0;
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
            if (((grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_1168_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln37_fu_1188_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
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
            if (((1'b1 == ap_CS_fsm_state13) & (grp_stencil3d_Pipeline_loop_row_fu_1049_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_address0 = 64'd1;
assign C_address1 = 64'd0;
assign C_ce0 = C_ce0_local;
assign C_ce1 = C_ce1_local;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_10_fu_1245_p2 = ($signed(tmp2_cast_fu_1241_p1) + $signed(tmp_s_reg_1369));
assign empty_fu_1218_p2 = (tmp1_cast_cast_cast_fu_1214_p1 + tmp_s_reg_1369);
assign grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start = grp_stencil3d_Pipeline_col_bound_height_fu_941_ap_start_reg;
assign grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start = grp_stencil3d_Pipeline_height_bound_col_fu_873_ap_start_reg;
assign grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start = grp_stencil3d_Pipeline_loop_row_fu_1049_ap_start_reg;
assign grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_1009_ap_start_reg;
assign icmp_ln36_fu_1168_p2 = ((i_fu_118 == 5'd31) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1188_p2 = ((j_reg_861 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next25_fu_1271_p2 = (j_reg_861 + 5'd1);
assign indvars_iv_next38_fu_1182_p2 = (i_fu_118 + 5'd1);
assign p_cast16_fu_1201_p1 = tmp_4_fu_1194_p3;
assign p_cast17_fu_1223_p1 = empty_fu_1218_p2;
assign p_cast18_fu_1254_p1 = empty_10_reg_1407;
assign p_cast19_fu_1284_p1 = tmp_2_fu_1277_p3;
assign p_cast20_fu_1315_p1 = tmp_3_fu_1308_p3;
assign tmp1_cast_cast_cast_fu_1214_p1 = $unsigned(tmp1_cast_cast_fu_1206_p3);
assign tmp1_cast_cast_fu_1206_p3 = {{1'd1}, {j_reg_861}};
assign tmp2_cast_fu_1241_p1 = tmp1_cast_cast_fu_1206_p3;
assign tmp3_fu_1302_p2 = ($signed(j_reg_861) + $signed(5'd31));
assign tmp_2_fu_1277_p3 = {{i_2_reg_1360}, {indvars_iv_next25_fu_1271_p2}};
assign tmp_3_fu_1308_p3 = {{i_2_reg_1360}, {tmp3_fu_1302_p2}};
assign tmp_4_fu_1194_p3 = {{i_fu_118}, {j_reg_861}};
assign tmp_s_fu_1174_p3 = {{i_fu_118}, {5'd0}};
always @ (posedge ap_clk) begin
    tmp_s_reg_1369[4:0] <= 5'b00000;
    p_cast16_reg_1388[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 