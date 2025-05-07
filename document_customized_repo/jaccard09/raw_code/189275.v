module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_opcode,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [13:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [13:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [13:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [13:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [13:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [13:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [13:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [13:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
input  [31:0] v113;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
output  [1:0] grp_fu_132_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v226_address0;
reg v226_ce0;
reg[15:0] v226_address1;
reg v226_ce1;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[13:0] v225_0_address0;
reg v225_0_ce0;
reg v225_0_we0;
reg[31:0] v225_0_d0;
reg[13:0] v225_0_address1;
reg v225_0_ce1;
reg v225_0_we1;
reg[31:0] v225_0_d1;
reg[13:0] v225_1_address0;
reg v225_1_ce0;
reg v225_1_we0;
reg[31:0] v225_1_d0;
reg[13:0] v225_1_address1;
reg v225_1_ce1;
reg v225_1_we1;
reg[31:0] v225_1_d1;
reg[13:0] v225_2_address0;
reg v225_2_ce0;
reg v225_2_we0;
reg[31:0] v225_2_d0;
reg[13:0] v225_2_address1;
reg v225_2_ce1;
reg v225_2_we1;
reg[31:0] v225_2_d1;
reg[13:0] v225_3_address0;
reg v225_3_ce0;
reg v225_3_we0;
reg[31:0] v225_3_d0;
reg[13:0] v225_3_address1;
reg v225_3_ce1;
reg v225_3_we1;
reg[31:0] v225_3_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_127_p2;
reg   [7:0] v114_1_reg_199;
wire   [15:0] mul_ln175_fu_137_p2;
reg   [15:0] mul_ln175_reg_209;
wire   [0:0] cmp11_fu_154_p2;
reg   [0:0] cmp11_reg_214;
wire    ap_CS_fsm_state3;
reg   [6:0] tmp_reg_219;
wire   [7:0] or_ln_fu_169_p3;
reg   [7:0] or_ln_reg_224;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln175_1_fu_180_p2;
reg   [15:0] mul_ln175_1_reg_229;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [7:0] v114_fu_62;
wire   [7:0] add_ln168_fu_143_p2;
reg    ap_block_state2;
reg    v236_write_local;
wire   [7:0] mul_ln175_fu_137_p0;
wire   [8:0] mul_ln175_fu_137_p1;
wire   [7:0] mul_ln175_1_fu_180_p0;
wire   [8:0] mul_ln175_1_fu_180_p1;
reg   [31:0] grp_fu_234_p0;
reg   [31:0] grp_fu_234_p1;
reg    grp_fu_234_ce;
wire   [31:0] grp_fu_238_p2;
reg   [31:0] grp_fu_238_p0;
reg   [31:0] grp_fu_238_p1;
reg    grp_fu_238_ce;
wire   [31:0] grp_fu_242_p2;
reg   [31:0] grp_fu_242_p0;
reg   [31:0] grp_fu_242_p1;
reg    grp_fu_242_ce;
wire   [31:0] grp_fu_246_p2;
reg   [31:0] grp_fu_246_p0;
reg   [31:0] grp_fu_246_p1;
reg    grp_fu_246_ce;
reg   [31:0] grp_fu_250_p0;
reg   [31:0] grp_fu_250_p1;
reg    grp_fu_250_ce;
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
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [15:0] mul_ln175_1_fu_180_p00;
wire   [15:0] mul_ln175_fu_137_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start_reg = 1'b0;
#0 v114_fu_62 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_ready),.cmp11(cmp11_reg_214),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_d1),.v225_0_q1(v225_0_q1),.zext_ln168(v114_1_reg_199),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_ce0),.v226_q0(v226_q0),.v226_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_address1),.v226_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_ce1),.v226_q1(v226_q1),.v113(v113),.mul_ln175(mul_ln175_reg_209),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_ce1),.v227_q1(v227_q1),.grp_fu_234_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_din0),.grp_fu_234_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_din1),.grp_fu_234_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_opcode),.grp_fu_234_p_dout0(grp_fu_132_p_dout0),.grp_fu_234_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_ce),.grp_fu_238_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_din0),.grp_fu_238_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_din1),.grp_fu_238_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_opcode),.grp_fu_238_p_dout0(grp_fu_238_p2),.grp_fu_238_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_ce),.grp_fu_242_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_din0),.grp_fu_242_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_din1),.grp_fu_242_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_opcode),.grp_fu_242_p_dout0(grp_fu_242_p2),.grp_fu_242_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_ce),.grp_fu_246_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_din0),.grp_fu_246_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_din1),.grp_fu_246_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_opcode),.grp_fu_246_p_dout0(grp_fu_246_p2),.grp_fu_246_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_ce),.grp_fu_250_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_din0),.grp_fu_250_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_din1),.grp_fu_250_p_dout0(grp_fu_136_p_dout0),.grp_fu_250_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_ce),.grp_fu_254_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_din0),.grp_fu_254_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_din1),.grp_fu_254_p_dout0(grp_fu_140_p_dout0),.grp_fu_254_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_ce),.grp_fu_258_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_din0),.grp_fu_258_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_din1),.grp_fu_258_p_dout0(grp_fu_258_p2),.grp_fu_258_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_ce),.grp_fu_262_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_din0),.grp_fu_262_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_din1),.grp_fu_262_p_dout0(grp_fu_262_p2),.grp_fu_262_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_ce),.grp_fu_266_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_din0),.grp_fu_266_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_din1),.grp_fu_266_p_dout0(grp_fu_266_p2),.grp_fu_266_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_ready),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_d1),.v225_0_q1(v225_0_q1),.zext_ln169_2(or_ln_reg_224),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_ce0),.v226_q0(v226_q0),.v226_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_address1),.v226_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_ce1),.v226_q1(v226_q1),.v113(v113),.mul_ln175_1(mul_ln175_1_reg_229),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_ce1),.v227_q1(v227_q1),.grp_fu_234_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_din0),.grp_fu_234_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_din1),.grp_fu_234_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_opcode),.grp_fu_234_p_dout0(grp_fu_132_p_dout0),.grp_fu_234_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_ce),.grp_fu_238_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_din0),.grp_fu_238_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_din1),.grp_fu_238_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_opcode),.grp_fu_238_p_dout0(grp_fu_238_p2),.grp_fu_238_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_ce),.grp_fu_242_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_din0),.grp_fu_242_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_din1),.grp_fu_242_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_opcode),.grp_fu_242_p_dout0(grp_fu_242_p2),.grp_fu_242_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_ce),.grp_fu_246_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_din0),.grp_fu_246_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_din1),.grp_fu_246_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_opcode),.grp_fu_246_p_dout0(grp_fu_246_p2),.grp_fu_246_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_ce),.grp_fu_250_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_din0),.grp_fu_250_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_din1),.grp_fu_250_p_dout0(grp_fu_136_p_dout0),.grp_fu_250_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_ce),.grp_fu_254_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_din0),.grp_fu_254_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_din1),.grp_fu_254_p_dout0(grp_fu_140_p_dout0),.grp_fu_254_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_ce),.grp_fu_258_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_din0),.grp_fu_258_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_din1),.grp_fu_258_p_dout0(grp_fu_258_p2),.grp_fu_258_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_ce),.grp_fu_262_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_din0),.grp_fu_262_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_din1),.grp_fu_262_p_dout0(grp_fu_262_p2),.grp_fu_262_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_ce),.grp_fu_266_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_din0),.grp_fu_266_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_din1),.grp_fu_266_p_dout0(grp_fu_266_p2),.grp_fu_266_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U83(.din0(mul_ln175_fu_137_p0),.din1(mul_ln175_fu_137_p1),.dout(mul_ln175_fu_137_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U84(.din0(mul_ln175_1_fu_180_p0),.din1(mul_ln175_1_fu_180_p1),.dout(mul_ln175_1_fu_180_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_238_p0),.din1(grp_fu_238_p1),.ce(grp_fu_238_ce),.dout(grp_fu_238_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_242_p0),.din1(grp_fu_242_p1),.ce(grp_fu_242_ce),.dout(grp_fu_242_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_246_p0),.din1(grp_fu_246_p1),.ce(grp_fu_246_ce),.dout(grp_fu_246_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_258_p0),.din1(grp_fu_258_p1),.ce(grp_fu_258_ce),.dout(grp_fu_258_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_262_p0),.din1(grp_fu_262_p1),.ce(grp_fu_262_ce),.dout(grp_fu_262_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_266_p0),.din1(grp_fu_266_p1),.ce(grp_fu_266_ce),.dout(grp_fu_266_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v114_fu_62 <= 8'd0;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_127_p2 == 1'd1))) begin
        v114_fu_62 <= add_ln168_fu_143_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_214 <= cmp11_fu_154_p2;
        tmp_reg_219 <= {{v114_1_reg_199[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln175_1_reg_229 <= mul_ln175_1_fu_180_p2;
        or_ln_reg_224[7 : 1] <= or_ln_fu_169_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln175_reg_209 <= mul_ln175_fu_137_p2;
        v114_1_reg_199 <= v114_fu_62;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_127_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_127_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_234_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_234_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_ce;
    end else begin
        grp_fu_234_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_234_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_234_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_din0;
    end else begin
        grp_fu_234_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_234_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_234_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_234_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_234_p_din1;
    end else begin
        grp_fu_234_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_238_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_238_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_ce;
    end else begin
        grp_fu_238_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_238_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_238_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_din0;
    end else begin
        grp_fu_238_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_238_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_238_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_238_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_238_p_din1;
    end else begin
        grp_fu_238_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_242_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_242_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_ce;
    end else begin
        grp_fu_242_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_242_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_242_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_din0;
    end else begin
        grp_fu_242_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_242_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_242_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_242_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_242_p_din1;
    end else begin
        grp_fu_242_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_246_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_246_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_ce;
    end else begin
        grp_fu_246_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_246_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_246_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_din0;
    end else begin
        grp_fu_246_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_246_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_246_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_246_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_246_p_din1;
    end else begin
        grp_fu_246_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_250_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_250_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_ce;
    end else begin
        grp_fu_250_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_250_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_250_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_din0;
    end else begin
        grp_fu_250_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_250_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_250_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_250_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_250_p_din1;
    end else begin
        grp_fu_250_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_254_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_254_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_ce;
    end else begin
        grp_fu_254_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_254_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_254_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_din0;
    end else begin
        grp_fu_254_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_254_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_254_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_254_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_254_p_din1;
    end else begin
        grp_fu_254_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_258_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_258_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_ce;
    end else begin
        grp_fu_258_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_258_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_258_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_din0;
    end else begin
        grp_fu_258_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_258_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_258_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_258_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_258_p_din1;
    end else begin
        grp_fu_258_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_262_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_262_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_ce;
    end else begin
        grp_fu_262_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_262_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_262_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_din0;
    end else begin
        grp_fu_262_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_262_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_262_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_262_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_262_p_din1;
    end else begin
        grp_fu_262_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_266_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_266_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_ce;
    end else begin
        grp_fu_266_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_266_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_266_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_din0;
    end else begin
        grp_fu_266_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_266_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_grp_fu_266_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_266_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_grp_fu_266_p_din1;
    end else begin
        grp_fu_266_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_address0;
    end else begin
        v225_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_address1;
    end else begin
        v225_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_ce0;
    end else begin
        v225_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_ce1;
    end else begin
        v225_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_d0;
    end else begin
        v225_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_d1;
    end else begin
        v225_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_we0;
    end else begin
        v225_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_2_we1;
    end else begin
        v225_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_address0;
    end else begin
        v225_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_address1;
    end else begin
        v225_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_ce0;
    end else begin
        v225_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_ce1;
    end else begin
        v225_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_d0;
    end else begin
        v225_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_d1;
    end else begin
        v225_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_we0;
    end else begin
        v225_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v225_3_we1;
    end else begin
        v225_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_address0;
    end else begin
        v226_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_address1;
    end else begin
        v226_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_ce0;
    end else begin
        v226_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v226_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v226_ce1;
    end else begin
        v226_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_127_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_127_p2 == 1'd0))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_127_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_127_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln168_fu_143_p2 = (v114_fu_62 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_127_p2 == 1'd0));
end
assign cmp11_fu_154_p2 = ((v114_1_reg_199 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_132_p_ce = grp_fu_234_ce;
assign grp_fu_132_p_din0 = grp_fu_234_p0;
assign grp_fu_132_p_din1 = grp_fu_234_p1;
assign grp_fu_132_p_opcode = 2'd0;
assign grp_fu_136_p_ce = grp_fu_250_ce;
assign grp_fu_136_p_din0 = grp_fu_250_p0;
assign grp_fu_136_p_din1 = grp_fu_250_p1;
assign grp_fu_140_p_ce = grp_fu_254_ce;
assign grp_fu_140_p_din0 = grp_fu_254_p0;
assign grp_fu_140_p_din1 = grp_fu_254_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_100_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_80_ap_start_reg;
assign icmp_ln168_fu_127_p2 = ((v114_fu_62 < 8'd210) ? 1'b1 : 1'b0);
assign mul_ln175_1_fu_180_p0 = mul_ln175_1_fu_180_p00;
assign mul_ln175_1_fu_180_p00 = or_ln_fu_169_p3;
assign mul_ln175_1_fu_180_p1 = 16'd190;
assign mul_ln175_fu_137_p0 = mul_ln175_fu_137_p00;
assign mul_ln175_fu_137_p00 = v114_fu_62;
assign mul_ln175_fu_137_p1 = 16'd190;
assign or_ln_fu_169_p3 = {{tmp_reg_219}, {1'd1}};
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
always @ (posedge ap_clk) begin
    or_ln_reg_224[0] <= 1'b1;
end
endmodule 