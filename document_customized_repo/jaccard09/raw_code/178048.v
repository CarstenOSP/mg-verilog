module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v113,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_opcode,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_opcode,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_opcode,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_opcode,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_opcode,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_opcode,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_opcode,grp_fu_228_p_dout0,grp_fu_228_p_ce,grp_fu_232_p_din0,grp_fu_232_p_din1,grp_fu_232_p_opcode,grp_fu_232_p_dout0,grp_fu_232_p_ce,grp_fu_236_p_din0,grp_fu_236_p_din1,grp_fu_236_p_dout0,grp_fu_236_p_ce,grp_fu_240_p_din0,grp_fu_240_p_din1,grp_fu_240_p_dout0,grp_fu_240_p_ce,grp_fu_244_p_din0,grp_fu_244_p_din1,grp_fu_244_p_dout0,grp_fu_244_p_ce,grp_fu_248_p_din0,grp_fu_248_p_din1,grp_fu_248_p_dout0,grp_fu_248_p_ce,grp_fu_252_p_din0,grp_fu_252_p_din1,grp_fu_252_p_dout0,grp_fu_252_p_ce,grp_fu_256_p_din0,grp_fu_256_p_din1,grp_fu_256_p_dout0,grp_fu_256_p_ce,grp_fu_260_p_din0,grp_fu_260_p_din1,grp_fu_260_p_dout0,grp_fu_260_p_ce,grp_fu_264_p_din0,grp_fu_264_p_din1,grp_fu_264_p_dout0,grp_fu_264_p_ce,grp_fu_268_p_din0,grp_fu_268_p_din1,grp_fu_268_p_dout0,grp_fu_268_p_ce,grp_fu_272_p_din0,grp_fu_272_p_din1,grp_fu_272_p_dout0,grp_fu_272_p_ce,grp_fu_276_p_din0,grp_fu_276_p_din1,grp_fu_276_p_dout0,grp_fu_276_p_ce,grp_fu_280_p_din0,grp_fu_280_p_din1,grp_fu_280_p_dout0,grp_fu_280_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
output  [13:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [13:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [13:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [13:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [13:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [13:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [13:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [13:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [12:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [12:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [12:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [12:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [12:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [12:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [12:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [12:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
output  [12:0] v225_4_address0;
output   v225_4_ce0;
output   v225_4_we0;
output  [31:0] v225_4_d0;
input  [31:0] v225_4_q0;
output  [12:0] v225_4_address1;
output   v225_4_ce1;
output   v225_4_we1;
output  [31:0] v225_4_d1;
input  [31:0] v225_4_q1;
output  [12:0] v225_5_address0;
output   v225_5_ce0;
output   v225_5_we0;
output  [31:0] v225_5_d0;
input  [31:0] v225_5_q0;
output  [12:0] v225_5_address1;
output   v225_5_ce1;
output   v225_5_we1;
output  [31:0] v225_5_d1;
input  [31:0] v225_5_q1;
output  [12:0] v225_6_address0;
output   v225_6_ce0;
output   v225_6_we0;
output  [31:0] v225_6_d0;
input  [31:0] v225_6_q0;
output  [12:0] v225_6_address1;
output   v225_6_ce1;
output   v225_6_we1;
output  [31:0] v225_6_d1;
input  [31:0] v225_6_q1;
output  [12:0] v225_7_address0;
output   v225_7_ce0;
output   v225_7_we0;
output  [31:0] v225_7_d0;
input  [31:0] v225_7_q0;
output  [12:0] v225_7_address1;
output   v225_7_ce1;
output   v225_7_we1;
output  [31:0] v225_7_d1;
input  [31:0] v225_7_q1;
input  [31:0] v113;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_316_p2;
wire   [7:0] add_ln168_fu_322_p2;
reg   [7:0] add_ln168_reg_800;
wire   [15:0] zext_ln168_fu_328_p1;
reg   [15:0] zext_ln168_reg_805;
wire   [1:0] trunc_ln168_fu_332_p1;
reg   [1:0] trunc_ln168_reg_818;
wire   [13:0] mul_ln175_fu_350_p2;
reg   [13:0] mul_ln175_reg_823;
wire   [0:0] cmp11_fu_356_p2;
reg   [0:0] cmp11_reg_828;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_372_p2;
reg   [7:0] add_ln169_reg_841;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_27_reg_851;
reg   [4:0] tmp_28_reg_861;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_29_reg_871;
reg   [4:0] tmp_30_reg_881;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_31_reg_896;
reg   [4:0] tmp_32_reg_906;
reg   [31:0] v226_load_reg_911;
wire    ap_CS_fsm_state7;
reg   [4:0] tmp_33_reg_931;
reg   [31:0] v226_load_1_reg_936;
wire    ap_CS_fsm_state8;
reg   [31:0] v226_load_2_reg_941;
reg   [31:0] v226_load_3_reg_956;
wire    ap_CS_fsm_state9;
reg   [31:0] v226_load_4_reg_961;
reg   [31:0] v226_load_5_reg_976;
wire    ap_CS_fsm_state10;
reg   [31:0] v226_load_6_reg_981;
reg   [31:0] v226_load_7_reg_996;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_8_reg_1001;
wire   [31:0] v119_fu_558_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_562_p1;
wire   [31:0] v143_fu_566_p1;
wire   [31:0] v154_fu_570_p1;
wire   [31:0] v165_fu_574_p1;
wire   [31:0] v176_fu_578_p1;
wire   [31:0] v187_fu_582_p1;
wire   [31:0] v198_fu_586_p1;
wire   [31:0] v209_fu_590_p1;
wire   [2:0] trunc_ln169_fu_594_p1;
reg   [2:0] trunc_ln169_reg_1051;
wire    ap_CS_fsm_state15;
wire   [12:0] mul_ln171_fu_612_p2;
reg   [12:0] mul_ln171_reg_1057;
reg   [31:0] v_reg_1062;
wire   [12:0] mul_ln186_fu_621_p2;
reg   [12:0] mul_ln186_reg_1067;
reg   [31:0] v20_reg_1072;
wire   [12:0] mul_ln199_fu_630_p2;
reg   [12:0] mul_ln199_reg_1077;
reg   [31:0] v21_reg_1082;
wire   [12:0] mul_ln212_fu_639_p2;
reg   [12:0] mul_ln212_reg_1087;
reg   [31:0] v22_reg_1092;
wire   [12:0] mul_ln225_fu_648_p2;
reg   [12:0] mul_ln225_reg_1097;
reg   [31:0] v23_reg_1102;
wire   [12:0] mul_ln238_fu_657_p2;
reg   [12:0] mul_ln238_reg_1107;
reg   [31:0] v24_reg_1112;
wire   [12:0] mul_ln251_fu_666_p2;
reg   [12:0] mul_ln251_reg_1117;
reg   [31:0] v25_reg_1122;
wire   [12:0] mul_ln264_fu_675_p2;
reg   [12:0] mul_ln264_reg_1127;
reg   [31:0] v26_reg_1132;
wire   [12:0] mul_ln277_fu_691_p2;
reg   [12:0] mul_ln277_reg_1137;
reg   [31:0] v27_reg_1142;
wire   [0:0] empty_44_fu_697_p2;
reg   [0:0] empty_44_reg_1147;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_ce;
reg   [7:0] v115_reg_209;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start_reg;
wire   [63:0] p_cast7406_fu_462_p1;
wire   [63:0] p_cast_fu_506_p1;
wire   [63:0] p_cast7407_fu_510_p1;
wire   [63:0] p_cast7408_fu_534_p1;
wire   [63:0] p_cast7409_fu_538_p1;
wire   [63:0] p_cast7410_fu_542_p1;
wire   [63:0] p_cast7411_fu_546_p1;
wire   [63:0] p_cast7412_fu_550_p1;
wire   [63:0] p_cast7413_fu_554_p1;
reg   [7:0] v114_fu_110;
wire   [0:0] icmp_ln169_fu_362_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_272_p0;
reg   [31:0] grp_fu_272_p1;
reg   [31:0] grp_fu_276_p0;
reg   [31:0] grp_fu_276_p1;
reg   [31:0] grp_fu_280_p0;
reg   [31:0] grp_fu_280_p1;
reg   [31:0] grp_fu_284_p0;
reg   [31:0] grp_fu_284_p1;
reg   [31:0] grp_fu_288_p0;
reg   [31:0] grp_fu_288_p1;
reg   [31:0] grp_fu_292_p0;
reg   [31:0] grp_fu_292_p1;
reg   [31:0] grp_fu_296_p0;
reg   [31:0] grp_fu_296_p1;
reg   [31:0] grp_fu_300_p0;
reg   [31:0] grp_fu_300_p1;
reg   [31:0] grp_fu_304_p0;
reg   [31:0] grp_fu_304_p1;
wire   [5:0] lshr_ln_fu_336_p4;
wire   [5:0] mul_ln175_fu_350_p0;
wire   [8:0] mul_ln175_fu_350_p1;
wire   [7:0] empty_19_fu_382_p2;
wire   [7:0] empty_22_fu_402_p2;
wire   [7:0] empty_25_fu_422_p2;
wire   [7:0] empty_28_fu_442_p2;
wire   [15:0] grp_fu_703_p3;
wire   [7:0] empty_31_fu_466_p2;
wire   [7:0] empty_34_fu_486_p2;
wire   [15:0] grp_fu_711_p3;
wire   [15:0] grp_fu_719_p3;
wire   [7:0] empty_37_fu_514_p2;
wire   [15:0] grp_fu_727_p3;
wire   [15:0] grp_fu_735_p3;
wire   [15:0] grp_fu_743_p3;
wire   [15:0] grp_fu_751_p3;
wire   [15:0] grp_fu_759_p3;
wire   [15:0] grp_fu_767_p4;
wire   [4:0] lshr_ln1_fu_598_p4;
wire   [4:0] mul_ln171_fu_612_p0;
wire   [8:0] mul_ln171_fu_612_p1;
wire   [4:0] mul_ln186_fu_621_p0;
wire   [8:0] mul_ln186_fu_621_p1;
wire   [4:0] mul_ln199_fu_630_p0;
wire   [8:0] mul_ln199_fu_630_p1;
wire   [4:0] mul_ln212_fu_639_p0;
wire   [8:0] mul_ln212_fu_639_p1;
wire   [4:0] mul_ln225_fu_648_p0;
wire   [8:0] mul_ln225_fu_648_p1;
wire   [4:0] mul_ln238_fu_657_p0;
wire   [8:0] mul_ln238_fu_657_p1;
wire   [4:0] mul_ln251_fu_666_p0;
wire   [8:0] mul_ln251_fu_666_p1;
wire   [4:0] mul_ln264_fu_675_p0;
wire   [8:0] mul_ln264_fu_675_p1;
wire   [4:0] empty_43_fu_681_p2;
wire   [4:0] mul_ln277_fu_691_p0;
wire   [8:0] mul_ln277_fu_691_p1;
wire   [7:0] grp_fu_703_p0;
wire   [7:0] grp_fu_703_p1;
wire   [7:0] grp_fu_703_p2;
wire   [7:0] grp_fu_711_p0;
wire   [7:0] grp_fu_711_p1;
wire   [7:0] grp_fu_711_p2;
wire   [7:0] grp_fu_719_p0;
wire   [7:0] grp_fu_719_p1;
wire   [7:0] grp_fu_719_p2;
wire   [7:0] grp_fu_727_p0;
wire   [7:0] grp_fu_727_p1;
wire   [7:0] grp_fu_727_p2;
wire   [7:0] grp_fu_735_p0;
wire   [7:0] grp_fu_735_p1;
wire   [7:0] grp_fu_735_p2;
wire   [7:0] grp_fu_743_p0;
wire   [7:0] grp_fu_743_p1;
wire   [7:0] grp_fu_743_p2;
wire   [7:0] grp_fu_751_p0;
wire   [7:0] grp_fu_751_p1;
wire   [7:0] grp_fu_751_p2;
wire   [7:0] grp_fu_759_p0;
wire   [7:0] grp_fu_759_p1;
wire   [7:0] grp_fu_759_p2;
wire   [3:0] grp_fu_767_p1;
wire   [7:0] grp_fu_767_p2;
wire   [7:0] grp_fu_767_p3;
reg    grp_fu_272_ce;
reg    grp_fu_276_ce;
reg    grp_fu_280_ce;
reg    grp_fu_284_ce;
reg    grp_fu_288_ce;
reg    grp_fu_292_ce;
reg    grp_fu_296_ce;
reg    grp_fu_300_ce;
reg    grp_fu_304_ce;
reg    grp_fu_1152_ce;
reg    grp_fu_1156_ce;
reg    grp_fu_1160_ce;
reg    grp_fu_1164_ce;
reg    grp_fu_1168_ce;
reg    grp_fu_1172_ce;
reg    grp_fu_1176_ce;
reg    grp_fu_1180_ce;
reg    grp_fu_1184_ce;
reg    grp_fu_1188_ce;
reg    grp_fu_1192_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire   [15:0] grp_fu_703_p00;
wire   [15:0] grp_fu_711_p00;
wire   [15:0] grp_fu_719_p00;
wire   [15:0] grp_fu_727_p00;
wire   [15:0] grp_fu_735_p00;
wire   [15:0] grp_fu_743_p00;
wire   [15:0] grp_fu_751_p00;
wire   [15:0] grp_fu_759_p00;
wire   [12:0] mul_ln171_fu_612_p00;
wire   [13:0] mul_ln175_fu_350_p00;
wire   [12:0] mul_ln186_fu_621_p00;
wire   [12:0] mul_ln199_fu_630_p00;
wire   [12:0] mul_ln212_fu_639_p00;
wire   [12:0] mul_ln225_fu_648_p00;
wire   [12:0] mul_ln238_fu_657_p00;
wire   [12:0] mul_ln251_fu_666_p00;
wire   [12:0] mul_ln264_fu_675_p00;
wire   [12:0] mul_ln277_fu_691_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start_reg = 1'b0;
#0 v114_fu_110 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_221(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_d1),.v225_7_q1(v225_7_q1),.mul_ln175(mul_ln175_reg_823),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_ce1),.v227_3_q1(v227_3_q1),.mul_ln171(mul_ln171_reg_1057),.mul_ln277(mul_ln277_reg_1137),.mul_ln264(mul_ln264_reg_1127),.mul_ln251(mul_ln251_reg_1117),.mul_ln238(mul_ln238_reg_1107),.mul_ln225(mul_ln225_reg_1097),.mul_ln212(mul_ln212_reg_1087),.mul_ln199(mul_ln199_reg_1077),.mul_ln186(mul_ln186_reg_1067),.empty_15(trunc_ln169_reg_1051),.cmp11(cmp11_reg_828),.empty_16(trunc_ln168_reg_818),.v120(v_reg_1062),.v133(v20_reg_1072),.v144(v21_reg_1082),.v155(v22_reg_1092),.v166(v23_reg_1102),.v177(v24_reg_1112),.v188(v25_reg_1122),.v199(v26_reg_1132),.v210(v27_reg_1142),.empty(empty_44_reg_1147),.grp_fu_1152_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_din0),.grp_fu_1152_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_din1),.grp_fu_1152_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_opcode),.grp_fu_1152_p_dout0(grp_fu_204_p_dout0),.grp_fu_1152_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_ce),.grp_fu_1156_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_din0),.grp_fu_1156_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_din1),.grp_fu_1156_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_opcode),.grp_fu_1156_p_dout0(grp_fu_208_p_dout0),.grp_fu_1156_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_ce),.grp_fu_1160_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_din0),.grp_fu_1160_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_din1),.grp_fu_1160_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_opcode),.grp_fu_1160_p_dout0(grp_fu_212_p_dout0),.grp_fu_1160_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_ce),.grp_fu_1164_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_din0),.grp_fu_1164_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_din1),.grp_fu_1164_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_opcode),.grp_fu_1164_p_dout0(grp_fu_216_p_dout0),.grp_fu_1164_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_ce),.grp_fu_1168_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_din0),.grp_fu_1168_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_din1),.grp_fu_1168_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_opcode),.grp_fu_1168_p_dout0(grp_fu_220_p_dout0),.grp_fu_1168_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_ce),.grp_fu_1172_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_din0),.grp_fu_1172_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_din1),.grp_fu_1172_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_opcode),.grp_fu_1172_p_dout0(grp_fu_224_p_dout0),.grp_fu_1172_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_ce),.grp_fu_1176_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_din0),.grp_fu_1176_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_din1),.grp_fu_1176_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_opcode),.grp_fu_1176_p_dout0(grp_fu_228_p_dout0),.grp_fu_1176_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_ce),.grp_fu_1180_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_din0),.grp_fu_1180_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_din1),.grp_fu_1180_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_opcode),.grp_fu_1180_p_dout0(grp_fu_232_p_dout0),.grp_fu_1180_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_ce),.grp_fu_272_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_din1),.grp_fu_272_p_dout0(grp_fu_248_p_dout0),.grp_fu_272_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_din1),.grp_fu_276_p_dout0(grp_fu_252_p_dout0),.grp_fu_276_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_din1),.grp_fu_280_p_dout0(grp_fu_256_p_dout0),.grp_fu_280_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_ce),.grp_fu_284_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_din1),.grp_fu_284_p_dout0(grp_fu_260_p_dout0),.grp_fu_284_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_din1),.grp_fu_288_p_dout0(grp_fu_264_p_dout0),.grp_fu_288_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_din1),.grp_fu_292_p_dout0(grp_fu_268_p_dout0),.grp_fu_292_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_din1),.grp_fu_296_p_dout0(grp_fu_272_p_dout0),.grp_fu_296_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_din1),.grp_fu_300_p_dout0(grp_fu_276_p_dout0),.grp_fu_300_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_din1),.grp_fu_304_p_dout0(grp_fu_280_p_dout0),.grp_fu_304_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_ce),.grp_fu_1184_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_din0),.grp_fu_1184_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_din1),.grp_fu_1184_p_dout0(grp_fu_236_p_dout0),.grp_fu_1184_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_ce),.grp_fu_1188_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_din0),.grp_fu_1188_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_din1),.grp_fu_1188_p_dout0(grp_fu_240_p_dout0),.grp_fu_1188_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_ce),.grp_fu_1192_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_din0),.grp_fu_1192_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_din1),.grp_fu_1192_p_dout0(grp_fu_244_p_dout0),.grp_fu_1192_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U124(.din0(mul_ln175_fu_350_p0),.din1(mul_ln175_fu_350_p1),.dout(mul_ln175_fu_350_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U125(.din0(mul_ln171_fu_612_p0),.din1(mul_ln171_fu_612_p1),.dout(mul_ln171_fu_612_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U126(.din0(mul_ln186_fu_621_p0),.din1(mul_ln186_fu_621_p1),.dout(mul_ln186_fu_621_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U127(.din0(mul_ln199_fu_630_p0),.din1(mul_ln199_fu_630_p1),.dout(mul_ln199_fu_630_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U128(.din0(mul_ln212_fu_639_p0),.din1(mul_ln212_fu_639_p1),.dout(mul_ln212_fu_639_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U129(.din0(mul_ln225_fu_648_p0),.din1(mul_ln225_fu_648_p1),.dout(mul_ln225_fu_648_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U130(.din0(mul_ln238_fu_657_p0),.din1(mul_ln238_fu_657_p1),.dout(mul_ln238_fu_657_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U131(.din0(mul_ln251_fu_666_p0),.din1(mul_ln251_fu_666_p1),.dout(mul_ln251_fu_666_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U132(.din0(mul_ln264_fu_675_p0),.din1(mul_ln264_fu_675_p1),.dout(mul_ln264_fu_675_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U133(.din0(mul_ln277_fu_691_p0),.din1(mul_ln277_fu_691_p1),.dout(mul_ln277_fu_691_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_703_p0),.din1(grp_fu_703_p1),.din2(grp_fu_703_p2),.ce(1'b1),.dout(grp_fu_703_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_711_p0),.din1(grp_fu_711_p1),.din2(grp_fu_711_p2),.ce(1'b1),.dout(grp_fu_711_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_719_p0),.din1(grp_fu_719_p1),.din2(grp_fu_719_p2),.ce(1'b1),.dout(grp_fu_719_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_727_p0),.din1(grp_fu_727_p1),.din2(grp_fu_727_p2),.ce(1'b1),.dout(grp_fu_727_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U138(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_735_p0),.din1(grp_fu_735_p1),.din2(grp_fu_735_p2),.ce(1'b1),.dout(grp_fu_735_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U139(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_743_p0),.din1(grp_fu_743_p1),.din2(grp_fu_743_p2),.ce(1'b1),.dout(grp_fu_743_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_751_p0),.din1(grp_fu_751_p1),.din2(grp_fu_751_p2),.ce(1'b1),.dout(grp_fu_751_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_759_p0),.din1(grp_fu_759_p1),.din2(grp_fu_759_p2),.ce(1'b1),.dout(grp_fu_759_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_209),.din1(grp_fu_767_p1),.din2(grp_fu_767_p2),.din3(grp_fu_767_p3),.ce(1'b1),.dout(grp_fu_767_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_110 <= 8'd0;
    end else if (((icmp_ln169_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_110 <= add_ln168_reg_800;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_209 <= add_ln169_reg_841;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_316_p2 == 1'd0))) begin
        v115_reg_209 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_800 <= add_ln168_fu_322_p2;
        cmp11_reg_828 <= cmp11_fu_356_p2;
        mul_ln175_reg_823 <= mul_ln175_fu_350_p2;
        trunc_ln168_reg_818 <= trunc_ln168_fu_332_p1;
        zext_ln168_reg_805[7 : 0] <= zext_ln168_fu_328_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_841 <= add_ln169_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_44_reg_1147 <= empty_44_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1057 <= mul_ln171_fu_612_p2;
        mul_ln186_reg_1067 <= mul_ln186_fu_621_p2;
        mul_ln199_reg_1077 <= mul_ln199_fu_630_p2;
        mul_ln212_reg_1087 <= mul_ln212_fu_639_p2;
        mul_ln225_reg_1097 <= mul_ln225_fu_648_p2;
        mul_ln238_reg_1107 <= mul_ln238_fu_657_p2;
        mul_ln251_reg_1117 <= mul_ln251_fu_666_p2;
        mul_ln264_reg_1127 <= mul_ln264_fu_675_p2;
        mul_ln277_reg_1137 <= mul_ln277_fu_691_p2;
        trunc_ln169_reg_1051 <= trunc_ln169_fu_594_p1;
        v20_reg_1072 <= grp_fu_252_p_dout0;
        v21_reg_1082 <= grp_fu_256_p_dout0;
        v22_reg_1092 <= grp_fu_260_p_dout0;
        v23_reg_1102 <= grp_fu_264_p_dout0;
        v24_reg_1112 <= grp_fu_268_p_dout0;
        v25_reg_1122 <= grp_fu_272_p_dout0;
        v26_reg_1132 <= grp_fu_276_p_dout0;
        v27_reg_1142 <= grp_fu_280_p_dout0;
        v_reg_1062 <= grp_fu_248_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_27_reg_851 <= {{empty_19_fu_382_p2[7:3]}};
        tmp_28_reg_861 <= {{empty_22_fu_402_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_29_reg_871 <= {{empty_25_fu_422_p2[7:3]}};
        tmp_30_reg_881 <= {{empty_28_fu_442_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_31_reg_896 <= {{empty_31_fu_466_p2[7:3]}};
        tmp_32_reg_906 <= {{empty_34_fu_486_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_33_reg_931 <= {{empty_37_fu_514_p2[7:3]}};
        v226_load_reg_911 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_load_1_reg_936 <= v226_q1;
        v226_load_2_reg_941 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_load_3_reg_956 <= v226_q0;
        v226_load_4_reg_961 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_load_5_reg_976 <= v226_q0;
        v226_load_6_reg_981 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_load_7_reg_996 <= v226_q0;
        v226_load_8_reg_1001 <= v226_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_316_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_316_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1152_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_ce;
    end else begin
        grp_fu_1152_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1156_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_ce;
    end else begin
        grp_fu_1156_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1160_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_ce;
    end else begin
        grp_fu_1160_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1164_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_ce;
    end else begin
        grp_fu_1164_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1168_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_ce;
    end else begin
        grp_fu_1168_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1172_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_ce;
    end else begin
        grp_fu_1172_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1176_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_ce;
    end else begin
        grp_fu_1176_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1180_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_ce;
    end else begin
        grp_fu_1180_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1184_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_ce;
    end else begin
        grp_fu_1184_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1188_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_ce;
    end else begin
        grp_fu_1188_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1192_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_ce;
    end else begin
        grp_fu_1192_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_272_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_ce;
    end else begin
        grp_fu_272_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_272_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_272_p0 = v119_fu_558_p1;
    end else begin
        grp_fu_272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_272_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_272_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_272_p1 = v113;
    end else begin
        grp_fu_272_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_276_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_ce;
    end else begin
        grp_fu_276_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_276_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_276_p0 = v132_fu_562_p1;
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_276_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_276_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_276_p1 = v113;
    end else begin
        grp_fu_276_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_280_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_ce;
    end else begin
        grp_fu_280_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_280_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_280_p0 = v143_fu_566_p1;
    end else begin
        grp_fu_280_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_280_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_280_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_280_p1 = v113;
    end else begin
        grp_fu_280_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_284_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_ce;
    end else begin
        grp_fu_284_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_284_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_284_p0 = v154_fu_570_p1;
    end else begin
        grp_fu_284_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_284_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_284_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_284_p1 = v113;
    end else begin
        grp_fu_284_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_288_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_ce;
    end else begin
        grp_fu_288_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_288_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_288_p0 = v165_fu_574_p1;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_288_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_288_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_288_p1 = v113;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_292_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_ce;
    end else begin
        grp_fu_292_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_292_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_292_p0 = v176_fu_578_p1;
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_292_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_292_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_292_p1 = v113;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_296_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_ce;
    end else begin
        grp_fu_296_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_296_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_296_p0 = v187_fu_582_p1;
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_296_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_296_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_296_p1 = v113;
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_300_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_ce;
    end else begin
        grp_fu_300_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_300_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_300_p0 = v198_fu_586_p1;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_300_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_300_p1 = v113;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_304_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_ce;
    end else begin
        grp_fu_304_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_304_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_304_p0 = v209_fu_590_p1;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_304_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_304_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_304_p1 = v113;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast7412_fu_550_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast7410_fu_542_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast7408_fu_534_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast7407_fu_510_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast7406_fu_462_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast7413_fu_554_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast7411_fu_546_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast7409_fu_538_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_506_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_316_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_316_p2 == 1'd1))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_316_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_316_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_322_p2 = (v114_fu_110 + 8'd1);
assign add_ln169_fu_372_p2 = (v115_reg_209 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_316_p2 == 1'd1));
end
assign cmp11_fu_356_p2 = ((v114_fu_110 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_382_p2 = (v115_reg_209 + 8'd1);
assign empty_22_fu_402_p2 = (v115_reg_209 + 8'd2);
assign empty_25_fu_422_p2 = (v115_reg_209 + 8'd3);
assign empty_28_fu_442_p2 = (v115_reg_209 + 8'd4);
assign empty_31_fu_466_p2 = (v115_reg_209 + 8'd5);
assign empty_34_fu_486_p2 = (v115_reg_209 + 8'd6);
assign empty_37_fu_514_p2 = (v115_reg_209 + 8'd7);
assign empty_43_fu_681_p2 = (lshr_ln1_fu_598_p4 + 5'd1);
assign empty_44_fu_697_p2 = ((trunc_ln169_reg_1051 == 3'd7) ? 1'b1 : 1'b0);
assign grp_fu_204_p_ce = grp_fu_1152_ce;
assign grp_fu_204_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_din0;
assign grp_fu_204_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1152_p_din1;
assign grp_fu_204_p_opcode = 2'd0;
assign grp_fu_208_p_ce = grp_fu_1156_ce;
assign grp_fu_208_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_din0;
assign grp_fu_208_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1156_p_din1;
assign grp_fu_208_p_opcode = 2'd0;
assign grp_fu_212_p_ce = grp_fu_1160_ce;
assign grp_fu_212_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_din0;
assign grp_fu_212_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1160_p_din1;
assign grp_fu_212_p_opcode = 2'd0;
assign grp_fu_216_p_ce = grp_fu_1164_ce;
assign grp_fu_216_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_din0;
assign grp_fu_216_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1164_p_din1;
assign grp_fu_216_p_opcode = 2'd0;
assign grp_fu_220_p_ce = grp_fu_1168_ce;
assign grp_fu_220_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_din0;
assign grp_fu_220_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1168_p_din1;
assign grp_fu_220_p_opcode = 2'd0;
assign grp_fu_224_p_ce = grp_fu_1172_ce;
assign grp_fu_224_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_din0;
assign grp_fu_224_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1172_p_din1;
assign grp_fu_224_p_opcode = 2'd0;
assign grp_fu_228_p_ce = grp_fu_1176_ce;
assign grp_fu_228_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_din0;
assign grp_fu_228_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1176_p_din1;
assign grp_fu_228_p_opcode = 2'd0;
assign grp_fu_232_p_ce = grp_fu_1180_ce;
assign grp_fu_232_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_din0;
assign grp_fu_232_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1180_p_din1;
assign grp_fu_232_p_opcode = 2'd0;
assign grp_fu_236_p_ce = grp_fu_1184_ce;
assign grp_fu_236_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_din0;
assign grp_fu_236_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1184_p_din1;
assign grp_fu_240_p_ce = grp_fu_1188_ce;
assign grp_fu_240_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_din0;
assign grp_fu_240_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1188_p_din1;
assign grp_fu_244_p_ce = grp_fu_1192_ce;
assign grp_fu_244_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_din0;
assign grp_fu_244_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_grp_fu_1192_p_din1;
assign grp_fu_248_p_ce = grp_fu_272_ce;
assign grp_fu_248_p_din0 = grp_fu_272_p0;
assign grp_fu_248_p_din1 = grp_fu_272_p1;
assign grp_fu_252_p_ce = grp_fu_276_ce;
assign grp_fu_252_p_din0 = grp_fu_276_p0;
assign grp_fu_252_p_din1 = grp_fu_276_p1;
assign grp_fu_256_p_ce = grp_fu_280_ce;
assign grp_fu_256_p_din0 = grp_fu_280_p0;
assign grp_fu_256_p_din1 = grp_fu_280_p1;
assign grp_fu_260_p_ce = grp_fu_284_ce;
assign grp_fu_260_p_din0 = grp_fu_284_p0;
assign grp_fu_260_p_din1 = grp_fu_284_p1;
assign grp_fu_264_p_ce = grp_fu_288_ce;
assign grp_fu_264_p_din0 = grp_fu_288_p0;
assign grp_fu_264_p_din1 = grp_fu_288_p1;
assign grp_fu_268_p_ce = grp_fu_292_ce;
assign grp_fu_268_p_din0 = grp_fu_292_p0;
assign grp_fu_268_p_din1 = grp_fu_292_p1;
assign grp_fu_272_p_ce = grp_fu_296_ce;
assign grp_fu_272_p_din0 = grp_fu_296_p0;
assign grp_fu_272_p_din1 = grp_fu_296_p1;
assign grp_fu_276_p_ce = grp_fu_300_ce;
assign grp_fu_276_p_din0 = grp_fu_300_p0;
assign grp_fu_276_p_din1 = grp_fu_300_p1;
assign grp_fu_280_p_ce = grp_fu_304_ce;
assign grp_fu_280_p_din0 = grp_fu_304_p0;
assign grp_fu_280_p_din1 = grp_fu_304_p1;
assign grp_fu_703_p0 = grp_fu_703_p00;
assign grp_fu_703_p00 = v115_reg_209;
assign grp_fu_703_p1 = 16'd210;
assign grp_fu_703_p2 = zext_ln168_reg_805;
assign grp_fu_711_p0 = grp_fu_711_p00;
assign grp_fu_711_p00 = empty_19_fu_382_p2;
assign grp_fu_711_p1 = 16'd210;
assign grp_fu_711_p2 = zext_ln168_reg_805;
assign grp_fu_719_p0 = grp_fu_719_p00;
assign grp_fu_719_p00 = empty_22_fu_402_p2;
assign grp_fu_719_p1 = 16'd210;
assign grp_fu_719_p2 = zext_ln168_reg_805;
assign grp_fu_727_p0 = grp_fu_727_p00;
assign grp_fu_727_p00 = empty_25_fu_422_p2;
assign grp_fu_727_p1 = 16'd210;
assign grp_fu_727_p2 = zext_ln168_reg_805;
assign grp_fu_735_p0 = grp_fu_735_p00;
assign grp_fu_735_p00 = empty_28_fu_442_p2;
assign grp_fu_735_p1 = 16'd210;
assign grp_fu_735_p2 = zext_ln168_reg_805;
assign grp_fu_743_p0 = grp_fu_743_p00;
assign grp_fu_743_p00 = empty_31_fu_466_p2;
assign grp_fu_743_p1 = 16'd210;
assign grp_fu_743_p2 = zext_ln168_reg_805;
assign grp_fu_751_p0 = grp_fu_751_p00;
assign grp_fu_751_p00 = empty_34_fu_486_p2;
assign grp_fu_751_p1 = 16'd210;
assign grp_fu_751_p2 = zext_ln168_reg_805;
assign grp_fu_759_p0 = grp_fu_759_p00;
assign grp_fu_759_p00 = empty_37_fu_514_p2;
assign grp_fu_759_p1 = 16'd210;
assign grp_fu_759_p2 = zext_ln168_reg_805;
assign grp_fu_767_p1 = 8'd8;
assign grp_fu_767_p2 = 16'd210;
assign grp_fu_767_p3 = zext_ln168_reg_805;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_ap_start_reg;
assign icmp_ln168_fu_316_p2 = ((v114_fu_110 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_362_p2 = ((v115_reg_209 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_598_p4 = {{v115_reg_209[7:3]}};
assign lshr_ln_fu_336_p4 = {{v114_fu_110[7:2]}};
assign mul_ln171_fu_612_p0 = mul_ln171_fu_612_p00;
assign mul_ln171_fu_612_p00 = lshr_ln1_fu_598_p4;
assign mul_ln171_fu_612_p1 = 13'd190;
assign mul_ln175_fu_350_p0 = mul_ln175_fu_350_p00;
assign mul_ln175_fu_350_p00 = lshr_ln_fu_336_p4;
assign mul_ln175_fu_350_p1 = 14'd190;
assign mul_ln186_fu_621_p0 = mul_ln186_fu_621_p00;
assign mul_ln186_fu_621_p00 = tmp_27_reg_851;
assign mul_ln186_fu_621_p1 = 13'd190;
assign mul_ln199_fu_630_p0 = mul_ln199_fu_630_p00;
assign mul_ln199_fu_630_p00 = tmp_28_reg_861;
assign mul_ln199_fu_630_p1 = 13'd190;
assign mul_ln212_fu_639_p0 = mul_ln212_fu_639_p00;
assign mul_ln212_fu_639_p00 = tmp_29_reg_871;
assign mul_ln212_fu_639_p1 = 13'd190;
assign mul_ln225_fu_648_p0 = mul_ln225_fu_648_p00;
assign mul_ln225_fu_648_p00 = tmp_30_reg_881;
assign mul_ln225_fu_648_p1 = 13'd190;
assign mul_ln238_fu_657_p0 = mul_ln238_fu_657_p00;
assign mul_ln238_fu_657_p00 = tmp_31_reg_896;
assign mul_ln238_fu_657_p1 = 13'd190;
assign mul_ln251_fu_666_p0 = mul_ln251_fu_666_p00;
assign mul_ln251_fu_666_p00 = tmp_32_reg_906;
assign mul_ln251_fu_666_p1 = 13'd190;
assign mul_ln264_fu_675_p0 = mul_ln264_fu_675_p00;
assign mul_ln264_fu_675_p00 = tmp_33_reg_931;
assign mul_ln264_fu_675_p1 = 13'd190;
assign mul_ln277_fu_691_p0 = mul_ln277_fu_691_p00;
assign mul_ln277_fu_691_p00 = empty_43_fu_681_p2;
assign mul_ln277_fu_691_p1 = 13'd190;
assign p_cast7406_fu_462_p1 = grp_fu_703_p3;
assign p_cast7407_fu_510_p1 = grp_fu_719_p3;
assign p_cast7408_fu_534_p1 = grp_fu_727_p3;
assign p_cast7409_fu_538_p1 = grp_fu_735_p3;
assign p_cast7410_fu_542_p1 = grp_fu_743_p3;
assign p_cast7411_fu_546_p1 = grp_fu_751_p3;
assign p_cast7412_fu_550_p1 = grp_fu_759_p3;
assign p_cast7413_fu_554_p1 = grp_fu_767_p4;
assign p_cast_fu_506_p1 = grp_fu_711_p3;
assign trunc_ln168_fu_332_p1 = v114_fu_110[1:0];
assign trunc_ln169_fu_594_p1 = v115_reg_209[2:0];
assign v119_fu_558_p1 = v226_load_reg_911;
assign v132_fu_562_p1 = v226_load_1_reg_936;
assign v143_fu_566_p1 = v226_load_2_reg_941;
assign v154_fu_570_p1 = v226_load_3_reg_956;
assign v165_fu_574_p1 = v226_load_4_reg_961;
assign v176_fu_578_p1 = v226_load_5_reg_976;
assign v187_fu_582_p1 = v226_load_6_reg_981;
assign v198_fu_586_p1 = v226_load_7_reg_996;
assign v209_fu_590_p1 = v226_load_8_reg_1001;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_3_we1;
assign v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_address0;
assign v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_address1;
assign v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_ce0;
assign v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_ce1;
assign v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_d0;
assign v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_d1;
assign v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_we0;
assign v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_4_we1;
assign v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_address0;
assign v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_address1;
assign v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_ce0;
assign v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_ce1;
assign v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_d0;
assign v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_d1;
assign v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_we0;
assign v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_5_we1;
assign v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_address0;
assign v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_address1;
assign v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_ce0;
assign v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_ce1;
assign v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_d0;
assign v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_d1;
assign v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_we0;
assign v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_6_we1;
assign v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_address0;
assign v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_address1;
assign v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_ce0;
assign v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_ce1;
assign v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_d0;
assign v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_d1;
assign v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_we0;
assign v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v225_7_we1;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_221_v227_3_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_328_p1 = v114_fu_110;
always @ (posedge ap_clk) begin
    zext_ln168_reg_805[15:8] <= 8'b00000000;
end
endmodule 