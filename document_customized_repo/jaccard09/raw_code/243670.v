module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,grp_fu_613_p_din0,grp_fu_613_p_din1,grp_fu_613_p_opcode,grp_fu_613_p_dout0,grp_fu_613_p_ce,grp_fu_617_p_din0,grp_fu_617_p_din1,grp_fu_617_p_opcode,grp_fu_617_p_dout0,grp_fu_617_p_ce,grp_fu_621_p_din0,grp_fu_621_p_din1,grp_fu_621_p_dout0,grp_fu_621_p_ce,grp_fu_625_p_din0,grp_fu_625_p_din1,grp_fu_625_p_dout0,grp_fu_625_p_ce); 
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
output  [2:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [2:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [2:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [2:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [2:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [2:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [2:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [2:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
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
output  [31:0] grp_fu_613_p_din0;
output  [31:0] grp_fu_613_p_din1;
output  [1:0] grp_fu_613_p_opcode;
input  [31:0] grp_fu_613_p_dout0;
output   grp_fu_613_p_ce;
output  [31:0] grp_fu_617_p_din0;
output  [31:0] grp_fu_617_p_din1;
output  [1:0] grp_fu_617_p_opcode;
input  [31:0] grp_fu_617_p_dout0;
output   grp_fu_617_p_ce;
output  [31:0] grp_fu_621_p_din0;
output  [31:0] grp_fu_621_p_din1;
input  [31:0] grp_fu_621_p_dout0;
output   grp_fu_621_p_ce;
output  [31:0] grp_fu_625_p_din0;
output  [31:0] grp_fu_625_p_din1;
input  [31:0] grp_fu_625_p_dout0;
output   grp_fu_625_p_ce;
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
reg   [6:0] v4_1_reg_369;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln27_fu_281_p1;
reg   [5:0] trunc_ln27_reg_422;
wire    ap_CS_fsm_state3;
wire   [31:0] v6_fu_288_p11;
reg   [31:0] v6_reg_427;
reg   [4:0] tmp_s_reg_432;
wire   [31:0] v6_1_fu_322_p11;
reg   [31:0] v6_1_reg_437;
wire    grp_atax_node0_Pipeline_label_1_fu_196_ap_start;
wire    grp_atax_node0_Pipeline_label_1_fu_196_ap_done;
wire    grp_atax_node0_Pipeline_label_1_fu_196_ap_idle;
wire    grp_atax_node0_Pipeline_label_1_fu_196_ap_ready;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_196_v113_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v113_0_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_196_v113_0_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v113_0_ce1;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_196_v113_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v113_1_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_1_fu_196_v113_1_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v113_1_ce1;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_196_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_v116_1_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_196_v116_1_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v116_1_ce1;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v116_1_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_v116_1_d1;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_196_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_v116_0_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_1_fu_196_v116_0_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v116_0_ce1;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v116_0_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_v116_0_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_v7_out;
wire    grp_atax_node0_Pipeline_label_1_fu_196_v7_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_ce;
wire    grp_atax_node0_Pipeline_label_110_fu_212_ap_start;
wire    grp_atax_node0_Pipeline_label_110_fu_212_ap_done;
wire    grp_atax_node0_Pipeline_label_110_fu_212_ap_idle;
wire    grp_atax_node0_Pipeline_label_110_fu_212_ap_ready;
wire   [10:0] grp_atax_node0_Pipeline_label_110_fu_212_v113_0_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v113_0_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_110_fu_212_v113_0_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v113_0_ce1;
wire   [10:0] grp_atax_node0_Pipeline_label_110_fu_212_v113_1_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v113_1_ce0;
wire   [10:0] grp_atax_node0_Pipeline_label_110_fu_212_v113_1_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v113_1_ce1;
wire   [4:0] grp_atax_node0_Pipeline_label_110_fu_212_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_v116_1_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_110_fu_212_v116_1_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v116_1_ce1;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v116_1_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_v116_1_d1;
wire   [4:0] grp_atax_node0_Pipeline_label_110_fu_212_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_v116_0_d0;
wire   [4:0] grp_atax_node0_Pipeline_label_110_fu_212_v116_0_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v116_0_ce1;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v116_0_we1;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_v116_0_d1;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_v7_1_out_o;
wire    grp_atax_node0_Pipeline_label_110_fu_212_v7_1_out_o_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_opcode;
wire    grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_opcode;
wire    grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_din1;
wire    grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_din1;
wire    grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_ce;
reg    grp_atax_node0_Pipeline_label_1_fu_196_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_node0_Pipeline_label_110_fu_212_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [31:0] v3_fu_80;
wire   [63:0] zext_ln26_fu_254_p1;
wire   [0:0] tmp_fu_236_p3;
reg   [6:0] v4_fu_84;
wire   [6:0] add_ln27_fu_266_p2;
reg    v0_0_ce0_local;
reg    v0_2_ce0_local;
reg    v0_4_ce0_local;
reg    v0_6_ce0_local;
reg    v0_1_ce0_local;
reg    v0_3_ce0_local;
reg    v0_5_ce0_local;
reg    v0_7_ce0_local;
wire   [2:0] lshr_ln_fu_244_p4;
wire   [31:0] v6_fu_288_p9;
wire   [2:0] trunc_ln27_1_fu_285_p1;
wire   [31:0] v6_1_fu_322_p9;
reg   [31:0] grp_fu_445_p0;
reg   [31:0] grp_fu_445_p1;
reg    grp_fu_445_ce;
reg   [31:0] grp_fu_449_p0;
reg   [31:0] grp_fu_449_p1;
reg    grp_fu_449_ce;
reg   [31:0] grp_fu_453_p0;
reg   [31:0] grp_fu_453_p1;
reg    grp_fu_453_ce;
reg   [31:0] grp_fu_457_p0;
reg   [31:0] grp_fu_457_p1;
reg    grp_fu_457_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [2:0] v6_fu_288_p1;
wire   [2:0] v6_fu_288_p3;
wire  signed [2:0] v6_fu_288_p5;
wire  signed [2:0] v6_fu_288_p7;
wire   [2:0] v6_1_fu_322_p1;
wire   [2:0] v6_1_fu_322_p3;
wire  signed [2:0] v6_1_fu_322_p5;
wire  signed [2:0] v6_1_fu_322_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_atax_node0_Pipeline_label_1_fu_196_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_110_fu_212_ap_start_reg = 1'b0;
#0 v4_fu_84 = 7'd0;
end
atax_atax_node0_Pipeline_label_1 grp_atax_node0_Pipeline_label_1_fu_196(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_1_fu_196_ap_start),.ap_done(grp_atax_node0_Pipeline_label_1_fu_196_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_1_fu_196_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_1_fu_196_ap_ready),.v3(v3_fu_80),.v4(trunc_ln27_reg_422),.v113_0_address0(grp_atax_node0_Pipeline_label_1_fu_196_v113_0_address0),.v113_0_ce0(grp_atax_node0_Pipeline_label_1_fu_196_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_Pipeline_label_1_fu_196_v113_0_address1),.v113_0_ce1(grp_atax_node0_Pipeline_label_1_fu_196_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_Pipeline_label_1_fu_196_v113_1_address0),.v113_1_ce0(grp_atax_node0_Pipeline_label_1_fu_196_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_Pipeline_label_1_fu_196_v113_1_address1),.v113_1_ce1(grp_atax_node0_Pipeline_label_1_fu_196_v113_1_ce1),.v113_1_q1(v113_1_q1),.v116_1_address0(grp_atax_node0_Pipeline_label_1_fu_196_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_1_fu_196_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_1_fu_196_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_1_fu_196_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_Pipeline_label_1_fu_196_v116_1_address1),.v116_1_ce1(grp_atax_node0_Pipeline_label_1_fu_196_v116_1_ce1),.v116_1_we1(grp_atax_node0_Pipeline_label_1_fu_196_v116_1_we1),.v116_1_d1(grp_atax_node0_Pipeline_label_1_fu_196_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_0_address0(grp_atax_node0_Pipeline_label_1_fu_196_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_1_fu_196_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_1_fu_196_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_1_fu_196_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_Pipeline_label_1_fu_196_v116_0_address1),.v116_0_ce1(grp_atax_node0_Pipeline_label_1_fu_196_v116_0_ce1),.v116_0_we1(grp_atax_node0_Pipeline_label_1_fu_196_v116_0_we1),.v116_0_d1(grp_atax_node0_Pipeline_label_1_fu_196_v116_0_d1),.v116_0_q1(v116_0_q1),.v6(v6_reg_427),.v7_out(grp_atax_node0_Pipeline_label_1_fu_196_v7_out),.v7_out_ap_vld(grp_atax_node0_Pipeline_label_1_fu_196_v7_out_ap_vld),.grp_fu_445_p_din0(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_din0),.grp_fu_445_p_din1(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_din1),.grp_fu_445_p_opcode(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_opcode),.grp_fu_445_p_dout0(grp_fu_613_p_dout0),.grp_fu_445_p_ce(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_ce),.grp_fu_449_p_din0(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_din0),.grp_fu_449_p_din1(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_din1),.grp_fu_449_p_opcode(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_opcode),.grp_fu_449_p_dout0(grp_fu_617_p_dout0),.grp_fu_449_p_ce(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_ce),.grp_fu_453_p_din0(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_din0),.grp_fu_453_p_din1(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_din1),.grp_fu_453_p_dout0(grp_fu_621_p_dout0),.grp_fu_453_p_ce(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_ce),.grp_fu_457_p_din0(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_din0),.grp_fu_457_p_din1(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_din1),.grp_fu_457_p_dout0(grp_fu_625_p_dout0),.grp_fu_457_p_ce(grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_ce));
atax_atax_node0_Pipeline_label_110 grp_atax_node0_Pipeline_label_110_fu_212(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_110_fu_212_ap_start),.ap_done(grp_atax_node0_Pipeline_label_110_fu_212_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_110_fu_212_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_110_fu_212_ap_ready),.v7_reload(grp_atax_node0_Pipeline_label_1_fu_196_v7_out),.tmp_824(tmp_s_reg_432),.v113_0_address0(grp_atax_node0_Pipeline_label_110_fu_212_v113_0_address0),.v113_0_ce0(grp_atax_node0_Pipeline_label_110_fu_212_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_Pipeline_label_110_fu_212_v113_0_address1),.v113_0_ce1(grp_atax_node0_Pipeline_label_110_fu_212_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_Pipeline_label_110_fu_212_v113_1_address0),.v113_1_ce0(grp_atax_node0_Pipeline_label_110_fu_212_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_Pipeline_label_110_fu_212_v113_1_address1),.v113_1_ce1(grp_atax_node0_Pipeline_label_110_fu_212_v113_1_ce1),.v113_1_q1(v113_1_q1),.v116_1_address0(grp_atax_node0_Pipeline_label_110_fu_212_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_110_fu_212_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_110_fu_212_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_110_fu_212_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_Pipeline_label_110_fu_212_v116_1_address1),.v116_1_ce1(grp_atax_node0_Pipeline_label_110_fu_212_v116_1_ce1),.v116_1_we1(grp_atax_node0_Pipeline_label_110_fu_212_v116_1_we1),.v116_1_d1(grp_atax_node0_Pipeline_label_110_fu_212_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_0_address0(grp_atax_node0_Pipeline_label_110_fu_212_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_110_fu_212_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_110_fu_212_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_110_fu_212_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_Pipeline_label_110_fu_212_v116_0_address1),.v116_0_ce1(grp_atax_node0_Pipeline_label_110_fu_212_v116_0_ce1),.v116_0_we1(grp_atax_node0_Pipeline_label_110_fu_212_v116_0_we1),.v116_0_d1(grp_atax_node0_Pipeline_label_110_fu_212_v116_0_d1),.v116_0_q1(v116_0_q1),.v6_1(v6_1_reg_437),.v7_1_out_i(v3_fu_80),.v7_1_out_o(grp_atax_node0_Pipeline_label_110_fu_212_v7_1_out_o),.v7_1_out_o_ap_vld(grp_atax_node0_Pipeline_label_110_fu_212_v7_1_out_o_ap_vld),.grp_fu_445_p_din0(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_din0),.grp_fu_445_p_din1(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_din1),.grp_fu_445_p_opcode(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_opcode),.grp_fu_445_p_dout0(grp_fu_613_p_dout0),.grp_fu_445_p_ce(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_ce),.grp_fu_449_p_din0(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_din0),.grp_fu_449_p_din1(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_din1),.grp_fu_449_p_opcode(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_opcode),.grp_fu_449_p_dout0(grp_fu_617_p_dout0),.grp_fu_449_p_ce(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_ce),.grp_fu_453_p_din0(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_din0),.grp_fu_453_p_din1(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_din1),.grp_fu_453_p_dout0(grp_fu_621_p_dout0),.grp_fu_453_p_ce(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_ce),.grp_fu_457_p_din0(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_din0),.grp_fu_457_p_din1(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_din1),.grp_fu_457_p_dout0(grp_fu_625_p_dout0),.grp_fu_457_p_ce(grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_ce));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U178(.din0(v0_0_q0),.din1(v0_2_q0),.din2(v0_4_q0),.din3(v0_6_q0),.def(v6_fu_288_p9),.sel(trunc_ln27_1_fu_285_p1),.dout(v6_fu_288_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U179(.din0(v0_1_q0),.din1(v0_3_q0),.din2(v0_5_q0),.din3(v0_7_q0),.def(v6_1_fu_322_p9),.sel(trunc_ln27_1_fu_285_p1),.dout(v6_1_fu_322_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_110_fu_212_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_Pipeline_label_110_fu_212_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_110_fu_212_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_110_fu_212_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_1_fu_196_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node0_Pipeline_label_1_fu_196_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_1_fu_196_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_1_fu_196_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_84 <= 7'd0;
    end else if (((tmp_fu_236_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v4_fu_84 <= add_ln27_fu_266_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_432 <= {{v4_1_reg_369[5:1]}};
        trunc_ln27_reg_422 <= trunc_ln27_fu_281_p1;
        v6_1_reg_437 <= v6_1_fu_322_p11;
        v6_reg_427 <= v6_fu_288_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_atax_node0_Pipeline_label_110_fu_212_v7_1_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        v3_fu_80 <= grp_atax_node0_Pipeline_label_110_fu_212_v7_1_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v4_1_reg_369 <= v4_fu_84;
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
    if ((grp_atax_node0_Pipeline_label_1_fu_196_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_110_fu_212_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_236_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_236_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_445_ce = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_445_ce = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_ce;
    end else begin
        grp_fu_445_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_445_p0 = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_445_p0 = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_din0;
    end else begin
        grp_fu_445_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_445_p1 = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_445_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_445_p1 = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_445_p_din1;
    end else begin
        grp_fu_445_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_449_ce = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_449_ce = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_ce;
    end else begin
        grp_fu_449_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_449_p0 = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_449_p0 = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_din0;
    end else begin
        grp_fu_449_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_449_p1 = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_449_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_449_p1 = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_449_p_din1;
    end else begin
        grp_fu_449_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_453_ce = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_453_ce = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_ce;
    end else begin
        grp_fu_453_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_453_p0 = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_453_p0 = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_din0;
    end else begin
        grp_fu_453_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_453_p1 = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_453_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_453_p1 = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_453_p_din1;
    end else begin
        grp_fu_453_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_457_ce = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_457_ce = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_ce;
    end else begin
        grp_fu_457_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_457_p0 = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_457_p0 = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_din0;
    end else begin
        grp_fu_457_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_457_p1 = grp_atax_node0_Pipeline_label_110_fu_212_grp_fu_457_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_457_p1 = grp_atax_node0_Pipeline_label_1_fu_196_grp_fu_457_p_din1;
    end else begin
        grp_fu_457_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_address0 = grp_atax_node0_Pipeline_label_110_fu_212_v113_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_address0 = grp_atax_node0_Pipeline_label_1_fu_196_v113_0_address0;
    end else begin
        v113_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_address1 = grp_atax_node0_Pipeline_label_110_fu_212_v113_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_address1 = grp_atax_node0_Pipeline_label_1_fu_196_v113_0_address1;
    end else begin
        v113_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_ce0 = grp_atax_node0_Pipeline_label_110_fu_212_v113_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_196_v113_0_ce0;
    end else begin
        v113_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_0_ce1 = grp_atax_node0_Pipeline_label_110_fu_212_v113_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_0_ce1 = grp_atax_node0_Pipeline_label_1_fu_196_v113_0_ce1;
    end else begin
        v113_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_address0 = grp_atax_node0_Pipeline_label_110_fu_212_v113_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_address0 = grp_atax_node0_Pipeline_label_1_fu_196_v113_1_address0;
    end else begin
        v113_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_address1 = grp_atax_node0_Pipeline_label_110_fu_212_v113_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_address1 = grp_atax_node0_Pipeline_label_1_fu_196_v113_1_address1;
    end else begin
        v113_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_ce0 = grp_atax_node0_Pipeline_label_110_fu_212_v113_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_196_v113_1_ce0;
    end else begin
        v113_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_1_ce1 = grp_atax_node0_Pipeline_label_110_fu_212_v113_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_1_ce1 = grp_atax_node0_Pipeline_label_1_fu_196_v113_1_ce1;
    end else begin
        v113_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_110_fu_212_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_1_fu_196_v116_0_address0;
    end else begin
        v116_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address1 = grp_atax_node0_Pipeline_label_110_fu_212_v116_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address1 = grp_atax_node0_Pipeline_label_1_fu_196_v116_0_address1;
    end else begin
        v116_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_110_fu_212_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_196_v116_0_ce0;
    end else begin
        v116_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce1 = grp_atax_node0_Pipeline_label_110_fu_212_v116_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce1 = grp_atax_node0_Pipeline_label_1_fu_196_v116_0_ce1;
    end else begin
        v116_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_110_fu_212_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_1_fu_196_v116_0_d0;
    end else begin
        v116_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d1 = grp_atax_node0_Pipeline_label_110_fu_212_v116_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d1 = grp_atax_node0_Pipeline_label_1_fu_196_v116_0_d1;
    end else begin
        v116_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_110_fu_212_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_1_fu_196_v116_0_we0;
    end else begin
        v116_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we1 = grp_atax_node0_Pipeline_label_110_fu_212_v116_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we1 = grp_atax_node0_Pipeline_label_1_fu_196_v116_0_we1;
    end else begin
        v116_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_110_fu_212_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_1_fu_196_v116_1_address0;
    end else begin
        v116_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address1 = grp_atax_node0_Pipeline_label_110_fu_212_v116_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address1 = grp_atax_node0_Pipeline_label_1_fu_196_v116_1_address1;
    end else begin
        v116_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_110_fu_212_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_196_v116_1_ce0;
    end else begin
        v116_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce1 = grp_atax_node0_Pipeline_label_110_fu_212_v116_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce1 = grp_atax_node0_Pipeline_label_1_fu_196_v116_1_ce1;
    end else begin
        v116_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_110_fu_212_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_1_fu_196_v116_1_d0;
    end else begin
        v116_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d1 = grp_atax_node0_Pipeline_label_110_fu_212_v116_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d1 = grp_atax_node0_Pipeline_label_1_fu_196_v116_1_d1;
    end else begin
        v116_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_110_fu_212_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_1_fu_196_v116_1_we0;
    end else begin
        v116_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we1 = grp_atax_node0_Pipeline_label_110_fu_212_v116_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we1 = grp_atax_node0_Pipeline_label_1_fu_196_v116_1_we1;
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
            if (((tmp_fu_236_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_node0_Pipeline_label_1_fu_196_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node0_Pipeline_label_110_fu_212_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln27_fu_266_p2 = (v4_fu_84 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign grp_atax_node0_Pipeline_label_110_fu_212_ap_start = grp_atax_node0_Pipeline_label_110_fu_212_ap_start_reg;
assign grp_atax_node0_Pipeline_label_1_fu_196_ap_start = grp_atax_node0_Pipeline_label_1_fu_196_ap_start_reg;
assign grp_fu_613_p_ce = grp_fu_445_ce;
assign grp_fu_613_p_din0 = grp_fu_445_p0;
assign grp_fu_613_p_din1 = grp_fu_445_p1;
assign grp_fu_613_p_opcode = 2'd0;
assign grp_fu_617_p_ce = grp_fu_449_ce;
assign grp_fu_617_p_din0 = grp_fu_449_p0;
assign grp_fu_617_p_din1 = grp_fu_449_p1;
assign grp_fu_617_p_opcode = 2'd0;
assign grp_fu_621_p_ce = grp_fu_453_ce;
assign grp_fu_621_p_din0 = grp_fu_453_p0;
assign grp_fu_621_p_din1 = grp_fu_453_p1;
assign grp_fu_625_p_ce = grp_fu_457_ce;
assign grp_fu_625_p_din0 = grp_fu_457_p0;
assign grp_fu_625_p_din1 = grp_fu_457_p1;
assign lshr_ln_fu_244_p4 = {{v4_fu_84[5:3]}};
assign tmp_fu_236_p3 = v4_fu_84[32'd6];
assign trunc_ln27_1_fu_285_p1 = v4_1_reg_369[2:0];
assign trunc_ln27_fu_281_p1 = v4_1_reg_369[5:0];
assign v0_0_address0 = zext_ln26_fu_254_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_fu_254_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln26_fu_254_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln26_fu_254_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = zext_ln26_fu_254_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = zext_ln26_fu_254_p1;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = zext_ln26_fu_254_p1;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = zext_ln26_fu_254_p1;
assign v0_7_ce0 = v0_7_ce0_local;
assign v6_1_fu_322_p9 = 'bx;
assign v6_fu_288_p9 = 'bx;
assign zext_ln26_fu_254_p1 = lshr_ln_fu_244_p4;
endmodule 