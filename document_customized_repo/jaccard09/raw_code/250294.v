module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v114_2_address0,v114_2_ce0,v114_2_q0,v114_2_address1,v114_2_ce1,v114_2_q1,v114_3_address0,v114_3_ce0,v114_3_q0,v114_3_address1,v114_3_ce1,v114_3_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_1_address0,v57_1_ce0,v57_1_q0,v57_2_address0,v57_2_ce0,v57_2_q0,v57_3_address0,v57_3_ce0,v57_3_q0,v57_4_address0,v57_4_ce0,v57_4_q0,v57_5_address0,v57_5_ce0,v57_5_q0,v57_6_address0,v57_6_ce0,v57_6_q0,v57_7_address0,v57_7_ce0,v57_7_q0,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_2_address1,v58_2_ce1,v58_2_we1,v58_2_d1,v58_2_q1,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_3_address1,v58_3_ce1,v58_3_we1,v58_3_d1,v58_3_q1,grp_fu_458_p_din0,grp_fu_458_p_din1,grp_fu_458_p_opcode,grp_fu_458_p_dout0,grp_fu_458_p_ce,grp_fu_462_p_din0,grp_fu_462_p_din1,grp_fu_462_p_dout0,grp_fu_462_p_ce); 
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
output  [9:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [9:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [9:0] v114_1_address0;
output   v114_1_ce0;
input  [31:0] v114_1_q0;
output  [9:0] v114_1_address1;
output   v114_1_ce1;
input  [31:0] v114_1_q1;
output  [9:0] v114_2_address0;
output   v114_2_ce0;
input  [31:0] v114_2_q0;
output  [9:0] v114_2_address1;
output   v114_2_ce1;
input  [31:0] v114_2_q1;
output  [9:0] v114_3_address0;
output   v114_3_ce0;
input  [31:0] v114_3_q0;
output  [9:0] v114_3_address1;
output   v114_3_ce1;
input  [31:0] v114_3_q1;
output  [4:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [4:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [2:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [2:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [2:0] v57_2_address0;
output   v57_2_ce0;
input  [31:0] v57_2_q0;
output  [2:0] v57_3_address0;
output   v57_3_ce0;
input  [31:0] v57_3_q0;
output  [2:0] v57_4_address0;
output   v57_4_ce0;
input  [31:0] v57_4_q0;
output  [2:0] v57_5_address0;
output   v57_5_ce0;
input  [31:0] v57_5_q0;
output  [2:0] v57_6_address0;
output   v57_6_ce0;
input  [31:0] v57_6_q0;
output  [2:0] v57_7_address0;
output   v57_7_ce0;
input  [31:0] v57_7_q0;
output  [3:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [3:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
output  [3:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [3:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [3:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [3:0] v58_2_address1;
output   v58_2_ce1;
output   v58_2_we1;
output  [31:0] v58_2_d1;
input  [31:0] v58_2_q1;
output  [3:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [3:0] v58_3_address1;
output   v58_3_ce1;
output   v58_3_we1;
output  [31:0] v58_3_d1;
input  [31:0] v58_3_q1;
output  [31:0] grp_fu_458_p_din0;
output  [31:0] grp_fu_458_p_din1;
output  [1:0] grp_fu_458_p_opcode;
input  [31:0] grp_fu_458_p_dout0;
output   grp_fu_458_p_ce;
output  [31:0] grp_fu_462_p_din0;
output  [31:0] grp_fu_462_p_din1;
input  [31:0] grp_fu_462_p_dout0;
output   grp_fu_462_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] v58_0_address0;
reg v58_0_ce0;
reg v58_0_we0;
reg[31:0] v58_0_d0;
reg[3:0] v58_0_address1;
reg v58_0_ce1;
reg v58_0_we1;
reg[31:0] v58_0_d1;
reg[3:0] v58_1_address0;
reg v58_1_ce0;
reg v58_1_we0;
reg[31:0] v58_1_d0;
reg[3:0] v58_1_address1;
reg v58_1_ce1;
reg v58_1_we1;
reg[31:0] v58_1_d1;
reg[3:0] v58_2_address0;
reg v58_2_ce0;
reg v58_2_we0;
reg[31:0] v58_2_d0;
reg[3:0] v58_2_address1;
reg v58_2_ce1;
reg v58_2_we1;
reg[31:0] v58_2_d1;
reg[3:0] v58_3_address0;
reg v58_3_ce0;
reg v58_3_we0;
reg[31:0] v58_3_d0;
reg[3:0] v58_3_address1;
reg v58_3_ce1;
reg v58_3_we1;
reg[31:0] v58_3_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] v59_1_reg_242;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln97_fu_206_p1;
reg   [1:0] trunc_ln97_reg_262;
wire    ap_CS_fsm_state3;
reg   [3:0] lshr_ln_reg_268;
wire   [0:0] cmp7_fu_220_p2;
reg   [0:0] cmp7_reg_274;
wire   [31:0] v65_fu_226_p1;
reg   [31:0] v65_reg_279;
reg   [31:0] v115_1_load_reg_284;
wire   [31:0] v65_1_fu_231_p1;
reg   [31:0] v65_1_reg_289;
wire    ap_CS_fsm_state5;
wire    grp_atax_node1_Pipeline_label_3_fu_108_ap_start;
wire    grp_atax_node1_Pipeline_label_3_fu_108_ap_done;
wire    grp_atax_node1_Pipeline_label_3_fu_108_ap_idle;
wire    grp_atax_node1_Pipeline_label_3_fu_108_ap_ready;
wire   [9:0] grp_atax_node1_Pipeline_label_3_fu_108_v114_0_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v114_0_ce0;
wire   [9:0] grp_atax_node1_Pipeline_label_3_fu_108_v114_0_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v114_0_ce1;
wire   [9:0] grp_atax_node1_Pipeline_label_3_fu_108_v114_2_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v114_2_ce0;
wire   [9:0] grp_atax_node1_Pipeline_label_3_fu_108_v114_2_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v114_2_ce1;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_3_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_3_ce0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_3_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_3_d0;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_3_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_3_ce1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_3_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_3_d1;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_2_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_2_ce0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_2_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_2_d0;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_2_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_2_ce1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_2_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_2_d1;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_1_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_1_ce0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_1_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_1_d0;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_1_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_1_ce1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_1_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_1_d1;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_0_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_0_ce0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_0_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_0_d0;
wire   [3:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_0_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_0_ce1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v58_0_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_v58_0_d1;
wire   [2:0] grp_atax_node1_Pipeline_label_3_fu_108_v57_0_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v57_0_ce0;
wire   [2:0] grp_atax_node1_Pipeline_label_3_fu_108_v57_1_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v57_1_ce0;
wire   [2:0] grp_atax_node1_Pipeline_label_3_fu_108_v57_2_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v57_2_ce0;
wire   [2:0] grp_atax_node1_Pipeline_label_3_fu_108_v57_3_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v57_3_ce0;
wire   [2:0] grp_atax_node1_Pipeline_label_3_fu_108_v57_4_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v57_4_ce0;
wire   [2:0] grp_atax_node1_Pipeline_label_3_fu_108_v57_5_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v57_5_ce0;
wire   [2:0] grp_atax_node1_Pipeline_label_3_fu_108_v57_6_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v57_6_ce0;
wire   [2:0] grp_atax_node1_Pipeline_label_3_fu_108_v57_7_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_108_v57_7_ce0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_opcode;
wire    grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_opcode;
wire    grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_din1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_din1;
wire    grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_ce;
wire    grp_atax_node1_Pipeline_label_33_fu_144_ap_start;
wire    grp_atax_node1_Pipeline_label_33_fu_144_ap_done;
wire    grp_atax_node1_Pipeline_label_33_fu_144_ap_idle;
wire    grp_atax_node1_Pipeline_label_33_fu_144_ap_ready;
wire   [9:0] grp_atax_node1_Pipeline_label_33_fu_144_v114_1_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v114_1_ce0;
wire   [9:0] grp_atax_node1_Pipeline_label_33_fu_144_v114_1_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v114_1_ce1;
wire   [9:0] grp_atax_node1_Pipeline_label_33_fu_144_v114_3_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v114_3_ce0;
wire   [9:0] grp_atax_node1_Pipeline_label_33_fu_144_v114_3_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v114_3_ce1;
wire   [3:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_3_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_3_ce0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_3_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_3_d0;
wire   [3:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_3_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_3_ce1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_3_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_3_d1;
wire   [3:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_2_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_2_ce0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_2_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_2_d0;
wire   [3:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_2_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_2_ce1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_2_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_2_d1;
wire   [3:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_1_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_1_ce0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_1_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_1_d0;
wire   [3:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_1_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_1_ce1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_1_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_1_d1;
wire   [3:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_0_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_0_ce0;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_0_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_0_d0;
wire   [3:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_0_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_0_ce1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_v58_0_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_v58_0_d1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_opcode;
wire    grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_opcode;
wire    grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_din1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_din1;
wire    grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_ce;
reg    grp_atax_node1_Pipeline_label_3_fu_108_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_node1_Pipeline_label_33_fu_144_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln97_fu_189_p1;
wire   [0:0] tmp_fu_171_p3;
reg   [6:0] v59_fu_78;
wire   [6:0] add_ln97_fu_195_p2;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
wire   [4:0] lshr_ln97_1_fu_179_p4;
reg   [31:0] grp_fu_294_p0;
reg   [31:0] grp_fu_294_p1;
reg    grp_fu_294_ce;
wire   [31:0] grp_fu_298_p2;
reg   [31:0] grp_fu_298_p0;
reg   [31:0] grp_fu_298_p1;
reg    grp_fu_298_ce;
reg   [31:0] grp_fu_302_p0;
reg   [31:0] grp_fu_302_p1;
reg    grp_fu_302_ce;
wire   [31:0] grp_fu_306_p2;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_306_p1;
reg    grp_fu_306_ce;
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
#0 grp_atax_node1_Pipeline_label_3_fu_108_ap_start_reg = 1'b0;
#0 grp_atax_node1_Pipeline_label_33_fu_144_ap_start_reg = 1'b0;
#0 v59_fu_78 = 7'd0;
end
atax_atax_node1_Pipeline_label_3 grp_atax_node1_Pipeline_label_3_fu_108(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_Pipeline_label_3_fu_108_ap_start),.ap_done(grp_atax_node1_Pipeline_label_3_fu_108_ap_done),.ap_idle(grp_atax_node1_Pipeline_label_3_fu_108_ap_idle),.ap_ready(grp_atax_node1_Pipeline_label_3_fu_108_ap_ready),.lshr_ln(lshr_ln_reg_268),.v114_0_address0(grp_atax_node1_Pipeline_label_3_fu_108_v114_0_address0),.v114_0_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v114_0_ce0),.v114_0_q0(v114_0_q0),.v114_0_address1(grp_atax_node1_Pipeline_label_3_fu_108_v114_0_address1),.v114_0_ce1(grp_atax_node1_Pipeline_label_3_fu_108_v114_0_ce1),.v114_0_q1(v114_0_q1),.v114_2_address0(grp_atax_node1_Pipeline_label_3_fu_108_v114_2_address0),.v114_2_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v114_2_ce0),.v114_2_q0(v114_2_q0),.v114_2_address1(grp_atax_node1_Pipeline_label_3_fu_108_v114_2_address1),.v114_2_ce1(grp_atax_node1_Pipeline_label_3_fu_108_v114_2_ce1),.v114_2_q1(v114_2_q1),.v58_3_address0(grp_atax_node1_Pipeline_label_3_fu_108_v58_3_address0),.v58_3_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v58_3_ce0),.v58_3_we0(grp_atax_node1_Pipeline_label_3_fu_108_v58_3_we0),.v58_3_d0(grp_atax_node1_Pipeline_label_3_fu_108_v58_3_d0),.v58_3_q0(v58_3_q0),.v58_3_address1(grp_atax_node1_Pipeline_label_3_fu_108_v58_3_address1),.v58_3_ce1(grp_atax_node1_Pipeline_label_3_fu_108_v58_3_ce1),.v58_3_we1(grp_atax_node1_Pipeline_label_3_fu_108_v58_3_we1),.v58_3_d1(grp_atax_node1_Pipeline_label_3_fu_108_v58_3_d1),.v58_3_q1(v58_3_q1),.v58_2_address0(grp_atax_node1_Pipeline_label_3_fu_108_v58_2_address0),.v58_2_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v58_2_ce0),.v58_2_we0(grp_atax_node1_Pipeline_label_3_fu_108_v58_2_we0),.v58_2_d0(grp_atax_node1_Pipeline_label_3_fu_108_v58_2_d0),.v58_2_q0(v58_2_q0),.v58_2_address1(grp_atax_node1_Pipeline_label_3_fu_108_v58_2_address1),.v58_2_ce1(grp_atax_node1_Pipeline_label_3_fu_108_v58_2_ce1),.v58_2_we1(grp_atax_node1_Pipeline_label_3_fu_108_v58_2_we1),.v58_2_d1(grp_atax_node1_Pipeline_label_3_fu_108_v58_2_d1),.v58_2_q1(v58_2_q1),.v58_1_address0(grp_atax_node1_Pipeline_label_3_fu_108_v58_1_address0),.v58_1_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v58_1_ce0),.v58_1_we0(grp_atax_node1_Pipeline_label_3_fu_108_v58_1_we0),.v58_1_d0(grp_atax_node1_Pipeline_label_3_fu_108_v58_1_d0),.v58_1_q0(v58_1_q0),.v58_1_address1(grp_atax_node1_Pipeline_label_3_fu_108_v58_1_address1),.v58_1_ce1(grp_atax_node1_Pipeline_label_3_fu_108_v58_1_ce1),.v58_1_we1(grp_atax_node1_Pipeline_label_3_fu_108_v58_1_we1),.v58_1_d1(grp_atax_node1_Pipeline_label_3_fu_108_v58_1_d1),.v58_1_q1(v58_1_q1),.v58_0_address0(grp_atax_node1_Pipeline_label_3_fu_108_v58_0_address0),.v58_0_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v58_0_ce0),.v58_0_we0(grp_atax_node1_Pipeline_label_3_fu_108_v58_0_we0),.v58_0_d0(grp_atax_node1_Pipeline_label_3_fu_108_v58_0_d0),.v58_0_q0(v58_0_q0),.v58_0_address1(grp_atax_node1_Pipeline_label_3_fu_108_v58_0_address1),.v58_0_ce1(grp_atax_node1_Pipeline_label_3_fu_108_v58_0_ce1),.v58_0_we1(grp_atax_node1_Pipeline_label_3_fu_108_v58_0_we1),.v58_0_d1(grp_atax_node1_Pipeline_label_3_fu_108_v58_0_d1),.v58_0_q1(v58_0_q1),.v57_0_address0(grp_atax_node1_Pipeline_label_3_fu_108_v57_0_address0),.v57_0_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v57_0_ce0),.v57_0_q0(v57_0_q0),.cmp7(cmp7_reg_274),.empty(trunc_ln97_reg_262),.v65(v65_reg_279),.v57_1_address0(grp_atax_node1_Pipeline_label_3_fu_108_v57_1_address0),.v57_1_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v57_1_ce0),.v57_1_q0(v57_1_q0),.v57_2_address0(grp_atax_node1_Pipeline_label_3_fu_108_v57_2_address0),.v57_2_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v57_2_ce0),.v57_2_q0(v57_2_q0),.v57_3_address0(grp_atax_node1_Pipeline_label_3_fu_108_v57_3_address0),.v57_3_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v57_3_ce0),.v57_3_q0(v57_3_q0),.v57_4_address0(grp_atax_node1_Pipeline_label_3_fu_108_v57_4_address0),.v57_4_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v57_4_ce0),.v57_4_q0(v57_4_q0),.v57_5_address0(grp_atax_node1_Pipeline_label_3_fu_108_v57_5_address0),.v57_5_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v57_5_ce0),.v57_5_q0(v57_5_q0),.v57_6_address0(grp_atax_node1_Pipeline_label_3_fu_108_v57_6_address0),.v57_6_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v57_6_ce0),.v57_6_q0(v57_6_q0),.v57_7_address0(grp_atax_node1_Pipeline_label_3_fu_108_v57_7_address0),.v57_7_ce0(grp_atax_node1_Pipeline_label_3_fu_108_v57_7_ce0),.v57_7_q0(v57_7_q0),.grp_fu_294_p_din0(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_din0),.grp_fu_294_p_din1(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_din1),.grp_fu_294_p_opcode(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_opcode),.grp_fu_294_p_dout0(grp_fu_458_p_dout0),.grp_fu_294_p_ce(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_ce),.grp_fu_298_p_din0(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_din0),.grp_fu_298_p_din1(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_din1),.grp_fu_298_p_opcode(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_opcode),.grp_fu_298_p_dout0(grp_fu_298_p2),.grp_fu_298_p_ce(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_ce),.grp_fu_302_p_din0(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_din0),.grp_fu_302_p_din1(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_din1),.grp_fu_302_p_dout0(grp_fu_462_p_dout0),.grp_fu_302_p_ce(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_ce),.grp_fu_306_p_din0(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_din0),.grp_fu_306_p_din1(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_din1),.grp_fu_306_p_dout0(grp_fu_306_p2),.grp_fu_306_p_ce(grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_ce));
atax_atax_node1_Pipeline_label_33 grp_atax_node1_Pipeline_label_33_fu_144(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_Pipeline_label_33_fu_144_ap_start),.ap_done(grp_atax_node1_Pipeline_label_33_fu_144_ap_done),.ap_idle(grp_atax_node1_Pipeline_label_33_fu_144_ap_idle),.ap_ready(grp_atax_node1_Pipeline_label_33_fu_144_ap_ready),.lshr_ln(lshr_ln_reg_268),.v114_1_address0(grp_atax_node1_Pipeline_label_33_fu_144_v114_1_address0),.v114_1_ce0(grp_atax_node1_Pipeline_label_33_fu_144_v114_1_ce0),.v114_1_q0(v114_1_q0),.v114_1_address1(grp_atax_node1_Pipeline_label_33_fu_144_v114_1_address1),.v114_1_ce1(grp_atax_node1_Pipeline_label_33_fu_144_v114_1_ce1),.v114_1_q1(v114_1_q1),.v114_3_address0(grp_atax_node1_Pipeline_label_33_fu_144_v114_3_address0),.v114_3_ce0(grp_atax_node1_Pipeline_label_33_fu_144_v114_3_ce0),.v114_3_q0(v114_3_q0),.v114_3_address1(grp_atax_node1_Pipeline_label_33_fu_144_v114_3_address1),.v114_3_ce1(grp_atax_node1_Pipeline_label_33_fu_144_v114_3_ce1),.v114_3_q1(v114_3_q1),.v58_3_address0(grp_atax_node1_Pipeline_label_33_fu_144_v58_3_address0),.v58_3_ce0(grp_atax_node1_Pipeline_label_33_fu_144_v58_3_ce0),.v58_3_we0(grp_atax_node1_Pipeline_label_33_fu_144_v58_3_we0),.v58_3_d0(grp_atax_node1_Pipeline_label_33_fu_144_v58_3_d0),.v58_3_q0(v58_3_q0),.v58_3_address1(grp_atax_node1_Pipeline_label_33_fu_144_v58_3_address1),.v58_3_ce1(grp_atax_node1_Pipeline_label_33_fu_144_v58_3_ce1),.v58_3_we1(grp_atax_node1_Pipeline_label_33_fu_144_v58_3_we1),.v58_3_d1(grp_atax_node1_Pipeline_label_33_fu_144_v58_3_d1),.v58_3_q1(v58_3_q1),.v58_2_address0(grp_atax_node1_Pipeline_label_33_fu_144_v58_2_address0),.v58_2_ce0(grp_atax_node1_Pipeline_label_33_fu_144_v58_2_ce0),.v58_2_we0(grp_atax_node1_Pipeline_label_33_fu_144_v58_2_we0),.v58_2_d0(grp_atax_node1_Pipeline_label_33_fu_144_v58_2_d0),.v58_2_q0(v58_2_q0),.v58_2_address1(grp_atax_node1_Pipeline_label_33_fu_144_v58_2_address1),.v58_2_ce1(grp_atax_node1_Pipeline_label_33_fu_144_v58_2_ce1),.v58_2_we1(grp_atax_node1_Pipeline_label_33_fu_144_v58_2_we1),.v58_2_d1(grp_atax_node1_Pipeline_label_33_fu_144_v58_2_d1),.v58_2_q1(v58_2_q1),.v58_1_address0(grp_atax_node1_Pipeline_label_33_fu_144_v58_1_address0),.v58_1_ce0(grp_atax_node1_Pipeline_label_33_fu_144_v58_1_ce0),.v58_1_we0(grp_atax_node1_Pipeline_label_33_fu_144_v58_1_we0),.v58_1_d0(grp_atax_node1_Pipeline_label_33_fu_144_v58_1_d0),.v58_1_q0(v58_1_q0),.v58_1_address1(grp_atax_node1_Pipeline_label_33_fu_144_v58_1_address1),.v58_1_ce1(grp_atax_node1_Pipeline_label_33_fu_144_v58_1_ce1),.v58_1_we1(grp_atax_node1_Pipeline_label_33_fu_144_v58_1_we1),.v58_1_d1(grp_atax_node1_Pipeline_label_33_fu_144_v58_1_d1),.v58_1_q1(v58_1_q1),.v58_0_address0(grp_atax_node1_Pipeline_label_33_fu_144_v58_0_address0),.v58_0_ce0(grp_atax_node1_Pipeline_label_33_fu_144_v58_0_ce0),.v58_0_we0(grp_atax_node1_Pipeline_label_33_fu_144_v58_0_we0),.v58_0_d0(grp_atax_node1_Pipeline_label_33_fu_144_v58_0_d0),.v58_0_q0(v58_0_q0),.v58_0_address1(grp_atax_node1_Pipeline_label_33_fu_144_v58_0_address1),.v58_0_ce1(grp_atax_node1_Pipeline_label_33_fu_144_v58_0_ce1),.v58_0_we1(grp_atax_node1_Pipeline_label_33_fu_144_v58_0_we1),.v58_0_d1(grp_atax_node1_Pipeline_label_33_fu_144_v58_0_d1),.v58_0_q1(v58_0_q1),.empty(trunc_ln97_reg_262),.v65_1(v65_1_reg_289),.grp_fu_294_p_din0(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_din0),.grp_fu_294_p_din1(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_din1),.grp_fu_294_p_opcode(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_opcode),.grp_fu_294_p_dout0(grp_fu_458_p_dout0),.grp_fu_294_p_ce(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_ce),.grp_fu_298_p_din0(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_din0),.grp_fu_298_p_din1(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_din1),.grp_fu_298_p_opcode(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_opcode),.grp_fu_298_p_dout0(grp_fu_298_p2),.grp_fu_298_p_ce(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_ce),.grp_fu_302_p_din0(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_din0),.grp_fu_302_p_din1(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_din1),.grp_fu_302_p_dout0(grp_fu_462_p_dout0),.grp_fu_302_p_ce(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_ce),.grp_fu_306_p_din0(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_din0),.grp_fu_306_p_din1(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_din1),.grp_fu_306_p_dout0(grp_fu_306_p2),.grp_fu_306_p_ce(grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_ce));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_298_p0),.din1(grp_fu_298_p1),.ce(grp_fu_298_ce),.dout(grp_fu_298_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U39(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_306_p0),.din1(grp_fu_306_p1),.ce(grp_fu_306_ce),.dout(grp_fu_306_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_Pipeline_label_33_fu_144_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node1_Pipeline_label_33_fu_144_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_Pipeline_label_33_fu_144_ap_ready == 1'b1)) begin
            grp_atax_node1_Pipeline_label_33_fu_144_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_Pipeline_label_3_fu_108_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node1_Pipeline_label_3_fu_108_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_Pipeline_label_3_fu_108_ap_ready == 1'b1)) begin
            grp_atax_node1_Pipeline_label_3_fu_108_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v59_fu_78 <= 7'd0;
    end else if (((tmp_fu_171_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v59_fu_78 <= add_ln97_fu_195_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp7_reg_274 <= cmp7_fu_220_p2;
        lshr_ln_reg_268 <= {{v59_1_reg_242[5:2]}};
        trunc_ln97_reg_262 <= trunc_ln97_fu_206_p1;
        v115_1_load_reg_284 <= v115_1_q0;
        v65_reg_279 <= v65_fu_226_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v59_1_reg_242 <= v59_fu_78;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v65_1_reg_289 <= v65_1_fu_231_p1;
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
    if ((grp_atax_node1_Pipeline_label_3_fu_108_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node1_Pipeline_label_33_fu_144_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_171_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_171_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_294_ce = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_294_ce = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_ce;
    end else begin
        grp_fu_294_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_294_p0 = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_294_p0 = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_din0;
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_294_p1 = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_294_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_294_p1 = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_294_p_din1;
    end else begin
        grp_fu_294_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_298_ce = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_298_ce = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_ce;
    end else begin
        grp_fu_298_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_298_p0 = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_298_p0 = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_din0;
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_298_p1 = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_298_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_298_p1 = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_298_p_din1;
    end else begin
        grp_fu_298_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_302_ce = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_302_ce = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_ce;
    end else begin
        grp_fu_302_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_302_p0 = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_302_p0 = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_din0;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_302_p1 = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_302_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_302_p1 = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_302_p_din1;
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_306_ce = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_306_ce = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_ce;
    end else begin
        grp_fu_306_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_306_p0 = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_306_p0 = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_din0;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_306_p1 = grp_atax_node1_Pipeline_label_33_fu_144_grp_fu_306_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_306_p1 = grp_atax_node1_Pipeline_label_3_fu_108_grp_fu_306_p_din1;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_0_ce0_local = 1'b1;
    end else begin
        v115_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_1_ce0_local = 1'b1;
    end else begin
        v115_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_address0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_0_address0;
    end else begin
        v58_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_address1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_address1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_0_address1;
    end else begin
        v58_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_ce0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_0_ce0;
    end else begin
        v58_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_ce1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_ce1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_0_ce1;
    end else begin
        v58_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_d0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_d0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_0_d0;
    end else begin
        v58_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_d1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_d1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_0_d1;
    end else begin
        v58_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_we0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_we0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_0_we0;
    end else begin
        v58_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_0_we1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_0_we1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_0_we1;
    end else begin
        v58_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_address0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_1_address0;
    end else begin
        v58_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_address1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_address1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_1_address1;
    end else begin
        v58_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_ce0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_1_ce0;
    end else begin
        v58_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_ce1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_ce1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_1_ce1;
    end else begin
        v58_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_d0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_d0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_1_d0;
    end else begin
        v58_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_d1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_d1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_1_d1;
    end else begin
        v58_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_we0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_we0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_1_we0;
    end else begin
        v58_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_1_we1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_1_we1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_1_we1;
    end else begin
        v58_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_2_address0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_2_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_2_address0;
    end else begin
        v58_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_2_address1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_2_address1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_2_address1;
    end else begin
        v58_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_2_ce0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_2_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_2_ce0;
    end else begin
        v58_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_2_ce1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_2_ce1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_2_ce1;
    end else begin
        v58_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_2_d0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_2_d0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_2_d0;
    end else begin
        v58_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_2_d1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_2_d1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_2_d1;
    end else begin
        v58_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_2_we0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_2_we0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_2_we0;
    end else begin
        v58_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_2_we1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_2_we1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_2_we1;
    end else begin
        v58_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_3_address0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_3_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_3_address0;
    end else begin
        v58_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_3_address1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_3_address1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_3_address1;
    end else begin
        v58_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_3_ce0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_3_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_3_ce0;
    end else begin
        v58_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_3_ce1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_3_ce1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_3_ce1;
    end else begin
        v58_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_3_d0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_3_d0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_3_d0;
    end else begin
        v58_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_3_d1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_3_d1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_3_d1;
    end else begin
        v58_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_3_we0 = grp_atax_node1_Pipeline_label_33_fu_144_v58_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_3_we0 = grp_atax_node1_Pipeline_label_3_fu_108_v58_3_we0;
    end else begin
        v58_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_3_we1 = grp_atax_node1_Pipeline_label_33_fu_144_v58_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_3_we1 = grp_atax_node1_Pipeline_label_3_fu_108_v58_3_we1;
    end else begin
        v58_3_we1 = 1'b0;
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
            if (((tmp_fu_171_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_node1_Pipeline_label_3_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node1_Pipeline_label_33_fu_144_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln97_fu_195_p2 = (v59_fu_78 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign cmp7_fu_220_p2 = ((v59_1_reg_242 == 7'd0) ? 1'b1 : 1'b0);
assign grp_atax_node1_Pipeline_label_33_fu_144_ap_start = grp_atax_node1_Pipeline_label_33_fu_144_ap_start_reg;
assign grp_atax_node1_Pipeline_label_3_fu_108_ap_start = grp_atax_node1_Pipeline_label_3_fu_108_ap_start_reg;
assign grp_fu_458_p_ce = grp_fu_294_ce;
assign grp_fu_458_p_din0 = grp_fu_294_p0;
assign grp_fu_458_p_din1 = grp_fu_294_p1;
assign grp_fu_458_p_opcode = 2'd0;
assign grp_fu_462_p_ce = grp_fu_302_ce;
assign grp_fu_462_p_din0 = grp_fu_302_p0;
assign grp_fu_462_p_din1 = grp_fu_302_p1;
assign lshr_ln97_1_fu_179_p4 = {{v59_fu_78[5:1]}};
assign tmp_fu_171_p3 = v59_fu_78[32'd6];
assign trunc_ln97_fu_206_p1 = v59_1_reg_242[1:0];
assign v114_0_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v114_0_address0;
assign v114_0_address1 = grp_atax_node1_Pipeline_label_3_fu_108_v114_0_address1;
assign v114_0_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v114_0_ce0;
assign v114_0_ce1 = grp_atax_node1_Pipeline_label_3_fu_108_v114_0_ce1;
assign v114_1_address0 = grp_atax_node1_Pipeline_label_33_fu_144_v114_1_address0;
assign v114_1_address1 = grp_atax_node1_Pipeline_label_33_fu_144_v114_1_address1;
assign v114_1_ce0 = grp_atax_node1_Pipeline_label_33_fu_144_v114_1_ce0;
assign v114_1_ce1 = grp_atax_node1_Pipeline_label_33_fu_144_v114_1_ce1;
assign v114_2_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v114_2_address0;
assign v114_2_address1 = grp_atax_node1_Pipeline_label_3_fu_108_v114_2_address1;
assign v114_2_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v114_2_ce0;
assign v114_2_ce1 = grp_atax_node1_Pipeline_label_3_fu_108_v114_2_ce1;
assign v114_3_address0 = grp_atax_node1_Pipeline_label_33_fu_144_v114_3_address0;
assign v114_3_address1 = grp_atax_node1_Pipeline_label_33_fu_144_v114_3_address1;
assign v114_3_ce0 = grp_atax_node1_Pipeline_label_33_fu_144_v114_3_ce0;
assign v114_3_ce1 = grp_atax_node1_Pipeline_label_33_fu_144_v114_3_ce1;
assign v115_0_address0 = zext_ln97_fu_189_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_fu_189_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v57_0_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_0_address0;
assign v57_0_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_0_ce0;
assign v57_1_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_1_address0;
assign v57_1_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_1_ce0;
assign v57_2_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_2_address0;
assign v57_2_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_2_ce0;
assign v57_3_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_3_address0;
assign v57_3_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_3_ce0;
assign v57_4_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_4_address0;
assign v57_4_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_4_ce0;
assign v57_5_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_5_address0;
assign v57_5_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_5_ce0;
assign v57_6_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_6_address0;
assign v57_6_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_6_ce0;
assign v57_7_address0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_7_address0;
assign v57_7_ce0 = grp_atax_node1_Pipeline_label_3_fu_108_v57_7_ce0;
assign v65_1_fu_231_p1 = v115_1_load_reg_284;
assign v65_fu_226_p1 = v115_0_q0;
assign zext_ln97_fu_189_p1 = lshr_ln97_1_fu_179_p4;
endmodule 