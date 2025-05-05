module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_address1,v116_4_ce1,v116_4_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_address1,v116_5_ce1,v116_5_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_address1,v116_6_ce1,v116_6_q1,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_address1,v116_7_ce1,v116_7_q1,grp_fu_341_p_din0,grp_fu_341_p_din1,grp_fu_341_p_opcode,grp_fu_341_p_dout0,grp_fu_341_p_ce,grp_fu_345_p_din0,grp_fu_345_p_din1,grp_fu_345_p_opcode,grp_fu_345_p_dout0,grp_fu_345_p_ce,grp_fu_349_p_din0,grp_fu_349_p_din1,grp_fu_349_p_dout0,grp_fu_349_p_ce,grp_fu_353_p_din0,grp_fu_353_p_din1,grp_fu_353_p_dout0,grp_fu_353_p_ce); 
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
output  [3:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [3:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [3:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [3:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [10:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [10:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [10:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [10:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
output  [2:0] v116_4_address1;
output   v116_4_ce1;
input  [31:0] v116_4_q1;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
output  [2:0] v116_5_address1;
output   v116_5_ce1;
input  [31:0] v116_5_q1;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
output  [2:0] v116_6_address1;
output   v116_6_ce1;
input  [31:0] v116_6_q1;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
output  [2:0] v116_7_address1;
output   v116_7_ce1;
input  [31:0] v116_7_q1;
output  [31:0] grp_fu_341_p_din0;
output  [31:0] grp_fu_341_p_din1;
output  [1:0] grp_fu_341_p_opcode;
input  [31:0] grp_fu_341_p_dout0;
output   grp_fu_341_p_ce;
output  [31:0] grp_fu_345_p_din0;
output  [31:0] grp_fu_345_p_din1;
output  [1:0] grp_fu_345_p_opcode;
input  [31:0] grp_fu_345_p_dout0;
output   grp_fu_345_p_ce;
output  [31:0] grp_fu_349_p_din0;
output  [31:0] grp_fu_349_p_din1;
input  [31:0] grp_fu_349_p_dout0;
output   grp_fu_349_p_ce;
output  [31:0] grp_fu_353_p_din0;
output  [31:0] grp_fu_353_p_din1;
input  [31:0] grp_fu_353_p_dout0;
output   grp_fu_353_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] v113_0_address0;
reg v113_0_ce0;
reg[10:0] v113_0_address1;
reg v113_0_ce1;
reg[10:0] v113_1_address0;
reg v113_1_ce0;
reg[10:0] v113_1_address1;
reg v113_1_ce1;
reg[2:0] v116_0_address0;
reg v116_0_ce0;
reg v116_0_we0;
reg[31:0] v116_0_d0;
reg[2:0] v116_1_address0;
reg v116_1_ce0;
reg v116_1_we0;
reg[31:0] v116_1_d0;
reg[2:0] v116_2_address0;
reg v116_2_ce0;
reg v116_2_we0;
reg[31:0] v116_2_d0;
reg[2:0] v116_3_address0;
reg v116_3_ce0;
reg v116_3_we0;
reg[31:0] v116_3_d0;
reg[2:0] v116_4_address0;
reg v116_4_ce0;
reg v116_4_we0;
reg[31:0] v116_4_d0;
reg[2:0] v116_4_address1;
reg v116_4_ce1;
reg[2:0] v116_5_address0;
reg v116_5_ce0;
reg v116_5_we0;
reg[31:0] v116_5_d0;
reg[2:0] v116_5_address1;
reg v116_5_ce1;
reg[2:0] v116_6_address0;
reg v116_6_ce0;
reg v116_6_we0;
reg[31:0] v116_6_d0;
reg[2:0] v116_6_address1;
reg v116_6_ce1;
reg[2:0] v116_7_address0;
reg v116_7_ce0;
reg v116_7_we0;
reg[31:0] v116_7_d0;
reg[2:0] v116_7_address1;
reg v116_7_ce1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] v4_1_reg_305;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln27_fu_243_p1;
reg   [5:0] trunc_ln27_reg_338;
wire    ap_CS_fsm_state3;
wire   [31:0] v6_fu_256_p3;
reg   [31:0] v6_reg_343;
reg   [4:0] tmp_s_reg_348;
wire   [31:0] v6_1_fu_274_p3;
reg   [31:0] v6_1_reg_353;
wire    grp_atax_node0_Pipeline_label_1_fu_138_ap_start;
wire    grp_atax_node0_Pipeline_label_1_fu_138_ap_done;
wire    grp_atax_node0_Pipeline_label_1_fu_138_ap_idle;
wire    grp_atax_node0_Pipeline_label_1_fu_138_ap_ready;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_138_v113_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v113_0_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_138_v113_0_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v113_0_ce1;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_138_v113_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v113_1_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_138_v113_1_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v113_1_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_7_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_7_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_7_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_7_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_7_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_7_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_6_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_6_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_6_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_6_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_6_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_6_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_5_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_5_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_5_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_5_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_5_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_5_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_4_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_4_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_4_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_4_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_4_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_4_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_3_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_3_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_3_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_3_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_2_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_2_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_2_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_2_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_1_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v116_0_d0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_v7_out;
wire    grp_atax_node0_Pipeline_label_1_fu_138_v7_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_ce;
wire    grp_atax_node0_Pipeline_label_16_fu_166_ap_start;
wire    grp_atax_node0_Pipeline_label_16_fu_166_ap_done;
wire    grp_atax_node0_Pipeline_label_16_fu_166_ap_idle;
wire    grp_atax_node0_Pipeline_label_16_fu_166_ap_ready;
wire   [10:0] grp_atax_node0_Pipeline_label_16_fu_166_v113_0_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v113_0_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_16_fu_166_v113_0_address1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v113_0_ce1;
wire   [10:0] grp_atax_node0_Pipeline_label_16_fu_166_v113_1_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v113_1_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_16_fu_166_v113_1_address1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v113_1_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_7_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_7_ce0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_7_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_7_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_7_address1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_7_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_6_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_6_ce0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_6_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_6_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_6_address1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_6_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_5_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_5_ce0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_5_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_5_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_5_address1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_5_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_4_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_4_ce0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_4_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_4_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_4_address1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_4_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_3_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_3_ce0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_3_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_3_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_2_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_2_ce0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_2_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_2_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_1_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v116_0_d0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_v7_1_out_o;
wire    grp_atax_node0_Pipeline_label_16_fu_166_v7_1_out_o_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_opcode;
wire    grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_opcode;
wire    grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_opcode;
wire    grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_opcode;
wire    grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_din1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_din1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_din1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_din1;
wire    grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_ce;
reg    grp_atax_node0_Pipeline_label_1_fu_138_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_node0_Pipeline_label_16_fu_166_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [31:0] v3_fu_74;
wire   [63:0] zext_ln26_fu_220_p1;
wire   [0:0] tmp_fu_202_p3;
reg   [6:0] v4_fu_78;
wire   [6:0] add_ln27_fu_228_p2;
reg    v0_0_ce0_local;
reg    v0_2_ce0_local;
reg    v0_1_ce0_local;
reg    v0_3_ce0_local;
wire   [3:0] lshr_ln_fu_210_p4;
wire   [1:0] trunc_ln27_1_fu_247_p1;
wire   [0:0] empty_fu_250_p2;
reg   [31:0] grp_fu_361_p0;
reg   [31:0] grp_fu_361_p1;
reg    grp_fu_361_ce;
reg   [31:0] grp_fu_365_p0;
reg   [31:0] grp_fu_365_p1;
reg    grp_fu_365_ce;
wire   [31:0] grp_fu_369_p2;
reg   [31:0] grp_fu_369_p0;
reg   [31:0] grp_fu_369_p1;
reg    grp_fu_369_ce;
wire   [31:0] grp_fu_373_p2;
reg   [31:0] grp_fu_373_p0;
reg   [31:0] grp_fu_373_p1;
reg    grp_fu_373_ce;
reg   [31:0] grp_fu_377_p0;
reg   [31:0] grp_fu_377_p1;
reg    grp_fu_377_ce;
reg   [31:0] grp_fu_381_p0;
reg   [31:0] grp_fu_381_p1;
reg    grp_fu_381_ce;
wire   [31:0] grp_fu_385_p2;
reg   [31:0] grp_fu_385_p0;
reg   [31:0] grp_fu_385_p1;
reg    grp_fu_385_ce;
wire   [31:0] grp_fu_389_p2;
reg   [31:0] grp_fu_389_p0;
reg   [31:0] grp_fu_389_p1;
reg    grp_fu_389_ce;
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
#0 grp_atax_node0_Pipeline_label_1_fu_138_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_16_fu_166_ap_start_reg = 1'b0;
#0 v4_fu_78 = 7'd0;
end
atax_atax_node0_Pipeline_label_1 grp_atax_node0_Pipeline_label_1_fu_138(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_1_fu_138_ap_start),.ap_done(grp_atax_node0_Pipeline_label_1_fu_138_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_1_fu_138_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_1_fu_138_ap_ready),.v3(v3_fu_74),.v4(trunc_ln27_reg_338),.v113_0_address0(grp_atax_node0_Pipeline_label_1_fu_138_v113_0_address0),.v113_0_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_Pipeline_label_1_fu_138_v113_0_address1),.v113_0_ce1(grp_atax_node0_Pipeline_label_1_fu_138_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_Pipeline_label_1_fu_138_v113_1_address0),.v113_1_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_Pipeline_label_1_fu_138_v113_1_address1),.v113_1_ce1(grp_atax_node0_Pipeline_label_1_fu_138_v113_1_ce1),.v113_1_q1(v113_1_q1),.v116_7_address0(grp_atax_node0_Pipeline_label_1_fu_138_v116_7_address0),.v116_7_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v116_7_ce0),.v116_7_we0(grp_atax_node0_Pipeline_label_1_fu_138_v116_7_we0),.v116_7_d0(grp_atax_node0_Pipeline_label_1_fu_138_v116_7_d0),.v116_7_address1(grp_atax_node0_Pipeline_label_1_fu_138_v116_7_address1),.v116_7_ce1(grp_atax_node0_Pipeline_label_1_fu_138_v116_7_ce1),.v116_7_q1(v116_7_q1),.v116_6_address0(grp_atax_node0_Pipeline_label_1_fu_138_v116_6_address0),.v116_6_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v116_6_ce0),.v116_6_we0(grp_atax_node0_Pipeline_label_1_fu_138_v116_6_we0),.v116_6_d0(grp_atax_node0_Pipeline_label_1_fu_138_v116_6_d0),.v116_6_address1(grp_atax_node0_Pipeline_label_1_fu_138_v116_6_address1),.v116_6_ce1(grp_atax_node0_Pipeline_label_1_fu_138_v116_6_ce1),.v116_6_q1(v116_6_q1),.v116_5_address0(grp_atax_node0_Pipeline_label_1_fu_138_v116_5_address0),.v116_5_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v116_5_ce0),.v116_5_we0(grp_atax_node0_Pipeline_label_1_fu_138_v116_5_we0),.v116_5_d0(grp_atax_node0_Pipeline_label_1_fu_138_v116_5_d0),.v116_5_address1(grp_atax_node0_Pipeline_label_1_fu_138_v116_5_address1),.v116_5_ce1(grp_atax_node0_Pipeline_label_1_fu_138_v116_5_ce1),.v116_5_q1(v116_5_q1),.v116_4_address0(grp_atax_node0_Pipeline_label_1_fu_138_v116_4_address0),.v116_4_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v116_4_ce0),.v116_4_we0(grp_atax_node0_Pipeline_label_1_fu_138_v116_4_we0),.v116_4_d0(grp_atax_node0_Pipeline_label_1_fu_138_v116_4_d0),.v116_4_address1(grp_atax_node0_Pipeline_label_1_fu_138_v116_4_address1),.v116_4_ce1(grp_atax_node0_Pipeline_label_1_fu_138_v116_4_ce1),.v116_4_q1(v116_4_q1),.v116_3_address0(grp_atax_node0_Pipeline_label_1_fu_138_v116_3_address0),.v116_3_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v116_3_ce0),.v116_3_we0(grp_atax_node0_Pipeline_label_1_fu_138_v116_3_we0),.v116_3_d0(grp_atax_node0_Pipeline_label_1_fu_138_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_2_address0(grp_atax_node0_Pipeline_label_1_fu_138_v116_2_address0),.v116_2_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v116_2_ce0),.v116_2_we0(grp_atax_node0_Pipeline_label_1_fu_138_v116_2_we0),.v116_2_d0(grp_atax_node0_Pipeline_label_1_fu_138_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_1_address0(grp_atax_node0_Pipeline_label_1_fu_138_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_1_fu_138_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_1_fu_138_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_0_address0(grp_atax_node0_Pipeline_label_1_fu_138_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_1_fu_138_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_1_fu_138_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_1_fu_138_v116_0_d0),.v116_0_q0(v116_0_q0),.v6(v6_reg_343),.v7_out(grp_atax_node0_Pipeline_label_1_fu_138_v7_out),.v7_out_ap_vld(grp_atax_node0_Pipeline_label_1_fu_138_v7_out_ap_vld),.grp_fu_361_p_din0(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_din0),.grp_fu_361_p_din1(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_din1),.grp_fu_361_p_opcode(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_opcode),.grp_fu_361_p_dout0(grp_fu_341_p_dout0),.grp_fu_361_p_ce(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_ce),.grp_fu_365_p_din0(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_din0),.grp_fu_365_p_din1(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_din1),.grp_fu_365_p_opcode(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_opcode),.grp_fu_365_p_dout0(grp_fu_345_p_dout0),.grp_fu_365_p_ce(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_ce),.grp_fu_369_p_din0(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_din0),.grp_fu_369_p_din1(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_din1),.grp_fu_369_p_opcode(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_opcode),.grp_fu_369_p_dout0(grp_fu_369_p2),.grp_fu_369_p_ce(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_ce),.grp_fu_373_p_din0(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_din0),.grp_fu_373_p_din1(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_din1),.grp_fu_373_p_opcode(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_opcode),.grp_fu_373_p_dout0(grp_fu_373_p2),.grp_fu_373_p_ce(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_ce),.grp_fu_377_p_din0(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_din0),.grp_fu_377_p_din1(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_din1),.grp_fu_377_p_dout0(grp_fu_349_p_dout0),.grp_fu_377_p_ce(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_ce),.grp_fu_381_p_din0(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_din0),.grp_fu_381_p_din1(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_din1),.grp_fu_381_p_dout0(grp_fu_353_p_dout0),.grp_fu_381_p_ce(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_ce),.grp_fu_385_p_din0(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_din0),.grp_fu_385_p_din1(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_din1),.grp_fu_385_p_dout0(grp_fu_385_p2),.grp_fu_385_p_ce(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_ce),.grp_fu_389_p_din0(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_din0),.grp_fu_389_p_din1(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_din1),.grp_fu_389_p_dout0(grp_fu_389_p2),.grp_fu_389_p_ce(grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_ce));
atax_atax_node0_Pipeline_label_16 grp_atax_node0_Pipeline_label_16_fu_166(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_16_fu_166_ap_start),.ap_done(grp_atax_node0_Pipeline_label_16_fu_166_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_16_fu_166_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_16_fu_166_ap_ready),.v7_reload(grp_atax_node0_Pipeline_label_1_fu_138_v7_out),.tmp_461(tmp_s_reg_348),.v113_0_address0(grp_atax_node0_Pipeline_label_16_fu_166_v113_0_address0),.v113_0_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_Pipeline_label_16_fu_166_v113_0_address1),.v113_0_ce1(grp_atax_node0_Pipeline_label_16_fu_166_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_Pipeline_label_16_fu_166_v113_1_address0),.v113_1_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_Pipeline_label_16_fu_166_v113_1_address1),.v113_1_ce1(grp_atax_node0_Pipeline_label_16_fu_166_v113_1_ce1),.v113_1_q1(v113_1_q1),.v116_7_address0(grp_atax_node0_Pipeline_label_16_fu_166_v116_7_address0),.v116_7_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v116_7_ce0),.v116_7_we0(grp_atax_node0_Pipeline_label_16_fu_166_v116_7_we0),.v116_7_d0(grp_atax_node0_Pipeline_label_16_fu_166_v116_7_d0),.v116_7_address1(grp_atax_node0_Pipeline_label_16_fu_166_v116_7_address1),.v116_7_ce1(grp_atax_node0_Pipeline_label_16_fu_166_v116_7_ce1),.v116_7_q1(v116_7_q1),.v116_6_address0(grp_atax_node0_Pipeline_label_16_fu_166_v116_6_address0),.v116_6_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v116_6_ce0),.v116_6_we0(grp_atax_node0_Pipeline_label_16_fu_166_v116_6_we0),.v116_6_d0(grp_atax_node0_Pipeline_label_16_fu_166_v116_6_d0),.v116_6_address1(grp_atax_node0_Pipeline_label_16_fu_166_v116_6_address1),.v116_6_ce1(grp_atax_node0_Pipeline_label_16_fu_166_v116_6_ce1),.v116_6_q1(v116_6_q1),.v116_5_address0(grp_atax_node0_Pipeline_label_16_fu_166_v116_5_address0),.v116_5_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v116_5_ce0),.v116_5_we0(grp_atax_node0_Pipeline_label_16_fu_166_v116_5_we0),.v116_5_d0(grp_atax_node0_Pipeline_label_16_fu_166_v116_5_d0),.v116_5_address1(grp_atax_node0_Pipeline_label_16_fu_166_v116_5_address1),.v116_5_ce1(grp_atax_node0_Pipeline_label_16_fu_166_v116_5_ce1),.v116_5_q1(v116_5_q1),.v116_4_address0(grp_atax_node0_Pipeline_label_16_fu_166_v116_4_address0),.v116_4_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v116_4_ce0),.v116_4_we0(grp_atax_node0_Pipeline_label_16_fu_166_v116_4_we0),.v116_4_d0(grp_atax_node0_Pipeline_label_16_fu_166_v116_4_d0),.v116_4_address1(grp_atax_node0_Pipeline_label_16_fu_166_v116_4_address1),.v116_4_ce1(grp_atax_node0_Pipeline_label_16_fu_166_v116_4_ce1),.v116_4_q1(v116_4_q1),.v116_3_address0(grp_atax_node0_Pipeline_label_16_fu_166_v116_3_address0),.v116_3_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v116_3_ce0),.v116_3_we0(grp_atax_node0_Pipeline_label_16_fu_166_v116_3_we0),.v116_3_d0(grp_atax_node0_Pipeline_label_16_fu_166_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_2_address0(grp_atax_node0_Pipeline_label_16_fu_166_v116_2_address0),.v116_2_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v116_2_ce0),.v116_2_we0(grp_atax_node0_Pipeline_label_16_fu_166_v116_2_we0),.v116_2_d0(grp_atax_node0_Pipeline_label_16_fu_166_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_1_address0(grp_atax_node0_Pipeline_label_16_fu_166_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_16_fu_166_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_16_fu_166_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_0_address0(grp_atax_node0_Pipeline_label_16_fu_166_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_16_fu_166_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_16_fu_166_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_16_fu_166_v116_0_d0),.v116_0_q0(v116_0_q0),.v6_1(v6_1_reg_353),.v7_1_out_i(v3_fu_74),.v7_1_out_o(grp_atax_node0_Pipeline_label_16_fu_166_v7_1_out_o),.v7_1_out_o_ap_vld(grp_atax_node0_Pipeline_label_16_fu_166_v7_1_out_o_ap_vld),.grp_fu_361_p_din0(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_din0),.grp_fu_361_p_din1(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_din1),.grp_fu_361_p_opcode(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_opcode),.grp_fu_361_p_dout0(grp_fu_341_p_dout0),.grp_fu_361_p_ce(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_ce),.grp_fu_365_p_din0(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_din0),.grp_fu_365_p_din1(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_din1),.grp_fu_365_p_opcode(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_opcode),.grp_fu_365_p_dout0(grp_fu_345_p_dout0),.grp_fu_365_p_ce(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_ce),.grp_fu_369_p_din0(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_din0),.grp_fu_369_p_din1(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_din1),.grp_fu_369_p_opcode(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_opcode),.grp_fu_369_p_dout0(grp_fu_369_p2),.grp_fu_369_p_ce(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_ce),.grp_fu_373_p_din0(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_din0),.grp_fu_373_p_din1(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_din1),.grp_fu_373_p_opcode(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_opcode),.grp_fu_373_p_dout0(grp_fu_373_p2),.grp_fu_373_p_ce(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_ce),.grp_fu_377_p_din0(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_din0),.grp_fu_377_p_din1(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_din1),.grp_fu_377_p_dout0(grp_fu_349_p_dout0),.grp_fu_377_p_ce(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_ce),.grp_fu_381_p_din0(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_din0),.grp_fu_381_p_din1(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_din1),.grp_fu_381_p_dout0(grp_fu_353_p_dout0),.grp_fu_381_p_ce(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_ce),.grp_fu_385_p_din0(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_din0),.grp_fu_385_p_din1(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_din1),.grp_fu_385_p_dout0(grp_fu_385_p2),.grp_fu_385_p_ce(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_ce),.grp_fu_389_p_din0(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_din0),.grp_fu_389_p_din1(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_din1),.grp_fu_389_p_dout0(grp_fu_389_p2),.grp_fu_389_p_ce(grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_ce));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_369_p0),.din1(grp_fu_369_p1),.ce(grp_fu_369_ce),.dout(grp_fu_369_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_373_p0),.din1(grp_fu_373_p1),.ce(grp_fu_373_ce),.dout(grp_fu_373_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_385_p0),.din1(grp_fu_385_p1),.ce(grp_fu_385_ce),.dout(grp_fu_385_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_389_p0),.din1(grp_fu_389_p1),.ce(grp_fu_389_ce),.dout(grp_fu_389_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_16_fu_166_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_Pipeline_label_16_fu_166_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_16_fu_166_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_16_fu_166_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_1_fu_138_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node0_Pipeline_label_1_fu_138_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_1_fu_138_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_1_fu_138_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_78 <= 7'd0;
    end else if (((tmp_fu_202_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v4_fu_78 <= add_ln27_fu_228_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_348 <= {{v4_1_reg_305[5:1]}};
        trunc_ln27_reg_338 <= trunc_ln27_fu_243_p1;
        v6_1_reg_353 <= v6_1_fu_274_p3;
        v6_reg_343 <= v6_fu_256_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_atax_node0_Pipeline_label_16_fu_166_v7_1_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        v3_fu_74 <= grp_atax_node0_Pipeline_label_16_fu_166_v7_1_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v4_1_reg_305 <= v4_fu_78;
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
    if ((grp_atax_node0_Pipeline_label_1_fu_138_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_16_fu_166_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_202_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_202_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_361_ce = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_361_ce = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_ce;
    end else begin
        grp_fu_361_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_361_p0 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_361_p0 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_din0;
    end else begin
        grp_fu_361_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_361_p1 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_361_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_361_p1 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_361_p_din1;
    end else begin
        grp_fu_361_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_365_ce = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_365_ce = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_ce;
    end else begin
        grp_fu_365_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_365_p0 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_365_p0 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_din0;
    end else begin
        grp_fu_365_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_365_p1 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_365_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_365_p1 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_365_p_din1;
    end else begin
        grp_fu_365_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_369_ce = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_369_ce = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_ce;
    end else begin
        grp_fu_369_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_369_p0 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_369_p0 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_din0;
    end else begin
        grp_fu_369_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_369_p1 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_369_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_369_p1 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_369_p_din1;
    end else begin
        grp_fu_369_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_373_ce = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_373_ce = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_ce;
    end else begin
        grp_fu_373_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_373_p0 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_373_p0 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_din0;
    end else begin
        grp_fu_373_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_373_p1 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_373_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_373_p1 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_373_p_din1;
    end else begin
        grp_fu_373_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_377_ce = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_377_ce = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_ce;
    end else begin
        grp_fu_377_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_377_p0 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_377_p0 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_din0;
    end else begin
        grp_fu_377_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_377_p1 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_377_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_377_p1 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_377_p_din1;
    end else begin
        grp_fu_377_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_381_ce = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_381_ce = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_ce;
    end else begin
        grp_fu_381_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_381_p0 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_381_p0 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_din0;
    end else begin
        grp_fu_381_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_381_p1 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_381_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_381_p1 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_381_p_din1;
    end else begin
        grp_fu_381_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_385_ce = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_385_ce = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_ce;
    end else begin
        grp_fu_385_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_385_p0 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_385_p0 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_din0;
    end else begin
        grp_fu_385_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_385_p1 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_385_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_385_p1 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_385_p_din1;
    end else begin
        grp_fu_385_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_389_ce = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_389_ce = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_ce;
    end else begin
        grp_fu_389_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_389_p0 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_389_p0 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_din0;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_389_p1 = grp_atax_node0_Pipeline_label_16_fu_166_grp_fu_389_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_389_p1 = grp_atax_node0_Pipeline_label_1_fu_138_grp_fu_389_p_din1;
    end else begin
        grp_fu_389_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v113_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v113_0_address0;
    end else begin
        v113_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_address1 = grp_atax_node0_Pipeline_label_16_fu_166_v113_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_address1 = grp_atax_node0_Pipeline_label_1_fu_138_v113_0_address1;
    end else begin
        v113_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v113_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v113_0_ce0;
    end else begin
        v113_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_ce1 = grp_atax_node0_Pipeline_label_16_fu_166_v113_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_ce1 = grp_atax_node0_Pipeline_label_1_fu_138_v113_0_ce1;
    end else begin
        v113_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v113_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v113_1_address0;
    end else begin
        v113_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_address1 = grp_atax_node0_Pipeline_label_16_fu_166_v113_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_address1 = grp_atax_node0_Pipeline_label_1_fu_138_v113_1_address1;
    end else begin
        v113_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v113_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v113_1_ce0;
    end else begin
        v113_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_ce1 = grp_atax_node0_Pipeline_label_16_fu_166_v113_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_ce1 = grp_atax_node0_Pipeline_label_1_fu_138_v113_1_ce1;
    end else begin
        v113_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_0_address0;
    end else begin
        v116_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_0_ce0;
    end else begin
        v116_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_0_d0;
    end else begin
        v116_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_0_we0;
    end else begin
        v116_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_1_address0;
    end else begin
        v116_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_1_ce0;
    end else begin
        v116_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_1_d0;
    end else begin
        v116_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_1_we0;
    end else begin
        v116_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_2_address0;
    end else begin
        v116_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_2_ce0;
    end else begin
        v116_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_d0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_d0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_2_d0;
    end else begin
        v116_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_we0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_we0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_2_we0;
    end else begin
        v116_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_3_address0;
    end else begin
        v116_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_3_ce0;
    end else begin
        v116_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_d0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_d0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_3_d0;
    end else begin
        v116_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_we0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_we0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_3_we0;
    end else begin
        v116_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_4_address0;
    end else begin
        v116_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_address1 = grp_atax_node0_Pipeline_label_16_fu_166_v116_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_address1 = grp_atax_node0_Pipeline_label_1_fu_138_v116_4_address1;
    end else begin
        v116_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_4_ce0;
    end else begin
        v116_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_ce1 = grp_atax_node0_Pipeline_label_16_fu_166_v116_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_ce1 = grp_atax_node0_Pipeline_label_1_fu_138_v116_4_ce1;
    end else begin
        v116_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_d0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_d0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_4_d0;
    end else begin
        v116_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_we0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_we0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_4_we0;
    end else begin
        v116_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_5_address0;
    end else begin
        v116_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_address1 = grp_atax_node0_Pipeline_label_16_fu_166_v116_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_address1 = grp_atax_node0_Pipeline_label_1_fu_138_v116_5_address1;
    end else begin
        v116_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_5_ce0;
    end else begin
        v116_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_ce1 = grp_atax_node0_Pipeline_label_16_fu_166_v116_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_ce1 = grp_atax_node0_Pipeline_label_1_fu_138_v116_5_ce1;
    end else begin
        v116_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_d0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_d0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_5_d0;
    end else begin
        v116_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_we0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_we0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_5_we0;
    end else begin
        v116_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_6_address0;
    end else begin
        v116_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_address1 = grp_atax_node0_Pipeline_label_16_fu_166_v116_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_address1 = grp_atax_node0_Pipeline_label_1_fu_138_v116_6_address1;
    end else begin
        v116_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_6_ce0;
    end else begin
        v116_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_ce1 = grp_atax_node0_Pipeline_label_16_fu_166_v116_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_ce1 = grp_atax_node0_Pipeline_label_1_fu_138_v116_6_ce1;
    end else begin
        v116_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_d0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_d0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_6_d0;
    end else begin
        v116_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_we0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_we0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_6_we0;
    end else begin
        v116_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_address0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_address0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_7_address0;
    end else begin
        v116_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_address1 = grp_atax_node0_Pipeline_label_16_fu_166_v116_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_address1 = grp_atax_node0_Pipeline_label_1_fu_138_v116_7_address1;
    end else begin
        v116_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_ce0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_ce0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_7_ce0;
    end else begin
        v116_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_ce1 = grp_atax_node0_Pipeline_label_16_fu_166_v116_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_ce1 = grp_atax_node0_Pipeline_label_1_fu_138_v116_7_ce1;
    end else begin
        v116_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_d0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_d0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_7_d0;
    end else begin
        v116_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_we0 = grp_atax_node0_Pipeline_label_16_fu_166_v116_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_we0 = grp_atax_node0_Pipeline_label_1_fu_138_v116_7_we0;
    end else begin
        v116_7_we0 = 1'b0;
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
            if (((tmp_fu_202_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_node0_Pipeline_label_1_fu_138_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node0_Pipeline_label_16_fu_166_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln27_fu_228_p2 = (v4_fu_78 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign empty_fu_250_p2 = ((trunc_ln27_1_fu_247_p1 != 2'd0) ? 1'b1 : 1'b0);
assign grp_atax_node0_Pipeline_label_16_fu_166_ap_start = grp_atax_node0_Pipeline_label_16_fu_166_ap_start_reg;
assign grp_atax_node0_Pipeline_label_1_fu_138_ap_start = grp_atax_node0_Pipeline_label_1_fu_138_ap_start_reg;
assign grp_fu_341_p_ce = grp_fu_361_ce;
assign grp_fu_341_p_din0 = grp_fu_361_p0;
assign grp_fu_341_p_din1 = grp_fu_361_p1;
assign grp_fu_341_p_opcode = 2'd0;
assign grp_fu_345_p_ce = grp_fu_365_ce;
assign grp_fu_345_p_din0 = grp_fu_365_p0;
assign grp_fu_345_p_din1 = grp_fu_365_p1;
assign grp_fu_345_p_opcode = 2'd0;
assign grp_fu_349_p_ce = grp_fu_377_ce;
assign grp_fu_349_p_din0 = grp_fu_377_p0;
assign grp_fu_349_p_din1 = grp_fu_377_p1;
assign grp_fu_353_p_ce = grp_fu_381_ce;
assign grp_fu_353_p_din0 = grp_fu_381_p0;
assign grp_fu_353_p_din1 = grp_fu_381_p1;
assign lshr_ln_fu_210_p4 = {{v4_fu_78[5:2]}};
assign tmp_fu_202_p3 = v4_fu_78[32'd6];
assign trunc_ln27_1_fu_247_p1 = v4_1_reg_305[1:0];
assign trunc_ln27_fu_243_p1 = v4_1_reg_305[5:0];
assign v0_0_address0 = zext_ln26_fu_220_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_fu_220_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln26_fu_220_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln26_fu_220_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v6_1_fu_274_p3 = ((empty_fu_250_p2[0:0] == 1'b1) ? v0_3_q0 : v0_1_q0);
assign v6_fu_256_p3 = ((empty_fu_250_p2[0:0] == 1'b1) ? v0_2_q0 : v0_0_q0);
assign zext_ln26_fu_220_p1 = lshr_ln_fu_210_p4;
endmodule 