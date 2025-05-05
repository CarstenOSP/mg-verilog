module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,grp_fu_203_p_din0,grp_fu_203_p_din1,grp_fu_203_p_opcode,grp_fu_203_p_dout0,grp_fu_203_p_ce,grp_fu_207_p_din0,grp_fu_207_p_din1,grp_fu_207_p_dout0,grp_fu_207_p_ce); 
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
output  [5:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
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
output  [31:0] grp_fu_203_p_din0;
output  [31:0] grp_fu_203_p_din1;
output  [1:0] grp_fu_203_p_opcode;
input  [31:0] grp_fu_203_p_dout0;
output   grp_fu_203_p_ce;
output  [31:0] grp_fu_207_p_din0;
output  [31:0] grp_fu_207_p_din1;
input  [31:0] grp_fu_207_p_dout0;
output   grp_fu_207_p_ce;
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
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_119;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    grp_atax_node0_Pipeline_label_1_fu_89_ap_done;
reg   [6:0] v4_1_reg_218;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln27_fu_161_p1;
reg   [5:0] trunc_ln27_reg_235;
wire   [4:0] tmp_s_fu_165_p4;
reg   [4:0] tmp_s_reg_240;
wire   [11:0] tmp_188_fu_191_p3;
reg   [11:0] tmp_188_reg_254;
wire    ap_CS_fsm_state5;
wire    grp_atax_node0_Pipeline_label_1_fu_89_ap_start;
wire    grp_atax_node0_Pipeline_label_1_fu_89_ap_idle;
wire    grp_atax_node0_Pipeline_label_1_fu_89_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_89_v113_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_89_v113_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v113_ce1;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_89_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_v116_1_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_89_v116_1_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v116_1_ce1;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v116_1_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_v116_1_d1;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_89_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_v116_0_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_89_v116_0_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v116_0_ce1;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v116_0_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_v116_0_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_v7_out;
wire    grp_atax_node0_Pipeline_label_1_fu_89_v7_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_ce;
wire    grp_atax_node0_Pipeline_label_110_fu_104_ap_start;
wire    grp_atax_node0_Pipeline_label_110_fu_104_ap_done;
wire    grp_atax_node0_Pipeline_label_110_fu_104_ap_idle;
wire    grp_atax_node0_Pipeline_label_110_fu_104_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_110_fu_104_v113_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_110_fu_104_v113_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v113_ce1;
wire   [4:0] grp_atax_node0_Pipeline_label_110_fu_104_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_v116_1_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_110_fu_104_v116_1_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v116_1_ce1;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v116_1_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_v116_1_d1;
wire   [4:0] grp_atax_node0_Pipeline_label_110_fu_104_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_v116_0_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_110_fu_104_v116_0_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v116_0_ce1;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v116_0_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_v116_0_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_v7_1_out_o;
wire    grp_atax_node0_Pipeline_label_110_fu_104_v7_1_out_o_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_opcode;
wire    grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_opcode;
wire    grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_din1;
wire    grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_din1;
wire    grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_ce;
reg    grp_atax_node0_Pipeline_label_1_fu_89_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_110_fu_104_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [31:0] v3_fu_56;
wire   [63:0] zext_ln27_fu_141_p1;
wire   [0:0] tmp_fu_133_p3;
wire   [63:0] zext_ln26_fu_182_p1;
reg   [6:0] v4_fu_60;
wire   [6:0] add_ln27_fu_146_p2;
reg    v0_ce0_local;
reg   [5:0] v0_address0_local;
wire   [5:0] or_ln_fu_174_p3;
reg   [31:0] grp_fu_259_p0;
reg   [31:0] grp_fu_259_p1;
reg    grp_fu_259_ce;
wire   [31:0] grp_fu_263_p2;
reg   [31:0] grp_fu_263_p0;
reg   [31:0] grp_fu_263_p1;
reg    grp_fu_263_ce;
reg   [31:0] grp_fu_267_p0;
reg   [31:0] grp_fu_267_p1;
reg    grp_fu_267_ce;
wire   [31:0] grp_fu_271_p2;
reg   [31:0] grp_fu_271_p0;
reg   [31:0] grp_fu_271_p1;
reg    grp_fu_271_ce;
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
#0 grp_atax_node0_Pipeline_label_1_fu_89_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_110_fu_104_ap_start_reg = 1'b0;
#0 v4_fu_60 = 7'd0;
end
atax_atax_node0_Pipeline_label_1 grp_atax_node0_Pipeline_label_1_fu_89(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_1_fu_89_ap_start),.ap_done(grp_atax_node0_Pipeline_label_1_fu_89_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_1_fu_89_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_1_fu_89_ap_ready),.v3(v3_fu_56),.v4(trunc_ln27_reg_235),.v113_address0(grp_atax_node0_Pipeline_label_1_fu_89_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_1_fu_89_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_1_fu_89_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_1_fu_89_v113_ce1),.v113_q1(v113_q1),.v116_1_address0(grp_atax_node0_Pipeline_label_1_fu_89_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_1_fu_89_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_1_fu_89_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_1_fu_89_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_Pipeline_label_1_fu_89_v116_1_address1),.v116_1_ce1(grp_atax_node0_Pipeline_label_1_fu_89_v116_1_ce1),.v116_1_we1(grp_atax_node0_Pipeline_label_1_fu_89_v116_1_we1),.v116_1_d1(grp_atax_node0_Pipeline_label_1_fu_89_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_0_address0(grp_atax_node0_Pipeline_label_1_fu_89_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_1_fu_89_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_1_fu_89_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_1_fu_89_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_Pipeline_label_1_fu_89_v116_0_address1),.v116_0_ce1(grp_atax_node0_Pipeline_label_1_fu_89_v116_0_ce1),.v116_0_we1(grp_atax_node0_Pipeline_label_1_fu_89_v116_0_we1),.v116_0_d1(grp_atax_node0_Pipeline_label_1_fu_89_v116_0_d1),.v116_0_q1(v116_0_q1),.v6(reg_119),.v7_out(grp_atax_node0_Pipeline_label_1_fu_89_v7_out),.v7_out_ap_vld(grp_atax_node0_Pipeline_label_1_fu_89_v7_out_ap_vld),.grp_fu_259_p_din0(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_din0),.grp_fu_259_p_din1(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_din1),.grp_fu_259_p_opcode(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_opcode),.grp_fu_259_p_dout0(grp_fu_203_p_dout0),.grp_fu_259_p_ce(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_ce),.grp_fu_263_p_din0(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_din0),.grp_fu_263_p_din1(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_din1),.grp_fu_263_p_opcode(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_opcode),.grp_fu_263_p_dout0(grp_fu_263_p2),.grp_fu_263_p_ce(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_ce),.grp_fu_267_p_din0(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_din0),.grp_fu_267_p_din1(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_din1),.grp_fu_267_p_dout0(grp_fu_207_p_dout0),.grp_fu_267_p_ce(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_ce),.grp_fu_271_p_din0(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_din0),.grp_fu_271_p_din1(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_din1),.grp_fu_271_p_dout0(grp_fu_271_p2),.grp_fu_271_p_ce(grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_ce));
atax_atax_node0_Pipeline_label_110 grp_atax_node0_Pipeline_label_110_fu_104(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_110_fu_104_ap_start),.ap_done(grp_atax_node0_Pipeline_label_110_fu_104_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_110_fu_104_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_110_fu_104_ap_ready),.v7_reload(grp_atax_node0_Pipeline_label_1_fu_89_v7_out),.zext_ln33_4(tmp_188_reg_254),.v113_address0(grp_atax_node0_Pipeline_label_110_fu_104_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_110_fu_104_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_110_fu_104_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_110_fu_104_v113_ce1),.v113_q1(v113_q1),.v116_1_address0(grp_atax_node0_Pipeline_label_110_fu_104_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_110_fu_104_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_110_fu_104_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_110_fu_104_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_Pipeline_label_110_fu_104_v116_1_address1),.v116_1_ce1(grp_atax_node0_Pipeline_label_110_fu_104_v116_1_ce1),.v116_1_we1(grp_atax_node0_Pipeline_label_110_fu_104_v116_1_we1),.v116_1_d1(grp_atax_node0_Pipeline_label_110_fu_104_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_0_address0(grp_atax_node0_Pipeline_label_110_fu_104_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_110_fu_104_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_110_fu_104_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_110_fu_104_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_Pipeline_label_110_fu_104_v116_0_address1),.v116_0_ce1(grp_atax_node0_Pipeline_label_110_fu_104_v116_0_ce1),.v116_0_we1(grp_atax_node0_Pipeline_label_110_fu_104_v116_0_we1),.v116_0_d1(grp_atax_node0_Pipeline_label_110_fu_104_v116_0_d1),.v116_0_q1(v116_0_q1),.v6_1(reg_119),.tmp_481(tmp_s_reg_240),.v7_1_out_i(v3_fu_56),.v7_1_out_o(grp_atax_node0_Pipeline_label_110_fu_104_v7_1_out_o),.v7_1_out_o_ap_vld(grp_atax_node0_Pipeline_label_110_fu_104_v7_1_out_o_ap_vld),.grp_fu_259_p_din0(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_din0),.grp_fu_259_p_din1(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_din1),.grp_fu_259_p_opcode(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_opcode),.grp_fu_259_p_dout0(grp_fu_203_p_dout0),.grp_fu_259_p_ce(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_ce),.grp_fu_263_p_din0(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_din0),.grp_fu_263_p_din1(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_din1),.grp_fu_263_p_opcode(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_opcode),.grp_fu_263_p_dout0(grp_fu_263_p2),.grp_fu_263_p_ce(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_ce),.grp_fu_267_p_din0(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_din0),.grp_fu_267_p_din1(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_din1),.grp_fu_267_p_dout0(grp_fu_207_p_dout0),.grp_fu_267_p_ce(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_ce),.grp_fu_271_p_din0(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_din0),.grp_fu_271_p_din1(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_din1),.grp_fu_271_p_dout0(grp_fu_271_p2),.grp_fu_271_p_ce(grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_ce));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_263_p0),.din1(grp_fu_263_p1),.ce(grp_fu_263_ce),.dout(grp_fu_263_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_271_p0),.din1(grp_fu_271_p1),.ce(grp_fu_271_ce),.dout(grp_fu_271_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_110_fu_104_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_Pipeline_label_110_fu_104_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_110_fu_104_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_110_fu_104_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_1_fu_89_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node0_Pipeline_label_1_fu_89_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_1_fu_89_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_1_fu_89_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_60 <= 7'd0;
    end else if (((tmp_fu_133_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v4_fu_60 <= add_ln27_fu_146_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((grp_atax_node0_Pipeline_label_1_fu_89_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)))) begin
        reg_119 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_188_reg_254[11 : 7] <= tmp_188_fu_191_p3[11 : 7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_240 <= {{v4_1_reg_218[5:1]}};
        trunc_ln27_reg_235 <= trunc_ln27_fu_161_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_atax_node0_Pipeline_label_110_fu_104_v7_1_out_o_ap_vld == 1'b1))) begin
        v3_fu_56 <= grp_atax_node0_Pipeline_label_110_fu_104_v7_1_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v4_1_reg_218 <= v4_fu_60;
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
    if ((grp_atax_node0_Pipeline_label_1_fu_89_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_110_fu_104_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_133_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_133_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_259_ce = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_259_ce = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_ce;
    end else begin
        grp_fu_259_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_259_p0 = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_259_p0 = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_din0;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_259_p1 = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_259_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_259_p1 = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_259_p_din1;
    end else begin
        grp_fu_259_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_263_ce = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_263_ce = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_ce;
    end else begin
        grp_fu_263_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_263_p0 = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_263_p0 = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_din0;
    end else begin
        grp_fu_263_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_263_p1 = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_263_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_263_p1 = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_263_p_din1;
    end else begin
        grp_fu_263_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_267_ce = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_267_ce = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_ce;
    end else begin
        grp_fu_267_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_267_p0 = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_267_p0 = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_din0;
    end else begin
        grp_fu_267_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_267_p1 = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_267_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_267_p1 = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_267_p_din1;
    end else begin
        grp_fu_267_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_271_ce = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_271_ce = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_ce;
    end else begin
        grp_fu_271_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_271_p0 = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_271_p0 = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_din0;
    end else begin
        grp_fu_271_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_271_p1 = grp_atax_node0_Pipeline_label_110_fu_104_grp_fu_271_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_271_p1 = grp_atax_node0_Pipeline_label_1_fu_89_grp_fu_271_p_din1;
    end else begin
        grp_fu_271_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_address0_local = zext_ln26_fu_182_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_address0_local = zext_ln27_fu_141_p1;
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_110_fu_104_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_1_fu_89_v113_address0;
    end else begin
        v113_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_110_fu_104_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_1_fu_89_v113_address1;
    end else begin
        v113_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_110_fu_104_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_1_fu_89_v113_ce0;
    end else begin
        v113_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_110_fu_104_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_1_fu_89_v113_ce1;
    end else begin
        v113_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_110_fu_104_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_1_fu_89_v116_0_address0;
    end else begin
        v116_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address1 = grp_atax_node0_Pipeline_label_110_fu_104_v116_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address1 = grp_atax_node0_Pipeline_label_1_fu_89_v116_0_address1;
    end else begin
        v116_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_110_fu_104_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_89_v116_0_ce0;
    end else begin
        v116_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce1 = grp_atax_node0_Pipeline_label_110_fu_104_v116_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce1 = grp_atax_node0_Pipeline_label_1_fu_89_v116_0_ce1;
    end else begin
        v116_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_110_fu_104_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_1_fu_89_v116_0_d0;
    end else begin
        v116_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d1 = grp_atax_node0_Pipeline_label_110_fu_104_v116_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d1 = grp_atax_node0_Pipeline_label_1_fu_89_v116_0_d1;
    end else begin
        v116_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_110_fu_104_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_1_fu_89_v116_0_we0;
    end else begin
        v116_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we1 = grp_atax_node0_Pipeline_label_110_fu_104_v116_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we1 = grp_atax_node0_Pipeline_label_1_fu_89_v116_0_we1;
    end else begin
        v116_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_110_fu_104_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_1_fu_89_v116_1_address0;
    end else begin
        v116_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address1 = grp_atax_node0_Pipeline_label_110_fu_104_v116_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address1 = grp_atax_node0_Pipeline_label_1_fu_89_v116_1_address1;
    end else begin
        v116_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_110_fu_104_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_89_v116_1_ce0;
    end else begin
        v116_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce1 = grp_atax_node0_Pipeline_label_110_fu_104_v116_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce1 = grp_atax_node0_Pipeline_label_1_fu_89_v116_1_ce1;
    end else begin
        v116_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_110_fu_104_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_1_fu_89_v116_1_d0;
    end else begin
        v116_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d1 = grp_atax_node0_Pipeline_label_110_fu_104_v116_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d1 = grp_atax_node0_Pipeline_label_1_fu_89_v116_1_d1;
    end else begin
        v116_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_110_fu_104_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_1_fu_89_v116_1_we0;
    end else begin
        v116_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we1 = grp_atax_node0_Pipeline_label_110_fu_104_v116_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we1 = grp_atax_node0_Pipeline_label_1_fu_89_v116_1_we1;
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
            if (((tmp_fu_133_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_node0_Pipeline_label_1_fu_89_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_atax_node0_Pipeline_label_110_fu_104_ap_done == 1'b1))) begin
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
assign add_ln27_fu_146_p2 = (v4_fu_60 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign grp_atax_node0_Pipeline_label_110_fu_104_ap_start = grp_atax_node0_Pipeline_label_110_fu_104_ap_start_reg;
assign grp_atax_node0_Pipeline_label_1_fu_89_ap_start = grp_atax_node0_Pipeline_label_1_fu_89_ap_start_reg;
assign grp_fu_203_p_ce = grp_fu_259_ce;
assign grp_fu_203_p_din0 = grp_fu_259_p0;
assign grp_fu_203_p_din1 = grp_fu_259_p1;
assign grp_fu_203_p_opcode = 2'd0;
assign grp_fu_207_p_ce = grp_fu_267_ce;
assign grp_fu_207_p_din0 = grp_fu_267_p0;
assign grp_fu_207_p_din1 = grp_fu_267_p1;
assign or_ln_fu_174_p3 = {{tmp_s_fu_165_p4}, {1'd1}};
assign tmp_188_fu_191_p3 = {{tmp_s_reg_240}, {7'd64}};
assign tmp_fu_133_p3 = v4_fu_60[32'd6];
assign tmp_s_fu_165_p4 = {{v4_1_reg_218[5:1]}};
assign trunc_ln27_fu_161_p1 = v4_1_reg_218[5:0];
assign v0_address0 = v0_address0_local;
assign v0_ce0 = v0_ce0_local;
assign zext_ln26_fu_182_p1 = or_ln_fu_174_p3;
assign zext_ln27_fu_141_p1 = v4_fu_60;
always @ (posedge ap_clk) begin
    tmp_188_reg_254[6:0] <= 7'b1000000;
end
endmodule 