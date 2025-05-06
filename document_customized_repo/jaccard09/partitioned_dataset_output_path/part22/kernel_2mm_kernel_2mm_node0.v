
module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v4,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_opcode,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_opcode,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_opcode,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_opcode,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_opcode,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_opcode,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_opcode,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_opcode,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_opcode,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_opcode,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_opcode,grp_fu_228_p_dout0,grp_fu_228_p_ce,grp_fu_248_p_din0,grp_fu_248_p_din1,grp_fu_248_p_opcode,grp_fu_248_p_dout0,grp_fu_248_p_ce,grp_fu_252_p_din0,grp_fu_252_p_din1,grp_fu_252_p_dout0,grp_fu_252_p_ce,grp_fu_256_p_din0,grp_fu_256_p_din1,grp_fu_256_p_dout0,grp_fu_256_p_ce,grp_fu_260_p_din0,grp_fu_260_p_din1,grp_fu_260_p_dout0,grp_fu_260_p_ce,grp_fu_264_p_din0,grp_fu_264_p_din1,grp_fu_264_p_dout0,grp_fu_264_p_ce,grp_fu_268_p_din0,grp_fu_268_p_din1,grp_fu_268_p_dout0,grp_fu_268_p_ce,grp_fu_272_p_din0,grp_fu_272_p_din1,grp_fu_272_p_dout0,grp_fu_272_p_ce,grp_fu_276_p_din0,grp_fu_276_p_din1,grp_fu_276_p_dout0,grp_fu_276_p_ce,grp_fu_280_p_din0,grp_fu_280_p_din1,grp_fu_280_p_dout0,grp_fu_280_p_ce,grp_fu_284_p_din0,grp_fu_284_p_din1,grp_fu_284_p_dout0,grp_fu_284_p_ce,grp_fu_232_p_din0,grp_fu_232_p_din1,grp_fu_232_p_dout0,grp_fu_232_p_ce,grp_fu_236_p_din0,grp_fu_236_p_din1,grp_fu_236_p_dout0,grp_fu_236_p_ce,grp_fu_240_p_din0,grp_fu_240_p_din1,grp_fu_240_p_dout0,grp_fu_240_p_ce,grp_fu_244_p_din0,grp_fu_244_p_din1,grp_fu_244_p_dout0,grp_fu_244_p_ce);  
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
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
output  [12:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [12:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [12:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [12:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [12:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [12:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [12:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [12:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [12:0] v229_4_address0;
output   v229_4_ce0;
output   v229_4_we0;
output  [31:0] v229_4_d0;
input  [31:0] v229_4_q0;
output  [12:0] v229_4_address1;
output   v229_4_ce1;
output   v229_4_we1;
output  [31:0] v229_4_d1;
input  [31:0] v229_4_q1;
output  [12:0] v229_5_address0;
output   v229_5_ce0;
output   v229_5_we0;
output  [31:0] v229_5_d0;
input  [31:0] v229_5_q0;
output  [12:0] v229_5_address1;
output   v229_5_ce1;
output   v229_5_we1;
output  [31:0] v229_5_d1;
input  [31:0] v229_5_q1;
output  [12:0] v229_6_address0;
output   v229_6_ce0;
output   v229_6_we0;
output  [31:0] v229_6_d0;
input  [31:0] v229_6_q0;
output  [12:0] v229_6_address1;
output   v229_6_ce1;
output   v229_6_we1;
output  [31:0] v229_6_d1;
input  [31:0] v229_6_q1;
output  [12:0] v229_7_address0;
output   v229_7_ce0;
output   v229_7_we0;
output  [31:0] v229_7_d0;
input  [31:0] v229_7_q0;
output  [12:0] v229_7_address1;
output   v229_7_ce1;
output   v229_7_we1;
output  [31:0] v229_7_d1;
input  [31:0] v229_7_q1;
input  [31:0] v4;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
output  [1:0] grp_fu_180_p_opcode;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
output  [1:0] grp_fu_188_p_opcode;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
output  [1:0] grp_fu_192_p_opcode;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
output  [1:0] grp_fu_196_p_opcode;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
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
output  [31:0] grp_fu_248_p_din0;
output  [31:0] grp_fu_248_p_din1;
output  [1:0] grp_fu_248_p_opcode;
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
output  [31:0] grp_fu_284_p_din0;
output  [31:0] grp_fu_284_p_din1;
input  [31:0] grp_fu_284_p_dout0;
output   grp_fu_284_p_ce;
output  [31:0] grp_fu_232_p_din0;
output  [31:0] grp_fu_232_p_din1;
input  [31:0] grp_fu_232_p_dout0;
output   grp_fu_232_p_ce;
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
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_740;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_274_p2;
reg   [15:0] add_ln31_1_reg_745;
wire   [7:0] add_ln31_fu_286_p2;
reg   [7:0] add_ln31_reg_753;
wire   [15:0] zext_ln31_fu_292_p1;
reg   [15:0] zext_ln31_reg_758;
wire   [0:0] cmp11_fu_296_p2;
reg   [0:0] cmp11_reg_771;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_312_p2;
reg   [7:0] add_ln32_reg_784;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_reg_794;
reg   [4:0] tmp_s_reg_804;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_45_reg_814;
reg   [4:0] tmp_46_reg_824;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_47_reg_839;
reg   [4:0] tmp_48_reg_849;
reg   [31:0] v224_load_reg_854;
wire    ap_CS_fsm_state7;
reg   [4:0] tmp_49_reg_874;
reg   [31:0] v224_load_1_reg_879;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_884;
reg   [31:0] v224_load_3_reg_899;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_904;
reg   [31:0] v224_load_5_reg_919;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_924;
wire   [2:0] trunc_ln32_fu_502_p1;
reg   [2:0] trunc_ln32_reg_939;
wire    ap_CS_fsm_state11;
wire   [12:0] mul_ln34_fu_520_p2;
reg   [12:0] mul_ln34_reg_945;
wire   [12:0] mul_ln49_fu_529_p2;
reg   [12:0] mul_ln49_reg_950;
wire   [12:0] mul_ln62_fu_538_p2;
reg   [12:0] mul_ln62_reg_955;
wire   [12:0] mul_ln75_fu_547_p2;
reg   [12:0] mul_ln75_reg_960;
wire   [12:0] mul_ln88_fu_556_p2;
reg   [12:0] mul_ln88_reg_965;
wire   [12:0] mul_ln101_fu_565_p2;
reg   [12:0] mul_ln101_reg_970;
wire   [12:0] mul_ln114_fu_574_p2;
reg   [12:0] mul_ln114_reg_975;
wire   [12:0] mul_ln127_fu_583_p2;
reg   [12:0] mul_ln127_reg_980;
reg   [31:0] v224_load_7_reg_985;
wire   [12:0] mul_ln140_fu_599_p2;
reg   [12:0] mul_ln140_reg_990;
reg   [31:0] v224_load_8_reg_995;
wire   [31:0] v11_fu_605_p1;
reg   [31:0] v11_reg_1000;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_609_p1;
reg   [31:0] v24_reg_1005;
wire   [31:0] v35_fu_613_p1;
reg   [31:0] v35_reg_1010;
wire   [31:0] v46_fu_617_p1;
reg   [31:0] v46_reg_1015;
wire   [31:0] v57_fu_621_p1;
reg   [31:0] v57_reg_1020;
wire   [31:0] v68_fu_625_p1;
reg   [31:0] v68_reg_1025;
wire   [31:0] v79_fu_629_p1;
reg   [31:0] v79_reg_1030;
wire   [31:0] v90_fu_633_p1;
reg   [31:0] v90_reg_1035;
wire   [31:0] v101_fu_637_p1;
reg   [31:0] v101_reg_1040;
wire   [0:0] empty_162_fu_641_p2;
reg   [0:0] empty_162_reg_1045;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_ce;
reg   [7:0] v6_reg_201;
wire   [0:0] icmp_ln31_fu_280_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start_reg;
wire   [63:0] p_cast3613_fu_406_p1;
wire   [63:0] p_cast_fu_450_p1;
wire   [63:0] p_cast3614_fu_454_p1;
wire   [63:0] p_cast3615_fu_478_p1;
wire   [63:0] p_cast3616_fu_482_p1;
wire   [63:0] p_cast3617_fu_486_p1;
wire   [63:0] p_cast3618_fu_490_p1;
wire   [63:0] p_cast3619_fu_494_p1;
wire   [63:0] p_cast3620_fu_498_p1;
reg   [15:0] phi_mul_fu_100;
wire   [0:0] icmp_ln32_fu_302_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_104;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [7:0] empty_137_fu_326_p2;
wire   [7:0] empty_140_fu_346_p2;
wire   [7:0] empty_143_fu_366_p2;
wire   [7:0] empty_146_fu_386_p2;
wire   [15:0] grp_fu_647_p3;
wire   [7:0] empty_149_fu_410_p2;
wire   [7:0] empty_152_fu_430_p2;
wire   [15:0] grp_fu_655_p3;
wire   [15:0] grp_fu_663_p3;
wire   [7:0] empty_155_fu_458_p2;
wire   [15:0] grp_fu_671_p3;
wire   [15:0] grp_fu_679_p3;
wire   [15:0] grp_fu_687_p3;
wire   [15:0] grp_fu_695_p3;
wire   [15:0] grp_fu_703_p3;
wire   [15:0] grp_fu_711_p4;
wire   [4:0] lshr_ln_fu_506_p4;
wire   [4:0] mul_ln34_fu_520_p0;
wire   [8:0] mul_ln34_fu_520_p1;
wire   [4:0] mul_ln49_fu_529_p0;
wire   [8:0] mul_ln49_fu_529_p1;
wire   [4:0] mul_ln62_fu_538_p0;
wire   [8:0] mul_ln62_fu_538_p1;
wire   [4:0] mul_ln75_fu_547_p0;
wire   [8:0] mul_ln75_fu_547_p1;
wire   [4:0] mul_ln88_fu_556_p0;
wire   [8:0] mul_ln88_fu_556_p1;
wire   [4:0] mul_ln101_fu_565_p0;
wire   [8:0] mul_ln101_fu_565_p1;
wire   [4:0] mul_ln114_fu_574_p0;
wire   [8:0] mul_ln114_fu_574_p1;
wire   [4:0] mul_ln127_fu_583_p0;
wire   [8:0] mul_ln127_fu_583_p1;
wire   [4:0] empty_161_fu_589_p2;
wire   [4:0] mul_ln140_fu_599_p0;
wire   [8:0] mul_ln140_fu_599_p1;
wire   [7:0] grp_fu_647_p0;
wire   [7:0] grp_fu_647_p1;
wire   [7:0] grp_fu_647_p2;
wire   [7:0] grp_fu_655_p0;
wire   [7:0] grp_fu_655_p1;
wire   [7:0] grp_fu_655_p2;
wire   [7:0] grp_fu_663_p0;
wire   [7:0] grp_fu_663_p1;
wire   [7:0] grp_fu_663_p2;
wire   [7:0] grp_fu_671_p0;
wire   [7:0] grp_fu_671_p1;
wire   [7:0] grp_fu_671_p2;
wire   [7:0] grp_fu_679_p0;
wire   [7:0] grp_fu_679_p1;
wire   [7:0] grp_fu_679_p2;
wire   [7:0] grp_fu_687_p0;
wire   [7:0] grp_fu_687_p1;
wire   [7:0] grp_fu_687_p2;
wire   [7:0] grp_fu_695_p0;
wire   [7:0] grp_fu_695_p1;
wire   [7:0] grp_fu_695_p2;
wire   [7:0] grp_fu_703_p0;
wire   [7:0] grp_fu_703_p1;
wire   [7:0] grp_fu_703_p2;
wire   [3:0] grp_fu_711_p1;
wire   [7:0] grp_fu_711_p2;
wire   [7:0] grp_fu_711_p3;
reg    grp_fu_1050_ce;
reg    grp_fu_1054_ce;
reg    grp_fu_1058_ce;
reg    grp_fu_1062_ce;
reg    grp_fu_1066_ce;
reg    grp_fu_1070_ce;
reg    grp_fu_1074_ce;
reg    grp_fu_1078_ce;
reg    grp_fu_1082_ce;
reg    grp_fu_1086_ce;
reg    grp_fu_1090_ce;
reg    grp_fu_1094_ce;
reg    grp_fu_1098_ce;
reg    grp_fu_1102_ce;
reg    grp_fu_1106_ce;
reg    grp_fu_1110_ce;
reg    grp_fu_1114_ce;
reg    grp_fu_1118_ce;
reg    grp_fu_1122_ce;
reg    grp_fu_1126_ce;
reg    grp_fu_1130_ce;
reg    grp_fu_1134_ce;
reg    grp_fu_1138_ce;
reg    grp_fu_1142_ce;
reg    grp_fu_1146_ce;
reg    grp_fu_1150_ce;
reg    grp_fu_1154_ce;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire   [15:0] grp_fu_647_p00;
wire   [15:0] grp_fu_655_p00;
wire   [15:0] grp_fu_663_p00;
wire   [15:0] grp_fu_671_p00;
wire   [15:0] grp_fu_679_p00;
wire   [15:0] grp_fu_687_p00;
wire   [15:0] grp_fu_695_p00;
wire   [15:0] grp_fu_703_p00;
wire   [12:0] mul_ln101_fu_565_p00;
wire   [12:0] mul_ln114_fu_574_p00;
wire   [12:0] mul_ln127_fu_583_p00;
wire   [12:0] mul_ln140_fu_599_p00;
wire   [12:0] mul_ln34_fu_520_p00;
wire   [12:0] mul_ln49_fu_529_p00;
wire   [12:0] mul_ln62_fu_538_p00;
wire   [12:0] mul_ln75_fu_547_p00;
wire   [12:0] mul_ln88_fu_556_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start_reg = 1'b0;
#0 phi_mul_fu_100 = 16'd0;
#0 v5_fu_104 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_213(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_address0),.v229_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_ce0),.v229_4_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_we0),.v229_4_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_d0),.v229_4_q0(v229_4_q0),.v229_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_address1),.v229_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_ce1),.v229_4_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_we1),.v229_4_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_d1),.v229_4_q1(v229_4_q1),.v229_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_address0),.v229_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_ce0),.v229_5_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_we0),.v229_5_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_d0),.v229_5_q0(v229_5_q0),.v229_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_address1),.v229_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_ce1),.v229_5_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_we1),.v229_5_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_d1),.v229_5_q1(v229_5_q1),.v229_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_address0),.v229_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_ce0),.v229_6_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_we0),.v229_6_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_d0),.v229_6_q0(v229_6_q0),.v229_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_address1),.v229_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_ce1),.v229_6_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_we1),.v229_6_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_d1),.v229_6_q1(v229_6_q1),.v229_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_address0),.v229_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_ce0),.v229_7_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_we0),.v229_7_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_d0),.v229_7_q0(v229_7_q0),.v229_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_address1),.v229_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_ce1),.v229_7_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_we1),.v229_7_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_d1),.v229_7_q1(v229_7_q1),.phi_mul(phi_mul_load_reg_740),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_945),.mul_ln140(mul_ln140_reg_990),.mul_ln127(mul_ln127_reg_980),.mul_ln114(mul_ln114_reg_975),.mul_ln101(mul_ln101_reg_970),.mul_ln88(mul_ln88_reg_965),.mul_ln75(mul_ln75_reg_960),.mul_ln62(mul_ln62_reg_955),.mul_ln49(mul_ln49_reg_950),.empty_23(trunc_ln32_reg_939),.v4(v4),.cmp11(cmp11_reg_771),.v11(v11_reg_1000),.v24(v24_reg_1005),.v35(v35_reg_1010),.v46(v46_reg_1015),.v57(v57_reg_1020),.v68(v68_reg_1025),.v79(v79_reg_1030),.v90(v90_reg_1035),.v101(v101_reg_1040),.empty(empty_162_reg_1045),.grp_fu_1050_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_din0),.grp_fu_1050_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_din1),.grp_fu_1050_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_opcode),.grp_fu_1050_p_dout0(grp_fu_180_p_dout0),.grp_fu_1050_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_ce),.grp_fu_1054_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_din0),.grp_fu_1054_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_din1),.grp_fu_1054_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_opcode),.grp_fu_1054_p_dout0(grp_fu_184_p_dout0),.grp_fu_1054_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_ce),.grp_fu_1058_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_din0),.grp_fu_1058_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_din1),.grp_fu_1058_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_opcode),.grp_fu_1058_p_dout0(grp_fu_188_p_dout0),.grp_fu_1058_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_ce),.grp_fu_1062_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_din0),.grp_fu_1062_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_din1),.grp_fu_1062_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_opcode),.grp_fu_1062_p_dout0(grp_fu_192_p_dout0),.grp_fu_1062_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_ce),.grp_fu_1066_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_din0),.grp_fu_1066_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_din1),.grp_fu_1066_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_opcode),.grp_fu_1066_p_dout0(grp_fu_196_p_dout0),.grp_fu_1066_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_ce),.grp_fu_1070_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_din0),.grp_fu_1070_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_din1),.grp_fu_1070_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_opcode),.grp_fu_1070_p_dout0(grp_fu_200_p_dout0),.grp_fu_1070_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_ce),.grp_fu_1074_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_din0),.grp_fu_1074_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_din1),.grp_fu_1074_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_opcode),.grp_fu_1074_p_dout0(grp_fu_204_p_dout0),.grp_fu_1074_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_ce),.grp_fu_1078_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_din0),.grp_fu_1078_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_din1),.grp_fu_1078_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_opcode),.grp_fu_1078_p_dout0(grp_fu_208_p_dout0),.grp_fu_1078_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_ce),.grp_fu_1082_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_din0),.grp_fu_1082_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_din1),.grp_fu_1082_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_opcode),.grp_fu_1082_p_dout0(grp_fu_212_p_dout0),.grp_fu_1082_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_ce),.grp_fu_1086_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_din0),.grp_fu_1086_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_din1),.grp_fu_1086_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_opcode),.grp_fu_1086_p_dout0(grp_fu_216_p_dout0),.grp_fu_1086_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_ce),.grp_fu_1090_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_din0),.grp_fu_1090_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_din1),.grp_fu_1090_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_opcode),.grp_fu_1090_p_dout0(grp_fu_220_p_dout0),.grp_fu_1090_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_ce),.grp_fu_1094_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_din0),.grp_fu_1094_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_din1),.grp_fu_1094_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_opcode),.grp_fu_1094_p_dout0(grp_fu_224_p_dout0),.grp_fu_1094_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_ce),.grp_fu_1098_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_din0),.grp_fu_1098_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_din1),.grp_fu_1098_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_opcode),.grp_fu_1098_p_dout0(grp_fu_228_p_dout0),.grp_fu_1098_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_ce),.grp_fu_1102_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_din0),.grp_fu_1102_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_din1),.grp_fu_1102_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_opcode),.grp_fu_1102_p_dout0(grp_fu_248_p_dout0),.grp_fu_1102_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_ce),.grp_fu_1106_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_din0),.grp_fu_1106_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_din1),.grp_fu_1106_p_dout0(grp_fu_252_p_dout0),.grp_fu_1106_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_ce),.grp_fu_1110_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_din0),.grp_fu_1110_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_din1),.grp_fu_1110_p_dout0(grp_fu_256_p_dout0),.grp_fu_1110_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_ce),.grp_fu_1114_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_din0),.grp_fu_1114_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_din1),.grp_fu_1114_p_dout0(grp_fu_260_p_dout0),.grp_fu_1114_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_ce),.grp_fu_1118_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_din0),.grp_fu_1118_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_din1),.grp_fu_1118_p_dout0(grp_fu_264_p_dout0),.grp_fu_1118_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_ce),.grp_fu_1122_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_din0),.grp_fu_1122_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_din1),.grp_fu_1122_p_dout0(grp_fu_268_p_dout0),.grp_fu_1122_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_ce),.grp_fu_1126_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_din0),.grp_fu_1126_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_din1),.grp_fu_1126_p_dout0(grp_fu_272_p_dout0),.grp_fu_1126_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_ce),.grp_fu_1130_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_din0),.grp_fu_1130_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_din1),.grp_fu_1130_p_dout0(grp_fu_276_p_dout0),.grp_fu_1130_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_ce),.grp_fu_1134_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_din0),.grp_fu_1134_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_din1),.grp_fu_1134_p_dout0(grp_fu_280_p_dout0),.grp_fu_1134_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_ce),.grp_fu_1138_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_din0),.grp_fu_1138_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_din1),.grp_fu_1138_p_dout0(grp_fu_284_p_dout0),.grp_fu_1138_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_ce),.grp_fu_1142_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_din0),.grp_fu_1142_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_din1),.grp_fu_1142_p_dout0(grp_fu_232_p_dout0),.grp_fu_1142_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_ce),.grp_fu_1146_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_din0),.grp_fu_1146_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_din1),.grp_fu_1146_p_dout0(grp_fu_236_p_dout0),.grp_fu_1146_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_ce),.grp_fu_1150_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_din0),.grp_fu_1150_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_din1),.grp_fu_1150_p_dout0(grp_fu_240_p_dout0),.grp_fu_1150_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_ce),.grp_fu_1154_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_din0),.grp_fu_1154_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_din1),.grp_fu_1154_p_dout0(grp_fu_244_p_dout0),.grp_fu_1154_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U457(.din0(mul_ln34_fu_520_p0),.din1(mul_ln34_fu_520_p1),.dout(mul_ln34_fu_520_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U458(.din0(mul_ln49_fu_529_p0),.din1(mul_ln49_fu_529_p1),.dout(mul_ln49_fu_529_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U459(.din0(mul_ln62_fu_538_p0),.din1(mul_ln62_fu_538_p1),.dout(mul_ln62_fu_538_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U460(.din0(mul_ln75_fu_547_p0),.din1(mul_ln75_fu_547_p1),.dout(mul_ln75_fu_547_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U461(.din0(mul_ln88_fu_556_p0),.din1(mul_ln88_fu_556_p1),.dout(mul_ln88_fu_556_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U462(.din0(mul_ln101_fu_565_p0),.din1(mul_ln101_fu_565_p1),.dout(mul_ln101_fu_565_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U463(.din0(mul_ln114_fu_574_p0),.din1(mul_ln114_fu_574_p1),.dout(mul_ln114_fu_574_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U464(.din0(mul_ln127_fu_583_p0),.din1(mul_ln127_fu_583_p1),.dout(mul_ln127_fu_583_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U465(.din0(mul_ln140_fu_599_p0),.din1(mul_ln140_fu_599_p1),.dout(mul_ln140_fu_599_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U466(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_647_p0),.din1(grp_fu_647_p1),.din2(grp_fu_647_p2),.ce(1'b1),.dout(grp_fu_647_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U467(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_655_p0),.din1(grp_fu_655_p1),.din2(grp_fu_655_p2),.ce(1'b1),.dout(grp_fu_655_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U468(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_663_p0),.din1(grp_fu_663_p1),.din2(grp_fu_663_p2),.ce(1'b1),.dout(grp_fu_663_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U469(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_671_p0),.din1(grp_fu_671_p1),.din2(grp_fu_671_p2),.ce(1'b1),.dout(grp_fu_671_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U470(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_679_p0),.din1(grp_fu_679_p1),.din2(grp_fu_679_p2),.ce(1'b1),.dout(grp_fu_679_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U471(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_687_p0),.din1(grp_fu_687_p1),.din2(grp_fu_687_p2),.ce(1'b1),.dout(grp_fu_687_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U472(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_695_p0),.din1(grp_fu_695_p1),.din2(grp_fu_695_p2),.ce(1'b1),.dout(grp_fu_695_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U473(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_703_p0),.din1(grp_fu_703_p1),.din2(grp_fu_703_p2),.ce(1'b1),.dout(grp_fu_703_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U474(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_201),.din1(grp_fu_711_p1),.din2(grp_fu_711_p2),.din3(grp_fu_711_p3),.ce(1'b1),.dout(grp_fu_711_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_100 <= 16'd0;
    end else if (((icmp_ln32_fu_302_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_100 <= add_ln31_1_reg_745;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_104 <= 8'd0;
    end else if (((icmp_ln32_fu_302_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_104 <= add_ln31_reg_753;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_201 <= add_ln32_reg_784;
    end else if (((icmp_ln31_fu_280_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_201 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_745 <= add_ln31_1_fu_274_p2;
        add_ln31_reg_753 <= add_ln31_fu_286_p2;
        cmp11_reg_771 <= cmp11_fu_296_p2;
        phi_mul_load_reg_740 <= phi_mul_fu_100;
        zext_ln31_reg_758[7 : 0] <= zext_ln31_fu_292_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_784 <= add_ln32_fu_312_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_162_reg_1045 <= empty_162_fu_641_p2;
        v101_reg_1040 <= v101_fu_637_p1;
        v11_reg_1000 <= v11_fu_605_p1;
        v24_reg_1005 <= v24_fu_609_p1;
        v35_reg_1010 <= v35_fu_613_p1;
        v46_reg_1015 <= v46_fu_617_p1;
        v57_reg_1020 <= v57_fu_621_p1;
        v68_reg_1025 <= v68_fu_625_p1;
        v79_reg_1030 <= v79_fu_629_p1;
        v90_reg_1035 <= v90_fu_633_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_970 <= mul_ln101_fu_565_p2;
        mul_ln114_reg_975 <= mul_ln114_fu_574_p2;
        mul_ln127_reg_980 <= mul_ln127_fu_583_p2;
        mul_ln140_reg_990 <= mul_ln140_fu_599_p2;
        mul_ln34_reg_945 <= mul_ln34_fu_520_p2;
        mul_ln49_reg_950 <= mul_ln49_fu_529_p2;
        mul_ln62_reg_955 <= mul_ln62_fu_538_p2;
        mul_ln75_reg_960 <= mul_ln75_fu_547_p2;
        mul_ln88_reg_965 <= mul_ln88_fu_556_p2;
        trunc_ln32_reg_939 <= trunc_ln32_fu_502_p1;
        v224_load_7_reg_985 <= v224_q0;
        v224_load_8_reg_995 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_45_reg_814 <= {{empty_143_fu_366_p2[7:3]}};
        tmp_46_reg_824 <= {{empty_146_fu_386_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_47_reg_839 <= {{empty_149_fu_410_p2[7:3]}};
        tmp_48_reg_849 <= {{empty_152_fu_430_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_49_reg_874 <= {{empty_155_fu_458_p2[7:3]}};
        v224_load_reg_854 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_794 <= {{empty_137_fu_326_p2[7:3]}};
        tmp_s_reg_804 <= {{empty_140_fu_346_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_879 <= v224_q1;
        v224_load_2_reg_884 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_899 <= v224_q0;
        v224_load_4_reg_904 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_919 <= v224_q0;
        v224_load_6_reg_924 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_280_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_280_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1050_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_ce;
    end else begin
        grp_fu_1050_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1054_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_ce;
    end else begin
        grp_fu_1054_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1058_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_ce;
    end else begin
        grp_fu_1058_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1062_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_ce;
    end else begin
        grp_fu_1062_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1066_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_ce;
    end else begin
        grp_fu_1066_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1070_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_ce;
    end else begin
        grp_fu_1070_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1074_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_ce;
    end else begin
        grp_fu_1074_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1078_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_ce;
    end else begin
        grp_fu_1078_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1082_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_ce;
    end else begin
        grp_fu_1082_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1086_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_ce;
    end else begin
        grp_fu_1086_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1090_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_ce;
    end else begin
        grp_fu_1090_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1094_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_ce;
    end else begin
        grp_fu_1094_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1098_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_ce;
    end else begin
        grp_fu_1098_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1102_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_ce;
    end else begin
        grp_fu_1102_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1106_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_ce;
    end else begin
        grp_fu_1106_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1110_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_ce;
    end else begin
        grp_fu_1110_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1114_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_ce;
    end else begin
        grp_fu_1114_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1118_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_ce;
    end else begin
        grp_fu_1118_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1122_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_ce;
    end else begin
        grp_fu_1122_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1126_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_ce;
    end else begin
        grp_fu_1126_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1130_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_ce;
    end else begin
        grp_fu_1130_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1134_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_ce;
    end else begin
        grp_fu_1134_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1138_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_ce;
    end else begin
        grp_fu_1138_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1142_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_ce;
    end else begin
        grp_fu_1142_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1146_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_ce;
    end else begin
        grp_fu_1146_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1150_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_ce;
    end else begin
        grp_fu_1150_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1154_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_ce;
    end else begin
        grp_fu_1154_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast3619_fu_494_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast3617_fu_486_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast3615_fu_478_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast3614_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast3613_fu_406_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast3620_fu_498_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast3618_fu_490_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast3616_fu_482_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_450_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
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
            if (((icmp_ln31_fu_280_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_302_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_274_p2 = (phi_mul_fu_100 + 16'd220);
assign add_ln31_fu_286_p2 = (v5_fu_104 + 8'd1);
assign add_ln32_fu_312_p2 = (v6_reg_201 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_296_p2 = ((v5_fu_104 == 8'd0) ? 1'b1 : 1'b0);
assign empty_137_fu_326_p2 = (v6_reg_201 + 8'd1);
assign empty_140_fu_346_p2 = (v6_reg_201 + 8'd2);
assign empty_143_fu_366_p2 = (v6_reg_201 + 8'd3);
assign empty_146_fu_386_p2 = (v6_reg_201 + 8'd4);
assign empty_149_fu_410_p2 = (v6_reg_201 + 8'd5);
assign empty_152_fu_430_p2 = (v6_reg_201 + 8'd6);
assign empty_155_fu_458_p2 = (v6_reg_201 + 8'd7);
assign empty_161_fu_589_p2 = (lshr_ln_fu_506_p4 + 5'd1);
assign empty_162_fu_641_p2 = ((trunc_ln32_reg_939 == 3'd7) ? 1'b1 : 1'b0);
assign grp_fu_180_p_ce = grp_fu_1050_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1050_p_din1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_184_p_ce = grp_fu_1054_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1054_p_din1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_1058_ce;
assign grp_fu_188_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_din0;
assign grp_fu_188_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1058_p_din1;
assign grp_fu_188_p_opcode = 2'd0;
assign grp_fu_192_p_ce = grp_fu_1062_ce;
assign grp_fu_192_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_din0;
assign grp_fu_192_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1062_p_din1;
assign grp_fu_192_p_opcode = 2'd0;
assign grp_fu_196_p_ce = grp_fu_1066_ce;
assign grp_fu_196_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_din0;
assign grp_fu_196_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1066_p_din1;
assign grp_fu_196_p_opcode = 2'd0;
assign grp_fu_200_p_ce = grp_fu_1070_ce;
assign grp_fu_200_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_din0;
assign grp_fu_200_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1070_p_din1;
assign grp_fu_200_p_opcode = 2'd0;
assign grp_fu_204_p_ce = grp_fu_1074_ce;
assign grp_fu_204_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_din0;
assign grp_fu_204_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1074_p_din1;
assign grp_fu_204_p_opcode = 2'd0;
assign grp_fu_208_p_ce = grp_fu_1078_ce;
assign grp_fu_208_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_din0;
assign grp_fu_208_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1078_p_din1;
assign grp_fu_208_p_opcode = 2'd0;
assign grp_fu_212_p_ce = grp_fu_1082_ce;
assign grp_fu_212_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_din0;
assign grp_fu_212_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1082_p_din1;
assign grp_fu_212_p_opcode = 2'd0;
assign grp_fu_216_p_ce = grp_fu_1086_ce;
assign grp_fu_216_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_din0;
assign grp_fu_216_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1086_p_din1;
assign grp_fu_216_p_opcode = 2'd0;
assign grp_fu_220_p_ce = grp_fu_1090_ce;
assign grp_fu_220_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_din0;
assign grp_fu_220_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1090_p_din1;
assign grp_fu_220_p_opcode = 2'd0;
assign grp_fu_224_p_ce = grp_fu_1094_ce;
assign grp_fu_224_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_din0;
assign grp_fu_224_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1094_p_din1;
assign grp_fu_224_p_opcode = 2'd0;
assign grp_fu_228_p_ce = grp_fu_1098_ce;
assign grp_fu_228_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_din0;
assign grp_fu_228_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1098_p_din1;
assign grp_fu_228_p_opcode = 2'd0;
assign grp_fu_232_p_ce = grp_fu_1142_ce;
assign grp_fu_232_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_din0;
assign grp_fu_232_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1142_p_din1;
assign grp_fu_236_p_ce = grp_fu_1146_ce;
assign grp_fu_236_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_din0;
assign grp_fu_236_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1146_p_din1;
assign grp_fu_240_p_ce = grp_fu_1150_ce;
assign grp_fu_240_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_din0;
assign grp_fu_240_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1150_p_din1;
assign grp_fu_244_p_ce = grp_fu_1154_ce;
assign grp_fu_244_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_din0;
assign grp_fu_244_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1154_p_din1;
assign grp_fu_248_p_ce = grp_fu_1102_ce;
assign grp_fu_248_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_din0;
assign grp_fu_248_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1102_p_din1;
assign grp_fu_248_p_opcode = 2'd0;
assign grp_fu_252_p_ce = grp_fu_1106_ce;
assign grp_fu_252_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_din0;
assign grp_fu_252_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1106_p_din1;
assign grp_fu_256_p_ce = grp_fu_1110_ce;
assign grp_fu_256_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_din0;
assign grp_fu_256_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1110_p_din1;
assign grp_fu_260_p_ce = grp_fu_1114_ce;
assign grp_fu_260_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_din0;
assign grp_fu_260_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1114_p_din1;
assign grp_fu_264_p_ce = grp_fu_1118_ce;
assign grp_fu_264_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_din0;
assign grp_fu_264_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1118_p_din1;
assign grp_fu_268_p_ce = grp_fu_1122_ce;
assign grp_fu_268_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_din0;
assign grp_fu_268_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1122_p_din1;
assign grp_fu_272_p_ce = grp_fu_1126_ce;
assign grp_fu_272_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_din0;
assign grp_fu_272_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1126_p_din1;
assign grp_fu_276_p_ce = grp_fu_1130_ce;
assign grp_fu_276_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_din0;
assign grp_fu_276_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1130_p_din1;
assign grp_fu_280_p_ce = grp_fu_1134_ce;
assign grp_fu_280_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_din0;
assign grp_fu_280_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1134_p_din1;
assign grp_fu_284_p_ce = grp_fu_1138_ce;
assign grp_fu_284_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_din0;
assign grp_fu_284_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_grp_fu_1138_p_din1;
assign grp_fu_647_p0 = grp_fu_647_p00;
assign grp_fu_647_p00 = v6_reg_201;
assign grp_fu_647_p1 = 16'd190;
assign grp_fu_647_p2 = zext_ln31_reg_758;
assign grp_fu_655_p0 = grp_fu_655_p00;
assign grp_fu_655_p00 = empty_137_fu_326_p2;
assign grp_fu_655_p1 = 16'd190;
assign grp_fu_655_p2 = zext_ln31_reg_758;
assign grp_fu_663_p0 = grp_fu_663_p00;
assign grp_fu_663_p00 = empty_140_fu_346_p2;
assign grp_fu_663_p1 = 16'd190;
assign grp_fu_663_p2 = zext_ln31_reg_758;
assign grp_fu_671_p0 = grp_fu_671_p00;
assign grp_fu_671_p00 = empty_143_fu_366_p2;
assign grp_fu_671_p1 = 16'd190;
assign grp_fu_671_p2 = zext_ln31_reg_758;
assign grp_fu_679_p0 = grp_fu_679_p00;
assign grp_fu_679_p00 = empty_146_fu_386_p2;
assign grp_fu_679_p1 = 16'd190;
assign grp_fu_679_p2 = zext_ln31_reg_758;
assign grp_fu_687_p0 = grp_fu_687_p00;
assign grp_fu_687_p00 = empty_149_fu_410_p2;
assign grp_fu_687_p1 = 16'd190;
assign grp_fu_687_p2 = zext_ln31_reg_758;
assign grp_fu_695_p0 = grp_fu_695_p00;
assign grp_fu_695_p00 = empty_152_fu_430_p2;
assign grp_fu_695_p1 = 16'd190;
assign grp_fu_695_p2 = zext_ln31_reg_758;
assign grp_fu_703_p0 = grp_fu_703_p00;
assign grp_fu_703_p00 = empty_155_fu_458_p2;
assign grp_fu_703_p1 = 16'd190;
assign grp_fu_703_p2 = zext_ln31_reg_758;
assign grp_fu_711_p1 = 8'd8;
assign grp_fu_711_p2 = 16'd190;
assign grp_fu_711_p3 = zext_ln31_reg_758;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_ap_start_reg;
assign icmp_ln31_fu_280_p2 = ((v5_fu_104 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_302_p2 = ((v6_reg_201 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_506_p4 = {{v6_reg_201[7:3]}};
assign mul_ln101_fu_565_p0 = mul_ln101_fu_565_p00;
assign mul_ln101_fu_565_p00 = tmp_47_reg_839;
assign mul_ln101_fu_565_p1 = 13'd220;
assign mul_ln114_fu_574_p0 = mul_ln114_fu_574_p00;
assign mul_ln114_fu_574_p00 = tmp_48_reg_849;
assign mul_ln114_fu_574_p1 = 13'd220;
assign mul_ln127_fu_583_p0 = mul_ln127_fu_583_p00;
assign mul_ln127_fu_583_p00 = tmp_49_reg_874;
assign mul_ln127_fu_583_p1 = 13'd220;
assign mul_ln140_fu_599_p0 = mul_ln140_fu_599_p00;
assign mul_ln140_fu_599_p00 = empty_161_fu_589_p2;
assign mul_ln140_fu_599_p1 = 13'd220;
assign mul_ln34_fu_520_p0 = mul_ln34_fu_520_p00;
assign mul_ln34_fu_520_p00 = lshr_ln_fu_506_p4;
assign mul_ln34_fu_520_p1 = 13'd220;
assign mul_ln49_fu_529_p0 = mul_ln49_fu_529_p00;
assign mul_ln49_fu_529_p00 = tmp_reg_794;
assign mul_ln49_fu_529_p1 = 13'd220;
assign mul_ln62_fu_538_p0 = mul_ln62_fu_538_p00;
assign mul_ln62_fu_538_p00 = tmp_s_reg_804;
assign mul_ln62_fu_538_p1 = 13'd220;
assign mul_ln75_fu_547_p0 = mul_ln75_fu_547_p00;
assign mul_ln75_fu_547_p00 = tmp_45_reg_814;
assign mul_ln75_fu_547_p1 = 13'd220;
assign mul_ln88_fu_556_p0 = mul_ln88_fu_556_p00;
assign mul_ln88_fu_556_p00 = tmp_46_reg_824;
assign mul_ln88_fu_556_p1 = 13'd220;
assign p_cast3613_fu_406_p1 = grp_fu_647_p3;
assign p_cast3614_fu_454_p1 = grp_fu_663_p3;
assign p_cast3615_fu_478_p1 = grp_fu_671_p3;
assign p_cast3616_fu_482_p1 = grp_fu_679_p3;
assign p_cast3617_fu_486_p1 = grp_fu_687_p3;
assign p_cast3618_fu_490_p1 = grp_fu_695_p3;
assign p_cast3619_fu_494_p1 = grp_fu_703_p3;
assign p_cast3620_fu_498_p1 = grp_fu_711_p4;
assign p_cast_fu_450_p1 = grp_fu_655_p3;
assign trunc_ln32_fu_502_p1 = v6_reg_201[2:0];
assign v101_fu_637_p1 = v224_load_8_reg_995;
assign v11_fu_605_p1 = v224_load_reg_854;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_address0;
assign v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_address1;
assign v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_ce0;
assign v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v228_ce1;
assign v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_address0;
assign v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_address1;
assign v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_ce1;
assign v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_d0;
assign v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_d1;
assign v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_we0;
assign v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_0_we1;
assign v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_address0;
assign v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_address1;
assign v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_ce1;
assign v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_d0;
assign v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_d1;
assign v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_we0;
assign v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_1_we1;
assign v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_address0;
assign v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_address1;
assign v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_ce0;
assign v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_ce1;
assign v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_d0;
assign v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_d1;
assign v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_we0;
assign v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_2_we1;
assign v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_address0;
assign v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_address1;
assign v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_ce0;
assign v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_ce1;
assign v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_d0;
assign v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_d1;
assign v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_we0;
assign v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_3_we1;
assign v229_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_address0;
assign v229_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_address1;
assign v229_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_ce0;
assign v229_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_ce1;
assign v229_4_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_d0;
assign v229_4_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_d1;
assign v229_4_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_we0;
assign v229_4_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_4_we1;
assign v229_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_address0;
assign v229_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_address1;
assign v229_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_ce0;
assign v229_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_ce1;
assign v229_5_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_d0;
assign v229_5_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_d1;
assign v229_5_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_we0;
assign v229_5_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_5_we1;
assign v229_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_address0;
assign v229_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_address1;
assign v229_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_ce0;
assign v229_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_ce1;
assign v229_6_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_d0;
assign v229_6_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_d1;
assign v229_6_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_we0;
assign v229_6_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_6_we1;
assign v229_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_address0;
assign v229_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_address1;
assign v229_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_ce0;
assign v229_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_ce1;
assign v229_7_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_d0;
assign v229_7_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_d1;
assign v229_7_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_we0;
assign v229_7_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_213_v229_7_we1;
assign v236_read = v236_read_local;
assign v24_fu_609_p1 = v224_load_1_reg_879;
assign v35_fu_613_p1 = v224_load_2_reg_884;
assign v46_fu_617_p1 = v224_load_3_reg_899;
assign v57_fu_621_p1 = v224_load_4_reg_904;
assign v68_fu_625_p1 = v224_load_5_reg_919;
assign v79_fu_629_p1 = v224_load_6_reg_924;
assign v90_fu_633_p1 = v224_load_7_reg_985;
assign zext_ln31_fu_292_p1 = v5_fu_104;
always @ (posedge ap_clk) begin
    zext_ln31_reg_758[15:8] <= 8'b00000000;
end
endmodule 
