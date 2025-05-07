module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v4,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce); 
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
output  [13:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [13:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [13:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [13:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [13:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [13:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [13:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [13:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
input  [31:0] v4;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
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
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
output  [31:0] grp_fu_208_p_din0;
output  [31:0] grp_fu_208_p_din1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v224_address0;
reg v224_ce0;
reg[15:0] v224_address1;
reg v224_ce1;
reg[13:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[13:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[13:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[13:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
reg[13:0] v229_2_address0;
reg v229_2_ce0;
reg v229_2_we0;
reg[31:0] v229_2_d0;
reg[13:0] v229_2_address1;
reg v229_2_ce1;
reg v229_2_we1;
reg[31:0] v229_2_d1;
reg[13:0] v229_3_address0;
reg v229_3_ce0;
reg v229_3_we0;
reg[31:0] v229_3_d0;
reg[13:0] v229_3_address1;
reg v229_3_ce1;
reg v229_3_we1;
reg[31:0] v229_3_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [7:0] v5_1_reg_216;
wire    ap_CS_fsm_state2;
wire   [13:0] mul_ln38_fu_160_p2;
reg   [13:0] mul_ln38_reg_227;
wire   [1:0] trunc_ln31_fu_177_p1;
reg   [1:0] trunc_ln31_reg_233;
wire    ap_CS_fsm_state3;
wire   [0:0] cmp11_fu_181_p2;
reg   [0:0] cmp11_reg_239;
reg   [6:0] tmp_reg_244;
wire   [7:0] or_ln_fu_196_p3;
reg   [7:0] or_ln_reg_249;
wire    ap_CS_fsm_state5;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [7:0] v5_fu_72;
wire   [7:0] add_ln31_fu_166_p2;
wire   [0:0] icmp_ln31_fu_140_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [5:0] lshr_ln_fu_146_p4;
wire   [5:0] mul_ln38_fu_160_p0;
wire   [8:0] mul_ln38_fu_160_p1;
reg   [31:0] grp_fu_254_p0;
reg   [31:0] grp_fu_254_p1;
reg    grp_fu_254_ce;
wire   [31:0] grp_fu_258_p2;
reg   [31:0] grp_fu_258_p0;
reg   [31:0] grp_fu_258_p1;
reg    grp_fu_258_ce;
wire   [31:0] grp_fu_262_p2;
reg   [31:0] grp_fu_262_p0;
reg   [31:0] grp_fu_262_p1;
reg    grp_fu_262_ce;
wire   [31:0] grp_fu_266_p2;
reg   [31:0] grp_fu_266_p0;
reg   [31:0] grp_fu_266_p1;
reg    grp_fu_266_ce;
reg   [31:0] grp_fu_270_p0;
reg   [31:0] grp_fu_270_p1;
reg    grp_fu_270_ce;
reg   [31:0] grp_fu_274_p0;
reg   [31:0] grp_fu_274_p1;
reg    grp_fu_274_ce;
reg   [31:0] grp_fu_278_p0;
reg   [31:0] grp_fu_278_p1;
reg    grp_fu_278_ce;
reg    grp_fu_282_ce;
reg    grp_fu_286_ce;
reg    grp_fu_290_ce;
reg    grp_fu_294_ce;
reg    grp_fu_298_ce;
reg    grp_fu_302_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [13:0] mul_ln38_fu_160_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start_reg = 1'b0;
#0 v5_fu_72 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_ready),.v4(v4),.cmp11(cmp11_reg_239),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln31(v5_1_reg_216),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_227),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_ce1),.v228_2_q1(v228_2_q1),.empty(trunc_ln31_reg_233),.grp_fu_254_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_din0),.grp_fu_254_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_din1),.grp_fu_254_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_opcode),.grp_fu_254_p_dout0(grp_fu_184_p_dout0),.grp_fu_254_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_ce),.grp_fu_258_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_din0),.grp_fu_258_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_din1),.grp_fu_258_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_opcode),.grp_fu_258_p_dout0(grp_fu_258_p2),.grp_fu_258_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_ce),.grp_fu_262_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_din0),.grp_fu_262_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_din1),.grp_fu_262_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_opcode),.grp_fu_262_p_dout0(grp_fu_262_p2),.grp_fu_262_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_ce),.grp_fu_266_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_din0),.grp_fu_266_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_din1),.grp_fu_266_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_opcode),.grp_fu_266_p_dout0(grp_fu_266_p2),.grp_fu_266_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_ce),.grp_fu_270_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_din0),.grp_fu_270_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_din1),.grp_fu_270_p_dout0(grp_fu_188_p_dout0),.grp_fu_270_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_ce),.grp_fu_274_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_din0),.grp_fu_274_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_din1),.grp_fu_274_p_dout0(grp_fu_192_p_dout0),.grp_fu_274_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_ce),.grp_fu_278_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_din0),.grp_fu_278_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_din1),.grp_fu_278_p_dout0(grp_fu_196_p_dout0),.grp_fu_278_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_ce),.grp_fu_282_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_din0),.grp_fu_282_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_din1),.grp_fu_282_p_dout0(grp_fu_200_p_dout0),.grp_fu_282_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_ce),.grp_fu_286_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_din0),.grp_fu_286_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_din1),.grp_fu_286_p_dout0(grp_fu_204_p_dout0),.grp_fu_286_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_ce),.grp_fu_290_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_din0),.grp_fu_290_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_din1),.grp_fu_290_p_dout0(grp_fu_208_p_dout0),.grp_fu_290_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_ce),.grp_fu_294_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_din0),.grp_fu_294_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_din1),.grp_fu_294_p_dout0(grp_fu_212_p_dout0),.grp_fu_294_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_ce),.grp_fu_298_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_din0),.grp_fu_298_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_din1),.grp_fu_298_p_dout0(grp_fu_216_p_dout0),.grp_fu_298_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_ce),.grp_fu_302_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_din0),.grp_fu_302_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_din1),.grp_fu_302_p_dout0(grp_fu_220_p_dout0),.grp_fu_302_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_26 grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_ready),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln32_2(or_ln_reg_249),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_227),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_ce1),.v228_3_q1(v228_3_q1),.empty(trunc_ln31_reg_233),.grp_fu_254_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_din0),.grp_fu_254_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_din1),.grp_fu_254_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_opcode),.grp_fu_254_p_dout0(grp_fu_184_p_dout0),.grp_fu_254_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_ce),.grp_fu_258_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_din0),.grp_fu_258_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_din1),.grp_fu_258_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_opcode),.grp_fu_258_p_dout0(grp_fu_258_p2),.grp_fu_258_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_ce),.grp_fu_262_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_din0),.grp_fu_262_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_din1),.grp_fu_262_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_opcode),.grp_fu_262_p_dout0(grp_fu_262_p2),.grp_fu_262_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_ce),.grp_fu_266_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_din0),.grp_fu_266_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_din1),.grp_fu_266_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_opcode),.grp_fu_266_p_dout0(grp_fu_266_p2),.grp_fu_266_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_ce),.grp_fu_270_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_din0),.grp_fu_270_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_din1),.grp_fu_270_p_dout0(grp_fu_188_p_dout0),.grp_fu_270_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_ce),.grp_fu_274_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_din0),.grp_fu_274_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_din1),.grp_fu_274_p_dout0(grp_fu_192_p_dout0),.grp_fu_274_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_ce),.grp_fu_278_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_din0),.grp_fu_278_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_din1),.grp_fu_278_p_dout0(grp_fu_196_p_dout0),.grp_fu_278_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U286(.din0(mul_ln38_fu_160_p0),.din1(mul_ln38_fu_160_p1),.dout(mul_ln38_fu_160_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U288(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_258_p0),.din1(grp_fu_258_p1),.ce(grp_fu_258_ce),.dout(grp_fu_258_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U289(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_262_p0),.din1(grp_fu_262_p1),.ce(grp_fu_262_ce),.dout(grp_fu_262_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U290(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_266_p0),.din1(grp_fu_266_p1),.ce(grp_fu_266_ce),.dout(grp_fu_266_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_72 <= 8'd0;
    end else if (((icmp_ln31_fu_140_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v5_fu_72 <= add_ln31_fu_166_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_239 <= cmp11_fu_181_p2;
        tmp_reg_244 <= {{v5_1_reg_216[7:1]}};
        trunc_ln31_reg_233 <= trunc_ln31_fu_177_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln38_reg_227 <= mul_ln38_fu_160_p2;
        v5_1_reg_216 <= v5_fu_72;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        or_ln_reg_249[7 : 1] <= or_ln_fu_196_p3[7 : 1];
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
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln31_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_254_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_254_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_ce;
    end else begin
        grp_fu_254_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_254_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_254_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_din0;
    end else begin
        grp_fu_254_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_254_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_254_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_254_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_254_p_din1;
    end else begin
        grp_fu_254_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_258_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_258_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_ce;
    end else begin
        grp_fu_258_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_258_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_258_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_din0;
    end else begin
        grp_fu_258_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_258_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_258_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_258_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_258_p_din1;
    end else begin
        grp_fu_258_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_262_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_262_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_ce;
    end else begin
        grp_fu_262_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_262_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_262_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_din0;
    end else begin
        grp_fu_262_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_262_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_262_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_262_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_262_p_din1;
    end else begin
        grp_fu_262_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_266_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_266_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_ce;
    end else begin
        grp_fu_266_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_266_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_266_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_din0;
    end else begin
        grp_fu_266_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_266_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_266_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_266_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_266_p_din1;
    end else begin
        grp_fu_266_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_270_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_270_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_ce;
    end else begin
        grp_fu_270_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_270_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_270_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_din0;
    end else begin
        grp_fu_270_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_270_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_270_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_270_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_270_p_din1;
    end else begin
        grp_fu_270_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_274_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_274_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_ce;
    end else begin
        grp_fu_274_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_274_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_274_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_din0;
    end else begin
        grp_fu_274_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_274_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_274_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_274_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_274_p_din1;
    end else begin
        grp_fu_274_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_278_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_278_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_ce;
    end else begin
        grp_fu_278_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_278_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_278_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_din0;
    end else begin
        grp_fu_278_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_278_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_grp_fu_278_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_278_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_278_p_din1;
    end else begin
        grp_fu_278_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_282_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_ce;
    end else begin
        grp_fu_282_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_286_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_ce;
    end else begin
        grp_fu_286_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_290_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_ce;
    end else begin
        grp_fu_290_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_294_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_ce;
    end else begin
        grp_fu_294_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_298_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_ce;
    end else begin
        grp_fu_298_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_302_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_ce;
    end else begin
        grp_fu_302_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_address0;
    end else begin
        v224_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_address1;
    end else begin
        v224_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_ce0;
    end else begin
        v224_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v224_ce1;
    end else begin
        v224_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_address0;
    end else begin
        v229_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_address1;
    end else begin
        v229_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_ce0;
    end else begin
        v229_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_ce1;
    end else begin
        v229_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_d0;
    end else begin
        v229_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_d1;
    end else begin
        v229_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_we0;
    end else begin
        v229_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_2_we1;
    end else begin
        v229_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_address0;
    end else begin
        v229_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_address1;
    end else begin
        v229_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_ce0;
    end else begin
        v229_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_ce1;
    end else begin
        v229_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_d0;
    end else begin
        v229_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_d1;
    end else begin
        v229_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_we0;
    end else begin
        v229_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v229_3_we1;
    end else begin
        v229_3_we1 = 1'b0;
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
            if (((icmp_ln31_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln31_fu_166_p2 = (v5_fu_72 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_181_p2 = ((v5_1_reg_216 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_184_p_ce = grp_fu_254_ce;
assign grp_fu_184_p_din0 = grp_fu_254_p0;
assign grp_fu_184_p_din1 = grp_fu_254_p1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_270_ce;
assign grp_fu_188_p_din0 = grp_fu_270_p0;
assign grp_fu_188_p_din1 = grp_fu_270_p1;
assign grp_fu_192_p_ce = grp_fu_274_ce;
assign grp_fu_192_p_din0 = grp_fu_274_p0;
assign grp_fu_192_p_din1 = grp_fu_274_p1;
assign grp_fu_196_p_ce = grp_fu_278_ce;
assign grp_fu_196_p_din0 = grp_fu_278_p0;
assign grp_fu_196_p_din1 = grp_fu_278_p1;
assign grp_fu_200_p_ce = grp_fu_282_ce;
assign grp_fu_200_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_din0;
assign grp_fu_200_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_282_p_din1;
assign grp_fu_204_p_ce = grp_fu_286_ce;
assign grp_fu_204_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_din0;
assign grp_fu_204_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_286_p_din1;
assign grp_fu_208_p_ce = grp_fu_290_ce;
assign grp_fu_208_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_din0;
assign grp_fu_208_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_290_p_din1;
assign grp_fu_212_p_ce = grp_fu_294_ce;
assign grp_fu_212_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_din0;
assign grp_fu_212_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_294_p_din1;
assign grp_fu_216_p_ce = grp_fu_298_ce;
assign grp_fu_216_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_din0;
assign grp_fu_216_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_298_p_din1;
assign grp_fu_220_p_ce = grp_fu_302_ce;
assign grp_fu_220_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_din0;
assign grp_fu_220_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_grp_fu_302_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_ap_start_reg;
assign icmp_ln31_fu_140_p2 = ((v5_fu_72 < 8'd190) ? 1'b1 : 1'b0);
assign lshr_ln_fu_146_p4 = {{v5_fu_72[7:2]}};
assign mul_ln38_fu_160_p0 = mul_ln38_fu_160_p00;
assign mul_ln38_fu_160_p00 = lshr_ln_fu_146_p4;
assign mul_ln38_fu_160_p1 = 14'd220;
assign or_ln_fu_196_p3 = {{tmp_reg_244}, {1'd1}};
assign trunc_ln31_fu_177_p1 = v5_1_reg_216[1:0];
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_88_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_111_v228_3_ce1;
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln_reg_249[0] <= 1'b1;
end
endmodule 