module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v224_4_address0,v224_4_ce0,v224_4_q0,v224_4_address1,v224_4_ce1,v224_4_q1,v224_5_address0,v224_5_ce0,v224_5_q0,v224_5_address1,v224_5_ce1,v224_5_q1,v224_6_address0,v224_6_ce0,v224_6_q0,v224_6_address1,v224_6_ce1,v224_6_q1,v224_7_address0,v224_7_ce0,v224_7_q0,v224_7_address1,v224_7_ce1,v224_7_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v4,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_opcode,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_opcode,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_opcode,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_opcode,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_opcode,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_opcode,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_opcode,grp_fu_228_p_dout0,grp_fu_228_p_ce,grp_fu_232_p_din0,grp_fu_232_p_din1,grp_fu_232_p_opcode,grp_fu_232_p_dout0,grp_fu_232_p_ce,grp_fu_248_p_din0,grp_fu_248_p_din1,grp_fu_248_p_dout0,grp_fu_248_p_ce,grp_fu_252_p_din0,grp_fu_252_p_din1,grp_fu_252_p_dout0,grp_fu_252_p_ce,grp_fu_256_p_din0,grp_fu_256_p_din1,grp_fu_256_p_dout0,grp_fu_256_p_ce,grp_fu_260_p_din0,grp_fu_260_p_din1,grp_fu_260_p_dout0,grp_fu_260_p_ce,grp_fu_264_p_din0,grp_fu_264_p_din1,grp_fu_264_p_dout0,grp_fu_264_p_ce,grp_fu_268_p_din0,grp_fu_268_p_din1,grp_fu_268_p_dout0,grp_fu_268_p_ce,grp_fu_272_p_din0,grp_fu_272_p_din1,grp_fu_272_p_dout0,grp_fu_272_p_ce,grp_fu_276_p_din0,grp_fu_276_p_din1,grp_fu_276_p_dout0,grp_fu_276_p_ce,grp_fu_280_p_din0,grp_fu_280_p_din1,grp_fu_280_p_dout0,grp_fu_280_p_ce,grp_fu_236_p_din0,grp_fu_236_p_din1,grp_fu_236_p_dout0,grp_fu_236_p_ce,grp_fu_240_p_din0,grp_fu_240_p_din1,grp_fu_240_p_dout0,grp_fu_240_p_ce,grp_fu_244_p_din0,grp_fu_244_p_din1,grp_fu_244_p_dout0,grp_fu_244_p_ce); 
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
output  [12:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [12:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [12:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [12:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [12:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [12:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [12:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [12:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [12:0] v224_4_address0;
output   v224_4_ce0;
input  [31:0] v224_4_q0;
output  [12:0] v224_4_address1;
output   v224_4_ce1;
input  [31:0] v224_4_q1;
output  [12:0] v224_5_address0;
output   v224_5_ce0;
input  [31:0] v224_5_q0;
output  [12:0] v224_5_address1;
output   v224_5_ce1;
input  [31:0] v224_5_q1;
output  [12:0] v224_6_address0;
output   v224_6_ce0;
input  [31:0] v224_6_q0;
output  [12:0] v224_6_address1;
output   v224_6_ce1;
input  [31:0] v224_6_q1;
output  [12:0] v224_7_address0;
output   v224_7_ce0;
input  [31:0] v224_7_q0;
output  [12:0] v224_7_address1;
output   v224_7_ce1;
input  [31:0] v224_7_q1;
output  [14:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [14:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [14:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [14:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
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
output  [1:0] grp_fu_212_p_opcode;
input  [31:0] grp_fu_212_p_dout0;
output   grp_fu_212_p_ce;
output  [31:0] grp_fu_216_p_din0;
output  [31:0] grp_fu_216_p_din1;
output  [1:0] grp_fu_216_p_opcode;
input  [31:0] grp_fu_216_p_dout0;
output   grp_fu_216_p_ce;
output  [31:0] grp_fu_220_p_din0;
output  [31:0] grp_fu_220_p_din1;
output  [1:0] grp_fu_220_p_opcode;
input  [31:0] grp_fu_220_p_dout0;
output   grp_fu_220_p_ce;
output  [31:0] grp_fu_224_p_din0;
output  [31:0] grp_fu_224_p_din1;
output  [1:0] grp_fu_224_p_opcode;
input  [31:0] grp_fu_224_p_dout0;
output   grp_fu_224_p_ce;
output  [31:0] grp_fu_228_p_din0;
output  [31:0] grp_fu_228_p_din1;
output  [1:0] grp_fu_228_p_opcode;
input  [31:0] grp_fu_228_p_dout0;
output   grp_fu_228_p_ce;
output  [31:0] grp_fu_232_p_din0;
output  [31:0] grp_fu_232_p_din1;
output  [1:0] grp_fu_232_p_opcode;
input  [31:0] grp_fu_232_p_dout0;
output   grp_fu_232_p_ce;
output  [31:0] grp_fu_248_p_din0;
output  [31:0] grp_fu_248_p_din1;
input  [31:0] grp_fu_248_p_dout0;
output   grp_fu_248_p_ce;
output  [31:0] grp_fu_252_p_din0;
output  [31:0] grp_fu_252_p_din1;
input  [31:0] grp_fu_252_p_dout0;
output   grp_fu_252_p_ce;
output  [31:0] grp_fu_256_p_din0;
output  [31:0] grp_fu_256_p_din1;
input  [31:0] grp_fu_256_p_dout0;
output   grp_fu_256_p_ce;
output  [31:0] grp_fu_260_p_din0;
output  [31:0] grp_fu_260_p_din1;
input  [31:0] grp_fu_260_p_dout0;
output   grp_fu_260_p_ce;
output  [31:0] grp_fu_264_p_din0;
output  [31:0] grp_fu_264_p_din1;
input  [31:0] grp_fu_264_p_dout0;
output   grp_fu_264_p_ce;
output  [31:0] grp_fu_268_p_din0;
output  [31:0] grp_fu_268_p_din1;
input  [31:0] grp_fu_268_p_dout0;
output   grp_fu_268_p_ce;
output  [31:0] grp_fu_272_p_din0;
output  [31:0] grp_fu_272_p_din1;
input  [31:0] grp_fu_272_p_dout0;
output   grp_fu_272_p_ce;
output  [31:0] grp_fu_276_p_din0;
output  [31:0] grp_fu_276_p_din1;
input  [31:0] grp_fu_276_p_dout0;
output   grp_fu_276_p_ce;
output  [31:0] grp_fu_280_p_din0;
output  [31:0] grp_fu_280_p_din1;
input  [31:0] grp_fu_280_p_dout0;
output   grp_fu_280_p_ce;
output  [31:0] grp_fu_236_p_din0;
output  [31:0] grp_fu_236_p_din1;
input  [31:0] grp_fu_236_p_dout0;
output   grp_fu_236_p_ce;
output  [31:0] grp_fu_240_p_din0;
output  [31:0] grp_fu_240_p_din1;
input  [31:0] grp_fu_240_p_dout0;
output   grp_fu_240_p_ce;
output  [31:0] grp_fu_244_p_din0;
output  [31:0] grp_fu_244_p_din1;
input  [31:0] grp_fu_244_p_dout0;
output   grp_fu_244_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
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
reg   [7:0] v5_1_reg_223;
wire    ap_CS_fsm_state2;
wire   [14:0] mul_ln38_fu_174_p2;
reg   [14:0] mul_ln38_reg_233;
wire   [2:0] trunc_ln31_fu_191_p1;
reg   [2:0] trunc_ln31_reg_239;
wire    ap_CS_fsm_state3;
reg   [4:0] lshr_ln31_1_reg_245;
wire   [0:0] cmp11_fu_205_p2;
reg   [0:0] cmp11_reg_251;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [7:0] v5_fu_78;
wire   [7:0] add_ln31_fu_180_p2;
wire   [0:0] icmp_ln31_fu_154_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [6:0] lshr_ln_fu_160_p4;
wire   [6:0] mul_ln38_fu_174_p0;
wire   [8:0] mul_ln38_fu_174_p1;
reg   [31:0] grp_fu_256_p0;
reg   [31:0] grp_fu_256_p1;
reg    grp_fu_256_ce;
reg   [31:0] grp_fu_260_p0;
reg   [31:0] grp_fu_260_p1;
reg    grp_fu_260_ce;
reg   [31:0] grp_fu_264_p0;
reg   [31:0] grp_fu_264_p1;
reg    grp_fu_264_ce;
reg    grp_fu_268_ce;
reg    grp_fu_272_ce;
reg    grp_fu_276_ce;
reg    grp_fu_280_ce;
reg    grp_fu_284_ce;
reg   [31:0] grp_fu_288_p0;
reg   [31:0] grp_fu_288_p1;
reg    grp_fu_288_ce;
reg   [31:0] grp_fu_292_p0;
reg   [31:0] grp_fu_292_p1;
reg    grp_fu_292_ce;
reg   [31:0] grp_fu_296_p0;
reg   [31:0] grp_fu_296_p1;
reg    grp_fu_296_ce;
reg    grp_fu_300_ce;
reg    grp_fu_304_ce;
reg    grp_fu_308_ce;
reg    grp_fu_312_ce;
reg    grp_fu_316_ce;
reg    grp_fu_320_ce;
reg    grp_fu_324_ce;
reg    grp_fu_328_ce;
reg    grp_fu_332_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [14:0] mul_ln38_fu_174_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start_reg = 1'b0;
#0 v5_fu_78 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_ready),.v4(v4),.cmp11(cmp11_reg_251),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln31_1(lshr_ln31_1_reg_245),.v224_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_address0),.v224_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_ce0),.v224_0_q0(v224_0_q0),.v224_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_address1),.v224_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_ce1),.v224_0_q1(v224_0_q1),.v224_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_address0),.v224_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_ce0),.v224_2_q0(v224_2_q0),.v224_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_address1),.v224_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_ce1),.v224_2_q1(v224_2_q1),.v224_4_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_address0),.v224_4_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_ce0),.v224_4_q0(v224_4_q0),.v224_4_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_address1),.v224_4_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_ce1),.v224_4_q1(v224_4_q1),.v224_6_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_address0),.v224_6_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_ce0),.v224_6_q0(v224_6_q0),.v224_6_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_address1),.v224_6_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_ce1),.v224_6_q1(v224_6_q1),.empty(trunc_ln31_reg_239),.mul_ln38(mul_ln38_reg_233),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_ce1),.v228_0_q1(v228_0_q1),.grp_fu_256_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_204_p_dout0),.grp_fu_256_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_208_p_dout0),.grp_fu_260_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_din1),.grp_fu_264_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_opcode),.grp_fu_264_p_dout0(grp_fu_212_p_dout0),.grp_fu_264_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_ce),.grp_fu_268_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_din1),.grp_fu_268_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_opcode),.grp_fu_268_p_dout0(grp_fu_216_p_dout0),.grp_fu_268_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_din1),.grp_fu_272_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_opcode),.grp_fu_272_p_dout0(grp_fu_220_p_dout0),.grp_fu_272_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_din1),.grp_fu_276_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_opcode),.grp_fu_276_p_dout0(grp_fu_224_p_dout0),.grp_fu_276_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_din1),.grp_fu_280_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_opcode),.grp_fu_280_p_dout0(grp_fu_228_p_dout0),.grp_fu_280_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_ce),.grp_fu_284_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_din1),.grp_fu_284_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_opcode),.grp_fu_284_p_dout0(grp_fu_232_p_dout0),.grp_fu_284_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_din1),.grp_fu_288_p_dout0(grp_fu_248_p_dout0),.grp_fu_288_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_din1),.grp_fu_292_p_dout0(grp_fu_252_p_dout0),.grp_fu_292_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_din1),.grp_fu_296_p_dout0(grp_fu_256_p_dout0),.grp_fu_296_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_din1),.grp_fu_300_p_dout0(grp_fu_260_p_dout0),.grp_fu_300_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_din1),.grp_fu_304_p_dout0(grp_fu_264_p_dout0),.grp_fu_304_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_ce),.grp_fu_308_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_din0),.grp_fu_308_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_din1),.grp_fu_308_p_dout0(grp_fu_268_p_dout0),.grp_fu_308_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_ce),.grp_fu_312_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_din1),.grp_fu_312_p_dout0(grp_fu_272_p_dout0),.grp_fu_312_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_din1),.grp_fu_316_p_dout0(grp_fu_276_p_dout0),.grp_fu_316_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_din1),.grp_fu_320_p_dout0(grp_fu_280_p_dout0),.grp_fu_320_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_ce),.grp_fu_324_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_din0),.grp_fu_324_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_din1),.grp_fu_324_p_dout0(grp_fu_236_p_dout0),.grp_fu_324_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_ce),.grp_fu_328_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_din0),.grp_fu_328_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_din1),.grp_fu_328_p_dout0(grp_fu_240_p_dout0),.grp_fu_328_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_ce),.grp_fu_332_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_din1),.grp_fu_332_p_dout0(grp_fu_244_p_dout0),.grp_fu_332_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_23 grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_ready),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln31_1(lshr_ln31_1_reg_245),.v224_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_address0),.v224_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_ce0),.v224_1_q0(v224_1_q0),.v224_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_address1),.v224_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_ce1),.v224_1_q1(v224_1_q1),.v224_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_address0),.v224_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_ce0),.v224_3_q0(v224_3_q0),.v224_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_address1),.v224_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_ce1),.v224_3_q1(v224_3_q1),.v224_5_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_address0),.v224_5_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_ce0),.v224_5_q0(v224_5_q0),.v224_5_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_address1),.v224_5_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_ce1),.v224_5_q1(v224_5_q1),.v224_7_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_address0),.v224_7_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_ce0),.v224_7_q0(v224_7_q0),.v224_7_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_address1),.v224_7_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_ce1),.v224_7_q1(v224_7_q1),.empty(trunc_ln31_reg_239),.mul_ln38(mul_ln38_reg_233),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_ce1),.v228_1_q1(v228_1_q1),.grp_fu_256_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_204_p_dout0),.grp_fu_256_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_208_p_dout0),.grp_fu_260_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_din1),.grp_fu_264_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_opcode),.grp_fu_264_p_dout0(grp_fu_212_p_dout0),.grp_fu_264_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_ce),.grp_fu_288_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_din1),.grp_fu_288_p_dout0(grp_fu_248_p_dout0),.grp_fu_288_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_din1),.grp_fu_292_p_dout0(grp_fu_252_p_dout0),.grp_fu_292_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_din1),.grp_fu_296_p_dout0(grp_fu_256_p_dout0),.grp_fu_296_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U266(.din0(mul_ln38_fu_174_p0),.din1(mul_ln38_fu_174_p1),.dout(mul_ln38_fu_174_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_78 <= 8'd0;
    end else if (((icmp_ln31_fu_154_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v5_fu_78 <= add_ln31_fu_180_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_251 <= cmp11_fu_205_p2;
        lshr_ln31_1_reg_245 <= {{v5_1_reg_223[7:3]}};
        trunc_ln31_reg_239 <= trunc_ln31_fu_191_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln38_reg_233 <= mul_ln38_fu_174_p2;
        v5_1_reg_223 <= v5_fu_78;
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
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln31_fu_154_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_154_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_ce;
    end else begin
        grp_fu_256_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_din0;
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_256_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_256_p_din1;
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_ce;
    end else begin
        grp_fu_260_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_din0;
    end else begin
        grp_fu_260_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_260_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_260_p_din1;
    end else begin
        grp_fu_260_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_ce;
    end else begin
        grp_fu_264_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_din0;
    end else begin
        grp_fu_264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_264_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_264_p_din1;
    end else begin
        grp_fu_264_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_ce;
    end else begin
        grp_fu_268_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_ce;
    end else begin
        grp_fu_272_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_ce;
    end else begin
        grp_fu_276_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_280_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_ce;
    end else begin
        grp_fu_280_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_284_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_ce;
    end else begin
        grp_fu_284_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_288_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_ce;
    end else begin
        grp_fu_288_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_288_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_din0;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_288_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_288_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_288_p_din1;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_292_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_ce;
    end else begin
        grp_fu_292_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_292_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_din0;
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_292_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_292_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_292_p_din1;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_296_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_ce;
    end else begin
        grp_fu_296_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_296_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_din0;
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_296_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_grp_fu_296_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_296_p_din1;
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_ce;
    end else begin
        grp_fu_300_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_304_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_ce;
    end else begin
        grp_fu_304_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_308_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_ce;
    end else begin
        grp_fu_308_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_ce;
    end else begin
        grp_fu_312_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_ce;
    end else begin
        grp_fu_316_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_320_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_ce;
    end else begin
        grp_fu_320_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_324_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_ce;
    end else begin
        grp_fu_324_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_328_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_ce;
    end else begin
        grp_fu_328_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_332_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_ce;
    end else begin
        grp_fu_332_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_address0;
    end else begin
        v229_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_address1;
    end else begin
        v229_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_ce0;
    end else begin
        v229_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_ce1;
    end else begin
        v229_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_d0;
    end else begin
        v229_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_d1;
    end else begin
        v229_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_we0;
    end else begin
        v229_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_2_we1;
    end else begin
        v229_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_address0;
    end else begin
        v229_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_address1;
    end else begin
        v229_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_ce0;
    end else begin
        v229_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_ce1;
    end else begin
        v229_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_d0;
    end else begin
        v229_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_d1;
    end else begin
        v229_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_we0;
    end else begin
        v229_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v229_3_we1;
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
            if (((icmp_ln31_fu_154_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln31_fu_180_p2 = (v5_fu_78 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_205_p2 = ((v5_1_reg_223 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_204_p_ce = grp_fu_256_ce;
assign grp_fu_204_p_din0 = grp_fu_256_p0;
assign grp_fu_204_p_din1 = grp_fu_256_p1;
assign grp_fu_204_p_opcode = 2'd0;
assign grp_fu_208_p_ce = grp_fu_260_ce;
assign grp_fu_208_p_din0 = grp_fu_260_p0;
assign grp_fu_208_p_din1 = grp_fu_260_p1;
assign grp_fu_208_p_opcode = 2'd0;
assign grp_fu_212_p_ce = grp_fu_264_ce;
assign grp_fu_212_p_din0 = grp_fu_264_p0;
assign grp_fu_212_p_din1 = grp_fu_264_p1;
assign grp_fu_212_p_opcode = 2'd0;
assign grp_fu_216_p_ce = grp_fu_268_ce;
assign grp_fu_216_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_din0;
assign grp_fu_216_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_268_p_din1;
assign grp_fu_216_p_opcode = 2'd0;
assign grp_fu_220_p_ce = grp_fu_272_ce;
assign grp_fu_220_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_din0;
assign grp_fu_220_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_272_p_din1;
assign grp_fu_220_p_opcode = 2'd0;
assign grp_fu_224_p_ce = grp_fu_276_ce;
assign grp_fu_224_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_din0;
assign grp_fu_224_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_276_p_din1;
assign grp_fu_224_p_opcode = 2'd0;
assign grp_fu_228_p_ce = grp_fu_280_ce;
assign grp_fu_228_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_din0;
assign grp_fu_228_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_280_p_din1;
assign grp_fu_228_p_opcode = 2'd0;
assign grp_fu_232_p_ce = grp_fu_284_ce;
assign grp_fu_232_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_din0;
assign grp_fu_232_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_284_p_din1;
assign grp_fu_232_p_opcode = 2'd0;
assign grp_fu_236_p_ce = grp_fu_324_ce;
assign grp_fu_236_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_din0;
assign grp_fu_236_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_324_p_din1;
assign grp_fu_240_p_ce = grp_fu_328_ce;
assign grp_fu_240_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_din0;
assign grp_fu_240_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_328_p_din1;
assign grp_fu_244_p_ce = grp_fu_332_ce;
assign grp_fu_244_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_din0;
assign grp_fu_244_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_332_p_din1;
assign grp_fu_248_p_ce = grp_fu_288_ce;
assign grp_fu_248_p_din0 = grp_fu_288_p0;
assign grp_fu_248_p_din1 = grp_fu_288_p1;
assign grp_fu_252_p_ce = grp_fu_292_ce;
assign grp_fu_252_p_din0 = grp_fu_292_p0;
assign grp_fu_252_p_din1 = grp_fu_292_p1;
assign grp_fu_256_p_ce = grp_fu_296_ce;
assign grp_fu_256_p_din0 = grp_fu_296_p0;
assign grp_fu_256_p_din1 = grp_fu_296_p1;
assign grp_fu_260_p_ce = grp_fu_300_ce;
assign grp_fu_260_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_din0;
assign grp_fu_260_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_300_p_din1;
assign grp_fu_264_p_ce = grp_fu_304_ce;
assign grp_fu_264_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_din0;
assign grp_fu_264_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_304_p_din1;
assign grp_fu_268_p_ce = grp_fu_308_ce;
assign grp_fu_268_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_din0;
assign grp_fu_268_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_308_p_din1;
assign grp_fu_272_p_ce = grp_fu_312_ce;
assign grp_fu_272_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_din0;
assign grp_fu_272_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_312_p_din1;
assign grp_fu_276_p_ce = grp_fu_316_ce;
assign grp_fu_276_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_din0;
assign grp_fu_276_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_316_p_din1;
assign grp_fu_280_p_ce = grp_fu_320_ce;
assign grp_fu_280_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_din0;
assign grp_fu_280_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_grp_fu_320_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_ap_start_reg;
assign icmp_ln31_fu_154_p2 = ((v5_fu_78 < 8'd190) ? 1'b1 : 1'b0);
assign lshr_ln_fu_160_p4 = {{v5_fu_78[7:1]}};
assign mul_ln38_fu_174_p0 = mul_ln38_fu_174_p00;
assign mul_ln38_fu_174_p00 = lshr_ln_fu_160_p4;
assign mul_ln38_fu_174_p1 = 15'd220;
assign trunc_ln31_fu_191_p1 = v5_1_reg_223[2:0];
assign v224_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_address0;
assign v224_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_address1;
assign v224_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_ce0;
assign v224_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_0_ce1;
assign v224_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_address0;
assign v224_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_address1;
assign v224_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_ce0;
assign v224_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_1_ce1;
assign v224_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_address0;
assign v224_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_address1;
assign v224_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_ce0;
assign v224_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_2_ce1;
assign v224_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_address0;
assign v224_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_address1;
assign v224_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_ce0;
assign v224_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_3_ce1;
assign v224_4_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_address0;
assign v224_4_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_address1;
assign v224_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_ce0;
assign v224_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_4_ce1;
assign v224_5_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_address0;
assign v224_5_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_address1;
assign v224_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_ce0;
assign v224_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_5_ce1;
assign v224_6_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_address0;
assign v224_6_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_address1;
assign v224_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_ce0;
assign v224_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v224_6_ce1;
assign v224_7_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_address0;
assign v224_7_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_address1;
assign v224_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_ce0;
assign v224_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v224_7_ce1;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_94_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_121_v228_1_ce1;
assign v236_read = v236_read_local;
endmodule 