module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v114_2_address0,v114_2_ce0,v114_2_q0,v114_2_address1,v114_2_ce1,v114_2_q1,v114_3_address0,v114_3_ce0,v114_3_q0,v114_3_address1,v114_3_ce1,v114_3_q1,v114_4_address0,v114_4_ce0,v114_4_q0,v114_4_address1,v114_4_ce1,v114_4_q1,v114_5_address0,v114_5_ce0,v114_5_q0,v114_5_address1,v114_5_ce1,v114_5_q1,v114_6_address0,v114_6_ce0,v114_6_q0,v114_6_address1,v114_6_ce1,v114_6_q1,v114_7_address0,v114_7_ce0,v114_7_q0,v114_7_address1,v114_7_ce1,v114_7_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v115_2_address0,v115_2_ce0,v115_2_q0,v115_3_address0,v115_3_ce0,v115_3_q0,v115_4_address0,v115_4_ce0,v115_4_q0,v115_5_address0,v115_5_ce0,v115_5_q0,v115_6_address0,v115_6_ce0,v115_6_q0,v115_7_address0,v115_7_ce0,v115_7_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_address0,v58_ce0,v58_we0,v58_d0,v58_q0,v58_address1,v58_ce1,v58_we1,v58_d1,v58_q1,grp_fu_364_p_din0,grp_fu_364_p_din1,grp_fu_364_p_opcode,grp_fu_364_p_dout0,grp_fu_364_p_ce,grp_fu_368_p_din0,grp_fu_368_p_din1,grp_fu_368_p_dout0,grp_fu_368_p_ce); 
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
output  [8:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [8:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [8:0] v114_1_address0;
output   v114_1_ce0;
input  [31:0] v114_1_q0;
output  [8:0] v114_1_address1;
output   v114_1_ce1;
input  [31:0] v114_1_q1;
output  [8:0] v114_2_address0;
output   v114_2_ce0;
input  [31:0] v114_2_q0;
output  [8:0] v114_2_address1;
output   v114_2_ce1;
input  [31:0] v114_2_q1;
output  [8:0] v114_3_address0;
output   v114_3_ce0;
input  [31:0] v114_3_q0;
output  [8:0] v114_3_address1;
output   v114_3_ce1;
input  [31:0] v114_3_q1;
output  [8:0] v114_4_address0;
output   v114_4_ce0;
input  [31:0] v114_4_q0;
output  [8:0] v114_4_address1;
output   v114_4_ce1;
input  [31:0] v114_4_q1;
output  [8:0] v114_5_address0;
output   v114_5_ce0;
input  [31:0] v114_5_q0;
output  [8:0] v114_5_address1;
output   v114_5_ce1;
input  [31:0] v114_5_q1;
output  [8:0] v114_6_address0;
output   v114_6_ce0;
input  [31:0] v114_6_q0;
output  [8:0] v114_6_address1;
output   v114_6_ce1;
input  [31:0] v114_6_q1;
output  [8:0] v114_7_address0;
output   v114_7_ce0;
input  [31:0] v114_7_q0;
output  [8:0] v114_7_address1;
output   v114_7_ce1;
input  [31:0] v114_7_q1;
output  [2:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [2:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [2:0] v115_2_address0;
output   v115_2_ce0;
input  [31:0] v115_2_q0;
output  [2:0] v115_3_address0;
output   v115_3_ce0;
input  [31:0] v115_3_q0;
output  [2:0] v115_4_address0;
output   v115_4_ce0;
input  [31:0] v115_4_q0;
output  [2:0] v115_5_address0;
output   v115_5_ce0;
input  [31:0] v115_5_q0;
output  [2:0] v115_6_address0;
output   v115_6_ce0;
input  [31:0] v115_6_q0;
output  [2:0] v115_7_address0;
output   v115_7_ce0;
input  [31:0] v115_7_q0;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
output  [5:0] v58_address0;
output   v58_ce0;
output   v58_we0;
output  [31:0] v58_d0;
input  [31:0] v58_q0;
output  [5:0] v58_address1;
output   v58_ce1;
output   v58_we1;
output  [31:0] v58_d1;
input  [31:0] v58_q1;
output  [31:0] grp_fu_364_p_din0;
output  [31:0] grp_fu_364_p_din1;
output  [1:0] grp_fu_364_p_opcode;
input  [31:0] grp_fu_364_p_dout0;
output   grp_fu_364_p_ce;
output  [31:0] grp_fu_368_p_din0;
output  [31:0] grp_fu_368_p_din1;
input  [31:0] grp_fu_368_p_dout0;
output   grp_fu_368_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] v58_address0;
reg v58_ce0;
reg v58_we0;
reg[31:0] v58_d0;
reg[5:0] v58_address1;
reg v58_ce1;
reg v58_we1;
reg[31:0] v58_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] trunc_ln97_fu_249_p1;
reg   [2:0] trunc_ln97_reg_381;
wire    ap_CS_fsm_state2;
wire   [2:0] lshr_ln_fu_253_p4;
reg   [2:0] lshr_ln_reg_389;
wire   [0:0] cmp7_fu_275_p2;
reg   [0:0] cmp7_reg_395;
wire   [31:0] v_fu_308_p11;
reg   [31:0] v_reg_440;
wire    ap_CS_fsm_state3;
wire   [31:0] v65_1_fu_348_p11;
reg   [31:0] v65_1_reg_445;
wire    grp_atax_node1_Pipeline_label_3_fu_196_ap_start;
wire    grp_atax_node1_Pipeline_label_3_fu_196_ap_done;
wire    grp_atax_node1_Pipeline_label_3_fu_196_ap_idle;
wire    grp_atax_node1_Pipeline_label_3_fu_196_ap_ready;
wire   [8:0] grp_atax_node1_Pipeline_label_3_fu_196_v114_0_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v114_0_ce0;
wire   [8:0] grp_atax_node1_Pipeline_label_3_fu_196_v114_0_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v114_0_ce1;
wire   [8:0] grp_atax_node1_Pipeline_label_3_fu_196_v114_2_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v114_2_ce0;
wire   [8:0] grp_atax_node1_Pipeline_label_3_fu_196_v114_2_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v114_2_ce1;
wire   [8:0] grp_atax_node1_Pipeline_label_3_fu_196_v114_4_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v114_4_ce0;
wire   [8:0] grp_atax_node1_Pipeline_label_3_fu_196_v114_4_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v114_4_ce1;
wire   [8:0] grp_atax_node1_Pipeline_label_3_fu_196_v114_6_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v114_6_ce0;
wire   [8:0] grp_atax_node1_Pipeline_label_3_fu_196_v114_6_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v114_6_ce1;
wire   [5:0] grp_atax_node1_Pipeline_label_3_fu_196_v58_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v58_ce0;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v58_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_196_v58_d0;
wire   [5:0] grp_atax_node1_Pipeline_label_3_fu_196_v58_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v58_ce1;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v58_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_196_v58_d1;
wire   [5:0] grp_atax_node1_Pipeline_label_3_fu_196_v57_address0;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v57_ce0;
wire   [5:0] grp_atax_node1_Pipeline_label_3_fu_196_v57_address1;
wire    grp_atax_node1_Pipeline_label_3_fu_196_v57_ce1;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_opcode;
wire    grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_din1;
wire    grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_ce;
wire    grp_atax_node1_Pipeline_label_33_fu_216_ap_start;
wire    grp_atax_node1_Pipeline_label_33_fu_216_ap_done;
wire    grp_atax_node1_Pipeline_label_33_fu_216_ap_idle;
wire    grp_atax_node1_Pipeline_label_33_fu_216_ap_ready;
wire   [8:0] grp_atax_node1_Pipeline_label_33_fu_216_v114_1_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v114_1_ce0;
wire   [8:0] grp_atax_node1_Pipeline_label_33_fu_216_v114_1_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v114_1_ce1;
wire   [8:0] grp_atax_node1_Pipeline_label_33_fu_216_v114_3_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v114_3_ce0;
wire   [8:0] grp_atax_node1_Pipeline_label_33_fu_216_v114_3_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v114_3_ce1;
wire   [8:0] grp_atax_node1_Pipeline_label_33_fu_216_v114_5_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v114_5_ce0;
wire   [8:0] grp_atax_node1_Pipeline_label_33_fu_216_v114_5_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v114_5_ce1;
wire   [8:0] grp_atax_node1_Pipeline_label_33_fu_216_v114_7_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v114_7_ce0;
wire   [8:0] grp_atax_node1_Pipeline_label_33_fu_216_v114_7_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v114_7_ce1;
wire   [5:0] grp_atax_node1_Pipeline_label_33_fu_216_v58_address0;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v58_ce0;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v58_we0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_216_v58_d0;
wire   [5:0] grp_atax_node1_Pipeline_label_33_fu_216_v58_address1;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v58_ce1;
wire    grp_atax_node1_Pipeline_label_33_fu_216_v58_we1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_216_v58_d1;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_din1;
wire   [1:0] grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_opcode;
wire    grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_ce;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_din0;
wire   [31:0] grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_din1;
wire    grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_ce;
reg    grp_atax_node1_Pipeline_label_3_fu_196_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_node1_Pipeline_label_33_fu_216_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln97_fu_263_p1;
wire   [0:0] tmp_fu_241_p3;
reg   [6:0] v59_fu_88;
wire   [6:0] add_ln97_fu_281_p2;
reg    v115_0_ce0_local;
reg    v115_2_ce0_local;
reg    v115_4_ce0_local;
reg    v115_6_ce0_local;
reg    v115_1_ce0_local;
reg    v115_3_ce0_local;
reg    v115_5_ce0_local;
reg    v115_7_ce0_local;
wire   [31:0] v_fu_308_p2;
wire   [31:0] v_fu_308_p4;
wire   [31:0] v_fu_308_p6;
wire   [31:0] v_fu_308_p8;
wire   [31:0] v_fu_308_p9;
wire   [31:0] v65_1_fu_348_p2;
wire   [31:0] v65_1_fu_348_p4;
wire   [31:0] v65_1_fu_348_p6;
wire   [31:0] v65_1_fu_348_p8;
wire   [31:0] v65_1_fu_348_p9;
reg   [31:0] grp_fu_450_p0;
reg   [31:0] grp_fu_450_p1;
reg    grp_fu_450_ce;
reg   [31:0] grp_fu_454_p0;
reg   [31:0] grp_fu_454_p1;
reg    grp_fu_454_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [2:0] v_fu_308_p1;
wire   [2:0] v_fu_308_p3;
wire  signed [2:0] v_fu_308_p5;
wire  signed [2:0] v_fu_308_p7;
wire   [2:0] v65_1_fu_348_p1;
wire   [2:0] v65_1_fu_348_p3;
wire  signed [2:0] v65_1_fu_348_p5;
wire  signed [2:0] v65_1_fu_348_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_atax_node1_Pipeline_label_3_fu_196_ap_start_reg = 1'b0;
#0 grp_atax_node1_Pipeline_label_33_fu_216_ap_start_reg = 1'b0;
#0 v59_fu_88 = 7'd0;
end
atax_atax_node1_Pipeline_label_3 grp_atax_node1_Pipeline_label_3_fu_196(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_Pipeline_label_3_fu_196_ap_start),.ap_done(grp_atax_node1_Pipeline_label_3_fu_196_ap_done),.ap_idle(grp_atax_node1_Pipeline_label_3_fu_196_ap_idle),.ap_ready(grp_atax_node1_Pipeline_label_3_fu_196_ap_ready),.lshr_ln(lshr_ln_reg_389),.v114_0_address0(grp_atax_node1_Pipeline_label_3_fu_196_v114_0_address0),.v114_0_ce0(grp_atax_node1_Pipeline_label_3_fu_196_v114_0_ce0),.v114_0_q0(v114_0_q0),.v114_0_address1(grp_atax_node1_Pipeline_label_3_fu_196_v114_0_address1),.v114_0_ce1(grp_atax_node1_Pipeline_label_3_fu_196_v114_0_ce1),.v114_0_q1(v114_0_q1),.v114_2_address0(grp_atax_node1_Pipeline_label_3_fu_196_v114_2_address0),.v114_2_ce0(grp_atax_node1_Pipeline_label_3_fu_196_v114_2_ce0),.v114_2_q0(v114_2_q0),.v114_2_address1(grp_atax_node1_Pipeline_label_3_fu_196_v114_2_address1),.v114_2_ce1(grp_atax_node1_Pipeline_label_3_fu_196_v114_2_ce1),.v114_2_q1(v114_2_q1),.v114_4_address0(grp_atax_node1_Pipeline_label_3_fu_196_v114_4_address0),.v114_4_ce0(grp_atax_node1_Pipeline_label_3_fu_196_v114_4_ce0),.v114_4_q0(v114_4_q0),.v114_4_address1(grp_atax_node1_Pipeline_label_3_fu_196_v114_4_address1),.v114_4_ce1(grp_atax_node1_Pipeline_label_3_fu_196_v114_4_ce1),.v114_4_q1(v114_4_q1),.v114_6_address0(grp_atax_node1_Pipeline_label_3_fu_196_v114_6_address0),.v114_6_ce0(grp_atax_node1_Pipeline_label_3_fu_196_v114_6_ce0),.v114_6_q0(v114_6_q0),.v114_6_address1(grp_atax_node1_Pipeline_label_3_fu_196_v114_6_address1),.v114_6_ce1(grp_atax_node1_Pipeline_label_3_fu_196_v114_6_ce1),.v114_6_q1(v114_6_q1),.v58_address0(grp_atax_node1_Pipeline_label_3_fu_196_v58_address0),.v58_ce0(grp_atax_node1_Pipeline_label_3_fu_196_v58_ce0),.v58_we0(grp_atax_node1_Pipeline_label_3_fu_196_v58_we0),.v58_d0(grp_atax_node1_Pipeline_label_3_fu_196_v58_d0),.v58_q0(v58_q0),.v58_address1(grp_atax_node1_Pipeline_label_3_fu_196_v58_address1),.v58_ce1(grp_atax_node1_Pipeline_label_3_fu_196_v58_ce1),.v58_we1(grp_atax_node1_Pipeline_label_3_fu_196_v58_we1),.v58_d1(grp_atax_node1_Pipeline_label_3_fu_196_v58_d1),.v58_q1(v58_q1),.v57_address0(grp_atax_node1_Pipeline_label_3_fu_196_v57_address0),.v57_ce0(grp_atax_node1_Pipeline_label_3_fu_196_v57_ce0),.v57_q0(v57_q0),.v57_address1(grp_atax_node1_Pipeline_label_3_fu_196_v57_address1),.v57_ce1(grp_atax_node1_Pipeline_label_3_fu_196_v57_ce1),.v57_q1(v57_q1),.cmp7(cmp7_reg_395),.empty(trunc_ln97_reg_381),.v65(v_reg_440),.grp_fu_450_p_din0(grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_din0),.grp_fu_450_p_din1(grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_din1),.grp_fu_450_p_opcode(grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_opcode),.grp_fu_450_p_dout0(grp_fu_364_p_dout0),.grp_fu_450_p_ce(grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_ce),.grp_fu_454_p_din0(grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_din0),.grp_fu_454_p_din1(grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_din1),.grp_fu_454_p_dout0(grp_fu_368_p_dout0),.grp_fu_454_p_ce(grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_ce));
atax_atax_node1_Pipeline_label_33 grp_atax_node1_Pipeline_label_33_fu_216(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_Pipeline_label_33_fu_216_ap_start),.ap_done(grp_atax_node1_Pipeline_label_33_fu_216_ap_done),.ap_idle(grp_atax_node1_Pipeline_label_33_fu_216_ap_idle),.ap_ready(grp_atax_node1_Pipeline_label_33_fu_216_ap_ready),.lshr_ln(lshr_ln_reg_389),.v114_1_address0(grp_atax_node1_Pipeline_label_33_fu_216_v114_1_address0),.v114_1_ce0(grp_atax_node1_Pipeline_label_33_fu_216_v114_1_ce0),.v114_1_q0(v114_1_q0),.v114_1_address1(grp_atax_node1_Pipeline_label_33_fu_216_v114_1_address1),.v114_1_ce1(grp_atax_node1_Pipeline_label_33_fu_216_v114_1_ce1),.v114_1_q1(v114_1_q1),.v114_3_address0(grp_atax_node1_Pipeline_label_33_fu_216_v114_3_address0),.v114_3_ce0(grp_atax_node1_Pipeline_label_33_fu_216_v114_3_ce0),.v114_3_q0(v114_3_q0),.v114_3_address1(grp_atax_node1_Pipeline_label_33_fu_216_v114_3_address1),.v114_3_ce1(grp_atax_node1_Pipeline_label_33_fu_216_v114_3_ce1),.v114_3_q1(v114_3_q1),.v114_5_address0(grp_atax_node1_Pipeline_label_33_fu_216_v114_5_address0),.v114_5_ce0(grp_atax_node1_Pipeline_label_33_fu_216_v114_5_ce0),.v114_5_q0(v114_5_q0),.v114_5_address1(grp_atax_node1_Pipeline_label_33_fu_216_v114_5_address1),.v114_5_ce1(grp_atax_node1_Pipeline_label_33_fu_216_v114_5_ce1),.v114_5_q1(v114_5_q1),.v114_7_address0(grp_atax_node1_Pipeline_label_33_fu_216_v114_7_address0),.v114_7_ce0(grp_atax_node1_Pipeline_label_33_fu_216_v114_7_ce0),.v114_7_q0(v114_7_q0),.v114_7_address1(grp_atax_node1_Pipeline_label_33_fu_216_v114_7_address1),.v114_7_ce1(grp_atax_node1_Pipeline_label_33_fu_216_v114_7_ce1),.v114_7_q1(v114_7_q1),.v58_address0(grp_atax_node1_Pipeline_label_33_fu_216_v58_address0),.v58_ce0(grp_atax_node1_Pipeline_label_33_fu_216_v58_ce0),.v58_we0(grp_atax_node1_Pipeline_label_33_fu_216_v58_we0),.v58_d0(grp_atax_node1_Pipeline_label_33_fu_216_v58_d0),.v58_q0(v58_q0),.v58_address1(grp_atax_node1_Pipeline_label_33_fu_216_v58_address1),.v58_ce1(grp_atax_node1_Pipeline_label_33_fu_216_v58_ce1),.v58_we1(grp_atax_node1_Pipeline_label_33_fu_216_v58_we1),.v58_d1(grp_atax_node1_Pipeline_label_33_fu_216_v58_d1),.v58_q1(v58_q1),.empty(trunc_ln97_reg_381),.v65_1(v65_1_reg_445),.grp_fu_450_p_din0(grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_din0),.grp_fu_450_p_din1(grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_din1),.grp_fu_450_p_opcode(grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_opcode),.grp_fu_450_p_dout0(grp_fu_364_p_dout0),.grp_fu_450_p_ce(grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_ce),.grp_fu_454_p_din0(grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_din0),.grp_fu_454_p_din1(grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_din1),.grp_fu_454_p_dout0(grp_fu_368_p_dout0),.grp_fu_454_p_ce(grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_ce));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U40(.din0(v_fu_308_p2),.din1(v_fu_308_p4),.din2(v_fu_308_p6),.din3(v_fu_308_p8),.def(v_fu_308_p9),.sel(trunc_ln97_reg_381),.dout(v_fu_308_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U41(.din0(v65_1_fu_348_p2),.din1(v65_1_fu_348_p4),.din2(v65_1_fu_348_p6),.din3(v65_1_fu_348_p8),.def(v65_1_fu_348_p9),.sel(trunc_ln97_reg_381),.dout(v65_1_fu_348_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_Pipeline_label_33_fu_216_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node1_Pipeline_label_33_fu_216_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_Pipeline_label_33_fu_216_ap_ready == 1'b1)) begin
            grp_atax_node1_Pipeline_label_33_fu_216_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_Pipeline_label_3_fu_196_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node1_Pipeline_label_3_fu_196_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_Pipeline_label_3_fu_196_ap_ready == 1'b1)) begin
            grp_atax_node1_Pipeline_label_3_fu_196_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v59_fu_88 <= 7'd0;
    end else if (((tmp_fu_241_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v59_fu_88 <= add_ln97_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp7_reg_395 <= cmp7_fu_275_p2;
        lshr_ln_reg_389 <= {{v59_fu_88[5:3]}};
        trunc_ln97_reg_381 <= trunc_ln97_fu_249_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v65_1_reg_445 <= v65_1_fu_348_p11;
        v_reg_440 <= v_fu_308_p11;
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
    if ((grp_atax_node1_Pipeline_label_3_fu_196_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node1_Pipeline_label_33_fu_216_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_241_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_241_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_450_ce = grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_450_ce = grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_ce;
    end else begin
        grp_fu_450_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_450_p0 = grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_450_p0 = grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_din0;
    end else begin
        grp_fu_450_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_450_p1 = grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_450_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_450_p1 = grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_450_p_din1;
    end else begin
        grp_fu_450_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_454_ce = grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_454_ce = grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_ce;
    end else begin
        grp_fu_454_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_454_p0 = grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_454_p0 = grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_din0;
    end else begin
        grp_fu_454_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_454_p1 = grp_atax_node1_Pipeline_label_33_fu_216_grp_fu_454_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_454_p1 = grp_atax_node1_Pipeline_label_3_fu_196_grp_fu_454_p_din1;
    end else begin
        grp_fu_454_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_2_ce0_local = 1'b1;
    end else begin
        v115_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_3_ce0_local = 1'b1;
    end else begin
        v115_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_4_ce0_local = 1'b1;
    end else begin
        v115_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_5_ce0_local = 1'b1;
    end else begin
        v115_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_6_ce0_local = 1'b1;
    end else begin
        v115_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v115_7_ce0_local = 1'b1;
    end else begin
        v115_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_address0 = grp_atax_node1_Pipeline_label_33_fu_216_v58_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_address0 = grp_atax_node1_Pipeline_label_3_fu_196_v58_address0;
    end else begin
        v58_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_address1 = grp_atax_node1_Pipeline_label_33_fu_216_v58_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_address1 = grp_atax_node1_Pipeline_label_3_fu_196_v58_address1;
    end else begin
        v58_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_ce0 = grp_atax_node1_Pipeline_label_33_fu_216_v58_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_ce0 = grp_atax_node1_Pipeline_label_3_fu_196_v58_ce0;
    end else begin
        v58_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_ce1 = grp_atax_node1_Pipeline_label_33_fu_216_v58_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_ce1 = grp_atax_node1_Pipeline_label_3_fu_196_v58_ce1;
    end else begin
        v58_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_d0 = grp_atax_node1_Pipeline_label_33_fu_216_v58_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_d0 = grp_atax_node1_Pipeline_label_3_fu_196_v58_d0;
    end else begin
        v58_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_d1 = grp_atax_node1_Pipeline_label_33_fu_216_v58_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_d1 = grp_atax_node1_Pipeline_label_3_fu_196_v58_d1;
    end else begin
        v58_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_we0 = grp_atax_node1_Pipeline_label_33_fu_216_v58_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_we0 = grp_atax_node1_Pipeline_label_3_fu_196_v58_we0;
    end else begin
        v58_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v58_we1 = grp_atax_node1_Pipeline_label_33_fu_216_v58_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v58_we1 = grp_atax_node1_Pipeline_label_3_fu_196_v58_we1;
    end else begin
        v58_we1 = 1'b0;
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
            if (((tmp_fu_241_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_node1_Pipeline_label_3_fu_196_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node1_Pipeline_label_33_fu_216_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln97_fu_281_p2 = (v59_fu_88 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign cmp7_fu_275_p2 = ((v59_fu_88 == 7'd0) ? 1'b1 : 1'b0);
assign grp_atax_node1_Pipeline_label_33_fu_216_ap_start = grp_atax_node1_Pipeline_label_33_fu_216_ap_start_reg;
assign grp_atax_node1_Pipeline_label_3_fu_196_ap_start = grp_atax_node1_Pipeline_label_3_fu_196_ap_start_reg;
assign grp_fu_364_p_ce = grp_fu_450_ce;
assign grp_fu_364_p_din0 = grp_fu_450_p0;
assign grp_fu_364_p_din1 = grp_fu_450_p1;
assign grp_fu_364_p_opcode = 2'd0;
assign grp_fu_368_p_ce = grp_fu_454_ce;
assign grp_fu_368_p_din0 = grp_fu_454_p0;
assign grp_fu_368_p_din1 = grp_fu_454_p1;
assign lshr_ln_fu_253_p4 = {{v59_fu_88[5:3]}};
assign tmp_fu_241_p3 = v59_fu_88[32'd6];
assign trunc_ln97_fu_249_p1 = v59_fu_88[2:0];
assign v114_0_address0 = grp_atax_node1_Pipeline_label_3_fu_196_v114_0_address0;
assign v114_0_address1 = grp_atax_node1_Pipeline_label_3_fu_196_v114_0_address1;
assign v114_0_ce0 = grp_atax_node1_Pipeline_label_3_fu_196_v114_0_ce0;
assign v114_0_ce1 = grp_atax_node1_Pipeline_label_3_fu_196_v114_0_ce1;
assign v114_1_address0 = grp_atax_node1_Pipeline_label_33_fu_216_v114_1_address0;
assign v114_1_address1 = grp_atax_node1_Pipeline_label_33_fu_216_v114_1_address1;
assign v114_1_ce0 = grp_atax_node1_Pipeline_label_33_fu_216_v114_1_ce0;
assign v114_1_ce1 = grp_atax_node1_Pipeline_label_33_fu_216_v114_1_ce1;
assign v114_2_address0 = grp_atax_node1_Pipeline_label_3_fu_196_v114_2_address0;
assign v114_2_address1 = grp_atax_node1_Pipeline_label_3_fu_196_v114_2_address1;
assign v114_2_ce0 = grp_atax_node1_Pipeline_label_3_fu_196_v114_2_ce0;
assign v114_2_ce1 = grp_atax_node1_Pipeline_label_3_fu_196_v114_2_ce1;
assign v114_3_address0 = grp_atax_node1_Pipeline_label_33_fu_216_v114_3_address0;
assign v114_3_address1 = grp_atax_node1_Pipeline_label_33_fu_216_v114_3_address1;
assign v114_3_ce0 = grp_atax_node1_Pipeline_label_33_fu_216_v114_3_ce0;
assign v114_3_ce1 = grp_atax_node1_Pipeline_label_33_fu_216_v114_3_ce1;
assign v114_4_address0 = grp_atax_node1_Pipeline_label_3_fu_196_v114_4_address0;
assign v114_4_address1 = grp_atax_node1_Pipeline_label_3_fu_196_v114_4_address1;
assign v114_4_ce0 = grp_atax_node1_Pipeline_label_3_fu_196_v114_4_ce0;
assign v114_4_ce1 = grp_atax_node1_Pipeline_label_3_fu_196_v114_4_ce1;
assign v114_5_address0 = grp_atax_node1_Pipeline_label_33_fu_216_v114_5_address0;
assign v114_5_address1 = grp_atax_node1_Pipeline_label_33_fu_216_v114_5_address1;
assign v114_5_ce0 = grp_atax_node1_Pipeline_label_33_fu_216_v114_5_ce0;
assign v114_5_ce1 = grp_atax_node1_Pipeline_label_33_fu_216_v114_5_ce1;
assign v114_6_address0 = grp_atax_node1_Pipeline_label_3_fu_196_v114_6_address0;
assign v114_6_address1 = grp_atax_node1_Pipeline_label_3_fu_196_v114_6_address1;
assign v114_6_ce0 = grp_atax_node1_Pipeline_label_3_fu_196_v114_6_ce0;
assign v114_6_ce1 = grp_atax_node1_Pipeline_label_3_fu_196_v114_6_ce1;
assign v114_7_address0 = grp_atax_node1_Pipeline_label_33_fu_216_v114_7_address0;
assign v114_7_address1 = grp_atax_node1_Pipeline_label_33_fu_216_v114_7_address1;
assign v114_7_ce0 = grp_atax_node1_Pipeline_label_33_fu_216_v114_7_ce0;
assign v114_7_ce1 = grp_atax_node1_Pipeline_label_33_fu_216_v114_7_ce1;
assign v115_0_address0 = zext_ln97_fu_263_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_fu_263_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v115_2_address0 = zext_ln97_fu_263_p1;
assign v115_2_ce0 = v115_2_ce0_local;
assign v115_3_address0 = zext_ln97_fu_263_p1;
assign v115_3_ce0 = v115_3_ce0_local;
assign v115_4_address0 = zext_ln97_fu_263_p1;
assign v115_4_ce0 = v115_4_ce0_local;
assign v115_5_address0 = zext_ln97_fu_263_p1;
assign v115_5_ce0 = v115_5_ce0_local;
assign v115_6_address0 = zext_ln97_fu_263_p1;
assign v115_6_ce0 = v115_6_ce0_local;
assign v115_7_address0 = zext_ln97_fu_263_p1;
assign v115_7_ce0 = v115_7_ce0_local;
assign v57_address0 = grp_atax_node1_Pipeline_label_3_fu_196_v57_address0;
assign v57_address1 = grp_atax_node1_Pipeline_label_3_fu_196_v57_address1;
assign v57_ce0 = grp_atax_node1_Pipeline_label_3_fu_196_v57_ce0;
assign v57_ce1 = grp_atax_node1_Pipeline_label_3_fu_196_v57_ce1;
assign v65_1_fu_348_p2 = v115_1_q0;
assign v65_1_fu_348_p4 = v115_3_q0;
assign v65_1_fu_348_p6 = v115_5_q0;
assign v65_1_fu_348_p8 = v115_7_q0;
assign v65_1_fu_348_p9 = 'bx;
assign v_fu_308_p2 = v115_0_q0;
assign v_fu_308_p4 = v115_2_q0;
assign v_fu_308_p6 = v115_4_q0;
assign v_fu_308_p8 = v115_6_q0;
assign v_fu_308_p9 = 'bx;
assign zext_ln97_fu_263_p1 = lshr_ln_fu_253_p4;
endmodule 