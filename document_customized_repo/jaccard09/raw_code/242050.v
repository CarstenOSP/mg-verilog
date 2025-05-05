module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v57_2_address0,v57_2_ce0,v57_2_q0,v57_2_address1,v57_2_ce1,v57_2_q1,v57_3_address0,v57_3_ce0,v57_3_q0,v57_3_address1,v57_3_ce1,v57_3_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,grp_fu_269_p_din0,grp_fu_269_p_din1,grp_fu_269_p_opcode,grp_fu_269_p_dout0,grp_fu_269_p_ce,grp_fu_273_p_din0,grp_fu_273_p_din1,grp_fu_273_p_opcode,grp_fu_273_p_dout0,grp_fu_273_p_ce,grp_fu_277_p_din0,grp_fu_277_p_din1,grp_fu_277_p_dout0,grp_fu_277_p_ce,grp_fu_281_p_din0,grp_fu_281_p_din1,grp_fu_281_p_dout0,grp_fu_281_p_ce); 
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
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [4:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [4:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [3:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [3:0] v57_0_address1;
output   v57_0_ce1;
input  [31:0] v57_0_q1;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [3:0] v57_1_address1;
output   v57_1_ce1;
input  [31:0] v57_1_q1;
output  [3:0] v57_2_address0;
output   v57_2_ce0;
input  [31:0] v57_2_q0;
output  [3:0] v57_2_address1;
output   v57_2_ce1;
input  [31:0] v57_2_q1;
output  [3:0] v57_3_address0;
output   v57_3_ce0;
input  [31:0] v57_3_q0;
output  [3:0] v57_3_address1;
output   v57_3_ce1;
input  [31:0] v57_3_q1;
output  [4:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [4:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
output  [4:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [4:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [31:0] grp_fu_269_p_din0;
output  [31:0] grp_fu_269_p_din1;
output  [1:0] grp_fu_269_p_opcode;
input  [31:0] grp_fu_269_p_dout0;
output   grp_fu_269_p_ce;
output  [31:0] grp_fu_273_p_din0;
output  [31:0] grp_fu_273_p_din1;
output  [1:0] grp_fu_273_p_opcode;
input  [31:0] grp_fu_273_p_dout0;
output   grp_fu_273_p_ce;
output  [31:0] grp_fu_277_p_din0;
output  [31:0] grp_fu_277_p_din1;
input  [31:0] grp_fu_277_p_dout0;
output   grp_fu_277_p_ce;
output  [31:0] grp_fu_281_p_din0;
output  [31:0] grp_fu_281_p_din1;
input  [31:0] grp_fu_281_p_dout0;
output   grp_fu_281_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] v114_address0;
reg v114_ce0;
reg[11:0] v114_address1;
reg v114_ce1;
reg[4:0] v58_0_address0;
reg v58_0_ce0;
reg v58_0_we0;
reg[31:0] v58_0_d0;
reg[4:0] v58_0_address1;
reg v58_0_ce1;
reg v58_0_we1;
reg[31:0] v58_0_d1;
reg[4:0] v58_1_address0;
reg v58_1_ce0;
reg v58_1_we0;
reg[31:0] v58_1_d0;
reg[4:0] v58_1_address1;
reg v58_1_ce1;
reg v58_1_we1;
reg[31:0] v58_1_d1;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_172;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state7;
reg   [6:0] v59_1_reg_279;
wire    ap_CS_fsm_state2;
wire   [4:0] lshr_ln_fu_192_p4;
reg   [4:0] lshr_ln_reg_289;
wire   [5:0] trunc_ln97_fu_219_p1;
reg   [5:0] trunc_ln97_reg_304;
wire   [0:0] cmp7_fu_224_p2;
reg   [0:0] cmp7_reg_310;
wire   [31:0] v65_fu_230_p1;
reg   [31:0] v65_reg_315;
reg   [3:0] tmp_s_reg_320;
wire   [31:0] v65_1_fu_244_p1;
reg   [31:0] v65_1_reg_327;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [31:0] v65_2_fu_262_p1;
reg   [31:0] v65_2_reg_342;
wire   [31:0] v65_3_fu_267_p1;
reg   [31:0] v65_3_reg_347;
wire    ap_CS_fsm_state9;
wire    grp_atax_node1_Pipeline_label_3_fu_114_ap_start;
wire    grp_atax_node1_Pipeline_label_3_fu_114_ap_done;
wire    grp_atax_node1_Pipeline_label_3_fu_114_ap_idle;
wire    grp_atax_node1_Pipeline_label_3_fu_114_ap_ready;
wire   [11:0] grp_atax_node1_Pipeline_label_3_fu_114_v114_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v114_ce0;
wire   [11:0] grp_atax_node1_Pipeline_label_3_fu_114_v114_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v114_ce1;
wire   [4:0] grp_atax_node1_Pipeline_label_3_fu_114_v58_1_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v58_1_ce0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v58_1_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_v58_1_d0;
wire   [4:0] grp_atax_node1_Pipeline_label_3_fu_114_v58_1_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v58_1_ce1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v58_1_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_v58_1_d1;
wire   [4:0] grp_atax_node1_Pipeline_label_3_fu_114_v58_0_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v58_0_ce0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v58_0_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_v58_0_d0;
wire   [4:0] grp_atax_node1_Pipeline_label_3_fu_114_v58_0_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v58_0_ce1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v58_0_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_v58_0_d1;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_114_v57_0_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v57_0_ce0;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_114_v57_0_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v57_0_ce1;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_114_v57_1_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v57_1_ce0;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_114_v57_1_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v57_1_ce1;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_114_v57_2_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v57_2_ce0;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_114_v57_2_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v57_2_ce1;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_114_v57_3_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v57_3_ce0;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_114_v57_3_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_v57_3_ce1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_opcode;
wire    grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_opcode;
wire    grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_din1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_din1;
wire    grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_ce;
wire    grp_atax_node1_Pipeline_label_33_fu_136_ap_start;
wire    grp_atax_node1_Pipeline_label_33_fu_136_ap_done;
wire    grp_atax_node1_Pipeline_label_33_fu_136_ap_idle;
wire    grp_atax_node1_Pipeline_label_33_fu_136_ap_ready;
wire   [11:0] grp_atax_node1_Pipeline_label_33_fu_136_v114_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v114_ce0;
wire   [11:0] grp_atax_node1_Pipeline_label_33_fu_136_v114_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v114_ce1;
wire   [4:0] grp_atax_node1_Pipeline_label_33_fu_136_v58_1_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v58_1_ce0;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v58_1_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_v58_1_d0;
wire   [4:0] grp_atax_node1_Pipeline_label_33_fu_136_v58_1_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v58_1_ce1;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v58_1_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_v58_1_d1;
wire   [4:0] grp_atax_node1_Pipeline_label_33_fu_136_v58_0_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v58_0_ce0;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v58_0_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_v58_0_d0;
wire   [4:0] grp_atax_node1_Pipeline_label_33_fu_136_v58_0_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v58_0_ce1;
wire    grp_atax_node1_Pipeline_label_33_fu_136_v58_0_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_v58_0_d1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_opcode;
wire    grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_opcode;
wire    grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_din1;
wire    grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_din1;
wire    grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_ce;
wire    grp_atax_node1_Pipeline_label_34_fu_148_ap_start;
wire    grp_atax_node1_Pipeline_label_34_fu_148_ap_done;
wire    grp_atax_node1_Pipeline_label_34_fu_148_ap_idle;
wire    grp_atax_node1_Pipeline_label_34_fu_148_ap_ready;
wire   [11:0] grp_atax_node1_Pipeline_label_34_fu_148_v114_address0;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v114_ce0;
wire   [11:0] grp_atax_node1_Pipeline_label_34_fu_148_v114_address1;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v114_ce1;
wire   [4:0] grp_atax_node1_Pipeline_label_34_fu_148_v58_1_address0;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v58_1_ce0;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v58_1_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_v58_1_d0;
wire   [4:0] grp_atax_node1_Pipeline_label_34_fu_148_v58_1_address1;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v58_1_ce1;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v58_1_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_v58_1_d1;
wire   [4:0] grp_atax_node1_Pipeline_label_34_fu_148_v58_0_address0;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v58_0_ce0;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v58_0_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_v58_0_d0;
wire   [4:0] grp_atax_node1_Pipeline_label_34_fu_148_v58_0_address1;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v58_0_ce1;
wire    grp_atax_node1_Pipeline_label_34_fu_148_v58_0_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_v58_0_d1;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_opcode;
wire    grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_opcode;
wire    grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_din1;
wire    grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_din1;
wire    grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_ce;
wire    grp_atax_node1_Pipeline_label_35_fu_160_ap_start;
wire    grp_atax_node1_Pipeline_label_35_fu_160_ap_done;
wire    grp_atax_node1_Pipeline_label_35_fu_160_ap_idle;
wire    grp_atax_node1_Pipeline_label_35_fu_160_ap_ready;
wire   [11:0] grp_atax_node1_Pipeline_label_35_fu_160_v114_address0;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v114_ce0;
wire   [11:0] grp_atax_node1_Pipeline_label_35_fu_160_v114_address1;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v114_ce1;
wire   [4:0] grp_atax_node1_Pipeline_label_35_fu_160_v58_1_address0;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v58_1_ce0;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v58_1_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_v58_1_d0;
wire   [4:0] grp_atax_node1_Pipeline_label_35_fu_160_v58_1_address1;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v58_1_ce1;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v58_1_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_v58_1_d1;
wire   [4:0] grp_atax_node1_Pipeline_label_35_fu_160_v58_0_address0;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v58_0_ce0;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v58_0_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_v58_0_d0;
wire   [4:0] grp_atax_node1_Pipeline_label_35_fu_160_v58_0_address1;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v58_0_ce1;
wire    grp_atax_node1_Pipeline_label_35_fu_160_v58_0_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_v58_0_d1;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_opcode;
wire    grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_opcode;
wire    grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_din1;
wire    grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_din1;
wire    grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_ce;
reg    grp_atax_node1_Pipeline_label_3_fu_114_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_node1_Pipeline_label_33_fu_136_ap_start_reg;
reg    grp_atax_node1_Pipeline_label_34_fu_148_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_atax_node1_Pipeline_label_35_fu_160_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [63:0] zext_ln97_fu_202_p1;
wire   [0:0] tmp_fu_184_p3;
wire   [63:0] p_cast_fu_256_p1;
reg   [6:0] v59_fu_68;
wire   [6:0] add_ln97_fu_208_p2;
reg    v115_0_ce0_local;
reg   [4:0] v115_0_address0_local;
reg    v115_1_ce0_local;
reg   [4:0] v115_1_address0_local;
wire   [4:0] tmp_60_fu_249_p3;
reg   [31:0] grp_fu_352_p0;
reg   [31:0] grp_fu_352_p1;
reg    grp_fu_352_ce;
reg   [31:0] grp_fu_356_p0;
reg   [31:0] grp_fu_356_p1;
reg    grp_fu_356_ce;
reg   [31:0] grp_fu_360_p0;
reg   [31:0] grp_fu_360_p1;
reg    grp_fu_360_ce;
reg   [31:0] grp_fu_364_p0;
reg   [31:0] grp_fu_364_p1;
reg    grp_fu_364_ce;
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
#0 grp_atax_node1_Pipeline_label_3_fu_114_ap_start_reg = 1'b0;
#0 grp_atax_node1_Pipeline_label_33_fu_136_ap_start_reg = 1'b0;
#0 grp_atax_node1_Pipeline_label_34_fu_148_ap_start_reg = 1'b0;
#0 grp_atax_node1_Pipeline_label_35_fu_160_ap_start_reg = 1'b0;
#0 v59_fu_68 = 7'd0;
end
atax_atax_node1_Pipeline_label_3 grp_atax_node1_Pipeline_label_3_fu_114(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_Pipeline_label_3_fu_114_ap_start),.ap_done(grp_atax_node1_Pipeline_label_3_fu_114_ap_done),.ap_idle(grp_atax_node1_Pipeline_label_3_fu_114_ap_idle),.ap_ready(grp_atax_node1_Pipeline_label_3_fu_114_ap_ready),.v59(trunc_ln97_reg_304),.v114_address0(grp_atax_node1_Pipeline_label_3_fu_114_v114_address0),.v114_ce0(grp_atax_node1_Pipeline_label_3_fu_114_v114_ce0),.v114_q0(v114_q0),.v114_address1(grp_atax_node1_Pipeline_label_3_fu_114_v114_address1),.v114_ce1(grp_atax_node1_Pipeline_label_3_fu_114_v114_ce1),.v114_q1(v114_q1),.v58_1_address0(grp_atax_node1_Pipeline_label_3_fu_114_v58_1_address0),.v58_1_ce0(grp_atax_node1_Pipeline_label_3_fu_114_v58_1_ce0),.v58_1_we0(grp_atax_node1_Pipeline_label_3_fu_114_v58_1_we0),.v58_1_d0(grp_atax_node1_Pipeline_label_3_fu_114_v58_1_d0),.v58_1_q0(v58_1_q0),.v58_1_address1(grp_atax_node1_Pipeline_label_3_fu_114_v58_1_address1),.v58_1_ce1(grp_atax_node1_Pipeline_label_3_fu_114_v58_1_ce1),.v58_1_we1(grp_atax_node1_Pipeline_label_3_fu_114_v58_1_we1),.v58_1_d1(grp_atax_node1_Pipeline_label_3_fu_114_v58_1_d1),.v58_1_q1(v58_1_q1),.v58_0_address0(grp_atax_node1_Pipeline_label_3_fu_114_v58_0_address0),.v58_0_ce0(grp_atax_node1_Pipeline_label_3_fu_114_v58_0_ce0),.v58_0_we0(grp_atax_node1_Pipeline_label_3_fu_114_v58_0_we0),.v58_0_d0(grp_atax_node1_Pipeline_label_3_fu_114_v58_0_d0),.v58_0_q0(v58_0_q0),.v58_0_address1(grp_atax_node1_Pipeline_label_3_fu_114_v58_0_address1),.v58_0_ce1(grp_atax_node1_Pipeline_label_3_fu_114_v58_0_ce1),.v58_0_we1(grp_atax_node1_Pipeline_label_3_fu_114_v58_0_we1),.v58_0_d1(grp_atax_node1_Pipeline_label_3_fu_114_v58_0_d1),.v58_0_q1(v58_0_q1),.v57_0_address0(grp_atax_node1_Pipeline_label_3_fu_114_v57_0_address0),.v57_0_ce0(grp_atax_node1_Pipeline_label_3_fu_114_v57_0_ce0),.v57_0_q0(v57_0_q0),.v57_0_address1(grp_atax_node1_Pipeline_label_3_fu_114_v57_0_address1),.v57_0_ce1(grp_atax_node1_Pipeline_label_3_fu_114_v57_0_ce1),.v57_0_q1(v57_0_q1),.cmp7(cmp7_reg_310),.v65(v65_reg_315),.zext_ln97(trunc_ln97_reg_304),.v57_1_address0(grp_atax_node1_Pipeline_label_3_fu_114_v57_1_address0),.v57_1_ce0(grp_atax_node1_Pipeline_label_3_fu_114_v57_1_ce0),.v57_1_q0(v57_1_q0),.v57_1_address1(grp_atax_node1_Pipeline_label_3_fu_114_v57_1_address1),.v57_1_ce1(grp_atax_node1_Pipeline_label_3_fu_114_v57_1_ce1),.v57_1_q1(v57_1_q1),.v57_2_address0(grp_atax_node1_Pipeline_label_3_fu_114_v57_2_address0),.v57_2_ce0(grp_atax_node1_Pipeline_label_3_fu_114_v57_2_ce0),.v57_2_q0(v57_2_q0),.v57_2_address1(grp_atax_node1_Pipeline_label_3_fu_114_v57_2_address1),.v57_2_ce1(grp_atax_node1_Pipeline_label_3_fu_114_v57_2_ce1),.v57_2_q1(v57_2_q1),.v57_3_address0(grp_atax_node1_Pipeline_label_3_fu_114_v57_3_address0),.v57_3_ce0(grp_atax_node1_Pipeline_label_3_fu_114_v57_3_ce0),.v57_3_q0(v57_3_q0),.v57_3_address1(grp_atax_node1_Pipeline_label_3_fu_114_v57_3_address1),.v57_3_ce1(grp_atax_node1_Pipeline_label_3_fu_114_v57_3_ce1),.v57_3_q1(v57_3_q1),.grp_fu_352_p_din0(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_din0),.grp_fu_352_p_din1(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_din1),.grp_fu_352_p_opcode(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_opcode),.grp_fu_352_p_dout0(grp_fu_269_p_dout0),.grp_fu_352_p_ce(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_ce),.grp_fu_356_p_din0(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_din0),.grp_fu_356_p_din1(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_din1),.grp_fu_356_p_opcode(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_opcode),.grp_fu_356_p_dout0(grp_fu_273_p_dout0),.grp_fu_356_p_ce(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_ce),.grp_fu_360_p_din0(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_din0),.grp_fu_360_p_din1(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_din1),.grp_fu_360_p_dout0(grp_fu_277_p_dout0),.grp_fu_360_p_ce(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_ce),.grp_fu_364_p_din0(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_din0),.grp_fu_364_p_din1(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_din1),.grp_fu_364_p_dout0(grp_fu_281_p_dout0),.grp_fu_364_p_ce(grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_ce));
atax_atax_node1_Pipeline_label_33 grp_atax_node1_Pipeline_label_33_fu_136(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_Pipeline_label_33_fu_136_ap_start),.ap_done(grp_atax_node1_Pipeline_label_33_fu_136_ap_done),.ap_idle(grp_atax_node1_Pipeline_label_33_fu_136_ap_idle),.ap_ready(grp_atax_node1_Pipeline_label_33_fu_136_ap_ready),.lshr_ln(lshr_ln_reg_289),.v114_address0(grp_atax_node1_Pipeline_label_33_fu_136_v114_address0),.v114_ce0(grp_atax_node1_Pipeline_label_33_fu_136_v114_ce0),.v114_q0(v114_q0),.v114_address1(grp_atax_node1_Pipeline_label_33_fu_136_v114_address1),.v114_ce1(grp_atax_node1_Pipeline_label_33_fu_136_v114_ce1),.v114_q1(v114_q1),.v58_1_address0(grp_atax_node1_Pipeline_label_33_fu_136_v58_1_address0),.v58_1_ce0(grp_atax_node1_Pipeline_label_33_fu_136_v58_1_ce0),.v58_1_we0(grp_atax_node1_Pipeline_label_33_fu_136_v58_1_we0),.v58_1_d0(grp_atax_node1_Pipeline_label_33_fu_136_v58_1_d0),.v58_1_q0(v58_1_q0),.v58_1_address1(grp_atax_node1_Pipeline_label_33_fu_136_v58_1_address1),.v58_1_ce1(grp_atax_node1_Pipeline_label_33_fu_136_v58_1_ce1),.v58_1_we1(grp_atax_node1_Pipeline_label_33_fu_136_v58_1_we1),.v58_1_d1(grp_atax_node1_Pipeline_label_33_fu_136_v58_1_d1),.v58_1_q1(v58_1_q1),.v58_0_address0(grp_atax_node1_Pipeline_label_33_fu_136_v58_0_address0),.v58_0_ce0(grp_atax_node1_Pipeline_label_33_fu_136_v58_0_ce0),.v58_0_we0(grp_atax_node1_Pipeline_label_33_fu_136_v58_0_we0),.v58_0_d0(grp_atax_node1_Pipeline_label_33_fu_136_v58_0_d0),.v58_0_q0(v58_0_q0),.v58_0_address1(grp_atax_node1_Pipeline_label_33_fu_136_v58_0_address1),.v58_0_ce1(grp_atax_node1_Pipeline_label_33_fu_136_v58_0_ce1),.v58_0_we1(grp_atax_node1_Pipeline_label_33_fu_136_v58_0_we1),.v58_0_d1(grp_atax_node1_Pipeline_label_33_fu_136_v58_0_d1),.v58_0_q1(v58_0_q1),.v65_1(v65_1_reg_327),.grp_fu_352_p_din0(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_din0),.grp_fu_352_p_din1(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_din1),.grp_fu_352_p_opcode(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_opcode),.grp_fu_352_p_dout0(grp_fu_269_p_dout0),.grp_fu_352_p_ce(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_ce),.grp_fu_356_p_din0(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_din0),.grp_fu_356_p_din1(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_din1),.grp_fu_356_p_opcode(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_opcode),.grp_fu_356_p_dout0(grp_fu_273_p_dout0),.grp_fu_356_p_ce(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_ce),.grp_fu_360_p_din0(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_din0),.grp_fu_360_p_din1(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_din1),.grp_fu_360_p_dout0(grp_fu_277_p_dout0),.grp_fu_360_p_ce(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_ce),.grp_fu_364_p_din0(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_din0),.grp_fu_364_p_din1(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_din1),.grp_fu_364_p_dout0(grp_fu_281_p_dout0),.grp_fu_364_p_ce(grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_ce));
atax_atax_node1_Pipeline_label_34 grp_atax_node1_Pipeline_label_34_fu_148(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_Pipeline_label_34_fu_148_ap_start),.ap_done(grp_atax_node1_Pipeline_label_34_fu_148_ap_done),.ap_idle(grp_atax_node1_Pipeline_label_34_fu_148_ap_idle),.ap_ready(grp_atax_node1_Pipeline_label_34_fu_148_ap_ready),.tmp_126(tmp_s_reg_320),.v114_address0(grp_atax_node1_Pipeline_label_34_fu_148_v114_address0),.v114_ce0(grp_atax_node1_Pipeline_label_34_fu_148_v114_ce0),.v114_q0(v114_q0),.v114_address1(grp_atax_node1_Pipeline_label_34_fu_148_v114_address1),.v114_ce1(grp_atax_node1_Pipeline_label_34_fu_148_v114_ce1),.v114_q1(v114_q1),.v58_1_address0(grp_atax_node1_Pipeline_label_34_fu_148_v58_1_address0),.v58_1_ce0(grp_atax_node1_Pipeline_label_34_fu_148_v58_1_ce0),.v58_1_we0(grp_atax_node1_Pipeline_label_34_fu_148_v58_1_we0),.v58_1_d0(grp_atax_node1_Pipeline_label_34_fu_148_v58_1_d0),.v58_1_q0(v58_1_q0),.v58_1_address1(grp_atax_node1_Pipeline_label_34_fu_148_v58_1_address1),.v58_1_ce1(grp_atax_node1_Pipeline_label_34_fu_148_v58_1_ce1),.v58_1_we1(grp_atax_node1_Pipeline_label_34_fu_148_v58_1_we1),.v58_1_d1(grp_atax_node1_Pipeline_label_34_fu_148_v58_1_d1),.v58_1_q1(v58_1_q1),.v58_0_address0(grp_atax_node1_Pipeline_label_34_fu_148_v58_0_address0),.v58_0_ce0(grp_atax_node1_Pipeline_label_34_fu_148_v58_0_ce0),.v58_0_we0(grp_atax_node1_Pipeline_label_34_fu_148_v58_0_we0),.v58_0_d0(grp_atax_node1_Pipeline_label_34_fu_148_v58_0_d0),.v58_0_q0(v58_0_q0),.v58_0_address1(grp_atax_node1_Pipeline_label_34_fu_148_v58_0_address1),.v58_0_ce1(grp_atax_node1_Pipeline_label_34_fu_148_v58_0_ce1),.v58_0_we1(grp_atax_node1_Pipeline_label_34_fu_148_v58_0_we1),.v58_0_d1(grp_atax_node1_Pipeline_label_34_fu_148_v58_0_d1),.v58_0_q1(v58_0_q1),.v65_2(v65_2_reg_342),.grp_fu_352_p_din0(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_din0),.grp_fu_352_p_din1(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_din1),.grp_fu_352_p_opcode(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_opcode),.grp_fu_352_p_dout0(grp_fu_269_p_dout0),.grp_fu_352_p_ce(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_ce),.grp_fu_356_p_din0(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_din0),.grp_fu_356_p_din1(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_din1),.grp_fu_356_p_opcode(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_opcode),.grp_fu_356_p_dout0(grp_fu_273_p_dout0),.grp_fu_356_p_ce(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_ce),.grp_fu_360_p_din0(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_din0),.grp_fu_360_p_din1(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_din1),.grp_fu_360_p_dout0(grp_fu_277_p_dout0),.grp_fu_360_p_ce(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_ce),.grp_fu_364_p_din0(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_din0),.grp_fu_364_p_din1(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_din1),.grp_fu_364_p_dout0(grp_fu_281_p_dout0),.grp_fu_364_p_ce(grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_ce));
atax_atax_node1_Pipeline_label_35 grp_atax_node1_Pipeline_label_35_fu_160(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_Pipeline_label_35_fu_160_ap_start),.ap_done(grp_atax_node1_Pipeline_label_35_fu_160_ap_done),.ap_idle(grp_atax_node1_Pipeline_label_35_fu_160_ap_idle),.ap_ready(grp_atax_node1_Pipeline_label_35_fu_160_ap_ready),.tmp_126(tmp_s_reg_320),.v114_address0(grp_atax_node1_Pipeline_label_35_fu_160_v114_address0),.v114_ce0(grp_atax_node1_Pipeline_label_35_fu_160_v114_ce0),.v114_q0(v114_q0),.v114_address1(grp_atax_node1_Pipeline_label_35_fu_160_v114_address1),.v114_ce1(grp_atax_node1_Pipeline_label_35_fu_160_v114_ce1),.v114_q1(v114_q1),.v58_1_address0(grp_atax_node1_Pipeline_label_35_fu_160_v58_1_address0),.v58_1_ce0(grp_atax_node1_Pipeline_label_35_fu_160_v58_1_ce0),.v58_1_we0(grp_atax_node1_Pipeline_label_35_fu_160_v58_1_we0),.v58_1_d0(grp_atax_node1_Pipeline_label_35_fu_160_v58_1_d0),.v58_1_q0(v58_1_q0),.v58_1_address1(grp_atax_node1_Pipeline_label_35_fu_160_v58_1_address1),.v58_1_ce1(grp_atax_node1_Pipeline_label_35_fu_160_v58_1_ce1),.v58_1_we1(grp_atax_node1_Pipeline_label_35_fu_160_v58_1_we1),.v58_1_d1(grp_atax_node1_Pipeline_label_35_fu_160_v58_1_d1),.v58_1_q1(v58_1_q1),.v58_0_address0(grp_atax_node1_Pipeline_label_35_fu_160_v58_0_address0),.v58_0_ce0(grp_atax_node1_Pipeline_label_35_fu_160_v58_0_ce0),.v58_0_we0(grp_atax_node1_Pipeline_label_35_fu_160_v58_0_we0),.v58_0_d0(grp_atax_node1_Pipeline_label_35_fu_160_v58_0_d0),.v58_0_q0(v58_0_q0),.v58_0_address1(grp_atax_node1_Pipeline_label_35_fu_160_v58_0_address1),.v58_0_ce1(grp_atax_node1_Pipeline_label_35_fu_160_v58_0_ce1),.v58_0_we1(grp_atax_node1_Pipeline_label_35_fu_160_v58_0_we1),.v58_0_d1(grp_atax_node1_Pipeline_label_35_fu_160_v58_0_d1),.v58_0_q1(v58_0_q1),.v65_3(v65_3_reg_347),.grp_fu_352_p_din0(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_din0),.grp_fu_352_p_din1(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_din1),.grp_fu_352_p_opcode(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_opcode),.grp_fu_352_p_dout0(grp_fu_269_p_dout0),.grp_fu_352_p_ce(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_ce),.grp_fu_356_p_din0(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_din0),.grp_fu_356_p_din1(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_din1),.grp_fu_356_p_opcode(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_opcode),.grp_fu_356_p_dout0(grp_fu_273_p_dout0),.grp_fu_356_p_ce(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_ce),.grp_fu_360_p_din0(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_din0),.grp_fu_360_p_din1(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_din1),.grp_fu_360_p_dout0(grp_fu_277_p_dout0),.grp_fu_360_p_ce(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_ce),.grp_fu_364_p_din0(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_din0),.grp_fu_364_p_din1(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_din1),.grp_fu_364_p_dout0(grp_fu_281_p_dout0),.grp_fu_364_p_ce(grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_Pipeline_label_33_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node1_Pipeline_label_33_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_Pipeline_label_33_fu_136_ap_ready == 1'b1)) begin
            grp_atax_node1_Pipeline_label_33_fu_136_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_Pipeline_label_34_fu_148_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_atax_node1_Pipeline_label_34_fu_148_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_Pipeline_label_34_fu_148_ap_ready == 1'b1)) begin
            grp_atax_node1_Pipeline_label_34_fu_148_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_Pipeline_label_35_fu_160_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_node1_Pipeline_label_35_fu_160_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_Pipeline_label_35_fu_160_ap_ready == 1'b1)) begin
            grp_atax_node1_Pipeline_label_35_fu_160_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_Pipeline_label_3_fu_114_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node1_Pipeline_label_3_fu_114_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_Pipeline_label_3_fu_114_ap_ready == 1'b1)) begin
            grp_atax_node1_Pipeline_label_3_fu_114_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v59_fu_68 <= 7'd0;
    end else if (((tmp_fu_184_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v59_fu_68 <= add_ln97_fu_208_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp7_reg_310 <= cmp7_fu_224_p2;
        tmp_s_reg_320 <= {{v59_1_reg_279[5:2]}};
        trunc_ln97_reg_304 <= trunc_ln97_fu_219_p1;
        v65_reg_315 <= v65_fu_230_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        lshr_ln_reg_289 <= {{v59_fu_68[5:1]}};
        v59_1_reg_279 <= v59_fu_68;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_172 <= v115_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v65_1_reg_327 <= v65_1_fu_244_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v65_2_reg_342 <= v65_2_fu_262_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v65_3_reg_347 <= v65_3_fu_267_p1;
    end
end
always @ (*) begin
    if ((grp_atax_node1_Pipeline_label_35_fu_160_ap_done == 1'b0)) begin
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
    if ((grp_atax_node1_Pipeline_label_3_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node1_Pipeline_label_33_fu_136_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node1_Pipeline_label_34_fu_148_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((tmp_fu_184_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_184_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_352_ce = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_352_ce = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_352_ce = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_352_ce = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_ce;
    end else begin
        grp_fu_352_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_352_p0 = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_352_p0 = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_352_p0 = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_352_p0 = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_din0;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_352_p1 = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_352_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_352_p1 = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_352_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_352_p1 = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_352_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_352_p1 = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_352_p_din1;
    end else begin
        grp_fu_352_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_356_ce = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_356_ce = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_356_ce = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_356_ce = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_ce;
    end else begin
        grp_fu_356_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_356_p0 = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_356_p0 = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_356_p0 = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_356_p0 = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_din0;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_356_p1 = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_356_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_356_p1 = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_356_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_356_p1 = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_356_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_356_p1 = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_356_p_din1;
    end else begin
        grp_fu_356_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_360_ce = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_360_ce = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_360_ce = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_360_ce = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_ce;
    end else begin
        grp_fu_360_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_360_p0 = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_360_p0 = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_360_p0 = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_360_p0 = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_din0;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_360_p1 = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_360_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_360_p1 = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_360_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_360_p1 = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_360_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_360_p1 = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_360_p_din1;
    end else begin
        grp_fu_360_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_364_ce = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_364_ce = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_364_ce = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_364_ce = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_ce;
    end else begin
        grp_fu_364_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_364_p0 = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_364_p0 = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_364_p0 = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_364_p0 = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_din0;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_364_p1 = grp_atax_node1_Pipeline_label_35_fu_160_grp_fu_364_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_364_p1 = grp_atax_node1_Pipeline_label_34_fu_148_grp_fu_364_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_364_p1 = grp_atax_node1_Pipeline_label_33_fu_136_grp_fu_364_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_364_p1 = grp_atax_node1_Pipeline_label_3_fu_114_grp_fu_364_p_din1;
    end else begin
        grp_fu_364_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v114_address0 = grp_atax_node1_Pipeline_label_35_fu_160_v114_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v114_address0 = grp_atax_node1_Pipeline_label_34_fu_148_v114_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v114_address0 = grp_atax_node1_Pipeline_label_33_fu_136_v114_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v114_address0 = grp_atax_node1_Pipeline_label_3_fu_114_v114_address0;
    end else begin
        v114_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v114_address1 = grp_atax_node1_Pipeline_label_35_fu_160_v114_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v114_address1 = grp_atax_node1_Pipeline_label_34_fu_148_v114_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v114_address1 = grp_atax_node1_Pipeline_label_33_fu_136_v114_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v114_address1 = grp_atax_node1_Pipeline_label_3_fu_114_v114_address1;
    end else begin
        v114_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v114_ce0 = grp_atax_node1_Pipeline_label_35_fu_160_v114_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v114_ce0 = grp_atax_node1_Pipeline_label_34_fu_148_v114_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v114_ce0 = grp_atax_node1_Pipeline_label_33_fu_136_v114_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v114_ce0 = grp_atax_node1_Pipeline_label_3_fu_114_v114_ce0;
    end else begin
        v114_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v114_ce1 = grp_atax_node1_Pipeline_label_35_fu_160_v114_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v114_ce1 = grp_atax_node1_Pipeline_label_34_fu_148_v114_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v114_ce1 = grp_atax_node1_Pipeline_label_33_fu_136_v114_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v114_ce1 = grp_atax_node1_Pipeline_label_3_fu_114_v114_ce1;
    end else begin
        v114_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v115_0_address0_local = p_cast_fu_256_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_0_address0_local = zext_ln97_fu_202_p1;
    end else begin
        v115_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((grp_atax_node1_Pipeline_label_33_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        v115_0_ce0_local = 1'b1;
    end else begin
        v115_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v115_1_address0_local = p_cast_fu_256_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_1_address0_local = zext_ln97_fu_202_p1;
    end else begin
        v115_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((grp_atax_node1_Pipeline_label_33_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        v115_1_ce0_local = 1'b1;
    end else begin
        v115_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_0_address0 = grp_atax_node1_Pipeline_label_35_fu_160_v58_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_0_address0 = grp_atax_node1_Pipeline_label_34_fu_148_v58_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_address0 = grp_atax_node1_Pipeline_label_33_fu_136_v58_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_address0 = grp_atax_node1_Pipeline_label_3_fu_114_v58_0_address0;
    end else begin
        v58_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_0_address1 = grp_atax_node1_Pipeline_label_35_fu_160_v58_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_0_address1 = grp_atax_node1_Pipeline_label_34_fu_148_v58_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_address1 = grp_atax_node1_Pipeline_label_33_fu_136_v58_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_address1 = grp_atax_node1_Pipeline_label_3_fu_114_v58_0_address1;
    end else begin
        v58_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_0_ce0 = grp_atax_node1_Pipeline_label_35_fu_160_v58_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_0_ce0 = grp_atax_node1_Pipeline_label_34_fu_148_v58_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_ce0 = grp_atax_node1_Pipeline_label_33_fu_136_v58_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_ce0 = grp_atax_node1_Pipeline_label_3_fu_114_v58_0_ce0;
    end else begin
        v58_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_0_ce1 = grp_atax_node1_Pipeline_label_35_fu_160_v58_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_0_ce1 = grp_atax_node1_Pipeline_label_34_fu_148_v58_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_ce1 = grp_atax_node1_Pipeline_label_33_fu_136_v58_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_ce1 = grp_atax_node1_Pipeline_label_3_fu_114_v58_0_ce1;
    end else begin
        v58_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_0_d0 = grp_atax_node1_Pipeline_label_35_fu_160_v58_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_0_d0 = grp_atax_node1_Pipeline_label_34_fu_148_v58_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_d0 = grp_atax_node1_Pipeline_label_33_fu_136_v58_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_d0 = grp_atax_node1_Pipeline_label_3_fu_114_v58_0_d0;
    end else begin
        v58_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_0_d1 = grp_atax_node1_Pipeline_label_35_fu_160_v58_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_0_d1 = grp_atax_node1_Pipeline_label_34_fu_148_v58_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_d1 = grp_atax_node1_Pipeline_label_33_fu_136_v58_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_d1 = grp_atax_node1_Pipeline_label_3_fu_114_v58_0_d1;
    end else begin
        v58_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_0_we0 = grp_atax_node1_Pipeline_label_35_fu_160_v58_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_0_we0 = grp_atax_node1_Pipeline_label_34_fu_148_v58_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_we0 = grp_atax_node1_Pipeline_label_33_fu_136_v58_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_we0 = grp_atax_node1_Pipeline_label_3_fu_114_v58_0_we0;
    end else begin
        v58_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_0_we1 = grp_atax_node1_Pipeline_label_35_fu_160_v58_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_0_we1 = grp_atax_node1_Pipeline_label_34_fu_148_v58_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_we1 = grp_atax_node1_Pipeline_label_33_fu_136_v58_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_we1 = grp_atax_node1_Pipeline_label_3_fu_114_v58_0_we1;
    end else begin
        v58_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_1_address0 = grp_atax_node1_Pipeline_label_35_fu_160_v58_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_1_address0 = grp_atax_node1_Pipeline_label_34_fu_148_v58_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_address0 = grp_atax_node1_Pipeline_label_33_fu_136_v58_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_address0 = grp_atax_node1_Pipeline_label_3_fu_114_v58_1_address0;
    end else begin
        v58_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_1_address1 = grp_atax_node1_Pipeline_label_35_fu_160_v58_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_1_address1 = grp_atax_node1_Pipeline_label_34_fu_148_v58_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_address1 = grp_atax_node1_Pipeline_label_33_fu_136_v58_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_address1 = grp_atax_node1_Pipeline_label_3_fu_114_v58_1_address1;
    end else begin
        v58_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_1_ce0 = grp_atax_node1_Pipeline_label_35_fu_160_v58_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_1_ce0 = grp_atax_node1_Pipeline_label_34_fu_148_v58_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_ce0 = grp_atax_node1_Pipeline_label_33_fu_136_v58_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_ce0 = grp_atax_node1_Pipeline_label_3_fu_114_v58_1_ce0;
    end else begin
        v58_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_1_ce1 = grp_atax_node1_Pipeline_label_35_fu_160_v58_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_1_ce1 = grp_atax_node1_Pipeline_label_34_fu_148_v58_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_ce1 = grp_atax_node1_Pipeline_label_33_fu_136_v58_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_ce1 = grp_atax_node1_Pipeline_label_3_fu_114_v58_1_ce1;
    end else begin
        v58_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_1_d0 = grp_atax_node1_Pipeline_label_35_fu_160_v58_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_1_d0 = grp_atax_node1_Pipeline_label_34_fu_148_v58_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_d0 = grp_atax_node1_Pipeline_label_33_fu_136_v58_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_d0 = grp_atax_node1_Pipeline_label_3_fu_114_v58_1_d0;
    end else begin
        v58_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_1_d1 = grp_atax_node1_Pipeline_label_35_fu_160_v58_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_1_d1 = grp_atax_node1_Pipeline_label_34_fu_148_v58_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_d1 = grp_atax_node1_Pipeline_label_33_fu_136_v58_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_d1 = grp_atax_node1_Pipeline_label_3_fu_114_v58_1_d1;
    end else begin
        v58_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_1_we0 = grp_atax_node1_Pipeline_label_35_fu_160_v58_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_1_we0 = grp_atax_node1_Pipeline_label_34_fu_148_v58_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_we0 = grp_atax_node1_Pipeline_label_33_fu_136_v58_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_we0 = grp_atax_node1_Pipeline_label_3_fu_114_v58_1_we0;
    end else begin
        v58_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v58_1_we1 = grp_atax_node1_Pipeline_label_35_fu_160_v58_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v58_1_we1 = grp_atax_node1_Pipeline_label_34_fu_148_v58_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_we1 = grp_atax_node1_Pipeline_label_33_fu_136_v58_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_we1 = grp_atax_node1_Pipeline_label_3_fu_114_v58_1_we1;
    end else begin
        v58_1_we1 = 1'b0;
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
            if (((tmp_fu_184_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_node1_Pipeline_label_3_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node1_Pipeline_label_33_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_atax_node1_Pipeline_label_34_fu_148_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_atax_node1_Pipeline_label_35_fu_160_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln97_fu_208_p2 = (v59_fu_68 + 7'd4);
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
assign cmp7_fu_224_p2 = ((v59_1_reg_279 == 7'd0) ? 1'b1 : 1'b0);
assign grp_atax_node1_Pipeline_label_33_fu_136_ap_start = grp_atax_node1_Pipeline_label_33_fu_136_ap_start_reg;
assign grp_atax_node1_Pipeline_label_34_fu_148_ap_start = grp_atax_node1_Pipeline_label_34_fu_148_ap_start_reg;
assign grp_atax_node1_Pipeline_label_35_fu_160_ap_start = grp_atax_node1_Pipeline_label_35_fu_160_ap_start_reg;
assign grp_atax_node1_Pipeline_label_3_fu_114_ap_start = grp_atax_node1_Pipeline_label_3_fu_114_ap_start_reg;
assign grp_fu_269_p_ce = grp_fu_352_ce;
assign grp_fu_269_p_din0 = grp_fu_352_p0;
assign grp_fu_269_p_din1 = grp_fu_352_p1;
assign grp_fu_269_p_opcode = 2'd0;
assign grp_fu_273_p_ce = grp_fu_356_ce;
assign grp_fu_273_p_din0 = grp_fu_356_p0;
assign grp_fu_273_p_din1 = grp_fu_356_p1;
assign grp_fu_273_p_opcode = 2'd0;
assign grp_fu_277_p_ce = grp_fu_360_ce;
assign grp_fu_277_p_din0 = grp_fu_360_p0;
assign grp_fu_277_p_din1 = grp_fu_360_p1;
assign grp_fu_281_p_ce = grp_fu_364_ce;
assign grp_fu_281_p_din0 = grp_fu_364_p0;
assign grp_fu_281_p_din1 = grp_fu_364_p1;
assign lshr_ln_fu_192_p4 = {{v59_fu_68[5:1]}};
assign p_cast_fu_256_p1 = tmp_60_fu_249_p3;
assign tmp_60_fu_249_p3 = {{tmp_s_reg_320}, {1'd1}};
assign tmp_fu_184_p3 = v59_fu_68[32'd6];
assign trunc_ln97_fu_219_p1 = v59_1_reg_279[5:0];
assign v115_0_address0 = v115_0_address0_local;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = v115_1_address0_local;
assign v115_1_ce0 = v115_1_ce0_local;
assign v57_0_address0 = grp_atax_node1_Pipeline_label_3_fu_114_v57_0_address0;
assign v57_0_address1 = grp_atax_node1_Pipeline_label_3_fu_114_v57_0_address1;
assign v57_0_ce0 = grp_atax_node1_Pipeline_label_3_fu_114_v57_0_ce0;
assign v57_0_ce1 = grp_atax_node1_Pipeline_label_3_fu_114_v57_0_ce1;
assign v57_1_address0 = grp_atax_node1_Pipeline_label_3_fu_114_v57_1_address0;
assign v57_1_address1 = grp_atax_node1_Pipeline_label_3_fu_114_v57_1_address1;
assign v57_1_ce0 = grp_atax_node1_Pipeline_label_3_fu_114_v57_1_ce0;
assign v57_1_ce1 = grp_atax_node1_Pipeline_label_3_fu_114_v57_1_ce1;
assign v57_2_address0 = grp_atax_node1_Pipeline_label_3_fu_114_v57_2_address0;
assign v57_2_address1 = grp_atax_node1_Pipeline_label_3_fu_114_v57_2_address1;
assign v57_2_ce0 = grp_atax_node1_Pipeline_label_3_fu_114_v57_2_ce0;
assign v57_2_ce1 = grp_atax_node1_Pipeline_label_3_fu_114_v57_2_ce1;
assign v57_3_address0 = grp_atax_node1_Pipeline_label_3_fu_114_v57_3_address0;
assign v57_3_address1 = grp_atax_node1_Pipeline_label_3_fu_114_v57_3_address1;
assign v57_3_ce0 = grp_atax_node1_Pipeline_label_3_fu_114_v57_3_ce0;
assign v57_3_ce1 = grp_atax_node1_Pipeline_label_3_fu_114_v57_3_ce1;
assign v65_1_fu_244_p1 = reg_172;
assign v65_2_fu_262_p1 = v115_0_q0;
assign v65_3_fu_267_p1 = reg_172;
assign v65_fu_230_p1 = v115_0_q0;
assign zext_ln97_fu_202_p1 = lshr_ln_fu_192_p4;
endmodule 