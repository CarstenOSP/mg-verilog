module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_opcode,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_opcode,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_opcode,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce); 
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
output  [13:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [13:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [13:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [13:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [13:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [13:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [13:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [13:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [13:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [13:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [13:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [13:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [13:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [13:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [13:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [13:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
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
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
output  [1:0] grp_fu_200_p_opcode;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
output  [1:0] grp_fu_204_p_opcode;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
output  [31:0] grp_fu_208_p_din0;
output  [31:0] grp_fu_208_p_din1;
output  [1:0] grp_fu_208_p_opcode;
input  [31:0] grp_fu_208_p_dout0;
output   grp_fu_208_p_ce;
output  [31:0] grp_fu_212_p_din0;
output  [31:0] grp_fu_212_p_din1;
input  [31:0] grp_fu_212_p_dout0;
output   grp_fu_212_p_ce;
output  [31:0] grp_fu_216_p_din0;
output  [31:0] grp_fu_216_p_din1;
input  [31:0] grp_fu_216_p_dout0;
output   grp_fu_216_p_ce;
output  [31:0] grp_fu_220_p_din0;
output  [31:0] grp_fu_220_p_din1;
input  [31:0] grp_fu_220_p_dout0;
output   grp_fu_220_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
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
wire   [5:0] lshr_ln_fu_144_p4;
reg   [5:0] lshr_ln_reg_202;
wire    ap_CS_fsm_state2;
wire   [13:0] mul_ln38_fu_158_p2;
reg   [13:0] mul_ln38_reg_208;
wire   [0:0] cmp11_fu_164_p2;
reg   [0:0] cmp11_reg_214;
wire   [0:0] empty_fu_170_p2;
reg   [0:0] empty_reg_219;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [7:0] v5_fu_70;
wire   [7:0] add_ln31_fu_176_p2;
wire   [0:0] icmp_ln31_fu_134_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [5:0] mul_ln38_fu_158_p0;
wire   [8:0] mul_ln38_fu_158_p1;
wire   [1:0] trunc_ln31_fu_140_p1;
reg   [31:0] grp_fu_225_p0;
reg   [31:0] grp_fu_225_p1;
reg    grp_fu_225_ce;
reg   [31:0] grp_fu_229_p0;
reg   [31:0] grp_fu_229_p1;
reg    grp_fu_229_ce;
reg   [31:0] grp_fu_233_p0;
reg   [31:0] grp_fu_233_p1;
reg    grp_fu_233_ce;
reg   [31:0] grp_fu_237_p0;
reg   [31:0] grp_fu_237_p1;
reg    grp_fu_237_ce;
reg   [31:0] grp_fu_241_p0;
reg   [31:0] grp_fu_241_p1;
reg    grp_fu_241_ce;
reg   [31:0] grp_fu_245_p0;
reg   [31:0] grp_fu_245_p1;
reg    grp_fu_245_ce;
reg    grp_fu_249_ce;
reg    grp_fu_253_ce;
reg    grp_fu_257_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [13:0] mul_ln38_fu_158_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start_reg = 1'b0;
#0 v5_fu_70 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_ready),.v4(v4),.cmp11(cmp11_reg_214),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln31(lshr_ln_reg_202),.v224_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address0),.v224_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce0),.v224_0_q0(v224_0_q0),.v224_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address1),.v224_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce1),.v224_0_q1(v224_0_q1),.v224_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address0),.v224_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce0),.v224_2_q0(v224_2_q0),.v224_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address1),.v224_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce1),.v224_2_q1(v224_2_q1),.empty(empty_reg_219),.mul_ln38(mul_ln38_reg_208),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_ce1),.v228_2_q1(v228_2_q1),.grp_fu_225_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_din0),.grp_fu_225_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_din1),.grp_fu_225_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_opcode),.grp_fu_225_p_dout0(grp_fu_200_p_dout0),.grp_fu_225_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_ce),.grp_fu_229_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_din0),.grp_fu_229_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_din1),.grp_fu_229_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_opcode),.grp_fu_229_p_dout0(grp_fu_204_p_dout0),.grp_fu_229_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_ce),.grp_fu_233_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_din0),.grp_fu_233_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_din1),.grp_fu_233_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_opcode),.grp_fu_233_p_dout0(grp_fu_208_p_dout0),.grp_fu_233_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_ce),.grp_fu_237_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_din0),.grp_fu_237_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_din1),.grp_fu_237_p_dout0(grp_fu_212_p_dout0),.grp_fu_237_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_ce),.grp_fu_241_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_din0),.grp_fu_241_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_din1),.grp_fu_241_p_dout0(grp_fu_216_p_dout0),.grp_fu_241_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_ce),.grp_fu_245_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_din0),.grp_fu_245_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_din1),.grp_fu_245_p_dout0(grp_fu_220_p_dout0),.grp_fu_245_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_ce),.grp_fu_249_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_din0),.grp_fu_249_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_din1),.grp_fu_249_p_dout0(grp_fu_188_p_dout0),.grp_fu_249_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_ce),.grp_fu_253_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_din0),.grp_fu_253_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_din1),.grp_fu_253_p_dout0(grp_fu_192_p_dout0),.grp_fu_253_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_ce),.grp_fu_257_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_din0),.grp_fu_257_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_din1),.grp_fu_257_p_dout0(grp_fu_196_p_dout0),.grp_fu_257_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_210 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln31(lshr_ln_reg_202),.v224_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_address0),.v224_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_ce0),.v224_1_q0(v224_1_q0),.v224_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_address1),.v224_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_ce1),.v224_1_q1(v224_1_q1),.v224_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_address0),.v224_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_ce0),.v224_3_q0(v224_3_q0),.v224_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_address1),.v224_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_ce1),.v224_3_q1(v224_3_q1),.empty(empty_reg_219),.mul_ln38(mul_ln38_reg_208),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_ce1),.v228_3_q1(v228_3_q1),.grp_fu_237_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_din0),.grp_fu_237_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_din1),.grp_fu_237_p_dout0(grp_fu_212_p_dout0),.grp_fu_237_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_ce),.grp_fu_225_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_din0),.grp_fu_225_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_din1),.grp_fu_225_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_opcode),.grp_fu_225_p_dout0(grp_fu_200_p_dout0),.grp_fu_225_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_ce),.grp_fu_229_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_din0),.grp_fu_229_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_din1),.grp_fu_229_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_opcode),.grp_fu_229_p_dout0(grp_fu_204_p_dout0),.grp_fu_229_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_ce),.grp_fu_233_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_din0),.grp_fu_233_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_din1),.grp_fu_233_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_opcode),.grp_fu_233_p_dout0(grp_fu_208_p_dout0),.grp_fu_233_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_ce),.grp_fu_241_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_din0),.grp_fu_241_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_din1),.grp_fu_241_p_dout0(grp_fu_216_p_dout0),.grp_fu_241_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_ce),.grp_fu_245_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_din0),.grp_fu_245_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_din1),.grp_fu_245_p_dout0(grp_fu_220_p_dout0),.grp_fu_245_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U542(.din0(mul_ln38_fu_158_p0),.din1(mul_ln38_fu_158_p1),.dout(mul_ln38_fu_158_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_70 <= 8'd0;
    end else if (((icmp_ln31_fu_134_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v5_fu_70 <= add_ln31_fu_176_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_214 <= cmp11_fu_164_p2;
        empty_reg_219 <= empty_fu_170_p2;
        lshr_ln_reg_202 <= {{v5_fu_70[7:2]}};
        mul_ln38_reg_208 <= mul_ln38_fu_158_p2;
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
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln31_fu_134_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_134_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_225_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_225_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_ce;
    end else begin
        grp_fu_225_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_225_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_225_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_din0;
    end else begin
        grp_fu_225_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_225_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_225_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_225_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_225_p_din1;
    end else begin
        grp_fu_225_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_229_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_229_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_ce;
    end else begin
        grp_fu_229_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_229_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_229_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_din0;
    end else begin
        grp_fu_229_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_229_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_229_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_229_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_229_p_din1;
    end else begin
        grp_fu_229_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_233_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_233_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_ce;
    end else begin
        grp_fu_233_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_233_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_233_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_din0;
    end else begin
        grp_fu_233_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_233_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_233_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_233_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_233_p_din1;
    end else begin
        grp_fu_233_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_237_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_237_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_ce;
    end else begin
        grp_fu_237_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_237_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_237_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_din0;
    end else begin
        grp_fu_237_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_237_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_237_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_237_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_237_p_din1;
    end else begin
        grp_fu_237_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_241_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_241_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_ce;
    end else begin
        grp_fu_241_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_241_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_241_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_din0;
    end else begin
        grp_fu_241_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_241_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_241_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_241_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_241_p_din1;
    end else begin
        grp_fu_241_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_245_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_245_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_ce;
    end else begin
        grp_fu_245_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_245_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_245_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_din0;
    end else begin
        grp_fu_245_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_245_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_grp_fu_245_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_245_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_245_p_din1;
    end else begin
        grp_fu_245_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_249_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_ce;
    end else begin
        grp_fu_249_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_253_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_ce;
    end else begin
        grp_fu_253_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_257_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_ce;
    end else begin
        grp_fu_257_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_1_we1;
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
            if (((icmp_ln31_fu_134_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln31_fu_176_p2 = (v5_fu_70 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_164_p2 = ((v5_fu_70 == 8'd0) ? 1'b1 : 1'b0);
assign empty_fu_170_p2 = ((trunc_ln31_fu_140_p1 != 2'd0) ? 1'b1 : 1'b0);
assign grp_fu_188_p_ce = grp_fu_249_ce;
assign grp_fu_188_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_din0;
assign grp_fu_188_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_249_p_din1;
assign grp_fu_192_p_ce = grp_fu_253_ce;
assign grp_fu_192_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_din0;
assign grp_fu_192_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_253_p_din1;
assign grp_fu_196_p_ce = grp_fu_257_ce;
assign grp_fu_196_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_din0;
assign grp_fu_196_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_257_p_din1;
assign grp_fu_200_p_ce = grp_fu_225_ce;
assign grp_fu_200_p_din0 = grp_fu_225_p0;
assign grp_fu_200_p_din1 = grp_fu_225_p1;
assign grp_fu_200_p_opcode = 2'd0;
assign grp_fu_204_p_ce = grp_fu_229_ce;
assign grp_fu_204_p_din0 = grp_fu_229_p0;
assign grp_fu_204_p_din1 = grp_fu_229_p1;
assign grp_fu_204_p_opcode = 2'd0;
assign grp_fu_208_p_ce = grp_fu_233_ce;
assign grp_fu_208_p_din0 = grp_fu_233_p0;
assign grp_fu_208_p_din1 = grp_fu_233_p1;
assign grp_fu_208_p_opcode = 2'd0;
assign grp_fu_212_p_ce = grp_fu_237_ce;
assign grp_fu_212_p_din0 = grp_fu_237_p0;
assign grp_fu_212_p_din1 = grp_fu_237_p1;
assign grp_fu_216_p_ce = grp_fu_241_ce;
assign grp_fu_216_p_din0 = grp_fu_241_p0;
assign grp_fu_216_p_din1 = grp_fu_241_p1;
assign grp_fu_220_p_ce = grp_fu_245_ce;
assign grp_fu_220_p_din0 = grp_fu_245_p0;
assign grp_fu_220_p_din1 = grp_fu_245_p1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg;
assign icmp_ln31_fu_134_p2 = ((v5_fu_70 < 8'd190) ? 1'b1 : 1'b0);
assign lshr_ln_fu_144_p4 = {{v5_fu_70[7:2]}};
assign mul_ln38_fu_158_p0 = mul_ln38_fu_158_p00;
assign mul_ln38_fu_158_p00 = lshr_ln_fu_144_p4;
assign mul_ln38_fu_158_p1 = 14'd220;
assign trunc_ln31_fu_140_p1 = v5_fu_70[1:0];
assign v224_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address0;
assign v224_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address1;
assign v224_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce0;
assign v224_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce1;
assign v224_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_address0;
assign v224_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_address1;
assign v224_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_ce0;
assign v224_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_1_ce1;
assign v224_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address0;
assign v224_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address1;
assign v224_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce0;
assign v224_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce1;
assign v224_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_address0;
assign v224_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_address1;
assign v224_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_ce0;
assign v224_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v224_3_ce1;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_107_v228_3_ce1;
assign v236_read = v236_read_local;
endmodule 