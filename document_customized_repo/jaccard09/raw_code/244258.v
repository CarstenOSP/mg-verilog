module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_address1,v116_6_ce1,v116_6_q1,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_address1,v116_7_ce1,v116_7_q1,grp_fu_486_p_din0,grp_fu_486_p_din1,grp_fu_486_p_opcode,grp_fu_486_p_dout0,grp_fu_486_p_ce,grp_fu_490_p_din0,grp_fu_490_p_din1,grp_fu_490_p_opcode,grp_fu_490_p_dout0,grp_fu_490_p_ce,grp_fu_494_p_din0,grp_fu_494_p_din1,grp_fu_494_p_dout0,grp_fu_494_p_ce,grp_fu_498_p_din0,grp_fu_498_p_din1,grp_fu_498_p_dout0,grp_fu_498_p_ce); 
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
output  [4:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [4:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
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
input  [31:0] v116_4_q0;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
input  [31:0] v116_5_q0;
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
output  [31:0] grp_fu_486_p_din0;
output  [31:0] grp_fu_486_p_din1;
output  [1:0] grp_fu_486_p_opcode;
input  [31:0] grp_fu_486_p_dout0;
output   grp_fu_486_p_ce;
output  [31:0] grp_fu_490_p_din0;
output  [31:0] grp_fu_490_p_din1;
output  [1:0] grp_fu_490_p_opcode;
input  [31:0] grp_fu_490_p_dout0;
output   grp_fu_490_p_ce;
output  [31:0] grp_fu_494_p_din0;
output  [31:0] grp_fu_494_p_din1;
input  [31:0] grp_fu_494_p_dout0;
output   grp_fu_494_p_ce;
output  [31:0] grp_fu_498_p_din0;
output  [31:0] grp_fu_498_p_din1;
input  [31:0] grp_fu_498_p_dout0;
output   grp_fu_498_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] v113_address0;
reg v113_ce0;
reg[11:0] v113_address1;
reg v113_ce1;
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
reg[2:0] v116_5_address0;
reg v116_5_ce0;
reg v116_5_we0;
reg[31:0] v116_5_d0;
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
wire   [5:0] trunc_ln27_fu_174_p1;
reg   [5:0] trunc_ln27_reg_243;
wire    ap_CS_fsm_state2;
wire   [4:0] lshr_ln_fu_178_p4;
reg   [4:0] lshr_ln_reg_248;
reg   [31:0] v0_0_load_reg_267;
wire    ap_CS_fsm_state3;
reg   [31:0] v0_1_load_reg_272;
wire   [11:0] tmp_s_fu_213_p3;
reg   [11:0] tmp_s_reg_280;
wire    ap_CS_fsm_state5;
wire    grp_atax_node0_Pipeline_label_1_fu_104_ap_start;
wire    grp_atax_node0_Pipeline_label_1_fu_104_ap_done;
wire    grp_atax_node0_Pipeline_label_1_fu_104_ap_idle;
wire    grp_atax_node0_Pipeline_label_1_fu_104_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_104_v113_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_104_v113_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v113_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_7_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_7_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_7_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_7_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_7_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_7_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_6_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_6_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_6_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_6_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_6_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_6_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_5_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_5_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_5_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_5_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_4_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_4_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_4_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_4_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_3_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_3_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_3_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_3_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_2_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_2_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_2_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_2_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_1_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v116_0_d0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_v7_out;
wire    grp_atax_node0_Pipeline_label_1_fu_104_v7_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_ce;
wire    grp_atax_node0_Pipeline_label_110_fu_131_ap_start;
wire    grp_atax_node0_Pipeline_label_110_fu_131_ap_done;
wire    grp_atax_node0_Pipeline_label_110_fu_131_ap_idle;
wire    grp_atax_node0_Pipeline_label_110_fu_131_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_110_fu_131_v113_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_110_fu_131_v113_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v113_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_7_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_7_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_7_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_7_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_7_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_7_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_6_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_6_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_6_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_6_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_6_address1;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_6_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_5_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_5_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_5_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_5_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_4_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_4_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_4_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_4_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_3_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_3_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_3_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_3_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_2_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_2_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_2_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_2_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_1_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v116_0_d0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_v7_1_out_o;
wire    grp_atax_node0_Pipeline_label_110_fu_131_v7_1_out_o_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_opcode;
wire    grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_opcode;
wire    grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_din1;
wire    grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_din1;
wire    grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_ce;
reg    grp_atax_node0_Pipeline_label_1_fu_104_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_node0_Pipeline_label_110_fu_131_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [31:0] v3_fu_66;
wire   [63:0] zext_ln26_fu_188_p1;
wire   [0:0] tmp_fu_166_p3;
reg   [6:0] v4_fu_70;
wire   [6:0] add_ln27_fu_194_p2;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg   [31:0] grp_fu_285_p0;
reg   [31:0] grp_fu_285_p1;
reg    grp_fu_285_ce;
reg   [31:0] grp_fu_289_p0;
reg   [31:0] grp_fu_289_p1;
reg    grp_fu_289_ce;
reg   [31:0] grp_fu_293_p0;
reg   [31:0] grp_fu_293_p1;
reg    grp_fu_293_ce;
reg   [31:0] grp_fu_297_p0;
reg   [31:0] grp_fu_297_p1;
reg    grp_fu_297_ce;
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
#0 grp_atax_node0_Pipeline_label_1_fu_104_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_110_fu_131_ap_start_reg = 1'b0;
#0 v4_fu_70 = 7'd0;
end
atax_atax_node0_Pipeline_label_1 grp_atax_node0_Pipeline_label_1_fu_104(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_1_fu_104_ap_start),.ap_done(grp_atax_node0_Pipeline_label_1_fu_104_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_1_fu_104_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_1_fu_104_ap_ready),.v3(v3_fu_66),.v4(trunc_ln27_reg_243),.v113_address0(grp_atax_node0_Pipeline_label_1_fu_104_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_1_fu_104_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_1_fu_104_v113_ce1),.v113_q1(v113_q1),.v116_7_address0(grp_atax_node0_Pipeline_label_1_fu_104_v116_7_address0),.v116_7_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v116_7_ce0),.v116_7_we0(grp_atax_node0_Pipeline_label_1_fu_104_v116_7_we0),.v116_7_d0(grp_atax_node0_Pipeline_label_1_fu_104_v116_7_d0),.v116_7_address1(grp_atax_node0_Pipeline_label_1_fu_104_v116_7_address1),.v116_7_ce1(grp_atax_node0_Pipeline_label_1_fu_104_v116_7_ce1),.v116_7_q1(v116_7_q1),.v116_6_address0(grp_atax_node0_Pipeline_label_1_fu_104_v116_6_address0),.v116_6_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v116_6_ce0),.v116_6_we0(grp_atax_node0_Pipeline_label_1_fu_104_v116_6_we0),.v116_6_d0(grp_atax_node0_Pipeline_label_1_fu_104_v116_6_d0),.v116_6_address1(grp_atax_node0_Pipeline_label_1_fu_104_v116_6_address1),.v116_6_ce1(grp_atax_node0_Pipeline_label_1_fu_104_v116_6_ce1),.v116_6_q1(v116_6_q1),.v116_5_address0(grp_atax_node0_Pipeline_label_1_fu_104_v116_5_address0),.v116_5_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v116_5_ce0),.v116_5_we0(grp_atax_node0_Pipeline_label_1_fu_104_v116_5_we0),.v116_5_d0(grp_atax_node0_Pipeline_label_1_fu_104_v116_5_d0),.v116_5_q0(v116_5_q0),.v116_4_address0(grp_atax_node0_Pipeline_label_1_fu_104_v116_4_address0),.v116_4_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v116_4_ce0),.v116_4_we0(grp_atax_node0_Pipeline_label_1_fu_104_v116_4_we0),.v116_4_d0(grp_atax_node0_Pipeline_label_1_fu_104_v116_4_d0),.v116_4_q0(v116_4_q0),.v116_3_address0(grp_atax_node0_Pipeline_label_1_fu_104_v116_3_address0),.v116_3_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v116_3_ce0),.v116_3_we0(grp_atax_node0_Pipeline_label_1_fu_104_v116_3_we0),.v116_3_d0(grp_atax_node0_Pipeline_label_1_fu_104_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_2_address0(grp_atax_node0_Pipeline_label_1_fu_104_v116_2_address0),.v116_2_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v116_2_ce0),.v116_2_we0(grp_atax_node0_Pipeline_label_1_fu_104_v116_2_we0),.v116_2_d0(grp_atax_node0_Pipeline_label_1_fu_104_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_1_address0(grp_atax_node0_Pipeline_label_1_fu_104_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_1_fu_104_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_1_fu_104_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_0_address0(grp_atax_node0_Pipeline_label_1_fu_104_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_1_fu_104_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_1_fu_104_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_1_fu_104_v116_0_d0),.v116_0_q0(v116_0_q0),.v6(v0_0_load_reg_267),.v7_out(grp_atax_node0_Pipeline_label_1_fu_104_v7_out),.v7_out_ap_vld(grp_atax_node0_Pipeline_label_1_fu_104_v7_out_ap_vld),.grp_fu_285_p_din0(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_din0),.grp_fu_285_p_din1(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_din1),.grp_fu_285_p_opcode(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_opcode),.grp_fu_285_p_dout0(grp_fu_486_p_dout0),.grp_fu_285_p_ce(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_ce),.grp_fu_289_p_din0(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_din0),.grp_fu_289_p_din1(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_din1),.grp_fu_289_p_opcode(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_opcode),.grp_fu_289_p_dout0(grp_fu_490_p_dout0),.grp_fu_289_p_ce(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_ce),.grp_fu_293_p_din0(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_din0),.grp_fu_293_p_din1(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_din1),.grp_fu_293_p_dout0(grp_fu_494_p_dout0),.grp_fu_293_p_ce(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_ce),.grp_fu_297_p_din0(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_din0),.grp_fu_297_p_din1(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_din1),.grp_fu_297_p_dout0(grp_fu_498_p_dout0),.grp_fu_297_p_ce(grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_ce));
atax_atax_node0_Pipeline_label_110 grp_atax_node0_Pipeline_label_110_fu_131(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_110_fu_131_ap_start),.ap_done(grp_atax_node0_Pipeline_label_110_fu_131_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_110_fu_131_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_110_fu_131_ap_ready),.v7_reload(grp_atax_node0_Pipeline_label_1_fu_104_v7_out),.zext_ln33_1(tmp_s_reg_280),.v113_address0(grp_atax_node0_Pipeline_label_110_fu_131_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_110_fu_131_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_110_fu_131_v113_ce1),.v113_q1(v113_q1),.v116_7_address0(grp_atax_node0_Pipeline_label_110_fu_131_v116_7_address0),.v116_7_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v116_7_ce0),.v116_7_we0(grp_atax_node0_Pipeline_label_110_fu_131_v116_7_we0),.v116_7_d0(grp_atax_node0_Pipeline_label_110_fu_131_v116_7_d0),.v116_7_address1(grp_atax_node0_Pipeline_label_110_fu_131_v116_7_address1),.v116_7_ce1(grp_atax_node0_Pipeline_label_110_fu_131_v116_7_ce1),.v116_7_q1(v116_7_q1),.v116_6_address0(grp_atax_node0_Pipeline_label_110_fu_131_v116_6_address0),.v116_6_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v116_6_ce0),.v116_6_we0(grp_atax_node0_Pipeline_label_110_fu_131_v116_6_we0),.v116_6_d0(grp_atax_node0_Pipeline_label_110_fu_131_v116_6_d0),.v116_6_address1(grp_atax_node0_Pipeline_label_110_fu_131_v116_6_address1),.v116_6_ce1(grp_atax_node0_Pipeline_label_110_fu_131_v116_6_ce1),.v116_6_q1(v116_6_q1),.v116_5_address0(grp_atax_node0_Pipeline_label_110_fu_131_v116_5_address0),.v116_5_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v116_5_ce0),.v116_5_we0(grp_atax_node0_Pipeline_label_110_fu_131_v116_5_we0),.v116_5_d0(grp_atax_node0_Pipeline_label_110_fu_131_v116_5_d0),.v116_5_q0(v116_5_q0),.v116_4_address0(grp_atax_node0_Pipeline_label_110_fu_131_v116_4_address0),.v116_4_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v116_4_ce0),.v116_4_we0(grp_atax_node0_Pipeline_label_110_fu_131_v116_4_we0),.v116_4_d0(grp_atax_node0_Pipeline_label_110_fu_131_v116_4_d0),.v116_4_q0(v116_4_q0),.v116_3_address0(grp_atax_node0_Pipeline_label_110_fu_131_v116_3_address0),.v116_3_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v116_3_ce0),.v116_3_we0(grp_atax_node0_Pipeline_label_110_fu_131_v116_3_we0),.v116_3_d0(grp_atax_node0_Pipeline_label_110_fu_131_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_2_address0(grp_atax_node0_Pipeline_label_110_fu_131_v116_2_address0),.v116_2_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v116_2_ce0),.v116_2_we0(grp_atax_node0_Pipeline_label_110_fu_131_v116_2_we0),.v116_2_d0(grp_atax_node0_Pipeline_label_110_fu_131_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_1_address0(grp_atax_node0_Pipeline_label_110_fu_131_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_110_fu_131_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_110_fu_131_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_0_address0(grp_atax_node0_Pipeline_label_110_fu_131_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_110_fu_131_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_110_fu_131_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_110_fu_131_v116_0_d0),.v116_0_q0(v116_0_q0),.v6_1(v0_1_load_reg_272),.lshr_ln(lshr_ln_reg_248),.v7_1_out_i(v3_fu_66),.v7_1_out_o(grp_atax_node0_Pipeline_label_110_fu_131_v7_1_out_o),.v7_1_out_o_ap_vld(grp_atax_node0_Pipeline_label_110_fu_131_v7_1_out_o_ap_vld),.grp_fu_285_p_din0(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_din0),.grp_fu_285_p_din1(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_din1),.grp_fu_285_p_opcode(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_opcode),.grp_fu_285_p_dout0(grp_fu_486_p_dout0),.grp_fu_285_p_ce(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_ce),.grp_fu_289_p_din0(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_din0),.grp_fu_289_p_din1(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_din1),.grp_fu_289_p_opcode(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_opcode),.grp_fu_289_p_dout0(grp_fu_490_p_dout0),.grp_fu_289_p_ce(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_ce),.grp_fu_293_p_din0(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_din0),.grp_fu_293_p_din1(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_din1),.grp_fu_293_p_dout0(grp_fu_494_p_dout0),.grp_fu_293_p_ce(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_ce),.grp_fu_297_p_din0(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_din0),.grp_fu_297_p_din1(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_din1),.grp_fu_297_p_dout0(grp_fu_498_p_dout0),.grp_fu_297_p_ce(grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_110_fu_131_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_Pipeline_label_110_fu_131_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_110_fu_131_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_110_fu_131_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_1_fu_104_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node0_Pipeline_label_1_fu_104_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_1_fu_104_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_1_fu_104_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_70 <= 7'd0;
    end else if (((tmp_fu_166_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v4_fu_70 <= add_ln27_fu_194_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        lshr_ln_reg_248 <= {{v4_fu_70[5:1]}};
        trunc_ln27_reg_243 <= trunc_ln27_fu_174_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_s_reg_280[11 : 7] <= tmp_s_fu_213_p3[11 : 7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_0_load_reg_267 <= v0_0_q0;
        v0_1_load_reg_272 <= v0_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_atax_node0_Pipeline_label_110_fu_131_v7_1_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        v3_fu_66 <= grp_atax_node0_Pipeline_label_110_fu_131_v7_1_out_o;
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
    if ((grp_atax_node0_Pipeline_label_1_fu_104_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_110_fu_131_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_fu_166_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_166_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_285_ce = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_285_ce = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_ce;
    end else begin
        grp_fu_285_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_285_p0 = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_285_p0 = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_din0;
    end else begin
        grp_fu_285_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_285_p1 = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_285_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_285_p1 = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_285_p_din1;
    end else begin
        grp_fu_285_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_289_ce = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_289_ce = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_ce;
    end else begin
        grp_fu_289_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_289_p0 = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_289_p0 = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_din0;
    end else begin
        grp_fu_289_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_289_p1 = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_289_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_289_p1 = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_289_p_din1;
    end else begin
        grp_fu_289_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_293_ce = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_293_ce = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_ce;
    end else begin
        grp_fu_293_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_293_p0 = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_293_p0 = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_din0;
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_293_p1 = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_293_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_293_p1 = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_293_p_din1;
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_297_ce = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_297_ce = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_ce;
    end else begin
        grp_fu_297_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_297_p0 = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_297_p0 = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_din0;
    end else begin
        grp_fu_297_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_297_p1 = grp_atax_node0_Pipeline_label_110_fu_131_grp_fu_297_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_297_p1 = grp_atax_node0_Pipeline_label_1_fu_104_grp_fu_297_p_din1;
    end else begin
        grp_fu_297_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v113_address0;
    end else begin
        v113_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_110_fu_131_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_1_fu_104_v113_address1;
    end else begin
        v113_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v113_ce0;
    end else begin
        v113_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_110_fu_131_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_1_fu_104_v113_ce1;
    end else begin
        v113_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_0_address0;
    end else begin
        v116_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_0_ce0;
    end else begin
        v116_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_0_d0;
    end else begin
        v116_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_0_we0;
    end else begin
        v116_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_1_address0;
    end else begin
        v116_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_1_ce0;
    end else begin
        v116_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_1_d0;
    end else begin
        v116_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_1_we0;
    end else begin
        v116_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_2_address0;
    end else begin
        v116_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_2_ce0;
    end else begin
        v116_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_d0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_d0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_2_d0;
    end else begin
        v116_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_we0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_we0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_2_we0;
    end else begin
        v116_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_3_address0;
    end else begin
        v116_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_3_ce0;
    end else begin
        v116_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_d0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_d0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_3_d0;
    end else begin
        v116_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_we0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_we0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_3_we0;
    end else begin
        v116_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_4_address0;
    end else begin
        v116_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_4_ce0;
    end else begin
        v116_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_d0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_d0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_4_d0;
    end else begin
        v116_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_we0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_we0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_4_we0;
    end else begin
        v116_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_5_address0;
    end else begin
        v116_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_5_ce0;
    end else begin
        v116_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_d0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_d0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_5_d0;
    end else begin
        v116_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_we0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_we0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_5_we0;
    end else begin
        v116_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_6_address0;
    end else begin
        v116_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_address1 = grp_atax_node0_Pipeline_label_110_fu_131_v116_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_address1 = grp_atax_node0_Pipeline_label_1_fu_104_v116_6_address1;
    end else begin
        v116_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_6_ce0;
    end else begin
        v116_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_ce1 = grp_atax_node0_Pipeline_label_110_fu_131_v116_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_ce1 = grp_atax_node0_Pipeline_label_1_fu_104_v116_6_ce1;
    end else begin
        v116_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_d0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_d0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_6_d0;
    end else begin
        v116_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_we0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_we0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_6_we0;
    end else begin
        v116_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_address0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_address0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_7_address0;
    end else begin
        v116_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_address1 = grp_atax_node0_Pipeline_label_110_fu_131_v116_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_address1 = grp_atax_node0_Pipeline_label_1_fu_104_v116_7_address1;
    end else begin
        v116_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_ce0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_ce0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_7_ce0;
    end else begin
        v116_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_ce1 = grp_atax_node0_Pipeline_label_110_fu_131_v116_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_ce1 = grp_atax_node0_Pipeline_label_1_fu_104_v116_7_ce1;
    end else begin
        v116_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_d0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_d0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_7_d0;
    end else begin
        v116_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_we0 = grp_atax_node0_Pipeline_label_110_fu_131_v116_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_we0 = grp_atax_node0_Pipeline_label_1_fu_104_v116_7_we0;
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
            if (((tmp_fu_166_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_node0_Pipeline_label_1_fu_104_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node0_Pipeline_label_110_fu_131_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln27_fu_194_p2 = (v4_fu_70 + 7'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign grp_atax_node0_Pipeline_label_110_fu_131_ap_start = grp_atax_node0_Pipeline_label_110_fu_131_ap_start_reg;
assign grp_atax_node0_Pipeline_label_1_fu_104_ap_start = grp_atax_node0_Pipeline_label_1_fu_104_ap_start_reg;
assign grp_fu_486_p_ce = grp_fu_285_ce;
assign grp_fu_486_p_din0 = grp_fu_285_p0;
assign grp_fu_486_p_din1 = grp_fu_285_p1;
assign grp_fu_486_p_opcode = 2'd0;
assign grp_fu_490_p_ce = grp_fu_289_ce;
assign grp_fu_490_p_din0 = grp_fu_289_p0;
assign grp_fu_490_p_din1 = grp_fu_289_p1;
assign grp_fu_490_p_opcode = 2'd0;
assign grp_fu_494_p_ce = grp_fu_293_ce;
assign grp_fu_494_p_din0 = grp_fu_293_p0;
assign grp_fu_494_p_din1 = grp_fu_293_p1;
assign grp_fu_498_p_ce = grp_fu_297_ce;
assign grp_fu_498_p_din0 = grp_fu_297_p0;
assign grp_fu_498_p_din1 = grp_fu_297_p1;
assign lshr_ln_fu_178_p4 = {{v4_fu_70[5:1]}};
assign tmp_fu_166_p3 = v4_fu_70[32'd6];
assign tmp_s_fu_213_p3 = {{lshr_ln_reg_248}, {7'd64}};
assign trunc_ln27_fu_174_p1 = v4_fu_70[5:0];
assign v0_0_address0 = zext_ln26_fu_188_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_fu_188_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign zext_ln26_fu_188_p1 = lshr_ln_fu_178_p4;
always @ (posedge ap_clk) begin
    tmp_s_reg_280[6:0] <= 7'b1000000;
end
endmodule 