module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
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
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [31:0] v4;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v224_address0;
reg v224_ce0;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [14:0] tmp_reg_402;
wire    ap_CS_fsm_state2;
reg   [13:0] tmp_s_reg_407;
reg   [12:0] tmp_8_reg_413;
reg   [0:0] tmp_2_reg_421;
wire   [0:0] icmp_ln31_fu_277_p2;
reg   [0:0] icmp_ln31_reg_426;
wire  signed [15:0] or_ln_fu_283_p3;
reg   [15:0] or_ln_reg_430;
wire    ap_CS_fsm_state3;
wire   [15:0] mul_ln32_fu_290_p2;
reg   [15:0] mul_ln32_reg_435;
wire  signed [15:0] or_ln31_1_fu_296_p3;
reg   [15:0] or_ln31_1_reg_440;
wire    ap_CS_fsm_state5;
wire   [15:0] mul_ln32_1_fu_303_p2;
reg   [15:0] mul_ln32_1_reg_445;
wire  signed [15:0] or_ln31_2_fu_309_p3;
reg   [15:0] or_ln31_2_reg_450;
wire    ap_CS_fsm_state7;
wire   [15:0] mul_ln32_2_fu_316_p2;
reg   [15:0] mul_ln32_2_reg_455;
wire  signed [15:0] or_ln31_3_fu_322_p3;
reg   [15:0] or_ln31_3_reg_460;
wire    ap_CS_fsm_state9;
wire   [15:0] mul_ln32_3_fu_329_p2;
reg   [15:0] mul_ln32_3_reg_465;
wire  signed [15:0] or_ln31_4_fu_335_p5;
reg   [15:0] or_ln31_4_reg_470;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln32_4_fu_345_p2;
reg   [15:0] mul_ln32_4_reg_475;
wire  signed [15:0] or_ln31_5_cast_fu_351_p3;
reg   [15:0] or_ln31_5_cast_reg_480;
wire    ap_CS_fsm_state13;
wire   [15:0] mul_ln38_fu_358_p2;
reg   [15:0] mul_ln38_reg_485;
wire  signed [15:0] or_ln31_6_fu_374_p3;
reg   [15:0] or_ln31_6_reg_490;
wire    ap_CS_fsm_state15;
wire   [15:0] mul_ln32_5_fu_381_p2;
reg   [15:0] mul_ln32_5_reg_495;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start_reg;
wire    ap_CS_fsm_state12;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start_reg;
wire    ap_CS_fsm_state14;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
reg   [63:0] v5_fu_100;
wire   [63:0] add_ln31_fu_364_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [60:0] tmp_9_fu_259_p4;
wire   [63:0] or_ln31_5_fu_269_p3;
wire  signed [15:0] mul_ln32_fu_290_p0;
wire   [8:0] mul_ln32_fu_290_p1;
wire  signed [15:0] mul_ln32_1_fu_303_p0;
wire   [8:0] mul_ln32_1_fu_303_p1;
wire  signed [15:0] mul_ln32_2_fu_316_p0;
wire   [8:0] mul_ln32_2_fu_316_p1;
wire  signed [15:0] mul_ln32_3_fu_329_p0;
wire   [8:0] mul_ln32_3_fu_329_p1;
wire  signed [15:0] mul_ln32_4_fu_345_p0;
wire   [8:0] mul_ln32_4_fu_345_p1;
wire  signed [15:0] mul_ln38_fu_358_p0;
wire   [8:0] mul_ln38_fu_358_p1;
wire  signed [15:0] mul_ln32_5_fu_381_p0;
wire   [8:0] mul_ln32_5_fu_381_p1;
reg   [31:0] grp_fu_500_p0;
reg   [31:0] grp_fu_500_p1;
reg    grp_fu_500_ce;
reg   [31:0] grp_fu_504_p0;
reg   [31:0] grp_fu_504_p1;
reg    grp_fu_504_ce;
reg    grp_fu_508_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start_reg = 1'b0;
#0 v5_fu_100 = 64'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_ready),.v5(v5_fu_100),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v224_ce0),.v224_q0(v224_q0),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_d1),.v229_q1(v229_q1),.v4(v4),.grp_fu_500_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_din0),.grp_fu_500_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_din1),.grp_fu_500_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_opcode),.grp_fu_500_p_dout0(grp_fu_176_p_dout0),.grp_fu_500_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_ce),.grp_fu_504_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_din0),.grp_fu_504_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_din1),.grp_fu_504_p_dout0(grp_fu_180_p_dout0),.grp_fu_504_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_ce),.grp_fu_508_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_din0),.grp_fu_508_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_din1),.grp_fu_508_p_dout0(grp_fu_184_p_dout0),.grp_fu_508_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_23 grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_ready),.zext_ln32_1(or_ln_reg_430),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v224_ce0),.v224_q0(v224_q0),.mul_ln38_1(mul_ln32_reg_435),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_d1),.v229_q1(v229_q1),.grp_fu_500_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_din0),.grp_fu_500_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_din1),.grp_fu_500_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_opcode),.grp_fu_500_p_dout0(grp_fu_176_p_dout0),.grp_fu_500_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_ce),.grp_fu_504_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_din0),.grp_fu_504_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_din1),.grp_fu_504_p_dout0(grp_fu_180_p_dout0),.grp_fu_504_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_24 grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_ready),.zext_ln32_3(or_ln31_1_reg_440),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v224_ce0),.v224_q0(v224_q0),.mul_ln38_2(mul_ln32_1_reg_445),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_d1),.v229_q1(v229_q1),.grp_fu_500_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_din0),.grp_fu_500_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_din1),.grp_fu_500_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_opcode),.grp_fu_500_p_dout0(grp_fu_176_p_dout0),.grp_fu_500_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_ce),.grp_fu_504_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_din0),.grp_fu_504_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_din1),.grp_fu_504_p_dout0(grp_fu_180_p_dout0),.grp_fu_504_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_25 grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_ready),.zext_ln32_5(or_ln31_2_reg_450),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v224_ce0),.v224_q0(v224_q0),.mul_ln38_3(mul_ln32_2_reg_455),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_d1),.v229_q1(v229_q1),.grp_fu_500_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_din0),.grp_fu_500_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_din1),.grp_fu_500_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_opcode),.grp_fu_500_p_dout0(grp_fu_176_p_dout0),.grp_fu_500_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_ce),.grp_fu_504_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_din0),.grp_fu_504_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_din1),.grp_fu_504_p_dout0(grp_fu_180_p_dout0),.grp_fu_504_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_26 grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_ready),.zext_ln32_7(or_ln31_3_reg_460),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v224_ce0),.v224_q0(v224_q0),.mul_ln38_4(mul_ln32_3_reg_465),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_d1),.v229_q1(v229_q1),.grp_fu_500_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_din0),.grp_fu_500_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_din1),.grp_fu_500_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_opcode),.grp_fu_500_p_dout0(grp_fu_176_p_dout0),.grp_fu_500_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_ce),.grp_fu_504_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_din0),.grp_fu_504_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_din1),.grp_fu_504_p_dout0(grp_fu_180_p_dout0),.grp_fu_504_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_27 grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_ready),.zext_ln32_9(or_ln31_4_reg_470),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v224_ce0),.v224_q0(v224_q0),.mul_ln38_5(mul_ln32_4_reg_475),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_d1),.v229_q1(v229_q1),.grp_fu_500_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_din0),.grp_fu_500_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_din1),.grp_fu_500_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_opcode),.grp_fu_500_p_dout0(grp_fu_176_p_dout0),.grp_fu_500_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_ce),.grp_fu_504_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_din0),.grp_fu_504_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_din1),.grp_fu_504_p_dout0(grp_fu_180_p_dout0),.grp_fu_504_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_28 grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_ready),.or_ln31_5(or_ln31_5_cast_reg_480),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v224_ce0),.v224_q0(v224_q0),.mul_ln38_6(mul_ln38_reg_485),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_d1),.v229_q1(v229_q1),.grp_fu_500_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_din0),.grp_fu_500_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_din1),.grp_fu_500_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_opcode),.grp_fu_500_p_dout0(grp_fu_176_p_dout0),.grp_fu_500_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_ce),.grp_fu_504_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_din0),.grp_fu_504_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_din1),.grp_fu_504_p_dout0(grp_fu_180_p_dout0),.grp_fu_504_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_29 grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_ready),.zext_ln32_12(or_ln31_6_reg_490),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v224_ce0),.v224_q0(v224_q0),.mul_ln38_7(mul_ln32_5_reg_495),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_d1),.v229_q1(v229_q1),.grp_fu_500_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_din0),.grp_fu_500_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_din1),.grp_fu_500_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_opcode),.grp_fu_500_p_dout0(grp_fu_176_p_dout0),.grp_fu_500_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_ce),.grp_fu_504_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_din0),.grp_fu_504_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_din1),.grp_fu_504_p_dout0(grp_fu_180_p_dout0),.grp_fu_504_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_ce));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U317(.din0(mul_ln32_fu_290_p0),.din1(mul_ln32_fu_290_p1),.dout(mul_ln32_fu_290_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U318(.din0(mul_ln32_1_fu_303_p0),.din1(mul_ln32_1_fu_303_p1),.dout(mul_ln32_1_fu_303_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U319(.din0(mul_ln32_2_fu_316_p0),.din1(mul_ln32_2_fu_316_p1),.dout(mul_ln32_2_fu_316_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U320(.din0(mul_ln32_3_fu_329_p0),.din1(mul_ln32_3_fu_329_p1),.dout(mul_ln32_3_fu_329_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U321(.din0(mul_ln32_4_fu_345_p0),.din1(mul_ln32_4_fu_345_p1),.dout(mul_ln32_4_fu_345_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U322(.din0(mul_ln38_fu_358_p0),.din1(mul_ln38_fu_358_p1),.dout(mul_ln38_fu_358_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U323(.din0(mul_ln32_5_fu_381_p0),.din1(mul_ln32_5_fu_381_p1),.dout(mul_ln32_5_fu_381_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_100 <= 64'd0;
    end else if (((icmp_ln31_reg_426 == 1'd1) & (grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v5_fu_100 <= add_ln31_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln31_reg_426 <= icmp_ln31_fu_277_p2;
        tmp_2_reg_421 <= v5_fu_100[32'd1];
        tmp_8_reg_413 <= {{v5_fu_100[15:3]}};
        tmp_reg_402 <= {{v5_fu_100[15:1]}};
        tmp_s_reg_407 <= {{v5_fu_100[15:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        mul_ln32_1_reg_445 <= mul_ln32_1_fu_303_p2;
        or_ln31_1_reg_440[15 : 2] <= or_ln31_1_fu_296_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        mul_ln32_2_reg_455 <= mul_ln32_2_fu_316_p2;
        or_ln31_2_reg_450[15 : 2] <= or_ln31_2_fu_309_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mul_ln32_3_reg_465 <= mul_ln32_3_fu_329_p2;
        or_ln31_3_reg_460[15 : 3] <= or_ln31_3_fu_322_p3[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln32_4_reg_475 <= mul_ln32_4_fu_345_p2;
        or_ln31_4_reg_470[1] <= or_ln31_4_fu_335_p5[1];
or_ln31_4_reg_470[15 : 3] <= or_ln31_4_fu_335_p5[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln32_5_reg_495 <= mul_ln32_5_fu_381_p2;
        or_ln31_6_reg_490[15 : 3] <= or_ln31_6_fu_374_p3[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln32_reg_435 <= mul_ln32_fu_290_p2;
        or_ln_reg_430[15 : 1] <= or_ln_fu_283_p3[15 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        mul_ln38_reg_485 <= mul_ln38_fu_358_p2;
        or_ln31_5_cast_reg_480[15 : 3] <= or_ln31_5_cast_fu_351_p3[15 : 3];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln31_reg_426 == 1'd0) & (grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_reg_426 == 1'd0) & (grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_500_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_500_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_500_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_500_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_500_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_500_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_500_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_500_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_ce;
    end else begin
        grp_fu_500_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_500_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_500_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_500_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_500_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_500_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_500_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_500_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_500_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_din0;
    end else begin
        grp_fu_500_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_500_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_500_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_500_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_500_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_500_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_500_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_500_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_500_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_500_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_500_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_500_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_500_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_500_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_500_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_500_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_500_p_din1;
    end else begin
        grp_fu_500_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_504_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_504_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_504_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_504_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_504_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_504_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_504_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_504_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_ce;
    end else begin
        grp_fu_504_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_504_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_504_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_504_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_504_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_504_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_504_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_504_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_504_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_din0;
    end else begin
        grp_fu_504_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_504_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_grp_fu_504_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_504_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_grp_fu_504_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_504_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_grp_fu_504_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_504_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_grp_fu_504_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_504_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_grp_fu_504_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_504_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_grp_fu_504_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_504_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_grp_fu_504_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_504_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_504_p_din1;
    end else begin
        grp_fu_504_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_508_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_ce;
    end else begin
        grp_fu_508_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v224_address0;
    end else begin
        v224_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v224_ce0;
    end else begin
        v224_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_v229_we1;
    end else begin
        v229_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((icmp_ln31_reg_426 == 1'd0) & (grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln31_reg_426 == 1'd1) & (grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_364_p2 = (v5_fu_100 + 64'd8);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
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
assign grp_fu_176_p_ce = grp_fu_500_ce;
assign grp_fu_176_p_din0 = grp_fu_500_p0;
assign grp_fu_176_p_din1 = grp_fu_500_p1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_504_ce;
assign grp_fu_180_p_din0 = grp_fu_504_p0;
assign grp_fu_180_p_din1 = grp_fu_504_p1;
assign grp_fu_184_p_ce = grp_fu_508_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_grp_fu_508_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_128_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_140_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_152_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_164_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_27_fu_176_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_28_fu_188_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_29_fu_200_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_116_ap_start_reg;
assign icmp_ln31_fu_277_p2 = (($signed(or_ln31_5_fu_269_p3) < $signed(64'd190)) ? 1'b1 : 1'b0);
assign mul_ln32_1_fu_303_p0 = {{tmp_s_reg_407}, {2'd2}};
assign mul_ln32_1_fu_303_p1 = 16'd220;
assign mul_ln32_2_fu_316_p0 = {{tmp_s_reg_407}, {2'd3}};
assign mul_ln32_2_fu_316_p1 = 16'd220;
assign mul_ln32_3_fu_329_p0 = {{tmp_8_reg_413}, {3'd4}};
assign mul_ln32_3_fu_329_p1 = 16'd220;
assign mul_ln32_4_fu_345_p0 = {{{{tmp_8_reg_413}, {1'd1}}, {tmp_2_reg_421}}, {1'd1}};
assign mul_ln32_4_fu_345_p1 = 16'd220;
assign mul_ln32_5_fu_381_p0 = {{tmp_8_reg_413}, {3'd7}};
assign mul_ln32_5_fu_381_p1 = 16'd220;
assign mul_ln32_fu_290_p0 = {{tmp_reg_402}, {1'd1}};
assign mul_ln32_fu_290_p1 = 16'd220;
assign mul_ln38_fu_358_p0 = {{tmp_8_reg_413}, {3'd6}};
assign mul_ln38_fu_358_p1 = 16'd220;
assign or_ln31_1_fu_296_p3 = {{tmp_s_reg_407}, {2'd2}};
assign or_ln31_2_fu_309_p3 = {{tmp_s_reg_407}, {2'd3}};
assign or_ln31_3_fu_322_p3 = {{tmp_8_reg_413}, {3'd4}};
assign or_ln31_4_fu_335_p5 = {{{{tmp_8_reg_413}, {1'd1}}, {tmp_2_reg_421}}, {1'd1}};
assign or_ln31_5_cast_fu_351_p3 = {{tmp_8_reg_413}, {3'd6}};
assign or_ln31_5_fu_269_p3 = {{tmp_9_fu_259_p4}, {3'd6}};
assign or_ln31_6_fu_374_p3 = {{tmp_8_reg_413}, {3'd7}};
assign or_ln_fu_283_p3 = {{tmp_reg_402}, {1'd1}};
assign tmp_9_fu_259_p4 = {{v5_fu_100[63:3]}};
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln_reg_430[0] <= 1'b1;
    or_ln31_1_reg_440[1:0] <= 2'b10;
    or_ln31_2_reg_450[1:0] <= 2'b11;
    or_ln31_3_reg_460[2:0] <= 3'b100;
    or_ln31_4_reg_470[0] <= 1'b1;
    or_ln31_4_reg_470[2] <= 1'b1;
    or_ln31_5_cast_reg_480[2:0] <= 3'b110;
    or_ln31_6_reg_490[2:0] <= 3'b111;
end
endmodule 