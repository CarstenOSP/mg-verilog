module bicg_bicg_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v140_address0,v140_ce0,v140_q0,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1); 
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
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
output  [11:0] v138_address0;
output   v138_ce0;
input  [31:0] v138_q0;
output  [11:0] v138_address1;
output   v138_ce1;
input  [31:0] v138_q1;
output  [4:0] v65_0_address0;
output   v65_0_ce0;
output   v65_0_we0;
output  [31:0] v65_0_d0;
input  [31:0] v65_0_q0;
output  [4:0] v65_0_address1;
output   v65_0_ce1;
output   v65_0_we1;
output  [31:0] v65_0_d1;
input  [31:0] v65_0_q1;
output  [4:0] v65_1_address0;
output   v65_1_ce0;
output   v65_1_we0;
output  [31:0] v65_1_d0;
input  [31:0] v65_1_q0;
output  [4:0] v65_1_address1;
output   v65_1_ce1;
output   v65_1_we1;
output  [31:0] v65_1_d1;
input  [31:0] v65_1_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] v138_address0;
reg v138_ce0;
reg[11:0] v138_address1;
reg v138_ce1;
reg[4:0] v65_0_address0;
reg v65_0_ce0;
reg v65_0_we0;
reg[31:0] v65_0_d0;
reg[4:0] v65_0_address1;
reg v65_0_ce1;
reg v65_0_we1;
reg[31:0] v65_0_d1;
reg[4:0] v65_1_address0;
reg v65_1_ce0;
reg v65_1_we0;
reg[31:0] v65_1_d0;
reg[4:0] v65_1_address1;
reg v65_1_ce1;
reg v65_1_we1;
reg[31:0] v65_1_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] v67_1_reg_227;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln111_fu_155_p1;
reg   [5:0] trunc_ln111_reg_245;
wire    ap_CS_fsm_state3;
wire   [31:0] v69_fu_159_p1;
reg   [31:0] v69_reg_250;
wire   [0:0] cmp10_fu_164_p2;
reg   [0:0] cmp10_reg_255;
wire   [4:0] tmp_s_fu_170_p4;
reg   [4:0] tmp_s_reg_260;
reg   [31:0] v140_load_1_reg_271;
wire    ap_CS_fsm_state4;
wire   [11:0] tmp_14_fu_196_p3;
reg   [11:0] tmp_14_reg_279;
wire    ap_CS_fsm_state5;
wire   [31:0] v69_1_fu_204_p1;
reg   [31:0] v69_1_reg_284;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_ap_start;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_ap_done;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_ap_idle;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_ap_ready;
wire   [11:0] grp_bicg_node2_Pipeline_label_4_fu_89_v138_address0;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v138_ce0;
wire   [11:0] grp_bicg_node2_Pipeline_label_4_fu_89_v138_address1;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v138_ce1;
wire   [4:0] grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_address0;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_ce0;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_address1;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_ce1;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_d1;
wire   [4:0] grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_address0;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_ce0;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_address1;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_ce1;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_d1;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_v70_out;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_v70_out_ap_vld;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_opcode;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_opcode;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_din1;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_din1;
wire    grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_ce;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_ap_start;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_ap_done;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_ap_idle;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_ap_ready;
wire   [11:0] grp_bicg_node2_Pipeline_label_43_fu_104_v138_address0;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v138_ce0;
wire   [11:0] grp_bicg_node2_Pipeline_label_43_fu_104_v138_address1;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v138_ce1;
wire   [4:0] grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_address0;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_ce0;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_address1;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_ce1;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_d1;
wire   [4:0] grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_address0;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_ce0;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_address1;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_ce1;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_d1;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_v70_1_out_o;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_v70_1_out_o_ap_vld;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_opcode;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_opcode;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_din1;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_din1;
wire    grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_ce;
reg    grp_bicg_node2_Pipeline_label_4_fu_89_ap_start_reg;
reg    grp_bicg_node2_Pipeline_label_43_fu_104_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [31:0] v66_fu_56;
wire   [63:0] zext_ln111_fu_135_p1;
wire   [0:0] tmp_fu_127_p3;
wire   [63:0] zext_ln110_fu_187_p1;
reg   [6:0] v67_fu_60;
wire   [6:0] add_ln111_fu_140_p2;
reg    v140_ce0_local;
reg   [5:0] v140_address0_local;
wire   [5:0] or_ln_fu_179_p3;
wire   [31:0] grp_fu_289_p2;
reg   [31:0] grp_fu_289_p0;
reg   [31:0] grp_fu_289_p1;
reg    grp_fu_289_ce;
wire   [31:0] grp_fu_293_p2;
reg   [31:0] grp_fu_293_p0;
reg   [31:0] grp_fu_293_p1;
reg    grp_fu_293_ce;
wire   [31:0] grp_fu_297_p2;
reg   [31:0] grp_fu_297_p0;
reg   [31:0] grp_fu_297_p1;
reg    grp_fu_297_ce;
wire   [31:0] grp_fu_301_p2;
reg   [31:0] grp_fu_301_p0;
reg   [31:0] grp_fu_301_p1;
reg    grp_fu_301_ce;
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
#0 grp_bicg_node2_Pipeline_label_4_fu_89_ap_start_reg = 1'b0;
#0 grp_bicg_node2_Pipeline_label_43_fu_104_ap_start_reg = 1'b0;
#0 v67_fu_60 = 7'd0;
end
bicg_bicg_node2_Pipeline_label_4 grp_bicg_node2_Pipeline_label_4_fu_89(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_Pipeline_label_4_fu_89_ap_start),.ap_done(grp_bicg_node2_Pipeline_label_4_fu_89_ap_done),.ap_idle(grp_bicg_node2_Pipeline_label_4_fu_89_ap_idle),.ap_ready(grp_bicg_node2_Pipeline_label_4_fu_89_ap_ready),.v66(v66_fu_56),.v67(trunc_ln111_reg_245),.v138_address0(grp_bicg_node2_Pipeline_label_4_fu_89_v138_address0),.v138_ce0(grp_bicg_node2_Pipeline_label_4_fu_89_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_Pipeline_label_4_fu_89_v138_address1),.v138_ce1(grp_bicg_node2_Pipeline_label_4_fu_89_v138_ce1),.v138_q1(v138_q1),.v65_1_address0(grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_address0),.v65_1_ce0(grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_ce0),.v65_1_we0(grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_we0),.v65_1_d0(grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_d0),.v65_1_q0(v65_1_q0),.v65_1_address1(grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_address1),.v65_1_ce1(grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_ce1),.v65_1_we1(grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_we1),.v65_1_d1(grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_d1),.v65_1_q1(v65_1_q1),.v65_0_address0(grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_address0),.v65_0_ce0(grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_ce0),.v65_0_we0(grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_we0),.v65_0_d0(grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_d0),.v65_0_q0(v65_0_q0),.v65_0_address1(grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_address1),.v65_0_ce1(grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_ce1),.v65_0_we1(grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_we1),.v65_0_d1(grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_d1),.v65_0_q1(v65_0_q1),.v69(v69_reg_250),.cmp10(cmp10_reg_255),.v70_out(grp_bicg_node2_Pipeline_label_4_fu_89_v70_out),.v70_out_ap_vld(grp_bicg_node2_Pipeline_label_4_fu_89_v70_out_ap_vld),.grp_fu_289_p_din0(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_din0),.grp_fu_289_p_din1(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_din1),.grp_fu_289_p_opcode(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_opcode),.grp_fu_289_p_dout0(grp_fu_289_p2),.grp_fu_289_p_ce(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_ce),.grp_fu_293_p_din0(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_din0),.grp_fu_293_p_din1(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_din1),.grp_fu_293_p_opcode(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_opcode),.grp_fu_293_p_dout0(grp_fu_293_p2),.grp_fu_293_p_ce(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_ce),.grp_fu_297_p_din0(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_din0),.grp_fu_297_p_din1(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_din1),.grp_fu_297_p_dout0(grp_fu_297_p2),.grp_fu_297_p_ce(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_ce),.grp_fu_301_p_din0(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_din0),.grp_fu_301_p_din1(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_din1),.grp_fu_301_p_dout0(grp_fu_301_p2),.grp_fu_301_p_ce(grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_ce));
bicg_bicg_node2_Pipeline_label_43 grp_bicg_node2_Pipeline_label_43_fu_104(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_Pipeline_label_43_fu_104_ap_start),.ap_done(grp_bicg_node2_Pipeline_label_43_fu_104_ap_done),.ap_idle(grp_bicg_node2_Pipeline_label_43_fu_104_ap_idle),.ap_ready(grp_bicg_node2_Pipeline_label_43_fu_104_ap_ready),.v70_reload(grp_bicg_node2_Pipeline_label_4_fu_89_v70_out),.zext_ln119_1(tmp_14_reg_279),.v138_address0(grp_bicg_node2_Pipeline_label_43_fu_104_v138_address0),.v138_ce0(grp_bicg_node2_Pipeline_label_43_fu_104_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_Pipeline_label_43_fu_104_v138_address1),.v138_ce1(grp_bicg_node2_Pipeline_label_43_fu_104_v138_ce1),.v138_q1(v138_q1),.v65_1_address0(grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_address0),.v65_1_ce0(grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_ce0),.v65_1_we0(grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_we0),.v65_1_d0(grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_d0),.v65_1_q0(v65_1_q0),.v65_1_address1(grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_address1),.v65_1_ce1(grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_ce1),.v65_1_we1(grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_we1),.v65_1_d1(grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_d1),.v65_1_q1(v65_1_q1),.v65_0_address0(grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_address0),.v65_0_ce0(grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_ce0),.v65_0_we0(grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_we0),.v65_0_d0(grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_d0),.v65_0_q0(v65_0_q0),.v65_0_address1(grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_address1),.v65_0_ce1(grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_ce1),.v65_0_we1(grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_we1),.v65_0_d1(grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_d1),.v65_0_q1(v65_0_q1),.v69_1(v69_1_reg_284),.tmp_24(tmp_s_reg_260),.v70_1_out_i(v66_fu_56),.v70_1_out_o(grp_bicg_node2_Pipeline_label_43_fu_104_v70_1_out_o),.v70_1_out_o_ap_vld(grp_bicg_node2_Pipeline_label_43_fu_104_v70_1_out_o_ap_vld),.grp_fu_289_p_din0(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_din0),.grp_fu_289_p_din1(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_din1),.grp_fu_289_p_opcode(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_opcode),.grp_fu_289_p_dout0(grp_fu_289_p2),.grp_fu_289_p_ce(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_ce),.grp_fu_293_p_din0(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_din0),.grp_fu_293_p_din1(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_din1),.grp_fu_293_p_opcode(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_opcode),.grp_fu_293_p_dout0(grp_fu_293_p2),.grp_fu_293_p_ce(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_ce),.grp_fu_297_p_din0(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_din0),.grp_fu_297_p_din1(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_din1),.grp_fu_297_p_dout0(grp_fu_297_p2),.grp_fu_297_p_ce(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_ce),.grp_fu_301_p_din0(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_din0),.grp_fu_301_p_din1(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_din1),.grp_fu_301_p_dout0(grp_fu_301_p2),.grp_fu_301_p_ce(grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_ce));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_289_p0),.din1(grp_fu_289_p1),.ce(grp_fu_289_ce),.dout(grp_fu_289_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_293_p0),.din1(grp_fu_293_p1),.ce(grp_fu_293_ce),.dout(grp_fu_293_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_297_p0),.din1(grp_fu_297_p1),.ce(grp_fu_297_ce),.dout(grp_fu_297_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_301_p0),.din1(grp_fu_301_p1),.ce(grp_fu_301_ce),.dout(grp_fu_301_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_Pipeline_label_43_fu_104_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bicg_node2_Pipeline_label_43_fu_104_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_Pipeline_label_43_fu_104_ap_ready == 1'b1)) begin
            grp_bicg_node2_Pipeline_label_43_fu_104_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_Pipeline_label_4_fu_89_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_node2_Pipeline_label_4_fu_89_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_Pipeline_label_4_fu_89_ap_ready == 1'b1)) begin
            grp_bicg_node2_Pipeline_label_4_fu_89_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v67_fu_60 <= 7'd0;
    end else if (((tmp_fu_127_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v67_fu_60 <= add_ln111_fu_140_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp10_reg_255 <= cmp10_fu_164_p2;
        tmp_s_reg_260 <= {{v67_1_reg_227[5:1]}};
        trunc_ln111_reg_245 <= trunc_ln111_fu_155_p1;
        v69_reg_250 <= v69_fu_159_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_14_reg_279[11 : 7] <= tmp_14_fu_196_p3[11 : 7];
        v69_1_reg_284 <= v69_1_fu_204_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v140_load_1_reg_271 <= v140_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bicg_node2_Pipeline_label_43_fu_104_v70_1_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        v66_fu_56 <= grp_bicg_node2_Pipeline_label_43_fu_104_v70_1_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v67_1_reg_227 <= v67_fu_60;
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
    if ((grp_bicg_node2_Pipeline_label_4_fu_89_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_node2_Pipeline_label_43_fu_104_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_127_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_127_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_289_ce = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_289_ce = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_ce;
    end else begin
        grp_fu_289_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_289_p0 = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_289_p0 = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_din0;
    end else begin
        grp_fu_289_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_289_p1 = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_289_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_289_p1 = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_289_p_din1;
    end else begin
        grp_fu_289_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_293_ce = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_293_ce = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_ce;
    end else begin
        grp_fu_293_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_293_p0 = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_293_p0 = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_din0;
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_293_p1 = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_293_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_293_p1 = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_293_p_din1;
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_297_ce = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_297_ce = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_ce;
    end else begin
        grp_fu_297_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_297_p0 = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_297_p0 = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_din0;
    end else begin
        grp_fu_297_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_297_p1 = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_297_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_297_p1 = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_297_p_din1;
    end else begin
        grp_fu_297_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_301_ce = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_301_ce = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_ce;
    end else begin
        grp_fu_301_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_301_p0 = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_301_p0 = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_din0;
    end else begin
        grp_fu_301_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_301_p1 = grp_bicg_node2_Pipeline_label_43_fu_104_grp_fu_301_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_301_p1 = grp_bicg_node2_Pipeline_label_4_fu_89_grp_fu_301_p_din1;
    end else begin
        grp_fu_301_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v138_address0 = grp_bicg_node2_Pipeline_label_43_fu_104_v138_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v138_address0 = grp_bicg_node2_Pipeline_label_4_fu_89_v138_address0;
    end else begin
        v138_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v138_address1 = grp_bicg_node2_Pipeline_label_43_fu_104_v138_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v138_address1 = grp_bicg_node2_Pipeline_label_4_fu_89_v138_address1;
    end else begin
        v138_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v138_ce0 = grp_bicg_node2_Pipeline_label_43_fu_104_v138_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v138_ce0 = grp_bicg_node2_Pipeline_label_4_fu_89_v138_ce0;
    end else begin
        v138_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v138_ce1 = grp_bicg_node2_Pipeline_label_43_fu_104_v138_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v138_ce1 = grp_bicg_node2_Pipeline_label_4_fu_89_v138_ce1;
    end else begin
        v138_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v140_address0_local = zext_ln110_fu_187_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v140_address0_local = zext_ln111_fu_135_p1;
    end else begin
        v140_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v140_ce0_local = 1'b1;
    end else begin
        v140_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_address0 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_address0 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_address0;
    end else begin
        v65_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_address1 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_address1 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_address1;
    end else begin
        v65_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_ce0 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_ce0 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_ce0;
    end else begin
        v65_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_ce1 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_ce1 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_ce1;
    end else begin
        v65_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_d0 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_d0 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_d0;
    end else begin
        v65_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_d1 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_d1 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_d1;
    end else begin
        v65_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_we0 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_we0 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_we0;
    end else begin
        v65_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_we1 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_we1 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_0_we1;
    end else begin
        v65_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_address0 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_address0 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_address0;
    end else begin
        v65_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_address1 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_address1 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_address1;
    end else begin
        v65_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_ce0 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_ce0 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_ce0;
    end else begin
        v65_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_ce1 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_ce1 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_ce1;
    end else begin
        v65_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_d0 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_d0 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_d0;
    end else begin
        v65_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_d1 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_d1 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_d1;
    end else begin
        v65_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_we0 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_we0 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_we0;
    end else begin
        v65_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_we1 = grp_bicg_node2_Pipeline_label_43_fu_104_v65_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_we1 = grp_bicg_node2_Pipeline_label_4_fu_89_v65_1_we1;
    end else begin
        v65_1_we1 = 1'b0;
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
            if (((tmp_fu_127_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_bicg_node2_Pipeline_label_4_fu_89_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_bicg_node2_Pipeline_label_43_fu_104_ap_done == 1'b1))) begin
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
assign add_ln111_fu_140_p2 = (v67_fu_60 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign cmp10_fu_164_p2 = ((v67_1_reg_227 == 7'd0) ? 1'b1 : 1'b0);
assign grp_bicg_node2_Pipeline_label_43_fu_104_ap_start = grp_bicg_node2_Pipeline_label_43_fu_104_ap_start_reg;
assign grp_bicg_node2_Pipeline_label_4_fu_89_ap_start = grp_bicg_node2_Pipeline_label_4_fu_89_ap_start_reg;
assign or_ln_fu_179_p3 = {{tmp_s_fu_170_p4}, {1'd1}};
assign tmp_14_fu_196_p3 = {{tmp_s_reg_260}, {7'd64}};
assign tmp_fu_127_p3 = v67_fu_60[32'd6];
assign tmp_s_fu_170_p4 = {{v67_1_reg_227[5:1]}};
assign trunc_ln111_fu_155_p1 = v67_1_reg_227[5:0];
assign v140_address0 = v140_address0_local;
assign v140_ce0 = v140_ce0_local;
assign v69_1_fu_204_p1 = v140_load_1_reg_271;
assign v69_fu_159_p1 = v140_q0;
assign zext_ln110_fu_187_p1 = or_ln_fu_179_p3;
assign zext_ln111_fu_135_p1 = v67_fu_60;
always @ (posedge ap_clk) begin
    tmp_14_reg_279[6:0] <= 7'b1000000;
end
endmodule 