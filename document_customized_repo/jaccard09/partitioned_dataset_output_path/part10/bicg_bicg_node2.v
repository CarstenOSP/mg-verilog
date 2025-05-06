
module bicg_bicg_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v140_address0,v140_ce0,v140_q0,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1);  
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
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_190;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state8;
reg   [6:0] v67_1_reg_374;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln111_fu_230_p1;
reg   [5:0] trunc_ln111_reg_393;
wire    ap_CS_fsm_state3;
wire   [31:0] v69_fu_234_p1;
reg   [31:0] v69_reg_398;
wire   [0:0] cmp10_fu_239_p2;
reg   [0:0] cmp10_reg_403;
wire   [4:0] tmp_24_fu_245_p4;
reg   [4:0] tmp_24_reg_408;
reg   [3:0] tmp_s_reg_419;
wire   [11:0] tmp_25_fu_280_p3;
reg   [11:0] tmp_25_reg_431;
wire    ap_CS_fsm_state5;
wire   [31:0] v69_1_fu_288_p1;
reg   [31:0] v69_1_reg_436;
wire    ap_CS_fsm_state6;
wire   [31:0] v69_2_fu_309_p1;
reg   [31:0] v69_2_reg_449;
wire    ap_CS_fsm_state7;
wire   [11:0] tmp_28_fu_330_p3;
reg   [11:0] tmp_28_reg_462;
wire    ap_CS_fsm_state9;
wire   [31:0] v69_3_fu_338_p1;
reg   [31:0] v69_3_reg_467;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_ap_start;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_ap_done;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_ap_idle;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_ap_ready;
wire   [11:0] grp_bicg_node2_Pipeline_label_4_fu_131_v138_address0;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v138_ce0;
wire   [11:0] grp_bicg_node2_Pipeline_label_4_fu_131_v138_address1;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v138_ce1;
wire   [4:0] grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_address0;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_ce0;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_address1;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_ce1;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_d1;
wire   [4:0] grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_address0;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_ce0;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_address1;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_ce1;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_d1;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_v70_out;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_v70_out_ap_vld;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_opcode;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_opcode;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_din1;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_din1;
wire    grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_ce;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_ap_start;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_ap_done;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_ap_idle;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_ap_ready;
wire   [11:0] grp_bicg_node2_Pipeline_label_43_fu_146_v138_address0;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v138_ce0;
wire   [11:0] grp_bicg_node2_Pipeline_label_43_fu_146_v138_address1;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v138_ce1;
wire   [4:0] grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_address0;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_ce0;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_address1;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_ce1;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_d1;
wire   [4:0] grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_address0;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_ce0;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_address1;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_ce1;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_d1;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_v70_1_out;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_v70_1_out_ap_vld;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_opcode;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_opcode;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_din1;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_din1;
wire    grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_ce;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_ap_start;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_ap_done;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_ap_idle;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_ap_ready;
wire   [11:0] grp_bicg_node2_Pipeline_label_44_fu_161_v138_address0;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v138_ce0;
wire   [11:0] grp_bicg_node2_Pipeline_label_44_fu_161_v138_address1;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v138_ce1;
wire   [4:0] grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_address0;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_ce0;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_address1;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_ce1;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_d1;
wire   [4:0] grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_address0;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_ce0;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_address1;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_ce1;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_d1;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_v70_2_out;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_v70_2_out_ap_vld;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_opcode;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_opcode;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_din1;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_din1;
wire    grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_ce;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_ap_start;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_ap_done;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_ap_idle;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_ap_ready;
wire   [11:0] grp_bicg_node2_Pipeline_label_45_fu_175_v138_address0;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v138_ce0;
wire   [11:0] grp_bicg_node2_Pipeline_label_45_fu_175_v138_address1;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v138_ce1;
wire   [4:0] grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_address0;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_ce0;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_address1;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_ce1;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_d1;
wire   [4:0] grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_address0;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_ce0;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_we0;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_d0;
wire   [4:0] grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_address1;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_ce1;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_we1;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_d1;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_v70_3_out_o;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_v70_3_out_o_ap_vld;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_opcode;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_din1;
wire   [1:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_opcode;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_din1;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_ce;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_din0;
wire   [31:0] grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_din1;
wire    grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_ce;
reg    grp_bicg_node2_Pipeline_label_4_fu_131_ap_start_reg;
reg    grp_bicg_node2_Pipeline_label_43_fu_146_ap_start_reg;
reg    grp_bicg_node2_Pipeline_label_44_fu_161_ap_start_reg;
reg    grp_bicg_node2_Pipeline_label_45_fu_175_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [31:0] v66_fu_74;
wire   [63:0] zext_ln111_fu_210_p1;
wire   [0:0] tmp_fu_202_p3;
wire   [63:0] zext_ln110_fu_262_p1;
wire   [63:0] zext_ln110_1_fu_300_p1;
wire   [63:0] zext_ln110_2_fu_321_p1;
reg   [6:0] v67_fu_78;
wire   [6:0] add_ln111_fu_215_p2;
reg    v140_ce0_local;
reg   [5:0] v140_address0_local;
wire   [5:0] or_ln_fu_254_p3;
wire   [5:0] or_ln111_1_fu_293_p3;
wire   [5:0] or_ln111_2_fu_314_p3;
wire   [31:0] grp_fu_472_p2;
reg   [31:0] grp_fu_472_p0;
reg   [31:0] grp_fu_472_p1;
reg    grp_fu_472_ce;
wire   [31:0] grp_fu_476_p2;
reg   [31:0] grp_fu_476_p0;
reg   [31:0] grp_fu_476_p1;
reg    grp_fu_476_ce;
wire   [31:0] grp_fu_480_p2;
reg   [31:0] grp_fu_480_p0;
reg   [31:0] grp_fu_480_p1;
reg    grp_fu_480_ce;
wire   [31:0] grp_fu_484_p2;
reg   [31:0] grp_fu_484_p0;
reg   [31:0] grp_fu_484_p1;
reg    grp_fu_484_ce;
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
#0 grp_bicg_node2_Pipeline_label_4_fu_131_ap_start_reg = 1'b0;
#0 grp_bicg_node2_Pipeline_label_43_fu_146_ap_start_reg = 1'b0;
#0 grp_bicg_node2_Pipeline_label_44_fu_161_ap_start_reg = 1'b0;
#0 grp_bicg_node2_Pipeline_label_45_fu_175_ap_start_reg = 1'b0;
#0 v67_fu_78 = 7'd0;
end
bicg_bicg_node2_Pipeline_label_4 grp_bicg_node2_Pipeline_label_4_fu_131(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_Pipeline_label_4_fu_131_ap_start),.ap_done(grp_bicg_node2_Pipeline_label_4_fu_131_ap_done),.ap_idle(grp_bicg_node2_Pipeline_label_4_fu_131_ap_idle),.ap_ready(grp_bicg_node2_Pipeline_label_4_fu_131_ap_ready),.v66(v66_fu_74),.v67(trunc_ln111_reg_393),.v138_address0(grp_bicg_node2_Pipeline_label_4_fu_131_v138_address0),.v138_ce0(grp_bicg_node2_Pipeline_label_4_fu_131_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_Pipeline_label_4_fu_131_v138_address1),.v138_ce1(grp_bicg_node2_Pipeline_label_4_fu_131_v138_ce1),.v138_q1(v138_q1),.v65_1_address0(grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_address0),.v65_1_ce0(grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_ce0),.v65_1_we0(grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_we0),.v65_1_d0(grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_d0),.v65_1_q0(v65_1_q0),.v65_1_address1(grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_address1),.v65_1_ce1(grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_ce1),.v65_1_we1(grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_we1),.v65_1_d1(grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_d1),.v65_1_q1(v65_1_q1),.v65_0_address0(grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_address0),.v65_0_ce0(grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_ce0),.v65_0_we0(grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_we0),.v65_0_d0(grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_d0),.v65_0_q0(v65_0_q0),.v65_0_address1(grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_address1),.v65_0_ce1(grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_ce1),.v65_0_we1(grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_we1),.v65_0_d1(grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_d1),.v65_0_q1(v65_0_q1),.v69(v69_reg_398),.cmp10(cmp10_reg_403),.v70_out(grp_bicg_node2_Pipeline_label_4_fu_131_v70_out),.v70_out_ap_vld(grp_bicg_node2_Pipeline_label_4_fu_131_v70_out_ap_vld),.grp_fu_472_p_din0(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_din0),.grp_fu_472_p_din1(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_din1),.grp_fu_472_p_opcode(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_opcode),.grp_fu_472_p_dout0(grp_fu_472_p2),.grp_fu_472_p_ce(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_ce),.grp_fu_476_p_din0(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_din1),.grp_fu_476_p_opcode(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_opcode),.grp_fu_476_p_dout0(grp_fu_476_p2),.grp_fu_476_p_ce(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_ce),.grp_fu_480_p_din0(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_din0),.grp_fu_480_p_din1(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_din1),.grp_fu_480_p_dout0(grp_fu_480_p2),.grp_fu_480_p_ce(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_ce),.grp_fu_484_p_din0(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_din0),.grp_fu_484_p_din1(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_din1),.grp_fu_484_p_dout0(grp_fu_484_p2),.grp_fu_484_p_ce(grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_ce));
bicg_bicg_node2_Pipeline_label_43 grp_bicg_node2_Pipeline_label_43_fu_146(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_Pipeline_label_43_fu_146_ap_start),.ap_done(grp_bicg_node2_Pipeline_label_43_fu_146_ap_done),.ap_idle(grp_bicg_node2_Pipeline_label_43_fu_146_ap_idle),.ap_ready(grp_bicg_node2_Pipeline_label_43_fu_146_ap_ready),.v70_reload(grp_bicg_node2_Pipeline_label_4_fu_131_v70_out),.zext_ln119_1(tmp_25_reg_431),.v138_address0(grp_bicg_node2_Pipeline_label_43_fu_146_v138_address0),.v138_ce0(grp_bicg_node2_Pipeline_label_43_fu_146_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_Pipeline_label_43_fu_146_v138_address1),.v138_ce1(grp_bicg_node2_Pipeline_label_43_fu_146_v138_ce1),.v138_q1(v138_q1),.v65_1_address0(grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_address0),.v65_1_ce0(grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_ce0),.v65_1_we0(grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_we0),.v65_1_d0(grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_d0),.v65_1_q0(v65_1_q0),.v65_1_address1(grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_address1),.v65_1_ce1(grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_ce1),.v65_1_we1(grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_we1),.v65_1_d1(grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_d1),.v65_1_q1(v65_1_q1),.v65_0_address0(grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_address0),.v65_0_ce0(grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_ce0),.v65_0_we0(grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_we0),.v65_0_d0(grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_d0),.v65_0_q0(v65_0_q0),.v65_0_address1(grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_address1),.v65_0_ce1(grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_ce1),.v65_0_we1(grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_we1),.v65_0_d1(grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_d1),.v65_0_q1(v65_0_q1),.v69_1(v69_1_reg_436),.tmp_24(tmp_24_reg_408),.v70_1_out(grp_bicg_node2_Pipeline_label_43_fu_146_v70_1_out),.v70_1_out_ap_vld(grp_bicg_node2_Pipeline_label_43_fu_146_v70_1_out_ap_vld),.grp_fu_472_p_din0(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_din0),.grp_fu_472_p_din1(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_din1),.grp_fu_472_p_opcode(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_opcode),.grp_fu_472_p_dout0(grp_fu_472_p2),.grp_fu_472_p_ce(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_ce),.grp_fu_476_p_din0(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_din1),.grp_fu_476_p_opcode(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_opcode),.grp_fu_476_p_dout0(grp_fu_476_p2),.grp_fu_476_p_ce(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_ce),.grp_fu_480_p_din0(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_din0),.grp_fu_480_p_din1(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_din1),.grp_fu_480_p_dout0(grp_fu_480_p2),.grp_fu_480_p_ce(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_ce),.grp_fu_484_p_din0(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_din0),.grp_fu_484_p_din1(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_din1),.grp_fu_484_p_dout0(grp_fu_484_p2),.grp_fu_484_p_ce(grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_ce));
bicg_bicg_node2_Pipeline_label_44 grp_bicg_node2_Pipeline_label_44_fu_161(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_Pipeline_label_44_fu_161_ap_start),.ap_done(grp_bicg_node2_Pipeline_label_44_fu_161_ap_done),.ap_idle(grp_bicg_node2_Pipeline_label_44_fu_161_ap_idle),.ap_ready(grp_bicg_node2_Pipeline_label_44_fu_161_ap_ready),.v70_1_reload(grp_bicg_node2_Pipeline_label_43_fu_146_v70_1_out),.tmp_48(tmp_s_reg_419),.v138_address0(grp_bicg_node2_Pipeline_label_44_fu_161_v138_address0),.v138_ce0(grp_bicg_node2_Pipeline_label_44_fu_161_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_Pipeline_label_44_fu_161_v138_address1),.v138_ce1(grp_bicg_node2_Pipeline_label_44_fu_161_v138_ce1),.v138_q1(v138_q1),.v65_1_address0(grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_address0),.v65_1_ce0(grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_ce0),.v65_1_we0(grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_we0),.v65_1_d0(grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_d0),.v65_1_q0(v65_1_q0),.v65_1_address1(grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_address1),.v65_1_ce1(grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_ce1),.v65_1_we1(grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_we1),.v65_1_d1(grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_d1),.v65_1_q1(v65_1_q1),.v65_0_address0(grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_address0),.v65_0_ce0(grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_ce0),.v65_0_we0(grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_we0),.v65_0_d0(grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_d0),.v65_0_q0(v65_0_q0),.v65_0_address1(grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_address1),.v65_0_ce1(grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_ce1),.v65_0_we1(grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_we1),.v65_0_d1(grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_d1),.v65_0_q1(v65_0_q1),.v69_2(v69_2_reg_449),.v70_2_out(grp_bicg_node2_Pipeline_label_44_fu_161_v70_2_out),.v70_2_out_ap_vld(grp_bicg_node2_Pipeline_label_44_fu_161_v70_2_out_ap_vld),.grp_fu_472_p_din0(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_din0),.grp_fu_472_p_din1(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_din1),.grp_fu_472_p_opcode(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_opcode),.grp_fu_472_p_dout0(grp_fu_472_p2),.grp_fu_472_p_ce(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_ce),.grp_fu_476_p_din0(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_din1),.grp_fu_476_p_opcode(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_opcode),.grp_fu_476_p_dout0(grp_fu_476_p2),.grp_fu_476_p_ce(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_ce),.grp_fu_480_p_din0(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_din0),.grp_fu_480_p_din1(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_din1),.grp_fu_480_p_dout0(grp_fu_480_p2),.grp_fu_480_p_ce(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_ce),.grp_fu_484_p_din0(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_din0),.grp_fu_484_p_din1(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_din1),.grp_fu_484_p_dout0(grp_fu_484_p2),.grp_fu_484_p_ce(grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_ce));
bicg_bicg_node2_Pipeline_label_45 grp_bicg_node2_Pipeline_label_45_fu_175(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_Pipeline_label_45_fu_175_ap_start),.ap_done(grp_bicg_node2_Pipeline_label_45_fu_175_ap_done),.ap_idle(grp_bicg_node2_Pipeline_label_45_fu_175_ap_idle),.ap_ready(grp_bicg_node2_Pipeline_label_45_fu_175_ap_ready),.v70_2_reload(grp_bicg_node2_Pipeline_label_44_fu_161_v70_2_out),.zext_ln119_3(tmp_28_reg_462),.v138_address0(grp_bicg_node2_Pipeline_label_45_fu_175_v138_address0),.v138_ce0(grp_bicg_node2_Pipeline_label_45_fu_175_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_Pipeline_label_45_fu_175_v138_address1),.v138_ce1(grp_bicg_node2_Pipeline_label_45_fu_175_v138_ce1),.v138_q1(v138_q1),.v65_1_address0(grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_address0),.v65_1_ce0(grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_ce0),.v65_1_we0(grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_we0),.v65_1_d0(grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_d0),.v65_1_q0(v65_1_q0),.v65_1_address1(grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_address1),.v65_1_ce1(grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_ce1),.v65_1_we1(grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_we1),.v65_1_d1(grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_d1),.v65_1_q1(v65_1_q1),.v65_0_address0(grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_address0),.v65_0_ce0(grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_ce0),.v65_0_we0(grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_we0),.v65_0_d0(grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_d0),.v65_0_q0(v65_0_q0),.v65_0_address1(grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_address1),.v65_0_ce1(grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_ce1),.v65_0_we1(grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_we1),.v65_0_d1(grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_d1),.v65_0_q1(v65_0_q1),.v69_3(v69_3_reg_467),.tmp_48(tmp_s_reg_419),.v70_3_out_i(v66_fu_74),.v70_3_out_o(grp_bicg_node2_Pipeline_label_45_fu_175_v70_3_out_o),.v70_3_out_o_ap_vld(grp_bicg_node2_Pipeline_label_45_fu_175_v70_3_out_o_ap_vld),.grp_fu_472_p_din0(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_din0),.grp_fu_472_p_din1(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_din1),.grp_fu_472_p_opcode(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_opcode),.grp_fu_472_p_dout0(grp_fu_472_p2),.grp_fu_472_p_ce(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_ce),.grp_fu_476_p_din0(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_din1),.grp_fu_476_p_opcode(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_opcode),.grp_fu_476_p_dout0(grp_fu_476_p2),.grp_fu_476_p_ce(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_ce),.grp_fu_480_p_din0(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_din0),.grp_fu_480_p_din1(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_din1),.grp_fu_480_p_dout0(grp_fu_480_p2),.grp_fu_480_p_ce(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_ce),.grp_fu_484_p_din0(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_din0),.grp_fu_484_p_din1(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_din1),.grp_fu_484_p_dout0(grp_fu_484_p2),.grp_fu_484_p_ce(grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_ce));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U48(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_472_p0),.din1(grp_fu_472_p1),.ce(grp_fu_472_ce),.dout(grp_fu_472_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_476_p0),.din1(grp_fu_476_p1),.ce(grp_fu_476_ce),.dout(grp_fu_476_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_480_p0),.din1(grp_fu_480_p1),.ce(grp_fu_480_ce),.dout(grp_fu_480_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_484_p0),.din1(grp_fu_484_p1),.ce(grp_fu_484_ce),.dout(grp_fu_484_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_Pipeline_label_43_fu_146_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bicg_node2_Pipeline_label_43_fu_146_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_Pipeline_label_43_fu_146_ap_ready == 1'b1)) begin
            grp_bicg_node2_Pipeline_label_43_fu_146_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_Pipeline_label_44_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_bicg_node2_Pipeline_label_44_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_Pipeline_label_44_fu_161_ap_ready == 1'b1)) begin
            grp_bicg_node2_Pipeline_label_44_fu_161_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_Pipeline_label_45_fu_175_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_bicg_node2_Pipeline_label_45_fu_175_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_Pipeline_label_45_fu_175_ap_ready == 1'b1)) begin
            grp_bicg_node2_Pipeline_label_45_fu_175_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_Pipeline_label_4_fu_131_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_node2_Pipeline_label_4_fu_131_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_Pipeline_label_4_fu_131_ap_ready == 1'b1)) begin
            grp_bicg_node2_Pipeline_label_4_fu_131_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v67_fu_78 <= 7'd0;
    end else if (((tmp_fu_202_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v67_fu_78 <= add_ln111_fu_215_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp10_reg_403 <= cmp10_fu_239_p2;
        tmp_24_reg_408 <= {{v67_1_reg_374[5:1]}};
        tmp_s_reg_419 <= {{v67_1_reg_374[5:2]}};
        trunc_ln111_reg_393 <= trunc_ln111_fu_230_p1;
        v69_reg_398 <= v69_fu_234_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_190 <= v140_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_25_reg_431[11 : 7] <= tmp_25_fu_280_p3[11 : 7];
        v69_1_reg_436 <= v69_1_fu_288_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_28_reg_462[11 : 8] <= tmp_28_fu_330_p3[11 : 8];
        v69_3_reg_467 <= v69_3_fu_338_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bicg_node2_Pipeline_label_45_fu_175_v70_3_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v66_fu_74 <= grp_bicg_node2_Pipeline_label_45_fu_175_v70_3_out_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v67_1_reg_374 <= v67_fu_78;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v69_2_reg_449 <= v69_2_fu_309_p1;
    end
end
always @ (*) begin
    if ((grp_bicg_node2_Pipeline_label_45_fu_175_ap_done == 1'b0)) begin
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
    if ((grp_bicg_node2_Pipeline_label_4_fu_131_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_node2_Pipeline_label_43_fu_146_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_node2_Pipeline_label_44_fu_161_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((tmp_fu_202_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_202_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_472_ce = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_472_ce = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_472_ce = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_472_ce = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_ce;
    end else begin
        grp_fu_472_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_472_p0 = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_472_p0 = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_472_p0 = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_472_p0 = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_din0;
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_472_p1 = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_472_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_472_p1 = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_472_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_472_p1 = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_472_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_472_p1 = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_472_p_din1;
    end else begin
        grp_fu_472_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_476_ce = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_476_ce = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_ce = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_ce = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_ce;
    end else begin
        grp_fu_476_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_476_p0 = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_476_p0 = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_p0 = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_p0 = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_din0;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_476_p1 = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_476_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_476_p1 = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_476_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_p1 = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_476_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_p1 = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_476_p_din1;
    end else begin
        grp_fu_476_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_480_ce = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_480_ce = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_480_ce = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_480_ce = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_ce;
    end else begin
        grp_fu_480_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_480_p0 = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_480_p0 = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_480_p0 = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_480_p0 = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_din0;
    end else begin
        grp_fu_480_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_480_p1 = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_480_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_480_p1 = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_480_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_480_p1 = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_480_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_480_p1 = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_480_p_din1;
    end else begin
        grp_fu_480_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_484_ce = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_484_ce = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_484_ce = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_484_ce = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_ce;
    end else begin
        grp_fu_484_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_484_p0 = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_484_p0 = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_484_p0 = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_484_p0 = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_din0;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_484_p1 = grp_bicg_node2_Pipeline_label_45_fu_175_grp_fu_484_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_484_p1 = grp_bicg_node2_Pipeline_label_44_fu_161_grp_fu_484_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_484_p1 = grp_bicg_node2_Pipeline_label_43_fu_146_grp_fu_484_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_484_p1 = grp_bicg_node2_Pipeline_label_4_fu_131_grp_fu_484_p_din1;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v138_address0 = grp_bicg_node2_Pipeline_label_45_fu_175_v138_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v138_address0 = grp_bicg_node2_Pipeline_label_44_fu_161_v138_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v138_address0 = grp_bicg_node2_Pipeline_label_43_fu_146_v138_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v138_address0 = grp_bicg_node2_Pipeline_label_4_fu_131_v138_address0;
    end else begin
        v138_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v138_address1 = grp_bicg_node2_Pipeline_label_45_fu_175_v138_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v138_address1 = grp_bicg_node2_Pipeline_label_44_fu_161_v138_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v138_address1 = grp_bicg_node2_Pipeline_label_43_fu_146_v138_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v138_address1 = grp_bicg_node2_Pipeline_label_4_fu_131_v138_address1;
    end else begin
        v138_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v138_ce0 = grp_bicg_node2_Pipeline_label_45_fu_175_v138_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v138_ce0 = grp_bicg_node2_Pipeline_label_44_fu_161_v138_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v138_ce0 = grp_bicg_node2_Pipeline_label_43_fu_146_v138_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v138_ce0 = grp_bicg_node2_Pipeline_label_4_fu_131_v138_ce0;
    end else begin
        v138_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v138_ce1 = grp_bicg_node2_Pipeline_label_45_fu_175_v138_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v138_ce1 = grp_bicg_node2_Pipeline_label_44_fu_161_v138_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v138_ce1 = grp_bicg_node2_Pipeline_label_43_fu_146_v138_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v138_ce1 = grp_bicg_node2_Pipeline_label_4_fu_131_v138_ce1;
    end else begin
        v138_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v140_address0_local = zext_ln110_2_fu_321_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v140_address0_local = zext_ln110_1_fu_300_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v140_address0_local = zext_ln110_fu_262_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v140_address0_local = zext_ln111_fu_210_p1;
    end else begin
        v140_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7) | ((grp_bicg_node2_Pipeline_label_43_fu_146_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        v140_ce0_local = 1'b1;
    end else begin
        v140_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_0_address0 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_0_address0 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_address0 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_address0 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_address0;
    end else begin
        v65_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_0_address1 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_0_address1 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_address1 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_address1 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_address1;
    end else begin
        v65_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_0_ce0 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_0_ce0 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_ce0 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_ce0 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_ce0;
    end else begin
        v65_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_0_ce1 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_0_ce1 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_ce1 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_ce1 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_ce1;
    end else begin
        v65_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_0_d0 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_0_d0 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_d0 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_d0 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_d0;
    end else begin
        v65_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_0_d1 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_0_d1 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_d1 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_d1 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_d1;
    end else begin
        v65_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_0_we0 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_0_we0 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_we0 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_we0 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_we0;
    end else begin
        v65_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_0_we1 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_0_we1 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_0_we1 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_0_we1 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_0_we1;
    end else begin
        v65_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_1_address0 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_1_address0 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_address0 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_address0 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_address0;
    end else begin
        v65_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_1_address1 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_1_address1 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_address1 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_address1 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_address1;
    end else begin
        v65_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_1_ce0 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_1_ce0 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_ce0 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_ce0 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_ce0;
    end else begin
        v65_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_1_ce1 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_1_ce1 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_ce1 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_ce1 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_ce1;
    end else begin
        v65_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_1_d0 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_1_d0 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_d0 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_d0 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_d0;
    end else begin
        v65_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_1_d1 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_1_d1 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_d1 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_d1 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_d1;
    end else begin
        v65_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_1_we0 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_1_we0 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_we0 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_we0 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_we0;
    end else begin
        v65_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v65_1_we1 = grp_bicg_node2_Pipeline_label_45_fu_175_v65_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v65_1_we1 = grp_bicg_node2_Pipeline_label_44_fu_161_v65_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v65_1_we1 = grp_bicg_node2_Pipeline_label_43_fu_146_v65_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v65_1_we1 = grp_bicg_node2_Pipeline_label_4_fu_131_v65_1_we1;
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
            if (((tmp_fu_202_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_bicg_node2_Pipeline_label_4_fu_131_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_bicg_node2_Pipeline_label_43_fu_146_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_bicg_node2_Pipeline_label_44_fu_161_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_bicg_node2_Pipeline_label_45_fu_175_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln111_fu_215_p2 = (v67_fu_78 + 7'd4);
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
assign cmp10_fu_239_p2 = ((v67_1_reg_374 == 7'd0) ? 1'b1 : 1'b0);
assign grp_bicg_node2_Pipeline_label_43_fu_146_ap_start = grp_bicg_node2_Pipeline_label_43_fu_146_ap_start_reg;
assign grp_bicg_node2_Pipeline_label_44_fu_161_ap_start = grp_bicg_node2_Pipeline_label_44_fu_161_ap_start_reg;
assign grp_bicg_node2_Pipeline_label_45_fu_175_ap_start = grp_bicg_node2_Pipeline_label_45_fu_175_ap_start_reg;
assign grp_bicg_node2_Pipeline_label_4_fu_131_ap_start = grp_bicg_node2_Pipeline_label_4_fu_131_ap_start_reg;
assign or_ln111_1_fu_293_p3 = {{tmp_s_reg_419}, {2'd2}};
assign or_ln111_2_fu_314_p3 = {{tmp_s_reg_419}, {2'd3}};
assign or_ln_fu_254_p3 = {{tmp_24_fu_245_p4}, {1'd1}};
assign tmp_24_fu_245_p4 = {{v67_1_reg_374[5:1]}};
assign tmp_25_fu_280_p3 = {{tmp_24_reg_408}, {7'd64}};
assign tmp_28_fu_330_p3 = {{tmp_s_reg_419}, {8'd192}};
assign tmp_fu_202_p3 = v67_fu_78[32'd6];
assign trunc_ln111_fu_230_p1 = v67_1_reg_374[5:0];
assign v140_address0 = v140_address0_local;
assign v140_ce0 = v140_ce0_local;
assign v69_1_fu_288_p1 = reg_190;
assign v69_2_fu_309_p1 = v140_q0;
assign v69_3_fu_338_p1 = reg_190;
assign v69_fu_234_p1 = v140_q0;
assign zext_ln110_1_fu_300_p1 = or_ln111_1_fu_293_p3;
assign zext_ln110_2_fu_321_p1 = or_ln111_2_fu_314_p3;
assign zext_ln110_fu_262_p1 = or_ln_fu_254_p3;
assign zext_ln111_fu_210_p1 = v67_fu_78;
always @ (posedge ap_clk) begin
    tmp_25_reg_431[6:0] <= 7'b1000000;
    tmp_28_reg_462[7:0] <= 8'b11000000;
end
endmodule 
