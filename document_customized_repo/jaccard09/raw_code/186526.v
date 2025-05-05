module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce); 
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
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [14:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [14:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [14:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [14:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
input  [31:0] v4;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v224_address0;
reg v224_ce0;
reg[15:0] v224_address1;
reg v224_ce1;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[14:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[14:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[14:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[14:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [7:0] v5_1_reg_183;
wire    ap_CS_fsm_state2;
wire   [15:0] mul_ln38_fu_122_p2;
reg   [15:0] mul_ln38_reg_193;
wire   [0:0] cmp11_fu_139_p2;
reg   [0:0] cmp11_reg_198;
wire    ap_CS_fsm_state3;
reg   [6:0] tmp_reg_203;
wire   [7:0] or_ln_fu_154_p3;
reg   [7:0] or_ln_reg_208;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln38_1_fu_165_p2;
reg   [15:0] mul_ln38_1_reg_213;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [7:0] v5_fu_58;
wire   [7:0] add_ln31_fu_128_p2;
wire   [0:0] icmp_ln31_fu_112_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [7:0] mul_ln38_fu_122_p0;
wire   [8:0] mul_ln38_fu_122_p1;
wire   [7:0] mul_ln38_1_fu_165_p0;
wire   [8:0] mul_ln38_1_fu_165_p1;
reg   [31:0] grp_fu_218_p0;
reg   [31:0] grp_fu_218_p1;
reg    grp_fu_218_ce;
wire   [31:0] grp_fu_222_p2;
reg   [31:0] grp_fu_222_p0;
reg   [31:0] grp_fu_222_p1;
reg    grp_fu_222_ce;
wire   [31:0] grp_fu_226_p2;
reg   [31:0] grp_fu_226_p0;
reg   [31:0] grp_fu_226_p1;
reg    grp_fu_226_ce;
wire   [31:0] grp_fu_230_p2;
reg   [31:0] grp_fu_230_p0;
reg   [31:0] grp_fu_230_p1;
reg    grp_fu_230_ce;
reg   [31:0] grp_fu_234_p0;
reg   [31:0] grp_fu_234_p1;
reg    grp_fu_234_ce;
reg   [31:0] grp_fu_238_p0;
reg   [31:0] grp_fu_238_p1;
reg    grp_fu_238_ce;
reg   [31:0] grp_fu_242_p0;
reg   [31:0] grp_fu_242_p1;
reg    grp_fu_242_ce;
reg    grp_fu_246_ce;
reg    grp_fu_250_ce;
reg    grp_fu_254_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [15:0] mul_ln38_1_fu_165_p00;
wire   [15:0] mul_ln38_fu_122_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start_reg = 1'b0;
#0 v5_fu_58 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_ready),.v4(v4),.cmp11(cmp11_reg_198),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln31(v5_1_reg_183),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_193),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_ce1),.v228_q1(v228_q1),.grp_fu_218_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_din0),.grp_fu_218_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_din1),.grp_fu_218_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_opcode),.grp_fu_218_p_dout0(grp_fu_148_p_dout0),.grp_fu_218_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_ce),.grp_fu_222_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_din0),.grp_fu_222_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_din1),.grp_fu_222_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_opcode),.grp_fu_222_p_dout0(grp_fu_222_p2),.grp_fu_222_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_ce),.grp_fu_226_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_din0),.grp_fu_226_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_din1),.grp_fu_226_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_opcode),.grp_fu_226_p_dout0(grp_fu_226_p2),.grp_fu_226_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_ce),.grp_fu_230_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_din0),.grp_fu_230_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_din1),.grp_fu_230_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_opcode),.grp_fu_230_p_dout0(grp_fu_230_p2),.grp_fu_230_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_ce),.grp_fu_234_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_din0),.grp_fu_234_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_din1),.grp_fu_234_p_dout0(grp_fu_152_p_dout0),.grp_fu_234_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_ce),.grp_fu_238_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_din0),.grp_fu_238_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_din1),.grp_fu_238_p_dout0(grp_fu_128_p_dout0),.grp_fu_238_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_ce),.grp_fu_242_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_din0),.grp_fu_242_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_din1),.grp_fu_242_p_dout0(grp_fu_132_p_dout0),.grp_fu_242_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_ce),.grp_fu_246_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_din0),.grp_fu_246_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_din1),.grp_fu_246_p_dout0(grp_fu_136_p_dout0),.grp_fu_246_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_ce),.grp_fu_250_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_din0),.grp_fu_250_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_din1),.grp_fu_250_p_dout0(grp_fu_140_p_dout0),.grp_fu_250_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_ce),.grp_fu_254_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_din0),.grp_fu_254_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_din1),.grp_fu_254_p_dout0(grp_fu_144_p_dout0),.grp_fu_254_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_210 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln32_2(or_ln_reg_208),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_ce1),.v224_q1(v224_q1),.mul_ln38_1(mul_ln38_1_reg_213),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_ce1),.v228_q1(v228_q1),.grp_fu_218_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_din0),.grp_fu_218_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_din1),.grp_fu_218_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_opcode),.grp_fu_218_p_dout0(grp_fu_148_p_dout0),.grp_fu_218_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_ce),.grp_fu_222_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_din0),.grp_fu_222_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_din1),.grp_fu_222_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_opcode),.grp_fu_222_p_dout0(grp_fu_222_p2),.grp_fu_222_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_ce),.grp_fu_226_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_din0),.grp_fu_226_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_din1),.grp_fu_226_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_opcode),.grp_fu_226_p_dout0(grp_fu_226_p2),.grp_fu_226_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_ce),.grp_fu_230_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_din0),.grp_fu_230_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_din1),.grp_fu_230_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_opcode),.grp_fu_230_p_dout0(grp_fu_230_p2),.grp_fu_230_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_ce),.grp_fu_234_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_din0),.grp_fu_234_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_din1),.grp_fu_234_p_dout0(grp_fu_152_p_dout0),.grp_fu_234_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_ce),.grp_fu_238_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_din0),.grp_fu_238_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_din1),.grp_fu_238_p_dout0(grp_fu_128_p_dout0),.grp_fu_238_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_ce),.grp_fu_242_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_din0),.grp_fu_242_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_din1),.grp_fu_242_p_dout0(grp_fu_132_p_dout0),.grp_fu_242_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U447(.din0(mul_ln38_fu_122_p0),.din1(mul_ln38_fu_122_p1),.dout(mul_ln38_fu_122_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U448(.din0(mul_ln38_1_fu_165_p0),.din1(mul_ln38_1_fu_165_p1),.dout(mul_ln38_1_fu_165_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U450(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_222_p0),.din1(grp_fu_222_p1),.ce(grp_fu_222_ce),.dout(grp_fu_222_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U451(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_226_p0),.din1(grp_fu_226_p1),.ce(grp_fu_226_ce),.dout(grp_fu_226_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U452(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_230_p0),.din1(grp_fu_230_p1),.ce(grp_fu_230_ce),.dout(grp_fu_230_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_58 <= 8'd0;
    end else if (((icmp_ln31_fu_112_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v5_fu_58 <= add_ln31_fu_128_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_198 <= cmp11_fu_139_p2;
        tmp_reg_203 <= {{v5_1_reg_183[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln38_1_reg_213 <= mul_ln38_1_fu_165_p2;
        or_ln_reg_208[7 : 1] <= or_ln_fu_154_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln38_reg_193 <= mul_ln38_fu_122_p2;
        v5_1_reg_183 <= v5_fu_58;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln31_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_218_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_218_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_ce;
    end else begin
        grp_fu_218_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_218_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_218_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_din0;
    end else begin
        grp_fu_218_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_218_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_218_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_218_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_218_p_din1;
    end else begin
        grp_fu_218_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_222_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_222_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_ce;
    end else begin
        grp_fu_222_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_222_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_222_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_din0;
    end else begin
        grp_fu_222_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_222_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_222_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_222_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_222_p_din1;
    end else begin
        grp_fu_222_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_226_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_226_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_ce;
    end else begin
        grp_fu_226_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_226_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_226_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_din0;
    end else begin
        grp_fu_226_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_226_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_226_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_226_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_226_p_din1;
    end else begin
        grp_fu_226_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_230_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_230_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_ce;
    end else begin
        grp_fu_230_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_230_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_230_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_din0;
    end else begin
        grp_fu_230_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_230_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_230_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_230_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_230_p_din1;
    end else begin
        grp_fu_230_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_234_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_234_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_ce;
    end else begin
        grp_fu_234_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_234_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_234_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_din0;
    end else begin
        grp_fu_234_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_234_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_234_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_234_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_234_p_din1;
    end else begin
        grp_fu_234_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_238_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_238_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_ce;
    end else begin
        grp_fu_238_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_238_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_238_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_din0;
    end else begin
        grp_fu_238_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_238_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_238_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_238_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_238_p_din1;
    end else begin
        grp_fu_238_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_242_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_242_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_ce;
    end else begin
        grp_fu_242_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_242_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_242_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_din0;
    end else begin
        grp_fu_242_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_242_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_grp_fu_242_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_242_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_242_p_din1;
    end else begin
        grp_fu_242_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_246_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_ce;
    end else begin
        grp_fu_246_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_250_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_ce;
    end else begin
        grp_fu_250_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_254_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_ce;
    end else begin
        grp_fu_254_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_address0;
    end else begin
        v224_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_address1;
    end else begin
        v224_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_ce0;
    end else begin
        v224_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v224_ce1;
    end else begin
        v224_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v236_blk_n = v236_empty_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln31_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_done == 1'b1))) begin
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
assign add_ln31_fu_128_p2 = (v5_fu_58 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_139_p2 = ((v5_1_reg_183 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_128_p_ce = grp_fu_238_ce;
assign grp_fu_128_p_din0 = grp_fu_238_p0;
assign grp_fu_128_p_din1 = grp_fu_238_p1;
assign grp_fu_132_p_ce = grp_fu_242_ce;
assign grp_fu_132_p_din0 = grp_fu_242_p0;
assign grp_fu_132_p_din1 = grp_fu_242_p1;
assign grp_fu_136_p_ce = grp_fu_246_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_246_p_din1;
assign grp_fu_140_p_ce = grp_fu_250_ce;
assign grp_fu_140_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_din0;
assign grp_fu_140_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_250_p_din1;
assign grp_fu_144_p_ce = grp_fu_254_ce;
assign grp_fu_144_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_din0;
assign grp_fu_144_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_grp_fu_254_p_din1;
assign grp_fu_148_p_ce = grp_fu_218_ce;
assign grp_fu_148_p_din0 = grp_fu_218_p0;
assign grp_fu_148_p_din1 = grp_fu_218_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_234_ce;
assign grp_fu_152_p_din0 = grp_fu_234_p0;
assign grp_fu_152_p_din1 = grp_fu_234_p1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_90_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_74_ap_start_reg;
assign icmp_ln31_fu_112_p2 = ((v5_fu_58 < 8'd190) ? 1'b1 : 1'b0);
assign mul_ln38_1_fu_165_p0 = mul_ln38_1_fu_165_p00;
assign mul_ln38_1_fu_165_p00 = or_ln_fu_154_p3;
assign mul_ln38_1_fu_165_p1 = 16'd220;
assign mul_ln38_fu_122_p0 = mul_ln38_fu_122_p00;
assign mul_ln38_fu_122_p00 = v5_fu_58;
assign mul_ln38_fu_122_p1 = 16'd220;
assign or_ln_fu_154_p3 = {{tmp_reg_203}, {1'd1}};
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln_reg_208[0] <= 1'b1;
end
endmodule 