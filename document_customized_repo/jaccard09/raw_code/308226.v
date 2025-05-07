module bicg_bicg_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v137_2_address0,v137_2_ce0,v137_2_q0,v137_2_address1,v137_2_ce1,v137_2_q1,v137_3_address0,v137_3_ce0,v137_3_q0,v137_3_address1,v137_3_ce1,v137_3_q1,v137_4_address0,v137_4_ce0,v137_4_q0,v137_4_address1,v137_4_ce1,v137_4_q1,v137_5_address0,v137_5_ce0,v137_5_q0,v137_5_address1,v137_5_ce1,v137_5_q1,v137_6_address0,v137_6_ce0,v137_6_q0,v137_6_address1,v137_6_ce1,v137_6_q1,v137_7_address0,v137_7_ce0,v137_7_q0,v137_7_address1,v137_7_ce1,v137_7_q1,v137_8_address0,v137_8_ce0,v137_8_q0,v137_8_address1,v137_8_ce1,v137_8_q1,v137_9_address0,v137_9_ce0,v137_9_q0,v137_9_address1,v137_9_ce1,v137_9_q1,v137_10_address0,v137_10_ce0,v137_10_q0,v137_10_address1,v137_10_ce1,v137_10_q1,v137_11_address0,v137_11_ce0,v137_11_q0,v137_11_address1,v137_11_ce1,v137_11_q1,v137_12_address0,v137_12_ce0,v137_12_q0,v137_12_address1,v137_12_ce1,v137_12_q1,v137_13_address0,v137_13_ce0,v137_13_q0,v137_13_address1,v137_13_ce1,v137_13_q1,v137_14_address0,v137_14_ce0,v137_14_q0,v137_14_address1,v137_14_ce1,v137_14_q1,v137_15_address0,v137_15_ce0,v137_15_q0,v137_15_address1,v137_15_ce1,v137_15_q1,v139_address0,v139_ce0,v139_q0,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v137_0_address0;
output   v137_0_ce0;
input  [31:0] v137_0_q0;
output  [7:0] v137_0_address1;
output   v137_0_ce1;
input  [31:0] v137_0_q1;
output  [7:0] v137_1_address0;
output   v137_1_ce0;
input  [31:0] v137_1_q0;
output  [7:0] v137_1_address1;
output   v137_1_ce1;
input  [31:0] v137_1_q1;
output  [7:0] v137_2_address0;
output   v137_2_ce0;
input  [31:0] v137_2_q0;
output  [7:0] v137_2_address1;
output   v137_2_ce1;
input  [31:0] v137_2_q1;
output  [7:0] v137_3_address0;
output   v137_3_ce0;
input  [31:0] v137_3_q0;
output  [7:0] v137_3_address1;
output   v137_3_ce1;
input  [31:0] v137_3_q1;
output  [7:0] v137_4_address0;
output   v137_4_ce0;
input  [31:0] v137_4_q0;
output  [7:0] v137_4_address1;
output   v137_4_ce1;
input  [31:0] v137_4_q1;
output  [7:0] v137_5_address0;
output   v137_5_ce0;
input  [31:0] v137_5_q0;
output  [7:0] v137_5_address1;
output   v137_5_ce1;
input  [31:0] v137_5_q1;
output  [7:0] v137_6_address0;
output   v137_6_ce0;
input  [31:0] v137_6_q0;
output  [7:0] v137_6_address1;
output   v137_6_ce1;
input  [31:0] v137_6_q1;
output  [7:0] v137_7_address0;
output   v137_7_ce0;
input  [31:0] v137_7_q0;
output  [7:0] v137_7_address1;
output   v137_7_ce1;
input  [31:0] v137_7_q1;
output  [7:0] v137_8_address0;
output   v137_8_ce0;
input  [31:0] v137_8_q0;
output  [7:0] v137_8_address1;
output   v137_8_ce1;
input  [31:0] v137_8_q1;
output  [7:0] v137_9_address0;
output   v137_9_ce0;
input  [31:0] v137_9_q0;
output  [7:0] v137_9_address1;
output   v137_9_ce1;
input  [31:0] v137_9_q1;
output  [7:0] v137_10_address0;
output   v137_10_ce0;
input  [31:0] v137_10_q0;
output  [7:0] v137_10_address1;
output   v137_10_ce1;
input  [31:0] v137_10_q1;
output  [7:0] v137_11_address0;
output   v137_11_ce0;
input  [31:0] v137_11_q0;
output  [7:0] v137_11_address1;
output   v137_11_ce1;
input  [31:0] v137_11_q1;
output  [7:0] v137_12_address0;
output   v137_12_ce0;
input  [31:0] v137_12_q0;
output  [7:0] v137_12_address1;
output   v137_12_ce1;
input  [31:0] v137_12_q1;
output  [7:0] v137_13_address0;
output   v137_13_ce0;
input  [31:0] v137_13_q0;
output  [7:0] v137_13_address1;
output   v137_13_ce1;
input  [31:0] v137_13_q1;
output  [7:0] v137_14_address0;
output   v137_14_ce0;
input  [31:0] v137_14_q0;
output  [7:0] v137_14_address1;
output   v137_14_ce1;
input  [31:0] v137_14_q1;
output  [7:0] v137_15_address0;
output   v137_15_ce0;
input  [31:0] v137_15_q0;
output  [7:0] v137_15_address1;
output   v137_15_ce1;
input  [31:0] v137_15_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] v10_0_address0;
reg v10_0_ce0;
reg v10_0_we0;
reg[31:0] v10_0_d0;
reg[4:0] v10_0_address1;
reg v10_0_ce1;
reg v10_0_we1;
reg[31:0] v10_0_d1;
reg[4:0] v10_1_address0;
reg v10_1_ce0;
reg v10_1_we0;
reg[31:0] v10_1_d0;
reg[4:0] v10_1_address1;
reg v10_1_ce1;
reg v10_1_we1;
reg[31:0] v10_1_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] v11_1_reg_254;
wire    ap_CS_fsm_state2;
wire   [3:0] trunc_ln41_fu_196_p1;
reg   [3:0] trunc_ln41_reg_270;
wire    ap_CS_fsm_state3;
reg   [1:0] lshr_ln_reg_276;
wire   [0:0] cmp7_fu_210_p2;
reg   [0:0] cmp7_reg_282;
wire   [31:0] v17_fu_216_p1;
reg   [31:0] v17_reg_287;
reg   [4:0] tmp_s_reg_292;
wire    ap_CS_fsm_state4;
wire   [31:0] v17_1_fu_242_p1;
reg   [31:0] v17_1_reg_302;
wire    ap_CS_fsm_state5;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_ap_start;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_ap_done;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_ap_idle;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_ap_ready;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_ce1;
wire   [4:0] grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_ce0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_we0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_d0;
wire   [4:0] grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_ce1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_we1;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_d1;
wire   [4:0] grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_ce0;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_we0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_d0;
wire   [4:0] grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_ce1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_we1;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_d1;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_din1;
wire   [1:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_opcode;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_din1;
wire   [1:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_opcode;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_din1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_din1;
wire    grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_ce;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_ap_start;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_ap_done;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_ap_idle;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_ap_ready;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_ce1;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_ce0;
wire   [7:0] grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_ce1;
wire   [4:0] grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_ce0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_we0;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_d0;
wire   [4:0] grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_ce1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_we1;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_d1;
wire   [4:0] grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_address0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_ce0;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_we0;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_d0;
wire   [4:0] grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_address1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_ce1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_we1;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_d1;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_din1;
wire   [1:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_opcode;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_din1;
wire   [1:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_opcode;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_din1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_din1;
wire    grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_ce;
reg    grp_bicg_node1_Pipeline_label_2_fu_109_ap_start_reg;
reg    grp_bicg_node1_Pipeline_label_22_fu_137_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln41_fu_180_p1;
wire   [0:0] tmp_fu_172_p3;
wire   [63:0] or_ln41_cast_fu_237_p1;
reg   [6:0] v11_fu_84;
wire   [6:0] add_ln41_fu_185_p2;
reg    v139_ce0_local;
reg   [5:0] v139_address0_local;
wire   [5:0] or_ln_fu_230_p3;
wire   [31:0] grp_fu_307_p2;
reg   [31:0] grp_fu_307_p0;
reg   [31:0] grp_fu_307_p1;
reg    grp_fu_307_ce;
wire   [31:0] grp_fu_311_p2;
reg   [31:0] grp_fu_311_p0;
reg   [31:0] grp_fu_311_p1;
reg    grp_fu_311_ce;
wire   [31:0] grp_fu_315_p2;
reg   [31:0] grp_fu_315_p0;
reg   [31:0] grp_fu_315_p1;
reg    grp_fu_315_ce;
wire   [31:0] grp_fu_319_p2;
reg   [31:0] grp_fu_319_p0;
reg   [31:0] grp_fu_319_p1;
reg    grp_fu_319_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_bicg_node1_Pipeline_label_2_fu_109_ap_start_reg = 1'b0;
#0 grp_bicg_node1_Pipeline_label_22_fu_137_ap_start_reg = 1'b0;
#0 v11_fu_84 = 7'd0;
end
bicg_bicg_node1_Pipeline_label_2 grp_bicg_node1_Pipeline_label_2_fu_109(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_Pipeline_label_2_fu_109_ap_start),.ap_done(grp_bicg_node1_Pipeline_label_2_fu_109_ap_done),.ap_idle(grp_bicg_node1_Pipeline_label_2_fu_109_ap_idle),.ap_ready(grp_bicg_node1_Pipeline_label_2_fu_109_ap_ready),.lshr_ln(lshr_ln_reg_276),.v137_0_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_address0),.v137_0_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_ce0),.v137_0_q0(v137_0_q0),.v137_0_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_address1),.v137_0_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_ce1),.v137_0_q1(v137_0_q1),.v137_2_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_address0),.v137_2_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_ce0),.v137_2_q0(v137_2_q0),.v137_2_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_address1),.v137_2_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_ce1),.v137_2_q1(v137_2_q1),.v137_4_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_address0),.v137_4_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_ce0),.v137_4_q0(v137_4_q0),.v137_4_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_address1),.v137_4_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_ce1),.v137_4_q1(v137_4_q1),.v137_6_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_address0),.v137_6_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_ce0),.v137_6_q0(v137_6_q0),.v137_6_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_address1),.v137_6_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_ce1),.v137_6_q1(v137_6_q1),.v137_8_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_address0),.v137_8_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_ce0),.v137_8_q0(v137_8_q0),.v137_8_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_address1),.v137_8_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_ce1),.v137_8_q1(v137_8_q1),.v137_10_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_address0),.v137_10_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_ce0),.v137_10_q0(v137_10_q0),.v137_10_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_address1),.v137_10_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_ce1),.v137_10_q1(v137_10_q1),.v137_12_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_address0),.v137_12_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_ce0),.v137_12_q0(v137_12_q0),.v137_12_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_address1),.v137_12_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_ce1),.v137_12_q1(v137_12_q1),.v137_14_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_address0),.v137_14_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_ce0),.v137_14_q0(v137_14_q0),.v137_14_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_address1),.v137_14_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_ce1),.v137_14_q1(v137_14_q1),.v10_1_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_address0),.v10_1_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_ce0),.v10_1_we0(grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_we0),.v10_1_d0(grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_d0),.v10_1_q0(v10_1_q0),.v10_1_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_address1),.v10_1_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_ce1),.v10_1_we1(grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_we1),.v10_1_d1(grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_d1),.v10_1_q1(v10_1_q1),.v10_0_address0(grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_address0),.v10_0_ce0(grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_ce0),.v10_0_we0(grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_we0),.v10_0_d0(grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_d0),.v10_0_q0(v10_0_q0),.v10_0_address1(grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_address1),.v10_0_ce1(grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_ce1),.v10_0_we1(grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_we1),.v10_0_d1(grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_d1),.v10_0_q1(v10_0_q1),.cmp7(cmp7_reg_282),.empty(trunc_ln41_reg_270),.v17(v17_reg_287),.grp_fu_307_p_din0(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_din0),.grp_fu_307_p_din1(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_din1),.grp_fu_307_p_opcode(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_opcode),.grp_fu_307_p_dout0(grp_fu_307_p2),.grp_fu_307_p_ce(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_ce),.grp_fu_311_p_din0(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_din0),.grp_fu_311_p_din1(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_din1),.grp_fu_311_p_opcode(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_opcode),.grp_fu_311_p_dout0(grp_fu_311_p2),.grp_fu_311_p_ce(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_ce),.grp_fu_315_p_din0(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_din0),.grp_fu_315_p_din1(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_din1),.grp_fu_315_p_dout0(grp_fu_315_p2),.grp_fu_315_p_ce(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_ce),.grp_fu_319_p_din0(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_din0),.grp_fu_319_p_din1(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_din1),.grp_fu_319_p_dout0(grp_fu_319_p2),.grp_fu_319_p_ce(grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_ce));
bicg_bicg_node1_Pipeline_label_22 grp_bicg_node1_Pipeline_label_22_fu_137(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_Pipeline_label_22_fu_137_ap_start),.ap_done(grp_bicg_node1_Pipeline_label_22_fu_137_ap_done),.ap_idle(grp_bicg_node1_Pipeline_label_22_fu_137_ap_idle),.ap_ready(grp_bicg_node1_Pipeline_label_22_fu_137_ap_ready),.lshr_ln(lshr_ln_reg_276),.v137_1_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_address0),.v137_1_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_ce0),.v137_1_q0(v137_1_q0),.v137_1_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_address1),.v137_1_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_ce1),.v137_1_q1(v137_1_q1),.v137_3_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_address0),.v137_3_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_ce0),.v137_3_q0(v137_3_q0),.v137_3_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_address1),.v137_3_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_ce1),.v137_3_q1(v137_3_q1),.v137_5_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_address0),.v137_5_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_ce0),.v137_5_q0(v137_5_q0),.v137_5_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_address1),.v137_5_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_ce1),.v137_5_q1(v137_5_q1),.v137_7_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_address0),.v137_7_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_ce0),.v137_7_q0(v137_7_q0),.v137_7_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_address1),.v137_7_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_ce1),.v137_7_q1(v137_7_q1),.v137_9_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_address0),.v137_9_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_ce0),.v137_9_q0(v137_9_q0),.v137_9_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_address1),.v137_9_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_ce1),.v137_9_q1(v137_9_q1),.v137_11_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_address0),.v137_11_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_ce0),.v137_11_q0(v137_11_q0),.v137_11_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_address1),.v137_11_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_ce1),.v137_11_q1(v137_11_q1),.v137_13_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_address0),.v137_13_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_ce0),.v137_13_q0(v137_13_q0),.v137_13_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_address1),.v137_13_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_ce1),.v137_13_q1(v137_13_q1),.v137_15_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_address0),.v137_15_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_ce0),.v137_15_q0(v137_15_q0),.v137_15_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_address1),.v137_15_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_ce1),.v137_15_q1(v137_15_q1),.v10_1_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_address0),.v10_1_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_ce0),.v10_1_we0(grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_we0),.v10_1_d0(grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_d0),.v10_1_q0(v10_1_q0),.v10_1_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_address1),.v10_1_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_ce1),.v10_1_we1(grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_we1),.v10_1_d1(grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_d1),.v10_1_q1(v10_1_q1),.v10_0_address0(grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_address0),.v10_0_ce0(grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_ce0),.v10_0_we0(grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_we0),.v10_0_d0(grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_d0),.v10_0_q0(v10_0_q0),.v10_0_address1(grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_address1),.v10_0_ce1(grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_ce1),.v10_0_we1(grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_we1),.v10_0_d1(grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_d1),.v10_0_q1(v10_0_q1),.empty(trunc_ln41_reg_270),.v17_1(v17_1_reg_302),.grp_fu_307_p_din0(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_din0),.grp_fu_307_p_din1(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_din1),.grp_fu_307_p_opcode(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_opcode),.grp_fu_307_p_dout0(grp_fu_307_p2),.grp_fu_307_p_ce(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_ce),.grp_fu_311_p_din0(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_din0),.grp_fu_311_p_din1(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_din1),.grp_fu_311_p_opcode(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_opcode),.grp_fu_311_p_dout0(grp_fu_311_p2),.grp_fu_311_p_ce(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_ce),.grp_fu_315_p_din0(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_din0),.grp_fu_315_p_din1(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_din1),.grp_fu_315_p_dout0(grp_fu_315_p2),.grp_fu_315_p_ce(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_ce),.grp_fu_319_p_din0(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_din0),.grp_fu_319_p_din1(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_din1),.grp_fu_319_p_dout0(grp_fu_319_p2),.grp_fu_319_p_ce(grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_ce));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U334(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_307_p0),.din1(grp_fu_307_p1),.ce(grp_fu_307_ce),.dout(grp_fu_307_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U335(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_311_p0),.din1(grp_fu_311_p1),.ce(grp_fu_311_ce),.dout(grp_fu_311_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U336(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_315_p0),.din1(grp_fu_315_p1),.ce(grp_fu_315_ce),.dout(grp_fu_315_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U337(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_319_p0),.din1(grp_fu_319_p1),.ce(grp_fu_319_ce),.dout(grp_fu_319_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_Pipeline_label_22_fu_137_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bicg_node1_Pipeline_label_22_fu_137_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_Pipeline_label_22_fu_137_ap_ready == 1'b1)) begin
            grp_bicg_node1_Pipeline_label_22_fu_137_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_Pipeline_label_2_fu_109_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_node1_Pipeline_label_2_fu_109_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_Pipeline_label_2_fu_109_ap_ready == 1'b1)) begin
            grp_bicg_node1_Pipeline_label_2_fu_109_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v11_fu_84 <= 7'd0;
    end else if (((tmp_fu_172_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v11_fu_84 <= add_ln41_fu_185_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp7_reg_282 <= cmp7_fu_210_p2;
        lshr_ln_reg_276 <= {{v11_1_reg_254[5:4]}};
        tmp_s_reg_292 <= {{v11_1_reg_254[5:1]}};
        trunc_ln41_reg_270 <= trunc_ln41_fu_196_p1;
        v17_reg_287 <= v17_fu_216_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v11_1_reg_254 <= v11_fu_84;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v17_1_reg_302 <= v17_1_fu_242_p1;
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
    if ((grp_bicg_node1_Pipeline_label_2_fu_109_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_node1_Pipeline_label_22_fu_137_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_172_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_172_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_307_ce = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_307_ce = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_ce;
    end else begin
        grp_fu_307_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_307_p0 = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_307_p0 = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_din0;
    end else begin
        grp_fu_307_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_307_p1 = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_307_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_307_p1 = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_307_p_din1;
    end else begin
        grp_fu_307_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_311_ce = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_311_ce = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_ce;
    end else begin
        grp_fu_311_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_311_p0 = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_311_p0 = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_din0;
    end else begin
        grp_fu_311_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_311_p1 = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_311_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_311_p1 = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_311_p_din1;
    end else begin
        grp_fu_311_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_315_ce = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_315_ce = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_ce;
    end else begin
        grp_fu_315_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_315_p0 = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_315_p0 = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_din0;
    end else begin
        grp_fu_315_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_315_p1 = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_315_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_315_p1 = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_315_p_din1;
    end else begin
        grp_fu_315_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_319_ce = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_319_ce = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_ce;
    end else begin
        grp_fu_319_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_319_p0 = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_319_p0 = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_din0;
    end else begin
        grp_fu_319_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_319_p1 = grp_bicg_node1_Pipeline_label_22_fu_137_grp_fu_319_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_319_p1 = grp_bicg_node1_Pipeline_label_2_fu_109_grp_fu_319_p_din1;
    end else begin
        grp_fu_319_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_address0;
    end else begin
        v10_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_address1;
    end else begin
        v10_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_ce0;
    end else begin
        v10_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_ce1;
    end else begin
        v10_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_d0 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_d0 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_d0;
    end else begin
        v10_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_d1 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_d1 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_d1;
    end else begin
        v10_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_we0 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_we0 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_we0;
    end else begin
        v10_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_we1 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_we1 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_0_we1;
    end else begin
        v10_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_address0;
    end else begin
        v10_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_address1;
    end else begin
        v10_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_ce0;
    end else begin
        v10_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_ce1;
    end else begin
        v10_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_d0 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_d0 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_d0;
    end else begin
        v10_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_d1 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_d1 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_d1;
    end else begin
        v10_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_we0 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_we0 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_we0;
    end else begin
        v10_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_we1 = grp_bicg_node1_Pipeline_label_22_fu_137_v10_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_we1 = grp_bicg_node1_Pipeline_label_2_fu_109_v10_1_we1;
    end else begin
        v10_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v139_address0_local = or_ln41_cast_fu_237_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v139_address0_local = zext_ln41_fu_180_p1;
    end else begin
        v139_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((grp_bicg_node1_Pipeline_label_2_fu_109_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)))) begin
        v139_ce0_local = 1'b1;
    end else begin
        v139_ce0_local = 1'b0;
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
            if (((tmp_fu_172_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_node1_Pipeline_label_2_fu_109_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_bicg_node1_Pipeline_label_22_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln41_fu_185_p2 = (v11_fu_84 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign cmp7_fu_210_p2 = ((v11_1_reg_254 == 7'd0) ? 1'b1 : 1'b0);
assign grp_bicg_node1_Pipeline_label_22_fu_137_ap_start = grp_bicg_node1_Pipeline_label_22_fu_137_ap_start_reg;
assign grp_bicg_node1_Pipeline_label_2_fu_109_ap_start = grp_bicg_node1_Pipeline_label_2_fu_109_ap_start_reg;
assign or_ln41_cast_fu_237_p1 = or_ln_fu_230_p3;
assign or_ln_fu_230_p3 = {{tmp_s_reg_292}, {1'd1}};
assign tmp_fu_172_p3 = v11_fu_84[32'd6];
assign trunc_ln41_fu_196_p1 = v11_1_reg_254[3:0];
assign v137_0_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_address0;
assign v137_0_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_address1;
assign v137_0_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_ce0;
assign v137_0_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_0_ce1;
assign v137_10_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_address0;
assign v137_10_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_address1;
assign v137_10_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_ce0;
assign v137_10_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_10_ce1;
assign v137_11_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_address0;
assign v137_11_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_address1;
assign v137_11_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_ce0;
assign v137_11_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_11_ce1;
assign v137_12_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_address0;
assign v137_12_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_address1;
assign v137_12_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_ce0;
assign v137_12_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_12_ce1;
assign v137_13_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_address0;
assign v137_13_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_address1;
assign v137_13_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_ce0;
assign v137_13_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_13_ce1;
assign v137_14_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_address0;
assign v137_14_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_address1;
assign v137_14_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_ce0;
assign v137_14_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_14_ce1;
assign v137_15_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_address0;
assign v137_15_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_address1;
assign v137_15_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_ce0;
assign v137_15_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_15_ce1;
assign v137_1_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_address0;
assign v137_1_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_address1;
assign v137_1_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_ce0;
assign v137_1_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_1_ce1;
assign v137_2_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_address0;
assign v137_2_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_address1;
assign v137_2_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_ce0;
assign v137_2_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_2_ce1;
assign v137_3_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_address0;
assign v137_3_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_address1;
assign v137_3_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_ce0;
assign v137_3_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_3_ce1;
assign v137_4_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_address0;
assign v137_4_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_address1;
assign v137_4_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_ce0;
assign v137_4_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_4_ce1;
assign v137_5_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_address0;
assign v137_5_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_address1;
assign v137_5_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_ce0;
assign v137_5_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_5_ce1;
assign v137_6_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_address0;
assign v137_6_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_address1;
assign v137_6_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_ce0;
assign v137_6_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_6_ce1;
assign v137_7_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_address0;
assign v137_7_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_address1;
assign v137_7_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_ce0;
assign v137_7_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_7_ce1;
assign v137_8_address0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_address0;
assign v137_8_address1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_address1;
assign v137_8_ce0 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_ce0;
assign v137_8_ce1 = grp_bicg_node1_Pipeline_label_2_fu_109_v137_8_ce1;
assign v137_9_address0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_address0;
assign v137_9_address1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_address1;
assign v137_9_ce0 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_ce0;
assign v137_9_ce1 = grp_bicg_node1_Pipeline_label_22_fu_137_v137_9_ce1;
assign v139_address0 = v139_address0_local;
assign v139_ce0 = v139_ce0_local;
assign v17_1_fu_242_p1 = v139_q0;
assign v17_fu_216_p1 = v139_q0;
assign zext_ln41_fu_180_p1 = v11_fu_84;
endmodule 