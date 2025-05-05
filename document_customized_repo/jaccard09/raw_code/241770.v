module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,grp_fu_239_p_din0,grp_fu_239_p_din1,grp_fu_239_p_opcode,grp_fu_239_p_dout0,grp_fu_239_p_ce,grp_fu_243_p_din0,grp_fu_243_p_din1,grp_fu_243_p_dout0,grp_fu_243_p_ce); 
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
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [5:0] v116_address0;
output   v116_ce0;
output   v116_we0;
output  [31:0] v116_d0;
input  [31:0] v116_q0;
output  [5:0] v116_address1;
output   v116_ce1;
output   v116_we1;
output  [31:0] v116_d1;
input  [31:0] v116_q1;
output  [31:0] grp_fu_239_p_din0;
output  [31:0] grp_fu_239_p_din1;
output  [1:0] grp_fu_239_p_opcode;
input  [31:0] grp_fu_239_p_dout0;
output   grp_fu_239_p_ce;
output  [31:0] grp_fu_243_p_din0;
output  [31:0] grp_fu_243_p_din1;
input  [31:0] grp_fu_243_p_dout0;
output   grp_fu_243_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] v113_address0;
reg v113_ce0;
reg[11:0] v113_address1;
reg v113_ce1;
reg[5:0] v116_address0;
reg v116_ce0;
reg v116_we0;
reg[31:0] v116_d0;
reg[5:0] v116_address1;
reg v116_ce1;
reg v116_we1;
reg[31:0] v116_d1;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] v4_1_reg_310;
wire    ap_CS_fsm_state2;
wire   [3:0] lshr_ln_fu_208_p4;
reg   [3:0] lshr_ln_reg_319;
wire   [63:0] zext_ln26_fu_218_p1;
reg   [63:0] zext_ln26_reg_326;
wire   [5:0] trunc_ln27_fu_238_p1;
reg   [5:0] trunc_ln27_reg_341;
wire    ap_CS_fsm_state3;
reg   [31:0] v0_0_load_reg_346;
reg   [4:0] tmp_s_reg_351;
reg   [31:0] v0_1_load_reg_362;
wire    ap_CS_fsm_state4;
wire   [11:0] tmp_39_fu_255_p3;
reg   [11:0] tmp_39_reg_370;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [31:0] v0_2_load_reg_388;
wire    ap_CS_fsm_state7;
reg   [31:0] v0_3_load_reg_393;
wire   [11:0] tmp_40_fu_271_p3;
reg   [11:0] tmp_40_reg_401;
wire    ap_CS_fsm_state9;
wire    grp_atax_node0_Pipeline_label_1_fu_140_ap_start;
wire    grp_atax_node0_Pipeline_label_1_fu_140_ap_done;
wire    grp_atax_node0_Pipeline_label_1_fu_140_ap_idle;
wire    grp_atax_node0_Pipeline_label_1_fu_140_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_140_v113_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_140_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_140_v113_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_140_v113_ce1;
wire   [5:0] grp_atax_node0_Pipeline_label_1_fu_140_v116_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_140_v116_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_140_v116_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_140_v116_d0;
wire   [5:0] grp_atax_node0_Pipeline_label_1_fu_140_v116_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_140_v116_ce1;
wire    grp_atax_node0_Pipeline_label_1_fu_140_v116_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_140_v116_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_140_v7_out;
wire    grp_atax_node0_Pipeline_label_1_fu_140_v7_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_ce;
wire    grp_atax_node0_Pipeline_label_13_fu_153_ap_start;
wire    grp_atax_node0_Pipeline_label_13_fu_153_ap_done;
wire    grp_atax_node0_Pipeline_label_13_fu_153_ap_idle;
wire    grp_atax_node0_Pipeline_label_13_fu_153_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_13_fu_153_v113_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_153_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_13_fu_153_v113_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_153_v113_ce1;
wire   [5:0] grp_atax_node0_Pipeline_label_13_fu_153_v116_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_153_v116_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_153_v116_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_153_v116_d0;
wire   [5:0] grp_atax_node0_Pipeline_label_13_fu_153_v116_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_153_v116_ce1;
wire    grp_atax_node0_Pipeline_label_13_fu_153_v116_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_153_v116_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_153_v7_2_out;
wire    grp_atax_node0_Pipeline_label_13_fu_153_v7_2_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_opcode;
wire    grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_din1;
wire    grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_ce;
wire    grp_atax_node0_Pipeline_label_14_fu_166_ap_start;
wire    grp_atax_node0_Pipeline_label_14_fu_166_ap_done;
wire    grp_atax_node0_Pipeline_label_14_fu_166_ap_idle;
wire    grp_atax_node0_Pipeline_label_14_fu_166_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_14_fu_166_v113_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_166_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_14_fu_166_v113_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_166_v113_ce1;
wire   [5:0] grp_atax_node0_Pipeline_label_14_fu_166_v116_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_166_v116_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_166_v116_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_166_v116_d0;
wire   [5:0] grp_atax_node0_Pipeline_label_14_fu_166_v116_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_166_v116_ce1;
wire    grp_atax_node0_Pipeline_label_14_fu_166_v116_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_166_v116_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_166_v7_3_out;
wire    grp_atax_node0_Pipeline_label_14_fu_166_v7_3_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_opcode;
wire    grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_din1;
wire    grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_ce;
wire    grp_atax_node0_Pipeline_label_15_fu_179_ap_start;
wire    grp_atax_node0_Pipeline_label_15_fu_179_ap_done;
wire    grp_atax_node0_Pipeline_label_15_fu_179_ap_idle;
wire    grp_atax_node0_Pipeline_label_15_fu_179_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_15_fu_179_v113_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_179_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_15_fu_179_v113_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_179_v113_ce1;
wire   [5:0] grp_atax_node0_Pipeline_label_15_fu_179_v116_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_179_v116_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_179_v116_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_179_v116_d0;
wire   [5:0] grp_atax_node0_Pipeline_label_15_fu_179_v116_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_179_v116_ce1;
wire    grp_atax_node0_Pipeline_label_15_fu_179_v116_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_179_v116_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_179_v7_4_out_o;
wire    grp_atax_node0_Pipeline_label_15_fu_179_v7_4_out_o_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_opcode;
wire    grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_din1;
wire    grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_ce;
reg    grp_atax_node0_Pipeline_label_1_fu_140_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_13_fu_153_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_14_fu_166_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_atax_node0_Pipeline_label_15_fu_179_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [31:0] v3_fu_68;
wire   [0:0] tmp_fu_200_p3;
reg   [6:0] v4_fu_72;
wire   [6:0] add_ln27_fu_223_p2;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v0_2_ce0_local;
reg    v0_3_ce0_local;
reg   [31:0] grp_fu_406_p0;
reg   [31:0] grp_fu_406_p1;
reg    grp_fu_406_ce;
reg   [31:0] grp_fu_410_p0;
reg   [31:0] grp_fu_410_p1;
reg    grp_fu_410_ce;
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
#0 grp_atax_node0_Pipeline_label_1_fu_140_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_13_fu_153_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_14_fu_166_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_15_fu_179_ap_start_reg = 1'b0;
#0 v4_fu_72 = 7'd0;
end
atax_atax_node0_Pipeline_label_1 grp_atax_node0_Pipeline_label_1_fu_140(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_1_fu_140_ap_start),.ap_done(grp_atax_node0_Pipeline_label_1_fu_140_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_1_fu_140_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_1_fu_140_ap_ready),.v3(v3_fu_68),.v4(trunc_ln27_reg_341),.v113_address0(grp_atax_node0_Pipeline_label_1_fu_140_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_1_fu_140_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_1_fu_140_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_1_fu_140_v113_ce1),.v113_q1(v113_q1),.v116_address0(grp_atax_node0_Pipeline_label_1_fu_140_v116_address0),.v116_ce0(grp_atax_node0_Pipeline_label_1_fu_140_v116_ce0),.v116_we0(grp_atax_node0_Pipeline_label_1_fu_140_v116_we0),.v116_d0(grp_atax_node0_Pipeline_label_1_fu_140_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_Pipeline_label_1_fu_140_v116_address1),.v116_ce1(grp_atax_node0_Pipeline_label_1_fu_140_v116_ce1),.v116_we1(grp_atax_node0_Pipeline_label_1_fu_140_v116_we1),.v116_d1(grp_atax_node0_Pipeline_label_1_fu_140_v116_d1),.v116_q1(v116_q1),.v6(v0_0_load_reg_346),.v7_out(grp_atax_node0_Pipeline_label_1_fu_140_v7_out),.v7_out_ap_vld(grp_atax_node0_Pipeline_label_1_fu_140_v7_out_ap_vld),.grp_fu_406_p_din0(grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_din0),.grp_fu_406_p_din1(grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_din1),.grp_fu_406_p_opcode(grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_opcode),.grp_fu_406_p_dout0(grp_fu_239_p_dout0),.grp_fu_406_p_ce(grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_ce),.grp_fu_410_p_din0(grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_din0),.grp_fu_410_p_din1(grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_din1),.grp_fu_410_p_dout0(grp_fu_243_p_dout0),.grp_fu_410_p_ce(grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_ce));
atax_atax_node0_Pipeline_label_13 grp_atax_node0_Pipeline_label_13_fu_153(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_13_fu_153_ap_start),.ap_done(grp_atax_node0_Pipeline_label_13_fu_153_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_13_fu_153_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_13_fu_153_ap_ready),.v7_reload(grp_atax_node0_Pipeline_label_1_fu_140_v7_out),.zext_ln33_1(tmp_39_reg_370),.v113_address0(grp_atax_node0_Pipeline_label_13_fu_153_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_13_fu_153_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_13_fu_153_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_13_fu_153_v113_ce1),.v113_q1(v113_q1),.v116_address0(grp_atax_node0_Pipeline_label_13_fu_153_v116_address0),.v116_ce0(grp_atax_node0_Pipeline_label_13_fu_153_v116_ce0),.v116_we0(grp_atax_node0_Pipeline_label_13_fu_153_v116_we0),.v116_d0(grp_atax_node0_Pipeline_label_13_fu_153_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_Pipeline_label_13_fu_153_v116_address1),.v116_ce1(grp_atax_node0_Pipeline_label_13_fu_153_v116_ce1),.v116_we1(grp_atax_node0_Pipeline_label_13_fu_153_v116_we1),.v116_d1(grp_atax_node0_Pipeline_label_13_fu_153_v116_d1),.v116_q1(v116_q1),.v6_1(v0_1_load_reg_362),.tmp_39(tmp_s_reg_351),.v7_2_out(grp_atax_node0_Pipeline_label_13_fu_153_v7_2_out),.v7_2_out_ap_vld(grp_atax_node0_Pipeline_label_13_fu_153_v7_2_out_ap_vld),.grp_fu_406_p_din0(grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_din0),.grp_fu_406_p_din1(grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_din1),.grp_fu_406_p_opcode(grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_opcode),.grp_fu_406_p_dout0(grp_fu_239_p_dout0),.grp_fu_406_p_ce(grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_ce),.grp_fu_410_p_din0(grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_din0),.grp_fu_410_p_din1(grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_din1),.grp_fu_410_p_dout0(grp_fu_243_p_dout0),.grp_fu_410_p_ce(grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_ce));
atax_atax_node0_Pipeline_label_14 grp_atax_node0_Pipeline_label_14_fu_166(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_14_fu_166_ap_start),.ap_done(grp_atax_node0_Pipeline_label_14_fu_166_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_14_fu_166_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_14_fu_166_ap_ready),.v7_2_reload(grp_atax_node0_Pipeline_label_13_fu_153_v7_2_out),.lshr_ln(lshr_ln_reg_319),.v113_address0(grp_atax_node0_Pipeline_label_14_fu_166_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_14_fu_166_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_14_fu_166_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_14_fu_166_v113_ce1),.v113_q1(v113_q1),.v116_address0(grp_atax_node0_Pipeline_label_14_fu_166_v116_address0),.v116_ce0(grp_atax_node0_Pipeline_label_14_fu_166_v116_ce0),.v116_we0(grp_atax_node0_Pipeline_label_14_fu_166_v116_we0),.v116_d0(grp_atax_node0_Pipeline_label_14_fu_166_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_Pipeline_label_14_fu_166_v116_address1),.v116_ce1(grp_atax_node0_Pipeline_label_14_fu_166_v116_ce1),.v116_we1(grp_atax_node0_Pipeline_label_14_fu_166_v116_we1),.v116_d1(grp_atax_node0_Pipeline_label_14_fu_166_v116_d1),.v116_q1(v116_q1),.v6_2(v0_2_load_reg_388),.v7_3_out(grp_atax_node0_Pipeline_label_14_fu_166_v7_3_out),.v7_3_out_ap_vld(grp_atax_node0_Pipeline_label_14_fu_166_v7_3_out_ap_vld),.grp_fu_406_p_din0(grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_din0),.grp_fu_406_p_din1(grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_din1),.grp_fu_406_p_opcode(grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_opcode),.grp_fu_406_p_dout0(grp_fu_239_p_dout0),.grp_fu_406_p_ce(grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_ce),.grp_fu_410_p_din0(grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_din0),.grp_fu_410_p_din1(grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_din1),.grp_fu_410_p_dout0(grp_fu_243_p_dout0),.grp_fu_410_p_ce(grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_ce));
atax_atax_node0_Pipeline_label_15 grp_atax_node0_Pipeline_label_15_fu_179(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_15_fu_179_ap_start),.ap_done(grp_atax_node0_Pipeline_label_15_fu_179_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_15_fu_179_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_15_fu_179_ap_ready),.v7_3_reload(grp_atax_node0_Pipeline_label_14_fu_166_v7_3_out),.zext_ln33_3(tmp_40_reg_401),.v113_address0(grp_atax_node0_Pipeline_label_15_fu_179_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_15_fu_179_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_15_fu_179_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_15_fu_179_v113_ce1),.v113_q1(v113_q1),.v116_address0(grp_atax_node0_Pipeline_label_15_fu_179_v116_address0),.v116_ce0(grp_atax_node0_Pipeline_label_15_fu_179_v116_ce0),.v116_we0(grp_atax_node0_Pipeline_label_15_fu_179_v116_we0),.v116_d0(grp_atax_node0_Pipeline_label_15_fu_179_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_Pipeline_label_15_fu_179_v116_address1),.v116_ce1(grp_atax_node0_Pipeline_label_15_fu_179_v116_ce1),.v116_we1(grp_atax_node0_Pipeline_label_15_fu_179_v116_we1),.v116_d1(grp_atax_node0_Pipeline_label_15_fu_179_v116_d1),.v116_q1(v116_q1),.v6_3(v0_3_load_reg_393),.lshr_ln(lshr_ln_reg_319),.v7_4_out_i(v3_fu_68),.v7_4_out_o(grp_atax_node0_Pipeline_label_15_fu_179_v7_4_out_o),.v7_4_out_o_ap_vld(grp_atax_node0_Pipeline_label_15_fu_179_v7_4_out_o_ap_vld),.grp_fu_406_p_din0(grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_din0),.grp_fu_406_p_din1(grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_din1),.grp_fu_406_p_opcode(grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_opcode),.grp_fu_406_p_dout0(grp_fu_239_p_dout0),.grp_fu_406_p_ce(grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_ce),.grp_fu_410_p_din0(grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_din0),.grp_fu_410_p_din1(grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_din1),.grp_fu_410_p_dout0(grp_fu_243_p_dout0),.grp_fu_410_p_ce(grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_13_fu_153_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_Pipeline_label_13_fu_153_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_13_fu_153_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_13_fu_153_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_14_fu_166_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_atax_node0_Pipeline_label_14_fu_166_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_14_fu_166_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_14_fu_166_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_15_fu_179_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_node0_Pipeline_label_15_fu_179_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_15_fu_179_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_15_fu_179_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_1_fu_140_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node0_Pipeline_label_1_fu_140_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_1_fu_140_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_1_fu_140_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_72 <= 7'd0;
    end else if (((tmp_fu_200_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v4_fu_72 <= add_ln27_fu_223_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        lshr_ln_reg_319 <= {{v4_fu_72[5:2]}};
        v4_1_reg_310 <= v4_fu_72;
        zext_ln26_reg_326[3 : 0] <= zext_ln26_fu_218_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_39_reg_370[11 : 7] <= tmp_39_fu_255_p3[11 : 7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_40_reg_401[11 : 8] <= tmp_40_fu_271_p3[11 : 8];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_351 <= {{v4_1_reg_310[5:1]}};
        trunc_ln27_reg_341 <= trunc_ln27_fu_238_p1;
        v0_0_load_reg_346 <= v0_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_1_load_reg_362 <= v0_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v0_2_load_reg_388 <= v0_2_q0;
        v0_3_load_reg_393 <= v0_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_atax_node0_Pipeline_label_15_fu_179_v7_4_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v3_fu_68 <= grp_atax_node0_Pipeline_label_15_fu_179_v7_4_out_o;
    end
end
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_15_fu_179_ap_done == 1'b0)) begin
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
    if ((grp_atax_node0_Pipeline_label_1_fu_140_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_13_fu_153_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_14_fu_166_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((tmp_fu_200_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_200_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_406_ce = grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_406_ce = grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_406_ce = grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_406_ce = grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_ce;
    end else begin
        grp_fu_406_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_406_p0 = grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_406_p0 = grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_406_p0 = grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_406_p0 = grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_din0;
    end else begin
        grp_fu_406_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_406_p1 = grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_406_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_406_p1 = grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_406_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_406_p1 = grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_406_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_406_p1 = grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_406_p_din1;
    end else begin
        grp_fu_406_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_410_ce = grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_410_ce = grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_410_ce = grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_410_ce = grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_ce;
    end else begin
        grp_fu_410_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_410_p0 = grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_410_p0 = grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_410_p0 = grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_410_p0 = grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_din0;
    end else begin
        grp_fu_410_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_410_p1 = grp_atax_node0_Pipeline_label_15_fu_179_grp_fu_410_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_410_p1 = grp_atax_node0_Pipeline_label_14_fu_166_grp_fu_410_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_410_p1 = grp_atax_node0_Pipeline_label_13_fu_153_grp_fu_410_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_410_p1 = grp_atax_node0_Pipeline_label_1_fu_140_grp_fu_410_p_din1;
    end else begin
        grp_fu_410_p1 = 'bx;
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
    if (((1'b1 == ap_CS_fsm_state6) & (grp_atax_node0_Pipeline_label_13_fu_153_ap_done == 1'b1))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_atax_node0_Pipeline_label_13_fu_153_ap_done == 1'b1))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_15_fu_179_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_14_fu_166_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_13_fu_153_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_1_fu_140_v113_address0;
    end else begin
        v113_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_15_fu_179_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_14_fu_166_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_13_fu_153_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_1_fu_140_v113_address1;
    end else begin
        v113_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_15_fu_179_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_14_fu_166_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_13_fu_153_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_1_fu_140_v113_ce0;
    end else begin
        v113_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_15_fu_179_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_14_fu_166_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_13_fu_153_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_1_fu_140_v113_ce1;
    end else begin
        v113_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_address0 = grp_atax_node0_Pipeline_label_15_fu_179_v116_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_address0 = grp_atax_node0_Pipeline_label_14_fu_166_v116_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_address0 = grp_atax_node0_Pipeline_label_13_fu_153_v116_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_address0 = grp_atax_node0_Pipeline_label_1_fu_140_v116_address0;
    end else begin
        v116_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_address1 = grp_atax_node0_Pipeline_label_15_fu_179_v116_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_address1 = grp_atax_node0_Pipeline_label_14_fu_166_v116_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_address1 = grp_atax_node0_Pipeline_label_13_fu_153_v116_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_address1 = grp_atax_node0_Pipeline_label_1_fu_140_v116_address1;
    end else begin
        v116_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_ce0 = grp_atax_node0_Pipeline_label_15_fu_179_v116_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_ce0 = grp_atax_node0_Pipeline_label_14_fu_166_v116_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_ce0 = grp_atax_node0_Pipeline_label_13_fu_153_v116_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_ce0 = grp_atax_node0_Pipeline_label_1_fu_140_v116_ce0;
    end else begin
        v116_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_ce1 = grp_atax_node0_Pipeline_label_15_fu_179_v116_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_ce1 = grp_atax_node0_Pipeline_label_14_fu_166_v116_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_ce1 = grp_atax_node0_Pipeline_label_13_fu_153_v116_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_ce1 = grp_atax_node0_Pipeline_label_1_fu_140_v116_ce1;
    end else begin
        v116_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_d0 = grp_atax_node0_Pipeline_label_15_fu_179_v116_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_d0 = grp_atax_node0_Pipeline_label_14_fu_166_v116_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_d0 = grp_atax_node0_Pipeline_label_13_fu_153_v116_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_d0 = grp_atax_node0_Pipeline_label_1_fu_140_v116_d0;
    end else begin
        v116_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_d1 = grp_atax_node0_Pipeline_label_15_fu_179_v116_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_d1 = grp_atax_node0_Pipeline_label_14_fu_166_v116_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_d1 = grp_atax_node0_Pipeline_label_13_fu_153_v116_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_d1 = grp_atax_node0_Pipeline_label_1_fu_140_v116_d1;
    end else begin
        v116_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_we0 = grp_atax_node0_Pipeline_label_15_fu_179_v116_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_we0 = grp_atax_node0_Pipeline_label_14_fu_166_v116_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_we0 = grp_atax_node0_Pipeline_label_13_fu_153_v116_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_we0 = grp_atax_node0_Pipeline_label_1_fu_140_v116_we0;
    end else begin
        v116_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_we1 = grp_atax_node0_Pipeline_label_15_fu_179_v116_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_we1 = grp_atax_node0_Pipeline_label_14_fu_166_v116_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_we1 = grp_atax_node0_Pipeline_label_13_fu_153_v116_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_we1 = grp_atax_node0_Pipeline_label_1_fu_140_v116_we1;
    end else begin
        v116_we1 = 1'b0;
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
            if (((tmp_fu_200_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_node0_Pipeline_label_1_fu_140_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_atax_node0_Pipeline_label_13_fu_153_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_atax_node0_Pipeline_label_14_fu_166_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_atax_node0_Pipeline_label_15_fu_179_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln27_fu_223_p2 = (v4_fu_72 + 7'd4);
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
assign grp_atax_node0_Pipeline_label_13_fu_153_ap_start = grp_atax_node0_Pipeline_label_13_fu_153_ap_start_reg;
assign grp_atax_node0_Pipeline_label_14_fu_166_ap_start = grp_atax_node0_Pipeline_label_14_fu_166_ap_start_reg;
assign grp_atax_node0_Pipeline_label_15_fu_179_ap_start = grp_atax_node0_Pipeline_label_15_fu_179_ap_start_reg;
assign grp_atax_node0_Pipeline_label_1_fu_140_ap_start = grp_atax_node0_Pipeline_label_1_fu_140_ap_start_reg;
assign grp_fu_239_p_ce = grp_fu_406_ce;
assign grp_fu_239_p_din0 = grp_fu_406_p0;
assign grp_fu_239_p_din1 = grp_fu_406_p1;
assign grp_fu_239_p_opcode = 2'd0;
assign grp_fu_243_p_ce = grp_fu_410_ce;
assign grp_fu_243_p_din0 = grp_fu_410_p0;
assign grp_fu_243_p_din1 = grp_fu_410_p1;
assign lshr_ln_fu_208_p4 = {{v4_fu_72[5:2]}};
assign tmp_39_fu_255_p3 = {{tmp_s_reg_351}, {7'd64}};
assign tmp_40_fu_271_p3 = {{lshr_ln_reg_319}, {8'd192}};
assign tmp_fu_200_p3 = v4_fu_72[32'd6];
assign trunc_ln27_fu_238_p1 = v4_1_reg_310[5:0];
assign v0_0_address0 = zext_ln26_fu_218_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_reg_326;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln26_reg_326;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln26_reg_326;
assign v0_3_ce0 = v0_3_ce0_local;
assign zext_ln26_fu_218_p1 = lshr_ln_fu_208_p4;
always @ (posedge ap_clk) begin
    zext_ln26_reg_326[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    tmp_39_reg_370[6:0] <= 7'b1000000;
    tmp_40_reg_401[7:0] <= 8'b11000000;
end
endmodule 