module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,grp_fu_399_p_din0,grp_fu_399_p_din1,grp_fu_399_p_opcode,grp_fu_399_p_dout0,grp_fu_399_p_ce,grp_fu_403_p_din0,grp_fu_403_p_din1,grp_fu_403_p_opcode,grp_fu_403_p_dout0,grp_fu_403_p_ce,grp_fu_407_p_din0,grp_fu_407_p_din1,grp_fu_407_p_dout0,grp_fu_407_p_ce,grp_fu_411_p_din0,grp_fu_411_p_din1,grp_fu_411_p_dout0,grp_fu_411_p_ce); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [2:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [2:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [2:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [2:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [2:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [2:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [2:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [4:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [4:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
output  [4:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [4:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [31:0] grp_fu_399_p_din0;
output  [31:0] grp_fu_399_p_din1;
output  [1:0] grp_fu_399_p_opcode;
input  [31:0] grp_fu_399_p_dout0;
output   grp_fu_399_p_ce;
output  [31:0] grp_fu_403_p_din0;
output  [31:0] grp_fu_403_p_din1;
output  [1:0] grp_fu_403_p_opcode;
input  [31:0] grp_fu_403_p_dout0;
output   grp_fu_403_p_ce;
output  [31:0] grp_fu_407_p_din0;
output  [31:0] grp_fu_407_p_din1;
input  [31:0] grp_fu_407_p_dout0;
output   grp_fu_407_p_ce;
output  [31:0] grp_fu_411_p_din0;
output  [31:0] grp_fu_411_p_din1;
input  [31:0] grp_fu_411_p_dout0;
output   grp_fu_411_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] v113_address0;
reg v113_ce0;
reg[11:0] v113_address1;
reg v113_ce1;
reg[4:0] v116_0_address0;
reg v116_0_ce0;
reg v116_0_we0;
reg[31:0] v116_0_d0;
reg[4:0] v116_0_address1;
reg v116_0_ce1;
reg v116_0_we1;
reg[31:0] v116_0_d1;
reg[4:0] v116_1_address0;
reg v116_1_ce0;
reg v116_1_we0;
reg[31:0] v116_1_d0;
reg[4:0] v116_1_address1;
reg v116_1_ce1;
reg v116_1_we1;
reg[31:0] v116_1_d1;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] v4_1_reg_435;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln26_fu_292_p1;
reg   [63:0] zext_ln26_reg_446;
wire   [5:0] trunc_ln27_fu_313_p1;
reg   [5:0] trunc_ln27_reg_469;
wire    ap_CS_fsm_state3;
wire   [0:0] empty_fu_320_p2;
reg   [0:0] empty_reg_474;
wire   [31:0] v6_fu_326_p3;
reg   [31:0] v6_reg_481;
wire   [31:0] v6_1_fu_335_p3;
reg   [31:0] v6_1_reg_516;
wire    ap_CS_fsm_state4;
wire   [31:0] v6_2_fu_342_p3;
reg   [31:0] v6_2_reg_521;
wire   [31:0] v6_3_fu_349_p3;
reg   [31:0] v6_3_reg_526;
wire   [4:0] tmp_s_fu_360_p4;
reg   [4:0] tmp_s_reg_534;
wire    ap_CS_fsm_state5;
wire   [11:0] tmp_77_fu_370_p3;
reg   [11:0] tmp_77_reg_539;
reg   [3:0] tmp_78_reg_544;
wire   [11:0] tmp_79_fu_396_p3;
reg   [11:0] tmp_79_reg_557;
wire    ap_CS_fsm_state9;
wire    grp_atax_node0_Pipeline_label_1_fu_208_ap_start;
wire    grp_atax_node0_Pipeline_label_1_fu_208_ap_done;
wire    grp_atax_node0_Pipeline_label_1_fu_208_ap_idle;
wire    grp_atax_node0_Pipeline_label_1_fu_208_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_208_v113_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_208_v113_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v113_ce1;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_208_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_v116_1_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_208_v116_1_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v116_1_ce1;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v116_1_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_v116_1_d1;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_208_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_v116_0_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_208_v116_0_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v116_0_ce1;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v116_0_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_v116_0_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_v7_out;
wire    grp_atax_node0_Pipeline_label_1_fu_208_v7_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_ce;
wire    grp_atax_node0_Pipeline_label_13_fu_222_ap_start;
wire    grp_atax_node0_Pipeline_label_13_fu_222_ap_done;
wire    grp_atax_node0_Pipeline_label_13_fu_222_ap_idle;
wire    grp_atax_node0_Pipeline_label_13_fu_222_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_13_fu_222_v113_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_13_fu_222_v113_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v113_ce1;
wire   [4:0] grp_atax_node0_Pipeline_label_13_fu_222_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_v116_1_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_13_fu_222_v116_1_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v116_1_ce1;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v116_1_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_v116_1_d1;
wire   [4:0] grp_atax_node0_Pipeline_label_13_fu_222_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_v116_0_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_13_fu_222_v116_0_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v116_0_ce1;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v116_0_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_v116_0_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_v7_1_out;
wire    grp_atax_node0_Pipeline_label_13_fu_222_v7_1_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_opcode;
wire    grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_opcode;
wire    grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_din1;
wire    grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_din1;
wire    grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_ce;
wire    grp_atax_node0_Pipeline_label_14_fu_237_ap_start;
wire    grp_atax_node0_Pipeline_label_14_fu_237_ap_done;
wire    grp_atax_node0_Pipeline_label_14_fu_237_ap_idle;
wire    grp_atax_node0_Pipeline_label_14_fu_237_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_14_fu_237_v113_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_14_fu_237_v113_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v113_ce1;
wire   [4:0] grp_atax_node0_Pipeline_label_14_fu_237_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_v116_1_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_14_fu_237_v116_1_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v116_1_ce1;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v116_1_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_v116_1_d1;
wire   [4:0] grp_atax_node0_Pipeline_label_14_fu_237_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_v116_0_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_14_fu_237_v116_0_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v116_0_ce1;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v116_0_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_v116_0_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_v7_2_out;
wire    grp_atax_node0_Pipeline_label_14_fu_237_v7_2_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_opcode;
wire    grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_opcode;
wire    grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_din1;
wire    grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_din1;
wire    grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_ce;
wire    grp_atax_node0_Pipeline_label_15_fu_251_ap_start;
wire    grp_atax_node0_Pipeline_label_15_fu_251_ap_done;
wire    grp_atax_node0_Pipeline_label_15_fu_251_ap_idle;
wire    grp_atax_node0_Pipeline_label_15_fu_251_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_15_fu_251_v113_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_15_fu_251_v113_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v113_ce1;
wire   [4:0] grp_atax_node0_Pipeline_label_15_fu_251_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_v116_1_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_15_fu_251_v116_1_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v116_1_ce1;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v116_1_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_v116_1_d1;
wire   [4:0] grp_atax_node0_Pipeline_label_15_fu_251_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_v116_0_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_15_fu_251_v116_0_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v116_0_ce1;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v116_0_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_v116_0_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_v7_3_out_o;
wire    grp_atax_node0_Pipeline_label_15_fu_251_v7_3_out_o_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_opcode;
wire    grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_opcode;
wire    grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_din1;
wire    grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_din1;
wire    grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_ce;
reg    grp_atax_node0_Pipeline_label_1_fu_208_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_13_fu_222_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_atax_node0_Pipeline_label_14_fu_237_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_atax_node0_Pipeline_label_15_fu_251_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [31:0] v3_fu_84;
wire   [0:0] tmp_fu_274_p3;
reg   [6:0] v4_fu_88;
wire   [6:0] add_ln27_fu_298_p2;
reg    v0_0_ce0_local;
reg    v0_4_ce0_local;
reg    v0_1_ce0_local;
reg    v0_5_ce0_local;
reg    v0_2_ce0_local;
reg    v0_6_ce0_local;
reg    v0_3_ce0_local;
reg    v0_7_ce0_local;
wire   [2:0] lshr_ln_fu_282_p4;
wire   [2:0] trunc_ln27_1_fu_317_p1;
reg   [31:0] grp_fu_562_p0;
reg   [31:0] grp_fu_562_p1;
reg    grp_fu_562_ce;
reg   [31:0] grp_fu_566_p0;
reg   [31:0] grp_fu_566_p1;
reg    grp_fu_566_ce;
reg   [31:0] grp_fu_570_p0;
reg   [31:0] grp_fu_570_p1;
reg    grp_fu_570_ce;
reg   [31:0] grp_fu_574_p0;
reg   [31:0] grp_fu_574_p1;
reg    grp_fu_574_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_atax_node0_Pipeline_label_1_fu_208_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_13_fu_222_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_14_fu_237_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_15_fu_251_ap_start_reg = 1'b0;
#0 v4_fu_88 = 7'd0;
end
atax_atax_node0_Pipeline_label_1 grp_atax_node0_Pipeline_label_1_fu_208(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_1_fu_208_ap_start),.ap_done(grp_atax_node0_Pipeline_label_1_fu_208_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_1_fu_208_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_1_fu_208_ap_ready),.v3(v3_fu_84),.v4(trunc_ln27_reg_469),.v113_address0(grp_atax_node0_Pipeline_label_1_fu_208_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_1_fu_208_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_1_fu_208_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_1_fu_208_v113_ce1),.v113_q1(v113_q1),.v116_1_address0(grp_atax_node0_Pipeline_label_1_fu_208_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_1_fu_208_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_1_fu_208_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_1_fu_208_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_Pipeline_label_1_fu_208_v116_1_address1),.v116_1_ce1(grp_atax_node0_Pipeline_label_1_fu_208_v116_1_ce1),.v116_1_we1(grp_atax_node0_Pipeline_label_1_fu_208_v116_1_we1),.v116_1_d1(grp_atax_node0_Pipeline_label_1_fu_208_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_0_address0(grp_atax_node0_Pipeline_label_1_fu_208_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_1_fu_208_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_1_fu_208_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_1_fu_208_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_Pipeline_label_1_fu_208_v116_0_address1),.v116_0_ce1(grp_atax_node0_Pipeline_label_1_fu_208_v116_0_ce1),.v116_0_we1(grp_atax_node0_Pipeline_label_1_fu_208_v116_0_we1),.v116_0_d1(grp_atax_node0_Pipeline_label_1_fu_208_v116_0_d1),.v116_0_q1(v116_0_q1),.v6(v6_reg_481),.v7_out(grp_atax_node0_Pipeline_label_1_fu_208_v7_out),.v7_out_ap_vld(grp_atax_node0_Pipeline_label_1_fu_208_v7_out_ap_vld),.grp_fu_562_p_din0(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_din0),.grp_fu_562_p_din1(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_din1),.grp_fu_562_p_opcode(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_opcode),.grp_fu_562_p_dout0(grp_fu_399_p_dout0),.grp_fu_562_p_ce(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_ce),.grp_fu_566_p_din0(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_din0),.grp_fu_566_p_din1(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_din1),.grp_fu_566_p_opcode(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_opcode),.grp_fu_566_p_dout0(grp_fu_403_p_dout0),.grp_fu_566_p_ce(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_ce),.grp_fu_570_p_din0(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_din0),.grp_fu_570_p_din1(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_din1),.grp_fu_570_p_dout0(grp_fu_407_p_dout0),.grp_fu_570_p_ce(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_ce),.grp_fu_574_p_din0(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_din0),.grp_fu_574_p_din1(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_din1),.grp_fu_574_p_dout0(grp_fu_411_p_dout0),.grp_fu_574_p_ce(grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_ce));
atax_atax_node0_Pipeline_label_13 grp_atax_node0_Pipeline_label_13_fu_222(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_13_fu_222_ap_start),.ap_done(grp_atax_node0_Pipeline_label_13_fu_222_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_13_fu_222_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_13_fu_222_ap_ready),.v7_reload(grp_atax_node0_Pipeline_label_1_fu_208_v7_out),.zext_ln33_2(tmp_77_reg_539),.v113_address0(grp_atax_node0_Pipeline_label_13_fu_222_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_13_fu_222_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_13_fu_222_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_13_fu_222_v113_ce1),.v113_q1(v113_q1),.v116_1_address0(grp_atax_node0_Pipeline_label_13_fu_222_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_13_fu_222_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_13_fu_222_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_13_fu_222_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_Pipeline_label_13_fu_222_v116_1_address1),.v116_1_ce1(grp_atax_node0_Pipeline_label_13_fu_222_v116_1_ce1),.v116_1_we1(grp_atax_node0_Pipeline_label_13_fu_222_v116_1_we1),.v116_1_d1(grp_atax_node0_Pipeline_label_13_fu_222_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_0_address0(grp_atax_node0_Pipeline_label_13_fu_222_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_13_fu_222_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_13_fu_222_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_13_fu_222_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_Pipeline_label_13_fu_222_v116_0_address1),.v116_0_ce1(grp_atax_node0_Pipeline_label_13_fu_222_v116_0_ce1),.v116_0_we1(grp_atax_node0_Pipeline_label_13_fu_222_v116_0_we1),.v116_0_d1(grp_atax_node0_Pipeline_label_13_fu_222_v116_0_d1),.v116_0_q1(v116_0_q1),.v6_1(v6_1_reg_516),.tmp_173(tmp_s_reg_534),.v7_1_out(grp_atax_node0_Pipeline_label_13_fu_222_v7_1_out),.v7_1_out_ap_vld(grp_atax_node0_Pipeline_label_13_fu_222_v7_1_out_ap_vld),.grp_fu_562_p_din0(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_din0),.grp_fu_562_p_din1(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_din1),.grp_fu_562_p_opcode(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_opcode),.grp_fu_562_p_dout0(grp_fu_399_p_dout0),.grp_fu_562_p_ce(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_ce),.grp_fu_566_p_din0(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_din0),.grp_fu_566_p_din1(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_din1),.grp_fu_566_p_opcode(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_opcode),.grp_fu_566_p_dout0(grp_fu_403_p_dout0),.grp_fu_566_p_ce(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_ce),.grp_fu_570_p_din0(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_din0),.grp_fu_570_p_din1(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_din1),.grp_fu_570_p_dout0(grp_fu_407_p_dout0),.grp_fu_570_p_ce(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_ce),.grp_fu_574_p_din0(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_din0),.grp_fu_574_p_din1(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_din1),.grp_fu_574_p_dout0(grp_fu_411_p_dout0),.grp_fu_574_p_ce(grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_ce));
atax_atax_node0_Pipeline_label_14 grp_atax_node0_Pipeline_label_14_fu_237(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_14_fu_237_ap_start),.ap_done(grp_atax_node0_Pipeline_label_14_fu_237_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_14_fu_237_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_14_fu_237_ap_ready),.v7_1_reload(grp_atax_node0_Pipeline_label_13_fu_222_v7_1_out),.tmp_228(tmp_78_reg_544),.v113_address0(grp_atax_node0_Pipeline_label_14_fu_237_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_14_fu_237_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_14_fu_237_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_14_fu_237_v113_ce1),.v113_q1(v113_q1),.v116_1_address0(grp_atax_node0_Pipeline_label_14_fu_237_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_14_fu_237_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_14_fu_237_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_14_fu_237_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_Pipeline_label_14_fu_237_v116_1_address1),.v116_1_ce1(grp_atax_node0_Pipeline_label_14_fu_237_v116_1_ce1),.v116_1_we1(grp_atax_node0_Pipeline_label_14_fu_237_v116_1_we1),.v116_1_d1(grp_atax_node0_Pipeline_label_14_fu_237_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_0_address0(grp_atax_node0_Pipeline_label_14_fu_237_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_14_fu_237_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_14_fu_237_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_14_fu_237_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_Pipeline_label_14_fu_237_v116_0_address1),.v116_0_ce1(grp_atax_node0_Pipeline_label_14_fu_237_v116_0_ce1),.v116_0_we1(grp_atax_node0_Pipeline_label_14_fu_237_v116_0_we1),.v116_0_d1(grp_atax_node0_Pipeline_label_14_fu_237_v116_0_d1),.v116_0_q1(v116_0_q1),.v6_2(v6_2_reg_521),.v7_2_out(grp_atax_node0_Pipeline_label_14_fu_237_v7_2_out),.v7_2_out_ap_vld(grp_atax_node0_Pipeline_label_14_fu_237_v7_2_out_ap_vld),.grp_fu_562_p_din0(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_din0),.grp_fu_562_p_din1(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_din1),.grp_fu_562_p_opcode(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_opcode),.grp_fu_562_p_dout0(grp_fu_399_p_dout0),.grp_fu_562_p_ce(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_ce),.grp_fu_566_p_din0(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_din0),.grp_fu_566_p_din1(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_din1),.grp_fu_566_p_opcode(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_opcode),.grp_fu_566_p_dout0(grp_fu_403_p_dout0),.grp_fu_566_p_ce(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_ce),.grp_fu_570_p_din0(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_din0),.grp_fu_570_p_din1(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_din1),.grp_fu_570_p_dout0(grp_fu_407_p_dout0),.grp_fu_570_p_ce(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_ce),.grp_fu_574_p_din0(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_din0),.grp_fu_574_p_din1(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_din1),.grp_fu_574_p_dout0(grp_fu_411_p_dout0),.grp_fu_574_p_ce(grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_ce));
atax_atax_node0_Pipeline_label_15 grp_atax_node0_Pipeline_label_15_fu_251(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_15_fu_251_ap_start),.ap_done(grp_atax_node0_Pipeline_label_15_fu_251_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_15_fu_251_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_15_fu_251_ap_ready),.v7_2_reload(grp_atax_node0_Pipeline_label_14_fu_237_v7_2_out),.zext_ln33_6(tmp_79_reg_557),.v113_address0(grp_atax_node0_Pipeline_label_15_fu_251_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_15_fu_251_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_15_fu_251_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_15_fu_251_v113_ce1),.v113_q1(v113_q1),.v116_1_address0(grp_atax_node0_Pipeline_label_15_fu_251_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_15_fu_251_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_15_fu_251_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_15_fu_251_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_Pipeline_label_15_fu_251_v116_1_address1),.v116_1_ce1(grp_atax_node0_Pipeline_label_15_fu_251_v116_1_ce1),.v116_1_we1(grp_atax_node0_Pipeline_label_15_fu_251_v116_1_we1),.v116_1_d1(grp_atax_node0_Pipeline_label_15_fu_251_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_0_address0(grp_atax_node0_Pipeline_label_15_fu_251_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_15_fu_251_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_15_fu_251_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_15_fu_251_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_Pipeline_label_15_fu_251_v116_0_address1),.v116_0_ce1(grp_atax_node0_Pipeline_label_15_fu_251_v116_0_ce1),.v116_0_we1(grp_atax_node0_Pipeline_label_15_fu_251_v116_0_we1),.v116_0_d1(grp_atax_node0_Pipeline_label_15_fu_251_v116_0_d1),.v116_0_q1(v116_0_q1),.v6_3(v6_3_reg_526),.tmp_228(tmp_78_reg_544),.v7_3_out_i(v3_fu_84),.v7_3_out_o(grp_atax_node0_Pipeline_label_15_fu_251_v7_3_out_o),.v7_3_out_o_ap_vld(grp_atax_node0_Pipeline_label_15_fu_251_v7_3_out_o_ap_vld),.grp_fu_562_p_din0(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_din0),.grp_fu_562_p_din1(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_din1),.grp_fu_562_p_opcode(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_opcode),.grp_fu_562_p_dout0(grp_fu_399_p_dout0),.grp_fu_562_p_ce(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_ce),.grp_fu_566_p_din0(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_din0),.grp_fu_566_p_din1(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_din1),.grp_fu_566_p_opcode(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_opcode),.grp_fu_566_p_dout0(grp_fu_403_p_dout0),.grp_fu_566_p_ce(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_ce),.grp_fu_570_p_din0(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_din0),.grp_fu_570_p_din1(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_din1),.grp_fu_570_p_dout0(grp_fu_407_p_dout0),.grp_fu_570_p_ce(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_ce),.grp_fu_574_p_din0(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_din0),.grp_fu_574_p_din1(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_din1),.grp_fu_574_p_dout0(grp_fu_411_p_dout0),.grp_fu_574_p_ce(grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_13_fu_222_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_Pipeline_label_13_fu_222_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_13_fu_222_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_13_fu_222_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_14_fu_237_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_atax_node0_Pipeline_label_14_fu_237_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_14_fu_237_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_14_fu_237_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_15_fu_251_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_node0_Pipeline_label_15_fu_251_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_15_fu_251_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_15_fu_251_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_1_fu_208_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node0_Pipeline_label_1_fu_208_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_1_fu_208_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_1_fu_208_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_88 <= 7'd0;
    end else if (((tmp_fu_274_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v4_fu_88 <= add_ln27_fu_298_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_reg_474 <= empty_fu_320_p2;
        trunc_ln27_reg_469 <= trunc_ln27_fu_313_p1;
        v6_reg_481 <= v6_fu_326_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_77_reg_539[11 : 7] <= tmp_77_fu_370_p3[11 : 7];
        tmp_78_reg_544 <= {{v4_1_reg_435[5:2]}};
        tmp_s_reg_534 <= {{v4_1_reg_435[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_79_reg_557[11 : 8] <= tmp_79_fu_396_p3[11 : 8];
    end
end
always @ (posedge ap_clk) begin
    if (((grp_atax_node0_Pipeline_label_15_fu_251_v7_3_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v3_fu_84 <= grp_atax_node0_Pipeline_label_15_fu_251_v7_3_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v4_1_reg_435 <= v4_fu_88;
        zext_ln26_reg_446[2 : 0] <= zext_ln26_fu_292_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v6_1_reg_516 <= v6_1_fu_335_p3;
        v6_2_reg_521 <= v6_2_fu_342_p3;
        v6_3_reg_526 <= v6_3_fu_349_p3;
    end
end
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_15_fu_251_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if ((grp_atax_node0_Pipeline_label_1_fu_208_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_13_fu_222_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_14_fu_237_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((tmp_fu_274_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_274_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_562_ce = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_562_ce = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_562_ce = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_562_ce = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_ce;
    end else begin
        grp_fu_562_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_562_p0 = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_562_p0 = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_562_p0 = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_562_p0 = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_din0;
    end else begin
        grp_fu_562_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_562_p1 = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_562_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_562_p1 = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_562_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_562_p1 = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_562_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_562_p1 = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_562_p_din1;
    end else begin
        grp_fu_562_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_566_ce = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_566_ce = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_566_ce = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_566_ce = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_ce;
    end else begin
        grp_fu_566_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_566_p0 = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_566_p0 = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_566_p0 = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_566_p0 = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_din0;
    end else begin
        grp_fu_566_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_566_p1 = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_566_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_566_p1 = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_566_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_566_p1 = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_566_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_566_p1 = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_566_p_din1;
    end else begin
        grp_fu_566_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_570_ce = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_570_ce = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_570_ce = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_570_ce = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_ce;
    end else begin
        grp_fu_570_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_570_p0 = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_570_p0 = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_570_p0 = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_570_p0 = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_din0;
    end else begin
        grp_fu_570_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_570_p1 = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_570_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_570_p1 = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_570_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_570_p1 = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_570_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_570_p1 = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_570_p_din1;
    end else begin
        grp_fu_570_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_574_ce = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_574_ce = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_574_ce = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_574_ce = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_ce;
    end else begin
        grp_fu_574_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_574_p0 = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_574_p0 = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_574_p0 = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_574_p0 = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_din0;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_574_p1 = grp_atax_node0_Pipeline_label_15_fu_251_grp_fu_574_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_574_p1 = grp_atax_node0_Pipeline_label_14_fu_237_grp_fu_574_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_574_p1 = grp_atax_node0_Pipeline_label_13_fu_222_grp_fu_574_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_574_p1 = grp_atax_node0_Pipeline_label_1_fu_208_grp_fu_574_p_din1;
    end else begin
        grp_fu_574_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_15_fu_251_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_14_fu_237_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_13_fu_222_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_1_fu_208_v113_address0;
    end else begin
        v113_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_15_fu_251_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_14_fu_237_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_13_fu_222_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_1_fu_208_v113_address1;
    end else begin
        v113_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_15_fu_251_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_14_fu_237_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_13_fu_222_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_1_fu_208_v113_ce0;
    end else begin
        v113_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_15_fu_251_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_14_fu_237_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_13_fu_222_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_1_fu_208_v113_ce1;
    end else begin
        v113_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_15_fu_251_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_14_fu_237_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_13_fu_222_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_1_fu_208_v116_0_address0;
    end else begin
        v116_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_address1 = grp_atax_node0_Pipeline_label_15_fu_251_v116_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_address1 = grp_atax_node0_Pipeline_label_14_fu_237_v116_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address1 = grp_atax_node0_Pipeline_label_13_fu_222_v116_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address1 = grp_atax_node0_Pipeline_label_1_fu_208_v116_0_address1;
    end else begin
        v116_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_15_fu_251_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_14_fu_237_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_13_fu_222_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_208_v116_0_ce0;
    end else begin
        v116_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_ce1 = grp_atax_node0_Pipeline_label_15_fu_251_v116_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_ce1 = grp_atax_node0_Pipeline_label_14_fu_237_v116_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce1 = grp_atax_node0_Pipeline_label_13_fu_222_v116_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce1 = grp_atax_node0_Pipeline_label_1_fu_208_v116_0_ce1;
    end else begin
        v116_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_15_fu_251_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_14_fu_237_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_13_fu_222_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_1_fu_208_v116_0_d0;
    end else begin
        v116_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_d1 = grp_atax_node0_Pipeline_label_15_fu_251_v116_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_d1 = grp_atax_node0_Pipeline_label_14_fu_237_v116_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d1 = grp_atax_node0_Pipeline_label_13_fu_222_v116_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d1 = grp_atax_node0_Pipeline_label_1_fu_208_v116_0_d1;
    end else begin
        v116_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_15_fu_251_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_14_fu_237_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_13_fu_222_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_1_fu_208_v116_0_we0;
    end else begin
        v116_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_we1 = grp_atax_node0_Pipeline_label_15_fu_251_v116_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_we1 = grp_atax_node0_Pipeline_label_14_fu_237_v116_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we1 = grp_atax_node0_Pipeline_label_13_fu_222_v116_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we1 = grp_atax_node0_Pipeline_label_1_fu_208_v116_0_we1;
    end else begin
        v116_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_15_fu_251_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_14_fu_237_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_13_fu_222_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_1_fu_208_v116_1_address0;
    end else begin
        v116_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_address1 = grp_atax_node0_Pipeline_label_15_fu_251_v116_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_address1 = grp_atax_node0_Pipeline_label_14_fu_237_v116_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address1 = grp_atax_node0_Pipeline_label_13_fu_222_v116_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address1 = grp_atax_node0_Pipeline_label_1_fu_208_v116_1_address1;
    end else begin
        v116_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_15_fu_251_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_14_fu_237_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_13_fu_222_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_208_v116_1_ce0;
    end else begin
        v116_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_ce1 = grp_atax_node0_Pipeline_label_15_fu_251_v116_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_ce1 = grp_atax_node0_Pipeline_label_14_fu_237_v116_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce1 = grp_atax_node0_Pipeline_label_13_fu_222_v116_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce1 = grp_atax_node0_Pipeline_label_1_fu_208_v116_1_ce1;
    end else begin
        v116_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_15_fu_251_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_14_fu_237_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_13_fu_222_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_1_fu_208_v116_1_d0;
    end else begin
        v116_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_d1 = grp_atax_node0_Pipeline_label_15_fu_251_v116_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_d1 = grp_atax_node0_Pipeline_label_14_fu_237_v116_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d1 = grp_atax_node0_Pipeline_label_13_fu_222_v116_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d1 = grp_atax_node0_Pipeline_label_1_fu_208_v116_1_d1;
    end else begin
        v116_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_15_fu_251_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_14_fu_237_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_13_fu_222_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_1_fu_208_v116_1_we0;
    end else begin
        v116_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_we1 = grp_atax_node0_Pipeline_label_15_fu_251_v116_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_we1 = grp_atax_node0_Pipeline_label_14_fu_237_v116_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we1 = grp_atax_node0_Pipeline_label_13_fu_222_v116_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we1 = grp_atax_node0_Pipeline_label_1_fu_208_v116_1_we1;
    end else begin
        v116_1_we1 = 1'b0;
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
            if (((tmp_fu_274_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_node0_Pipeline_label_1_fu_208_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node0_Pipeline_label_13_fu_222_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_atax_node0_Pipeline_label_14_fu_237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_atax_node0_Pipeline_label_15_fu_251_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_fu_298_p2 = (v4_fu_88 + 7'd4);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_fu_320_p2 = ((trunc_ln27_1_fu_317_p1 != 3'd0) ? 1'b1 : 1'b0);
assign grp_atax_node0_Pipeline_label_13_fu_222_ap_start = grp_atax_node0_Pipeline_label_13_fu_222_ap_start_reg;
assign grp_atax_node0_Pipeline_label_14_fu_237_ap_start = grp_atax_node0_Pipeline_label_14_fu_237_ap_start_reg;
assign grp_atax_node0_Pipeline_label_15_fu_251_ap_start = grp_atax_node0_Pipeline_label_15_fu_251_ap_start_reg;
assign grp_atax_node0_Pipeline_label_1_fu_208_ap_start = grp_atax_node0_Pipeline_label_1_fu_208_ap_start_reg;
assign grp_fu_399_p_ce = grp_fu_562_ce;
assign grp_fu_399_p_din0 = grp_fu_562_p0;
assign grp_fu_399_p_din1 = grp_fu_562_p1;
assign grp_fu_399_p_opcode = 2'd0;
assign grp_fu_403_p_ce = grp_fu_566_ce;
assign grp_fu_403_p_din0 = grp_fu_566_p0;
assign grp_fu_403_p_din1 = grp_fu_566_p1;
assign grp_fu_403_p_opcode = 2'd0;
assign grp_fu_407_p_ce = grp_fu_570_ce;
assign grp_fu_407_p_din0 = grp_fu_570_p0;
assign grp_fu_407_p_din1 = grp_fu_570_p1;
assign grp_fu_411_p_ce = grp_fu_574_ce;
assign grp_fu_411_p_din0 = grp_fu_574_p0;
assign grp_fu_411_p_din1 = grp_fu_574_p1;
assign lshr_ln_fu_282_p4 = {{v4_fu_88[5:3]}};
assign tmp_77_fu_370_p3 = {{tmp_s_fu_360_p4}, {7'd64}};
assign tmp_79_fu_396_p3 = {{tmp_78_reg_544}, {8'd192}};
assign tmp_fu_274_p3 = v4_fu_88[32'd6];
assign tmp_s_fu_360_p4 = {{v4_1_reg_435[5:1]}};
assign trunc_ln27_1_fu_317_p1 = v4_1_reg_435[2:0];
assign trunc_ln27_fu_313_p1 = v4_1_reg_435[5:0];
assign v0_0_address0 = zext_ln26_fu_292_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_reg_446;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln26_reg_446;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln26_reg_446;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = zext_ln26_fu_292_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = zext_ln26_reg_446;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = zext_ln26_reg_446;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = zext_ln26_reg_446;
assign v0_7_ce0 = v0_7_ce0_local;
assign v6_1_fu_335_p3 = ((empty_reg_474[0:0] == 1'b1) ? v0_5_q0 : v0_1_q0);
assign v6_2_fu_342_p3 = ((empty_reg_474[0:0] == 1'b1) ? v0_6_q0 : v0_2_q0);
assign v6_3_fu_349_p3 = ((empty_reg_474[0:0] == 1'b1) ? v0_7_q0 : v0_3_q0);
assign v6_fu_326_p3 = ((empty_fu_320_p2[0:0] == 1'b1) ? v0_4_q0 : v0_0_q0);
assign zext_ln26_fu_292_p1 = lshr_ln_fu_282_p4;
always @ (posedge ap_clk) begin
    zext_ln26_reg_446[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    tmp_77_reg_539[6:0] <= 7'b1000000;
    tmp_79_reg_557[7:0] <= 8'b11000000;
end
endmodule 