module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,grp_fu_335_p_din0,grp_fu_335_p_din1,grp_fu_335_p_opcode,grp_fu_335_p_dout0,grp_fu_335_p_ce,grp_fu_339_p_din0,grp_fu_339_p_din1,grp_fu_339_p_dout0,grp_fu_339_p_ce); 
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
output  [5:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
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
output  [31:0] grp_fu_335_p_din0;
output  [31:0] grp_fu_335_p_din1;
output  [1:0] grp_fu_335_p_opcode;
input  [31:0] grp_fu_335_p_dout0;
output   grp_fu_335_p_ce;
output  [31:0] grp_fu_339_p_din0;
output  [31:0] grp_fu_339_p_din1;
input  [31:0] grp_fu_339_p_dout0;
output   grp_fu_339_p_ce;
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
reg   [31:0] reg_183;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state9;
reg   [6:0] v4_1_reg_329;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln27_fu_227_p1;
reg   [5:0] trunc_ln27_reg_347;
wire   [4:0] tmp_s_fu_231_p4;
reg   [4:0] tmp_s_reg_352;
wire    ap_CS_fsm_state4;
reg   [3:0] tmp_23_reg_362;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
wire    grp_atax_node0_Pipeline_label_1_fu_123_ap_start;
wire    grp_atax_node0_Pipeline_label_1_fu_123_ap_done;
wire    grp_atax_node0_Pipeline_label_1_fu_123_ap_idle;
wire    grp_atax_node0_Pipeline_label_1_fu_123_ap_ready;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_123_v113_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v113_0_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_123_v113_0_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v113_0_ce1;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_123_v113_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v113_1_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_123_v113_1_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v113_1_ce1;
wire   [5:0] grp_atax_node0_Pipeline_label_1_fu_123_v116_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v116_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v116_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_123_v116_d0;
wire   [5:0] grp_atax_node0_Pipeline_label_1_fu_123_v116_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v116_ce1;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v116_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_123_v116_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_123_v7_out;
wire    grp_atax_node0_Pipeline_label_1_fu_123_v7_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_ce;
wire    grp_atax_node0_Pipeline_label_13_fu_138_ap_start;
wire    grp_atax_node0_Pipeline_label_13_fu_138_ap_done;
wire    grp_atax_node0_Pipeline_label_13_fu_138_ap_idle;
wire    grp_atax_node0_Pipeline_label_13_fu_138_ap_ready;
wire   [10:0] grp_atax_node0_Pipeline_label_13_fu_138_v113_0_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v113_0_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_13_fu_138_v113_0_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v113_0_ce1;
wire   [10:0] grp_atax_node0_Pipeline_label_13_fu_138_v113_1_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v113_1_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_13_fu_138_v113_1_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v113_1_ce1;
wire   [5:0] grp_atax_node0_Pipeline_label_13_fu_138_v116_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v116_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v116_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_138_v116_d0;
wire   [5:0] grp_atax_node0_Pipeline_label_13_fu_138_v116_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v116_ce1;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v116_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_138_v116_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_138_v7_1_out;
wire    grp_atax_node0_Pipeline_label_13_fu_138_v7_1_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_opcode;
wire    grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_din1;
wire    grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_ce;
wire    grp_atax_node0_Pipeline_label_14_fu_153_ap_start;
wire    grp_atax_node0_Pipeline_label_14_fu_153_ap_done;
wire    grp_atax_node0_Pipeline_label_14_fu_153_ap_idle;
wire    grp_atax_node0_Pipeline_label_14_fu_153_ap_ready;
wire   [10:0] grp_atax_node0_Pipeline_label_14_fu_153_v113_0_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v113_0_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_14_fu_153_v113_0_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v113_0_ce1;
wire   [10:0] grp_atax_node0_Pipeline_label_14_fu_153_v113_1_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v113_1_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_14_fu_153_v113_1_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v113_1_ce1;
wire   [5:0] grp_atax_node0_Pipeline_label_14_fu_153_v116_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v116_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v116_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_153_v116_d0;
wire   [5:0] grp_atax_node0_Pipeline_label_14_fu_153_v116_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v116_ce1;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v116_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_153_v116_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_153_v7_2_out;
wire    grp_atax_node0_Pipeline_label_14_fu_153_v7_2_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_opcode;
wire    grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_din1;
wire    grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_ce;
wire    grp_atax_node0_Pipeline_label_15_fu_168_ap_start;
wire    grp_atax_node0_Pipeline_label_15_fu_168_ap_done;
wire    grp_atax_node0_Pipeline_label_15_fu_168_ap_idle;
wire    grp_atax_node0_Pipeline_label_15_fu_168_ap_ready;
wire   [10:0] grp_atax_node0_Pipeline_label_15_fu_168_v113_0_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v113_0_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_15_fu_168_v113_0_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v113_0_ce1;
wire   [10:0] grp_atax_node0_Pipeline_label_15_fu_168_v113_1_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v113_1_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_15_fu_168_v113_1_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v113_1_ce1;
wire   [5:0] grp_atax_node0_Pipeline_label_15_fu_168_v116_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v116_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v116_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_168_v116_d0;
wire   [5:0] grp_atax_node0_Pipeline_label_15_fu_168_v116_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v116_ce1;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v116_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_168_v116_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_168_v7_3_out_o;
wire    grp_atax_node0_Pipeline_label_15_fu_168_v7_3_out_o_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_opcode;
wire    grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_din1;
wire    grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_ce;
reg    grp_atax_node0_Pipeline_label_1_fu_123_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_13_fu_138_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_14_fu_153_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_15_fu_168_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [31:0] v3_fu_66;
wire   [63:0] zext_ln27_fu_207_p1;
wire   [0:0] tmp_fu_199_p3;
wire   [63:0] zext_ln26_fu_248_p1;
wire   [63:0] zext_ln26_1_fu_273_p1;
wire   [63:0] zext_ln26_2_fu_289_p1;
reg   [6:0] v4_fu_70;
wire   [6:0] add_ln27_fu_212_p2;
reg    v0_ce0_local;
reg   [5:0] v0_address0_local;
wire   [5:0] or_ln7_fu_240_p3;
wire   [5:0] or_ln27_1_fu_266_p3;
wire   [5:0] or_ln27_2_fu_282_p3;
reg   [31:0] grp_fu_389_p0;
reg   [31:0] grp_fu_389_p1;
reg    grp_fu_389_ce;
reg   [31:0] grp_fu_393_p0;
reg   [31:0] grp_fu_393_p1;
reg    grp_fu_393_ce;
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
#0 grp_atax_node0_Pipeline_label_1_fu_123_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_13_fu_138_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_14_fu_153_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_15_fu_168_ap_start_reg = 1'b0;
#0 v4_fu_70 = 7'd0;
end
atax_atax_node0_Pipeline_label_1 grp_atax_node0_Pipeline_label_1_fu_123(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_1_fu_123_ap_start),.ap_done(grp_atax_node0_Pipeline_label_1_fu_123_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_1_fu_123_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_1_fu_123_ap_ready),.v3(v3_fu_66),.v4(trunc_ln27_reg_347),.v113_0_address0(grp_atax_node0_Pipeline_label_1_fu_123_v113_0_address0),.v113_0_ce0(grp_atax_node0_Pipeline_label_1_fu_123_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_Pipeline_label_1_fu_123_v113_0_address1),.v113_0_ce1(grp_atax_node0_Pipeline_label_1_fu_123_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_Pipeline_label_1_fu_123_v113_1_address0),.v113_1_ce0(grp_atax_node0_Pipeline_label_1_fu_123_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_Pipeline_label_1_fu_123_v113_1_address1),.v113_1_ce1(grp_atax_node0_Pipeline_label_1_fu_123_v113_1_ce1),.v113_1_q1(v113_1_q1),.v6(reg_183),.v116_address0(grp_atax_node0_Pipeline_label_1_fu_123_v116_address0),.v116_ce0(grp_atax_node0_Pipeline_label_1_fu_123_v116_ce0),.v116_we0(grp_atax_node0_Pipeline_label_1_fu_123_v116_we0),.v116_d0(grp_atax_node0_Pipeline_label_1_fu_123_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_Pipeline_label_1_fu_123_v116_address1),.v116_ce1(grp_atax_node0_Pipeline_label_1_fu_123_v116_ce1),.v116_we1(grp_atax_node0_Pipeline_label_1_fu_123_v116_we1),.v116_d1(grp_atax_node0_Pipeline_label_1_fu_123_v116_d1),.v116_q1(v116_q1),.v7_out(grp_atax_node0_Pipeline_label_1_fu_123_v7_out),.v7_out_ap_vld(grp_atax_node0_Pipeline_label_1_fu_123_v7_out_ap_vld),.grp_fu_389_p_din0(grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_din0),.grp_fu_389_p_din1(grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_din1),.grp_fu_389_p_opcode(grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_opcode),.grp_fu_389_p_dout0(grp_fu_335_p_dout0),.grp_fu_389_p_ce(grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_ce),.grp_fu_393_p_din0(grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_din0),.grp_fu_393_p_din1(grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_din1),.grp_fu_393_p_dout0(grp_fu_339_p_dout0),.grp_fu_393_p_ce(grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_ce));
atax_atax_node0_Pipeline_label_13 grp_atax_node0_Pipeline_label_13_fu_138(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_13_fu_138_ap_start),.ap_done(grp_atax_node0_Pipeline_label_13_fu_138_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_13_fu_138_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_13_fu_138_ap_ready),.v7_reload(grp_atax_node0_Pipeline_label_1_fu_123_v7_out),.tmp_114(tmp_s_reg_352),.v113_0_address0(grp_atax_node0_Pipeline_label_13_fu_138_v113_0_address0),.v113_0_ce0(grp_atax_node0_Pipeline_label_13_fu_138_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_Pipeline_label_13_fu_138_v113_0_address1),.v113_0_ce1(grp_atax_node0_Pipeline_label_13_fu_138_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_Pipeline_label_13_fu_138_v113_1_address0),.v113_1_ce0(grp_atax_node0_Pipeline_label_13_fu_138_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_Pipeline_label_13_fu_138_v113_1_address1),.v113_1_ce1(grp_atax_node0_Pipeline_label_13_fu_138_v113_1_ce1),.v113_1_q1(v113_1_q1),.v6_1(reg_183),.v116_address0(grp_atax_node0_Pipeline_label_13_fu_138_v116_address0),.v116_ce0(grp_atax_node0_Pipeline_label_13_fu_138_v116_ce0),.v116_we0(grp_atax_node0_Pipeline_label_13_fu_138_v116_we0),.v116_d0(grp_atax_node0_Pipeline_label_13_fu_138_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_Pipeline_label_13_fu_138_v116_address1),.v116_ce1(grp_atax_node0_Pipeline_label_13_fu_138_v116_ce1),.v116_we1(grp_atax_node0_Pipeline_label_13_fu_138_v116_we1),.v116_d1(grp_atax_node0_Pipeline_label_13_fu_138_v116_d1),.v116_q1(v116_q1),.v7_1_out(grp_atax_node0_Pipeline_label_13_fu_138_v7_1_out),.v7_1_out_ap_vld(grp_atax_node0_Pipeline_label_13_fu_138_v7_1_out_ap_vld),.grp_fu_389_p_din0(grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_din0),.grp_fu_389_p_din1(grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_din1),.grp_fu_389_p_opcode(grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_opcode),.grp_fu_389_p_dout0(grp_fu_335_p_dout0),.grp_fu_389_p_ce(grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_ce),.grp_fu_393_p_din0(grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_din0),.grp_fu_393_p_din1(grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_din1),.grp_fu_393_p_dout0(grp_fu_339_p_dout0),.grp_fu_393_p_ce(grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_ce));
atax_atax_node0_Pipeline_label_14 grp_atax_node0_Pipeline_label_14_fu_153(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_14_fu_153_ap_start),.ap_done(grp_atax_node0_Pipeline_label_14_fu_153_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_14_fu_153_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_14_fu_153_ap_ready),.v7_1_reload(grp_atax_node0_Pipeline_label_13_fu_138_v7_1_out),.tmp_135(tmp_23_reg_362),.v113_0_address0(grp_atax_node0_Pipeline_label_14_fu_153_v113_0_address0),.v113_0_ce0(grp_atax_node0_Pipeline_label_14_fu_153_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_Pipeline_label_14_fu_153_v113_0_address1),.v113_0_ce1(grp_atax_node0_Pipeline_label_14_fu_153_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_Pipeline_label_14_fu_153_v113_1_address0),.v113_1_ce0(grp_atax_node0_Pipeline_label_14_fu_153_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_Pipeline_label_14_fu_153_v113_1_address1),.v113_1_ce1(grp_atax_node0_Pipeline_label_14_fu_153_v113_1_ce1),.v113_1_q1(v113_1_q1),.v6_2(reg_183),.v116_address0(grp_atax_node0_Pipeline_label_14_fu_153_v116_address0),.v116_ce0(grp_atax_node0_Pipeline_label_14_fu_153_v116_ce0),.v116_we0(grp_atax_node0_Pipeline_label_14_fu_153_v116_we0),.v116_d0(grp_atax_node0_Pipeline_label_14_fu_153_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_Pipeline_label_14_fu_153_v116_address1),.v116_ce1(grp_atax_node0_Pipeline_label_14_fu_153_v116_ce1),.v116_we1(grp_atax_node0_Pipeline_label_14_fu_153_v116_we1),.v116_d1(grp_atax_node0_Pipeline_label_14_fu_153_v116_d1),.v116_q1(v116_q1),.v7_2_out(grp_atax_node0_Pipeline_label_14_fu_153_v7_2_out),.v7_2_out_ap_vld(grp_atax_node0_Pipeline_label_14_fu_153_v7_2_out_ap_vld),.grp_fu_389_p_din0(grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_din0),.grp_fu_389_p_din1(grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_din1),.grp_fu_389_p_opcode(grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_opcode),.grp_fu_389_p_dout0(grp_fu_335_p_dout0),.grp_fu_389_p_ce(grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_ce),.grp_fu_393_p_din0(grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_din0),.grp_fu_393_p_din1(grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_din1),.grp_fu_393_p_dout0(grp_fu_339_p_dout0),.grp_fu_393_p_ce(grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_ce));
atax_atax_node0_Pipeline_label_15 grp_atax_node0_Pipeline_label_15_fu_168(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_15_fu_168_ap_start),.ap_done(grp_atax_node0_Pipeline_label_15_fu_168_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_15_fu_168_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_15_fu_168_ap_ready),.v7_2_reload(grp_atax_node0_Pipeline_label_14_fu_153_v7_2_out),.tmp_135(tmp_23_reg_362),.v113_0_address0(grp_atax_node0_Pipeline_label_15_fu_168_v113_0_address0),.v113_0_ce0(grp_atax_node0_Pipeline_label_15_fu_168_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_Pipeline_label_15_fu_168_v113_0_address1),.v113_0_ce1(grp_atax_node0_Pipeline_label_15_fu_168_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_Pipeline_label_15_fu_168_v113_1_address0),.v113_1_ce0(grp_atax_node0_Pipeline_label_15_fu_168_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_Pipeline_label_15_fu_168_v113_1_address1),.v113_1_ce1(grp_atax_node0_Pipeline_label_15_fu_168_v113_1_ce1),.v113_1_q1(v113_1_q1),.v6_3(reg_183),.v116_address0(grp_atax_node0_Pipeline_label_15_fu_168_v116_address0),.v116_ce0(grp_atax_node0_Pipeline_label_15_fu_168_v116_ce0),.v116_we0(grp_atax_node0_Pipeline_label_15_fu_168_v116_we0),.v116_d0(grp_atax_node0_Pipeline_label_15_fu_168_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_Pipeline_label_15_fu_168_v116_address1),.v116_ce1(grp_atax_node0_Pipeline_label_15_fu_168_v116_ce1),.v116_we1(grp_atax_node0_Pipeline_label_15_fu_168_v116_we1),.v116_d1(grp_atax_node0_Pipeline_label_15_fu_168_v116_d1),.v116_q1(v116_q1),.v7_3_out_i(v3_fu_66),.v7_3_out_o(grp_atax_node0_Pipeline_label_15_fu_168_v7_3_out_o),.v7_3_out_o_ap_vld(grp_atax_node0_Pipeline_label_15_fu_168_v7_3_out_o_ap_vld),.grp_fu_389_p_din0(grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_din0),.grp_fu_389_p_din1(grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_din1),.grp_fu_389_p_opcode(grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_opcode),.grp_fu_389_p_dout0(grp_fu_335_p_dout0),.grp_fu_389_p_ce(grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_ce),.grp_fu_393_p_din0(grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_din0),.grp_fu_393_p_din1(grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_din1),.grp_fu_393_p_dout0(grp_fu_339_p_dout0),.grp_fu_393_p_ce(grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_13_fu_138_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_Pipeline_label_13_fu_138_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_13_fu_138_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_13_fu_138_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_14_fu_153_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_atax_node0_Pipeline_label_14_fu_153_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_14_fu_153_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_14_fu_153_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_15_fu_168_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_node0_Pipeline_label_15_fu_168_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_15_fu_168_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_15_fu_168_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_1_fu_123_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node0_Pipeline_label_1_fu_123_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_1_fu_123_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_1_fu_123_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_70 <= 7'd0;
    end else if (((tmp_fu_199_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v4_fu_70 <= add_ln27_fu_212_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_183 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_23_reg_362 <= {{v4_1_reg_329[5:2]}};
        tmp_s_reg_352 <= {{v4_1_reg_329[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln27_reg_347 <= trunc_ln27_fu_227_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_atax_node0_Pipeline_label_15_fu_168_v7_3_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v3_fu_66 <= grp_atax_node0_Pipeline_label_15_fu_168_v7_3_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v4_1_reg_329 <= v4_fu_70;
    end
end
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_15_fu_168_ap_done == 1'b0)) begin
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
    if ((grp_atax_node0_Pipeline_label_1_fu_123_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_13_fu_138_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_14_fu_153_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((tmp_fu_199_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_199_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_389_ce = grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_389_ce = grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_389_ce = grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_389_ce = grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_ce;
    end else begin
        grp_fu_389_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_389_p0 = grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_389_p0 = grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_389_p0 = grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_389_p0 = grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_din0;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_389_p1 = grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_389_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_389_p1 = grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_389_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_389_p1 = grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_389_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_389_p1 = grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_389_p_din1;
    end else begin
        grp_fu_389_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_393_ce = grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_393_ce = grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_393_ce = grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_393_ce = grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_ce;
    end else begin
        grp_fu_393_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_393_p0 = grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_393_p0 = grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_393_p0 = grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_393_p0 = grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_din0;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_393_p1 = grp_atax_node0_Pipeline_label_15_fu_168_grp_fu_393_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_393_p1 = grp_atax_node0_Pipeline_label_14_fu_153_grp_fu_393_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_393_p1 = grp_atax_node0_Pipeline_label_13_fu_138_grp_fu_393_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_393_p1 = grp_atax_node0_Pipeline_label_1_fu_123_grp_fu_393_p_din1;
    end else begin
        grp_fu_393_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v0_address0_local = zext_ln26_2_fu_289_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v0_address0_local = zext_ln26_1_fu_273_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_address0_local = zext_ln26_fu_248_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_address0_local = zext_ln27_fu_207_p1;
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((grp_atax_node0_Pipeline_label_14_fu_153_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_CS_fsm_state6) & (grp_atax_node0_Pipeline_label_13_fu_138_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state4) & (grp_atax_node0_Pipeline_label_1_fu_123_ap_done == 1'b1)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_0_address0 = grp_atax_node0_Pipeline_label_15_fu_168_v113_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_0_address0 = grp_atax_node0_Pipeline_label_14_fu_153_v113_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_address0 = grp_atax_node0_Pipeline_label_13_fu_138_v113_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_address0 = grp_atax_node0_Pipeline_label_1_fu_123_v113_0_address0;
    end else begin
        v113_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_0_address1 = grp_atax_node0_Pipeline_label_15_fu_168_v113_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_0_address1 = grp_atax_node0_Pipeline_label_14_fu_153_v113_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_address1 = grp_atax_node0_Pipeline_label_13_fu_138_v113_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_address1 = grp_atax_node0_Pipeline_label_1_fu_123_v113_0_address1;
    end else begin
        v113_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_0_ce0 = grp_atax_node0_Pipeline_label_15_fu_168_v113_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_0_ce0 = grp_atax_node0_Pipeline_label_14_fu_153_v113_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_ce0 = grp_atax_node0_Pipeline_label_13_fu_138_v113_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_123_v113_0_ce0;
    end else begin
        v113_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_0_ce1 = grp_atax_node0_Pipeline_label_15_fu_168_v113_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_0_ce1 = grp_atax_node0_Pipeline_label_14_fu_153_v113_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_ce1 = grp_atax_node0_Pipeline_label_13_fu_138_v113_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_ce1 = grp_atax_node0_Pipeline_label_1_fu_123_v113_0_ce1;
    end else begin
        v113_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_1_address0 = grp_atax_node0_Pipeline_label_15_fu_168_v113_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_1_address0 = grp_atax_node0_Pipeline_label_14_fu_153_v113_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_address0 = grp_atax_node0_Pipeline_label_13_fu_138_v113_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_address0 = grp_atax_node0_Pipeline_label_1_fu_123_v113_1_address0;
    end else begin
        v113_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_1_address1 = grp_atax_node0_Pipeline_label_15_fu_168_v113_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_1_address1 = grp_atax_node0_Pipeline_label_14_fu_153_v113_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_address1 = grp_atax_node0_Pipeline_label_13_fu_138_v113_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_address1 = grp_atax_node0_Pipeline_label_1_fu_123_v113_1_address1;
    end else begin
        v113_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_1_ce0 = grp_atax_node0_Pipeline_label_15_fu_168_v113_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_1_ce0 = grp_atax_node0_Pipeline_label_14_fu_153_v113_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_ce0 = grp_atax_node0_Pipeline_label_13_fu_138_v113_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_123_v113_1_ce0;
    end else begin
        v113_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_1_ce1 = grp_atax_node0_Pipeline_label_15_fu_168_v113_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_1_ce1 = grp_atax_node0_Pipeline_label_14_fu_153_v113_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_ce1 = grp_atax_node0_Pipeline_label_13_fu_138_v113_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_ce1 = grp_atax_node0_Pipeline_label_1_fu_123_v113_1_ce1;
    end else begin
        v113_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_address0 = grp_atax_node0_Pipeline_label_15_fu_168_v116_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_address0 = grp_atax_node0_Pipeline_label_14_fu_153_v116_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_address0 = grp_atax_node0_Pipeline_label_13_fu_138_v116_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_address0 = grp_atax_node0_Pipeline_label_1_fu_123_v116_address0;
    end else begin
        v116_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_address1 = grp_atax_node0_Pipeline_label_15_fu_168_v116_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_address1 = grp_atax_node0_Pipeline_label_14_fu_153_v116_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_address1 = grp_atax_node0_Pipeline_label_13_fu_138_v116_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_address1 = grp_atax_node0_Pipeline_label_1_fu_123_v116_address1;
    end else begin
        v116_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_ce0 = grp_atax_node0_Pipeline_label_15_fu_168_v116_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_ce0 = grp_atax_node0_Pipeline_label_14_fu_153_v116_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_ce0 = grp_atax_node0_Pipeline_label_13_fu_138_v116_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_ce0 = grp_atax_node0_Pipeline_label_1_fu_123_v116_ce0;
    end else begin
        v116_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_ce1 = grp_atax_node0_Pipeline_label_15_fu_168_v116_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_ce1 = grp_atax_node0_Pipeline_label_14_fu_153_v116_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_ce1 = grp_atax_node0_Pipeline_label_13_fu_138_v116_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_ce1 = grp_atax_node0_Pipeline_label_1_fu_123_v116_ce1;
    end else begin
        v116_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_d0 = grp_atax_node0_Pipeline_label_15_fu_168_v116_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_d0 = grp_atax_node0_Pipeline_label_14_fu_153_v116_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_d0 = grp_atax_node0_Pipeline_label_13_fu_138_v116_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_d0 = grp_atax_node0_Pipeline_label_1_fu_123_v116_d0;
    end else begin
        v116_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_d1 = grp_atax_node0_Pipeline_label_15_fu_168_v116_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_d1 = grp_atax_node0_Pipeline_label_14_fu_153_v116_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_d1 = grp_atax_node0_Pipeline_label_13_fu_138_v116_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_d1 = grp_atax_node0_Pipeline_label_1_fu_123_v116_d1;
    end else begin
        v116_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_we0 = grp_atax_node0_Pipeline_label_15_fu_168_v116_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_we0 = grp_atax_node0_Pipeline_label_14_fu_153_v116_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_we0 = grp_atax_node0_Pipeline_label_13_fu_138_v116_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_we0 = grp_atax_node0_Pipeline_label_1_fu_123_v116_we0;
    end else begin
        v116_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_we1 = grp_atax_node0_Pipeline_label_15_fu_168_v116_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_we1 = grp_atax_node0_Pipeline_label_14_fu_153_v116_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_we1 = grp_atax_node0_Pipeline_label_13_fu_138_v116_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_we1 = grp_atax_node0_Pipeline_label_1_fu_123_v116_we1;
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
            if (((tmp_fu_199_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_node0_Pipeline_label_1_fu_123_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_atax_node0_Pipeline_label_13_fu_138_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_atax_node0_Pipeline_label_14_fu_153_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_atax_node0_Pipeline_label_15_fu_168_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln27_fu_212_p2 = (v4_fu_70 + 7'd4);
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
assign grp_atax_node0_Pipeline_label_13_fu_138_ap_start = grp_atax_node0_Pipeline_label_13_fu_138_ap_start_reg;
assign grp_atax_node0_Pipeline_label_14_fu_153_ap_start = grp_atax_node0_Pipeline_label_14_fu_153_ap_start_reg;
assign grp_atax_node0_Pipeline_label_15_fu_168_ap_start = grp_atax_node0_Pipeline_label_15_fu_168_ap_start_reg;
assign grp_atax_node0_Pipeline_label_1_fu_123_ap_start = grp_atax_node0_Pipeline_label_1_fu_123_ap_start_reg;
assign grp_fu_335_p_ce = grp_fu_389_ce;
assign grp_fu_335_p_din0 = grp_fu_389_p0;
assign grp_fu_335_p_din1 = grp_fu_389_p1;
assign grp_fu_335_p_opcode = 2'd0;
assign grp_fu_339_p_ce = grp_fu_393_ce;
assign grp_fu_339_p_din0 = grp_fu_393_p0;
assign grp_fu_339_p_din1 = grp_fu_393_p1;
assign or_ln27_1_fu_266_p3 = {{tmp_23_reg_362}, {2'd2}};
assign or_ln27_2_fu_282_p3 = {{tmp_23_reg_362}, {2'd3}};
assign or_ln7_fu_240_p3 = {{tmp_s_fu_231_p4}, {1'd1}};
assign tmp_fu_199_p3 = v4_fu_70[32'd6];
assign tmp_s_fu_231_p4 = {{v4_1_reg_329[5:1]}};
assign trunc_ln27_fu_227_p1 = v4_1_reg_329[5:0];
assign v0_address0 = v0_address0_local;
assign v0_ce0 = v0_ce0_local;
assign zext_ln26_1_fu_273_p1 = or_ln27_1_fu_266_p3;
assign zext_ln26_2_fu_289_p1 = or_ln27_2_fu_282_p3;
assign zext_ln26_fu_248_p1 = or_ln7_fu_240_p3;
assign zext_ln27_fu_207_p1 = v4_fu_70;
endmodule 