module bicg_bicg_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v139_address0,v139_ce0,v139_q0,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1); 
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
output  [11:0] v137_address0;
output   v137_ce0;
input  [31:0] v137_q0;
output  [11:0] v137_address1;
output   v137_ce1;
input  [31:0] v137_q1;
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
reg[11:0] v137_address0;
reg v137_ce0;
reg[11:0] v137_address1;
reg v137_ce1;
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
reg   [6:0] v11_1_reg_182;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln41_fu_133_p1;
reg   [5:0] trunc_ln41_reg_197;
wire    ap_CS_fsm_state3;
wire   [0:0] cmp7_fu_138_p2;
reg   [0:0] cmp7_reg_203;
wire   [31:0] v17_fu_144_p1;
reg   [31:0] v17_reg_208;
reg   [4:0] tmp_s_reg_213;
wire    ap_CS_fsm_state4;
wire   [31:0] v17_1_fu_170_p1;
reg   [31:0] v17_1_reg_224;
wire    ap_CS_fsm_state5;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_ap_start;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_ap_done;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_ap_idle;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_ap_ready;
wire   [11:0] grp_bicg_node1_Pipeline_label_2_fu_75_v137_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v137_ce0;
wire   [11:0] grp_bicg_node1_Pipeline_label_2_fu_75_v137_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v137_ce1;
wire   [4:0] grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_ce0;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_we0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_d0;
wire   [4:0] grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_ce1;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_we1;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_d1;
wire   [4:0] grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_address0;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_ce0;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_we0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_d0;
wire   [4:0] grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_address1;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_ce1;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_we1;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_d1;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_din1;
wire   [1:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_opcode;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_din1;
wire   [1:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_opcode;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_din1;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_din1;
wire    grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_ce;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_ap_start;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_ap_done;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_ap_idle;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_ap_ready;
wire   [11:0] grp_bicg_node1_Pipeline_label_23_fu_89_v137_address0;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v137_ce0;
wire   [11:0] grp_bicg_node1_Pipeline_label_23_fu_89_v137_address1;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v137_ce1;
wire   [4:0] grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_address0;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_ce0;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_we0;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_d0;
wire   [4:0] grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_address1;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_ce1;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_we1;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_d1;
wire   [4:0] grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_address0;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_ce0;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_we0;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_d0;
wire   [4:0] grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_address1;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_ce1;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_we1;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_d1;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_din1;
wire   [1:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_opcode;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_din1;
wire   [1:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_opcode;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_din1;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_ce;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_din0;
wire   [31:0] grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_din1;
wire    grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_ce;
reg    grp_bicg_node1_Pipeline_label_2_fu_75_ap_start_reg;
reg    grp_bicg_node1_Pipeline_label_23_fu_89_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln41_fu_117_p1;
wire   [0:0] tmp_fu_109_p3;
wire   [63:0] or_ln41_cast_fu_165_p1;
reg   [6:0] v11_fu_50;
wire   [6:0] add_ln41_fu_122_p2;
reg    v139_ce0_local;
reg   [5:0] v139_address0_local;
wire   [5:0] or_ln1_fu_158_p3;
wire   [31:0] grp_fu_229_p2;
reg   [31:0] grp_fu_229_p0;
reg   [31:0] grp_fu_229_p1;
reg    grp_fu_229_ce;
wire   [31:0] grp_fu_233_p2;
reg   [31:0] grp_fu_233_p0;
reg   [31:0] grp_fu_233_p1;
reg    grp_fu_233_ce;
wire   [31:0] grp_fu_237_p2;
reg   [31:0] grp_fu_237_p0;
reg   [31:0] grp_fu_237_p1;
reg    grp_fu_237_ce;
wire   [31:0] grp_fu_241_p2;
reg   [31:0] grp_fu_241_p0;
reg   [31:0] grp_fu_241_p1;
reg    grp_fu_241_ce;
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
#0 grp_bicg_node1_Pipeline_label_2_fu_75_ap_start_reg = 1'b0;
#0 grp_bicg_node1_Pipeline_label_23_fu_89_ap_start_reg = 1'b0;
#0 v11_fu_50 = 7'd0;
end
bicg_bicg_node1_Pipeline_label_2 grp_bicg_node1_Pipeline_label_2_fu_75(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_Pipeline_label_2_fu_75_ap_start),.ap_done(grp_bicg_node1_Pipeline_label_2_fu_75_ap_done),.ap_idle(grp_bicg_node1_Pipeline_label_2_fu_75_ap_idle),.ap_ready(grp_bicg_node1_Pipeline_label_2_fu_75_ap_ready),.v11(trunc_ln41_reg_197),.v137_address0(grp_bicg_node1_Pipeline_label_2_fu_75_v137_address0),.v137_ce0(grp_bicg_node1_Pipeline_label_2_fu_75_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_Pipeline_label_2_fu_75_v137_address1),.v137_ce1(grp_bicg_node1_Pipeline_label_2_fu_75_v137_ce1),.v137_q1(v137_q1),.v10_1_address0(grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_address0),.v10_1_ce0(grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_ce0),.v10_1_we0(grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_we0),.v10_1_d0(grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_d0),.v10_1_q0(v10_1_q0),.v10_1_address1(grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_address1),.v10_1_ce1(grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_ce1),.v10_1_we1(grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_we1),.v10_1_d1(grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_d1),.v10_1_q1(v10_1_q1),.v10_0_address0(grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_address0),.v10_0_ce0(grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_ce0),.v10_0_we0(grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_we0),.v10_0_d0(grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_d0),.v10_0_q0(v10_0_q0),.v10_0_address1(grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_address1),.v10_0_ce1(grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_ce1),.v10_0_we1(grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_we1),.v10_0_d1(grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_d1),.v10_0_q1(v10_0_q1),.cmp7(cmp7_reg_203),.v17(v17_reg_208),.zext_ln41(trunc_ln41_reg_197),.grp_fu_229_p_din0(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_din0),.grp_fu_229_p_din1(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_din1),.grp_fu_229_p_opcode(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_opcode),.grp_fu_229_p_dout0(grp_fu_229_p2),.grp_fu_229_p_ce(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_ce),.grp_fu_233_p_din0(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_din0),.grp_fu_233_p_din1(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_din1),.grp_fu_233_p_opcode(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_opcode),.grp_fu_233_p_dout0(grp_fu_233_p2),.grp_fu_233_p_ce(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_ce),.grp_fu_237_p_din0(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_din0),.grp_fu_237_p_din1(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_din1),.grp_fu_237_p_dout0(grp_fu_237_p2),.grp_fu_237_p_ce(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_ce),.grp_fu_241_p_din0(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_din0),.grp_fu_241_p_din1(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_din1),.grp_fu_241_p_dout0(grp_fu_241_p2),.grp_fu_241_p_ce(grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_ce));
bicg_bicg_node1_Pipeline_label_23 grp_bicg_node1_Pipeline_label_23_fu_89(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_Pipeline_label_23_fu_89_ap_start),.ap_done(grp_bicg_node1_Pipeline_label_23_fu_89_ap_done),.ap_idle(grp_bicg_node1_Pipeline_label_23_fu_89_ap_idle),.ap_ready(grp_bicg_node1_Pipeline_label_23_fu_89_ap_ready),.tmp_67(tmp_s_reg_213),.v137_address0(grp_bicg_node1_Pipeline_label_23_fu_89_v137_address0),.v137_ce0(grp_bicg_node1_Pipeline_label_23_fu_89_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_Pipeline_label_23_fu_89_v137_address1),.v137_ce1(grp_bicg_node1_Pipeline_label_23_fu_89_v137_ce1),.v137_q1(v137_q1),.v10_1_address0(grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_address0),.v10_1_ce0(grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_ce0),.v10_1_we0(grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_we0),.v10_1_d0(grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_d0),.v10_1_q0(v10_1_q0),.v10_1_address1(grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_address1),.v10_1_ce1(grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_ce1),.v10_1_we1(grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_we1),.v10_1_d1(grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_d1),.v10_1_q1(v10_1_q1),.v10_0_address0(grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_address0),.v10_0_ce0(grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_ce0),.v10_0_we0(grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_we0),.v10_0_d0(grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_d0),.v10_0_q0(v10_0_q0),.v10_0_address1(grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_address1),.v10_0_ce1(grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_ce1),.v10_0_we1(grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_we1),.v10_0_d1(grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_d1),.v10_0_q1(v10_0_q1),.v17_1(v17_1_reg_224),.grp_fu_229_p_din0(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_din0),.grp_fu_229_p_din1(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_din1),.grp_fu_229_p_opcode(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_opcode),.grp_fu_229_p_dout0(grp_fu_229_p2),.grp_fu_229_p_ce(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_ce),.grp_fu_233_p_din0(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_din0),.grp_fu_233_p_din1(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_din1),.grp_fu_233_p_opcode(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_opcode),.grp_fu_233_p_dout0(grp_fu_233_p2),.grp_fu_233_p_ce(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_ce),.grp_fu_237_p_din0(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_din0),.grp_fu_237_p_din1(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_din1),.grp_fu_237_p_dout0(grp_fu_237_p2),.grp_fu_237_p_ce(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_ce),.grp_fu_241_p_din0(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_din0),.grp_fu_241_p_din1(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_din1),.grp_fu_241_p_dout0(grp_fu_241_p2),.grp_fu_241_p_ce(grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_ce));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U68(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_229_p0),.din1(grp_fu_229_p1),.ce(grp_fu_229_ce),.dout(grp_fu_229_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_233_p0),.din1(grp_fu_233_p1),.ce(grp_fu_233_ce),.dout(grp_fu_233_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_237_p0),.din1(grp_fu_237_p1),.ce(grp_fu_237_ce),.dout(grp_fu_237_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_241_p0),.din1(grp_fu_241_p1),.ce(grp_fu_241_ce),.dout(grp_fu_241_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_Pipeline_label_23_fu_89_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bicg_node1_Pipeline_label_23_fu_89_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_Pipeline_label_23_fu_89_ap_ready == 1'b1)) begin
            grp_bicg_node1_Pipeline_label_23_fu_89_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_Pipeline_label_2_fu_75_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_node1_Pipeline_label_2_fu_75_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_Pipeline_label_2_fu_75_ap_ready == 1'b1)) begin
            grp_bicg_node1_Pipeline_label_2_fu_75_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v11_fu_50 <= 7'd0;
    end else if (((tmp_fu_109_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v11_fu_50 <= add_ln41_fu_122_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp7_reg_203 <= cmp7_fu_138_p2;
        tmp_s_reg_213 <= {{v11_1_reg_182[5:1]}};
        trunc_ln41_reg_197 <= trunc_ln41_fu_133_p1;
        v17_reg_208 <= v17_fu_144_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v11_1_reg_182 <= v11_fu_50;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v17_1_reg_224 <= v17_1_fu_170_p1;
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
    if ((grp_bicg_node1_Pipeline_label_2_fu_75_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_node1_Pipeline_label_23_fu_89_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_109_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_109_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_229_ce = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_229_ce = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_ce;
    end else begin
        grp_fu_229_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_229_p0 = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_229_p0 = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_din0;
    end else begin
        grp_fu_229_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_229_p1 = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_229_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_229_p1 = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_229_p_din1;
    end else begin
        grp_fu_229_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_233_ce = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_233_ce = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_ce;
    end else begin
        grp_fu_233_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_233_p0 = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_233_p0 = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_din0;
    end else begin
        grp_fu_233_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_233_p1 = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_233_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_233_p1 = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_233_p_din1;
    end else begin
        grp_fu_233_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_237_ce = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_237_ce = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_ce;
    end else begin
        grp_fu_237_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_237_p0 = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_237_p0 = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_din0;
    end else begin
        grp_fu_237_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_237_p1 = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_237_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_237_p1 = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_237_p_din1;
    end else begin
        grp_fu_237_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_241_ce = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_241_ce = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_ce;
    end else begin
        grp_fu_241_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_241_p0 = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_241_p0 = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_din0;
    end else begin
        grp_fu_241_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_241_p1 = grp_bicg_node1_Pipeline_label_23_fu_89_grp_fu_241_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_241_p1 = grp_bicg_node1_Pipeline_label_2_fu_75_grp_fu_241_p_din1;
    end else begin
        grp_fu_241_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_address0 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_address0 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_address0;
    end else begin
        v10_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_address1 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_address1 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_address1;
    end else begin
        v10_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_ce0 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_ce0 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_ce0;
    end else begin
        v10_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_ce1 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_ce1 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_ce1;
    end else begin
        v10_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_d0 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_d0 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_d0;
    end else begin
        v10_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_d1 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_d1 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_d1;
    end else begin
        v10_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_we0 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_we0 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_we0;
    end else begin
        v10_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_0_we1 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_0_we1 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_0_we1;
    end else begin
        v10_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_address0 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_address0 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_address0;
    end else begin
        v10_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_address1 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_address1 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_address1;
    end else begin
        v10_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_ce0 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_ce0 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_ce0;
    end else begin
        v10_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_ce1 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_ce1 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_ce1;
    end else begin
        v10_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_d0 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_d0 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_d0;
    end else begin
        v10_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_d1 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_d1 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_d1;
    end else begin
        v10_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_we0 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_we0 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_we0;
    end else begin
        v10_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v10_1_we1 = grp_bicg_node1_Pipeline_label_23_fu_89_v10_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v10_1_we1 = grp_bicg_node1_Pipeline_label_2_fu_75_v10_1_we1;
    end else begin
        v10_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v137_address0 = grp_bicg_node1_Pipeline_label_23_fu_89_v137_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v137_address0 = grp_bicg_node1_Pipeline_label_2_fu_75_v137_address0;
    end else begin
        v137_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v137_address1 = grp_bicg_node1_Pipeline_label_23_fu_89_v137_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v137_address1 = grp_bicg_node1_Pipeline_label_2_fu_75_v137_address1;
    end else begin
        v137_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v137_ce0 = grp_bicg_node1_Pipeline_label_23_fu_89_v137_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v137_ce0 = grp_bicg_node1_Pipeline_label_2_fu_75_v137_ce0;
    end else begin
        v137_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v137_ce1 = grp_bicg_node1_Pipeline_label_23_fu_89_v137_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v137_ce1 = grp_bicg_node1_Pipeline_label_2_fu_75_v137_ce1;
    end else begin
        v137_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v139_address0_local = or_ln41_cast_fu_165_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v139_address0_local = zext_ln41_fu_117_p1;
    end else begin
        v139_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state4) & (grp_bicg_node1_Pipeline_label_2_fu_75_ap_done == 1'b1)))) begin
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
            if (((tmp_fu_109_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_bicg_node1_Pipeline_label_2_fu_75_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_bicg_node1_Pipeline_label_23_fu_89_ap_done == 1'b1))) begin
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
assign add_ln41_fu_122_p2 = (v11_fu_50 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign cmp7_fu_138_p2 = ((v11_1_reg_182 == 7'd0) ? 1'b1 : 1'b0);
assign grp_bicg_node1_Pipeline_label_23_fu_89_ap_start = grp_bicg_node1_Pipeline_label_23_fu_89_ap_start_reg;
assign grp_bicg_node1_Pipeline_label_2_fu_75_ap_start = grp_bicg_node1_Pipeline_label_2_fu_75_ap_start_reg;
assign or_ln1_fu_158_p3 = {{tmp_s_reg_213}, {1'd1}};
assign or_ln41_cast_fu_165_p1 = or_ln1_fu_158_p3;
assign tmp_fu_109_p3 = v11_fu_50[32'd6];
assign trunc_ln41_fu_133_p1 = v11_1_reg_182[5:0];
assign v139_address0 = v139_address0_local;
assign v139_ce0 = v139_ce0_local;
assign v17_1_fu_170_p1 = v139_q0;
assign v17_fu_144_p1 = v139_q0;
assign zext_ln41_fu_117_p1 = v11_fu_50;
endmodule 