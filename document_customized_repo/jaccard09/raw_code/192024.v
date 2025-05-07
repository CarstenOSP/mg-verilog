module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v113,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_opcode,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_opcode,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_opcode,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_opcode,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_opcode,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_opcode,grp_fu_228_p_dout0,grp_fu_228_p_ce,grp_fu_232_p_din0,grp_fu_232_p_din1,grp_fu_232_p_opcode,grp_fu_232_p_dout0,grp_fu_232_p_ce,grp_fu_236_p_din0,grp_fu_236_p_din1,grp_fu_236_p_opcode,grp_fu_236_p_dout0,grp_fu_236_p_ce,grp_fu_240_p_din0,grp_fu_240_p_din1,grp_fu_240_p_opcode,grp_fu_240_p_dout0,grp_fu_240_p_ce,grp_fu_244_p_din0,grp_fu_244_p_din1,grp_fu_244_p_dout0,grp_fu_244_p_ce,grp_fu_248_p_din0,grp_fu_248_p_din1,grp_fu_248_p_dout0,grp_fu_248_p_ce,grp_fu_252_p_din0,grp_fu_252_p_din1,grp_fu_252_p_dout0,grp_fu_252_p_ce,grp_fu_256_p_din0,grp_fu_256_p_din1,grp_fu_256_p_dout0,grp_fu_256_p_ce,grp_fu_260_p_din0,grp_fu_260_p_din1,grp_fu_260_p_dout0,grp_fu_260_p_ce,grp_fu_264_p_din0,grp_fu_264_p_din1,grp_fu_264_p_dout0,grp_fu_264_p_ce,grp_fu_268_p_din0,grp_fu_268_p_din1,grp_fu_268_p_dout0,grp_fu_268_p_ce,grp_fu_272_p_din0,grp_fu_272_p_din1,grp_fu_272_p_dout0,grp_fu_272_p_ce,grp_fu_276_p_din0,grp_fu_276_p_din1,grp_fu_276_p_dout0,grp_fu_276_p_ce,grp_fu_280_p_din0,grp_fu_280_p_din1,grp_fu_280_p_dout0,grp_fu_280_p_ce,grp_fu_284_p_din0,grp_fu_284_p_din1,grp_fu_284_p_dout0,grp_fu_284_p_ce,grp_fu_288_p_din0,grp_fu_288_p_din1,grp_fu_288_p_dout0,grp_fu_288_p_ce,grp_fu_292_p_din0,grp_fu_292_p_din1,grp_fu_292_p_dout0,grp_fu_292_p_ce,grp_fu_296_p_din0,grp_fu_296_p_din1,grp_fu_296_p_dout0,grp_fu_296_p_ce,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_304_p_din0,grp_fu_304_p_din1,grp_fu_304_p_dout0,grp_fu_304_p_ce,grp_fu_308_p_din0,grp_fu_308_p_din1,grp_fu_308_p_dout0,grp_fu_308_p_ce,grp_fu_312_p_din0,grp_fu_312_p_din1,grp_fu_312_p_dout0,grp_fu_312_p_ce); 
parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [14:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [14:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [14:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
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
output  [1:0] grp_fu_236_p_opcode;
input  [31:0] grp_fu_236_p_dout0;
output   grp_fu_236_p_ce;
output  [31:0] grp_fu_240_p_din0;
output  [31:0] grp_fu_240_p_din1;
output  [1:0] grp_fu_240_p_opcode;
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
output  [31:0] grp_fu_284_p_din0;
output  [31:0] grp_fu_284_p_din1;
input  [31:0] grp_fu_284_p_dout0;
output   grp_fu_284_p_ce;
output  [31:0] grp_fu_288_p_din0;
output  [31:0] grp_fu_288_p_din1;
input  [31:0] grp_fu_288_p_dout0;
output   grp_fu_288_p_ce;
output  [31:0] grp_fu_292_p_din0;
output  [31:0] grp_fu_292_p_din1;
input  [31:0] grp_fu_292_p_dout0;
output   grp_fu_292_p_ce;
output  [31:0] grp_fu_296_p_din0;
output  [31:0] grp_fu_296_p_din1;
input  [31:0] grp_fu_296_p_dout0;
output   grp_fu_296_p_ce;
output  [31:0] grp_fu_300_p_din0;
output  [31:0] grp_fu_300_p_din1;
input  [31:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [31:0] grp_fu_304_p_din0;
output  [31:0] grp_fu_304_p_din1;
input  [31:0] grp_fu_304_p_dout0;
output   grp_fu_304_p_ce;
output  [31:0] grp_fu_308_p_din0;
output  [31:0] grp_fu_308_p_din1;
input  [31:0] grp_fu_308_p_dout0;
output   grp_fu_308_p_ce;
output  [31:0] grp_fu_312_p_din0;
output  [31:0] grp_fu_312_p_din1;
input  [31:0] grp_fu_312_p_dout0;
output   grp_fu_312_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[12:0] v225_0_address0;
reg v225_0_ce0;
reg v225_0_we0;
reg[31:0] v225_0_d0;
reg[12:0] v225_0_address1;
reg v225_0_ce1;
reg v225_0_we1;
reg[31:0] v225_0_d1;
reg[12:0] v225_1_address0;
reg v225_1_ce0;
reg v225_1_we0;
reg[31:0] v225_1_d0;
reg[12:0] v225_1_address1;
reg v225_1_ce1;
reg v225_1_we1;
reg[31:0] v225_1_d1;
reg[12:0] v225_2_address0;
reg v225_2_ce0;
reg v225_2_we0;
reg[31:0] v225_2_d0;
reg[12:0] v225_2_address1;
reg v225_2_ce1;
reg v225_2_we1;
reg[31:0] v225_2_d1;
reg[12:0] v225_3_address0;
reg v225_3_ce0;
reg v225_3_we0;
reg[31:0] v225_3_d0;
reg[12:0] v225_3_address1;
reg v225_3_ce1;
reg v225_3_we1;
reg[31:0] v225_3_d1;
reg[12:0] v225_4_address0;
reg v225_4_ce0;
reg v225_4_we0;
reg[31:0] v225_4_d0;
reg[12:0] v225_4_address1;
reg v225_4_ce1;
reg v225_4_we1;
reg[31:0] v225_4_d1;
reg[12:0] v225_5_address0;
reg v225_5_ce0;
reg v225_5_we0;
reg[31:0] v225_5_d0;
reg[12:0] v225_5_address1;
reg v225_5_ce1;
reg v225_5_we1;
reg[31:0] v225_5_d1;
reg[12:0] v225_6_address0;
reg v225_6_ce0;
reg v225_6_we0;
reg[31:0] v225_6_d0;
reg[12:0] v225_6_address1;
reg v225_6_ce1;
reg v225_6_we1;
reg[31:0] v225_6_d1;
reg[12:0] v225_7_address0;
reg v225_7_ce0;
reg v225_7_we0;
reg[31:0] v225_7_d0;
reg[12:0] v225_7_address1;
reg v225_7_ce1;
reg v225_7_we1;
reg[31:0] v225_7_d1;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_715_p2;
wire   [31:0] grp_fu_593_p3;
reg   [31:0] reg_607;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire   [31:0] grp_fu_600_p3;
reg   [31:0] reg_611;
reg   [31:0] reg_615;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_619;
reg   [31:0] reg_623;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_627;
reg   [31:0] reg_631;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_635;
reg   [31:0] reg_639;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_645;
reg   [31:0] reg_651;
reg   [31:0] reg_657;
reg   [31:0] reg_663;
reg   [31:0] reg_669;
reg   [31:0] reg_675;
reg   [31:0] reg_681;
reg   [31:0] reg_687;
reg   [15:0] phi_mul_load_reg_1617;
wire   [15:0] add_ln168_1_fu_709_p2;
reg   [15:0] add_ln168_1_reg_1623;
wire   [7:0] add_ln168_fu_721_p2;
reg   [7:0] add_ln168_reg_1631;
wire   [0:0] trunc_ln168_fu_727_p1;
reg   [0:0] trunc_ln168_reg_1636;
wire   [14:0] zext_ln168_fu_741_p1;
reg   [14:0] zext_ln168_reg_1642;
wire   [0:0] cmp11_fu_745_p2;
reg   [0:0] cmp11_reg_1664;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_1_fu_783_p2;
reg   [7:0] add_ln169_1_reg_1683;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_2_reg_1693;
reg   [4:0] tmp_3_reg_1703;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_4_reg_1713;
reg   [4:0] tmp_5_reg_1723;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_6_reg_1753;
reg   [4:0] tmp_7_reg_1763;
reg   [4:0] tmp_s_reg_1793;
reg   [4:0] tmp_8_reg_1823;
reg   [4:0] tmp_9_reg_1833;
reg   [4:0] tmp_10_reg_1863;
reg   [4:0] tmp_11_reg_1873;
reg   [4:0] tmp_12_reg_1903;
reg   [4:0] tmp_13_reg_1913;
reg   [31:0] v209_v_reg_1918;
wire    ap_CS_fsm_state11;
reg   [31:0] v119_1_v_reg_1923;
reg   [4:0] tmp_14_reg_1953;
wire   [31:0] v119_fu_1137_p1;
wire   [31:0] v132_fu_1142_p1;
wire   [31:0] v143_fu_1147_p1;
wire   [31:0] v154_fu_1152_p1;
wire   [31:0] v165_fu_1157_p1;
wire   [31:0] v176_fu_1162_p1;
wire   [31:0] v187_fu_1167_p1;
wire   [31:0] v198_fu_1172_p1;
wire   [31:0] v209_fu_1177_p1;
wire   [2:0] trunc_ln169_fu_1211_p1;
reg   [2:0] trunc_ln169_reg_2063;
wire   [4:0] lshr_ln1_fu_1215_p4;
reg   [4:0] lshr_ln1_reg_2070;
wire   [12:0] mul_ln171_fu_1229_p2;
reg   [12:0] mul_ln171_reg_2075;
wire   [12:0] mul_ln199_fu_1238_p2;
reg   [12:0] mul_ln199_reg_2080;
wire   [12:0] mul_ln212_fu_1247_p2;
reg   [12:0] mul_ln212_reg_2085;
wire   [12:0] mul_ln225_fu_1256_p2;
reg   [12:0] mul_ln225_reg_2090;
wire   [12:0] mul_ln238_fu_1265_p2;
reg   [12:0] mul_ln238_reg_2095;
wire   [12:0] mul_ln251_fu_1274_p2;
reg   [12:0] mul_ln251_reg_2100;
wire   [12:0] mul_ln264_fu_1283_p2;
reg   [12:0] mul_ln264_reg_2105;
wire   [12:0] mul_ln277_fu_1299_p2;
reg   [12:0] mul_ln277_reg_2110;
wire   [0:0] empty_47_fu_1305_p2;
reg   [0:0] empty_47_reg_2115;
wire    ap_CS_fsm_state16;
wire   [31:0] v119_1_fu_1311_p1;
wire   [31:0] v132_1_fu_1315_p1;
wire   [31:0] v143_1_fu_1320_p1;
wire   [31:0] v154_1_fu_1325_p1;
wire   [31:0] v165_1_fu_1330_p1;
wire   [31:0] v176_1_fu_1335_p1;
wire   [31:0] v187_1_fu_1340_p1;
wire   [31:0] v198_1_fu_1345_p1;
wire   [31:0] v209_1_fu_1350_p1;
wire   [12:0] mul_ln171_1_fu_1358_p2;
reg   [12:0] mul_ln171_1_reg_2166;
wire   [12:0] mul_ln186_fu_1367_p2;
reg   [12:0] mul_ln186_reg_2171;
wire   [12:0] mul_ln199_1_fu_1376_p2;
reg   [12:0] mul_ln199_1_reg_2176;
wire   [12:0] mul_ln212_1_fu_1385_p2;
reg   [12:0] mul_ln212_1_reg_2181;
wire   [12:0] mul_ln225_1_fu_1394_p2;
reg   [12:0] mul_ln225_1_reg_2186;
wire   [12:0] mul_ln238_1_fu_1403_p2;
reg   [12:0] mul_ln238_1_reg_2191;
wire   [12:0] mul_ln251_1_fu_1412_p2;
reg   [12:0] mul_ln251_1_reg_2196;
wire   [12:0] mul_ln264_1_fu_1427_p2;
reg   [12:0] mul_ln264_1_reg_2201;
wire   [12:0] mul_ln277_1_fu_1436_p2;
reg   [12:0] mul_ln277_1_reg_2206;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_ce;
reg   [7:0] v115_reg_458;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast3833_fu_877_p1;
wire   [63:0] p_cast_fu_882_p1;
wire   [63:0] p_cast3834_fu_927_p1;
wire   [63:0] p_cast3835_fu_932_p1;
wire   [63:0] p_cast3836_fu_957_p1;
wire   [63:0] p_cast3837_fu_962_p1;
wire   [63:0] p_cast3838_fu_1007_p1;
wire   [63:0] p_cast3839_fu_1012_p1;
wire   [63:0] p_cast3840_fu_1057_p1;
wire   [63:0] p_cast3841_fu_1062_p1;
wire   [63:0] p_cast3842_fu_1107_p1;
wire   [63:0] p_cast3843_fu_1112_p1;
wire   [63:0] p_cast3844_fu_1181_p1;
wire   [63:0] p_cast3845_fu_1186_p1;
wire   [63:0] p_cast3846_fu_1191_p1;
wire   [63:0] p_cast3847_fu_1196_p1;
wire   [63:0] p_cast3848_fu_1201_p1;
wire   [63:0] p_cast3849_fu_1206_p1;
reg   [15:0] phi_mul_fu_130;
wire   [0:0] icmp_ln169_fu_751_p2;
reg   [7:0] v114_fu_134;
reg    v236_write_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg   [31:0] grp_fu_557_p0;
reg   [31:0] grp_fu_561_p0;
reg   [31:0] grp_fu_565_p0;
reg   [31:0] grp_fu_569_p0;
reg   [31:0] grp_fu_573_p0;
reg   [31:0] grp_fu_577_p0;
reg   [31:0] grp_fu_581_p0;
reg   [31:0] grp_fu_585_p0;
reg   [31:0] grp_fu_589_p0;
wire   [6:0] lshr_ln_fu_731_p4;
wire   [6:0] tmp_fu_761_p4;
wire   [7:0] tmp_1_fu_771_p3;
wire   [7:0] empty_25_fu_797_p2;
wire   [7:0] empty_28_fu_817_p2;
wire   [7:0] empty_31_fu_837_p2;
wire   [7:0] empty_34_fu_857_p2;
wire   [14:0] grp_fu_1442_p3;
wire   [14:0] grp_fu_1450_p3;
wire   [7:0] empty_37_fu_887_p2;
wire   [7:0] empty_40_fu_907_p2;
wire   [14:0] grp_fu_1458_p3;
wire   [14:0] grp_fu_1466_p3;
wire   [7:0] add_ln169_fu_937_p2;
wire   [14:0] grp_fu_1474_p3;
wire   [14:0] grp_fu_1482_p3;
wire   [7:0] empty_50_fu_967_p2;
wire   [7:0] empty_53_fu_987_p2;
wire   [14:0] grp_fu_1490_p3;
wire   [14:0] grp_fu_1498_p3;
wire   [7:0] empty_56_fu_1017_p2;
wire   [7:0] empty_59_fu_1037_p2;
wire   [14:0] grp_fu_1506_p4;
wire   [14:0] grp_fu_1516_p3;
wire   [7:0] empty_62_fu_1067_p2;
wire   [7:0] empty_65_fu_1087_p2;
wire   [14:0] grp_fu_1524_p3;
wire   [14:0] grp_fu_1532_p3;
wire   [7:0] empty_72_fu_1117_p2;
wire   [14:0] grp_fu_1540_p3;
wire   [14:0] grp_fu_1548_p3;
wire   [14:0] grp_fu_1556_p3;
wire   [14:0] grp_fu_1564_p3;
wire   [14:0] grp_fu_1572_p4;
wire   [14:0] grp_fu_1582_p3;
wire   [4:0] mul_ln171_fu_1229_p0;
wire   [8:0] mul_ln171_fu_1229_p1;
wire   [4:0] mul_ln199_fu_1238_p0;
wire   [8:0] mul_ln199_fu_1238_p1;
wire   [4:0] mul_ln212_fu_1247_p0;
wire   [8:0] mul_ln212_fu_1247_p1;
wire   [4:0] mul_ln225_fu_1256_p0;
wire   [8:0] mul_ln225_fu_1256_p1;
wire   [4:0] mul_ln238_fu_1265_p0;
wire   [8:0] mul_ln238_fu_1265_p1;
wire   [4:0] mul_ln251_fu_1274_p0;
wire   [8:0] mul_ln251_fu_1274_p1;
wire   [4:0] mul_ln264_fu_1283_p0;
wire   [8:0] mul_ln264_fu_1283_p1;
wire   [4:0] empty_46_fu_1289_p2;
wire   [4:0] mul_ln277_fu_1299_p0;
wire   [8:0] mul_ln277_fu_1299_p1;
wire   [4:0] mul_ln171_1_fu_1358_p0;
wire   [8:0] mul_ln171_1_fu_1358_p1;
wire   [4:0] mul_ln186_fu_1367_p0;
wire   [8:0] mul_ln186_fu_1367_p1;
wire   [4:0] mul_ln199_1_fu_1376_p0;
wire   [8:0] mul_ln199_1_fu_1376_p1;
wire   [4:0] mul_ln212_1_fu_1385_p0;
wire   [8:0] mul_ln212_1_fu_1385_p1;
wire   [4:0] mul_ln225_1_fu_1394_p0;
wire   [8:0] mul_ln225_1_fu_1394_p1;
wire   [4:0] mul_ln238_1_fu_1403_p0;
wire   [8:0] mul_ln238_1_fu_1403_p1;
wire   [4:0] mul_ln251_1_fu_1412_p0;
wire   [8:0] mul_ln251_1_fu_1412_p1;
wire   [4:0] empty_71_fu_1418_p2;
wire   [4:0] mul_ln264_1_fu_1427_p0;
wire   [8:0] mul_ln264_1_fu_1427_p1;
wire   [4:0] mul_ln277_1_fu_1436_p0;
wire   [8:0] mul_ln277_1_fu_1436_p1;
wire   [7:0] grp_fu_1442_p0;
wire   [6:0] grp_fu_1442_p1;
wire   [6:0] grp_fu_1442_p2;
wire   [7:0] grp_fu_1450_p0;
wire   [6:0] grp_fu_1450_p1;
wire   [6:0] grp_fu_1450_p2;
wire   [7:0] grp_fu_1458_p0;
wire   [6:0] grp_fu_1458_p1;
wire   [6:0] grp_fu_1458_p2;
wire   [7:0] grp_fu_1466_p0;
wire   [6:0] grp_fu_1466_p1;
wire   [6:0] grp_fu_1466_p2;
wire   [7:0] grp_fu_1474_p0;
wire   [6:0] grp_fu_1474_p1;
wire   [6:0] grp_fu_1474_p2;
wire   [7:0] grp_fu_1482_p0;
wire   [6:0] grp_fu_1482_p1;
wire   [6:0] grp_fu_1482_p2;
wire   [7:0] grp_fu_1490_p0;
wire   [6:0] grp_fu_1490_p1;
wire   [6:0] grp_fu_1490_p2;
wire   [7:0] grp_fu_1498_p0;
wire   [6:0] grp_fu_1498_p1;
wire   [6:0] grp_fu_1498_p2;
wire   [3:0] grp_fu_1506_p1;
wire   [6:0] grp_fu_1506_p2;
wire   [6:0] grp_fu_1506_p3;
wire   [7:0] grp_fu_1516_p0;
wire   [6:0] grp_fu_1516_p1;
wire   [6:0] grp_fu_1516_p2;
wire   [7:0] grp_fu_1524_p0;
wire   [6:0] grp_fu_1524_p1;
wire   [6:0] grp_fu_1524_p2;
wire   [7:0] grp_fu_1532_p0;
wire   [6:0] grp_fu_1532_p1;
wire   [6:0] grp_fu_1532_p2;
wire   [7:0] grp_fu_1540_p0;
wire   [6:0] grp_fu_1540_p1;
wire   [6:0] grp_fu_1540_p2;
wire   [7:0] grp_fu_1548_p0;
wire   [6:0] grp_fu_1548_p1;
wire   [6:0] grp_fu_1548_p2;
wire   [7:0] grp_fu_1556_p0;
wire   [6:0] grp_fu_1556_p1;
wire   [6:0] grp_fu_1556_p2;
wire   [7:0] grp_fu_1564_p0;
wire   [6:0] grp_fu_1564_p1;
wire   [6:0] grp_fu_1564_p2;
wire   [4:0] grp_fu_1572_p1;
wire   [6:0] grp_fu_1572_p2;
wire   [6:0] grp_fu_1572_p3;
wire   [7:0] grp_fu_1582_p0;
wire   [6:0] grp_fu_1582_p1;
wire   [6:0] grp_fu_1582_p2;
reg    grp_fu_557_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_561_ce;
reg    grp_fu_565_ce;
reg    grp_fu_569_ce;
reg    grp_fu_573_ce;
reg    grp_fu_577_ce;
reg    grp_fu_581_ce;
reg    grp_fu_585_ce;
reg    grp_fu_589_ce;
reg   [31:0] grp_fu_2211_p0;
reg   [31:0] grp_fu_2211_p1;
reg    grp_fu_2211_ce;
reg   [31:0] grp_fu_2215_p0;
reg   [31:0] grp_fu_2215_p1;
reg    grp_fu_2215_ce;
reg   [31:0] grp_fu_2219_p0;
reg   [31:0] grp_fu_2219_p1;
reg    grp_fu_2219_ce;
reg   [31:0] grp_fu_2223_p0;
reg   [31:0] grp_fu_2223_p1;
reg    grp_fu_2223_ce;
reg   [31:0] grp_fu_2227_p0;
reg   [31:0] grp_fu_2227_p1;
reg    grp_fu_2227_ce;
reg   [31:0] grp_fu_2231_p0;
reg   [31:0] grp_fu_2231_p1;
reg    grp_fu_2231_ce;
reg   [31:0] grp_fu_2235_p0;
reg   [31:0] grp_fu_2235_p1;
reg    grp_fu_2235_ce;
reg   [31:0] grp_fu_2239_p0;
reg   [31:0] grp_fu_2239_p1;
reg    grp_fu_2239_ce;
reg    grp_fu_2243_ce;
reg   [31:0] grp_fu_2247_p0;
reg   [31:0] grp_fu_2247_p1;
reg    grp_fu_2247_ce;
reg   [31:0] grp_fu_2251_p0;
reg   [31:0] grp_fu_2251_p1;
reg    grp_fu_2251_ce;
reg   [31:0] grp_fu_2255_p0;
reg   [31:0] grp_fu_2255_p1;
reg    grp_fu_2255_ce;
reg   [31:0] grp_fu_2259_p0;
reg   [31:0] grp_fu_2259_p1;
reg    grp_fu_2259_ce;
reg   [31:0] grp_fu_2263_p0;
reg   [31:0] grp_fu_2263_p1;
reg    grp_fu_2263_ce;
reg   [31:0] grp_fu_2267_p0;
reg   [31:0] grp_fu_2267_p1;
reg    grp_fu_2267_ce;
reg    grp_fu_2271_ce;
reg    grp_fu_2275_ce;
reg    grp_fu_2279_ce;
reg   [20:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
reg    ap_ST_fsm_state21_blk;
wire   [14:0] grp_fu_1442_p00;
wire   [14:0] grp_fu_1450_p00;
wire   [14:0] grp_fu_1458_p00;
wire   [14:0] grp_fu_1466_p00;
wire   [14:0] grp_fu_1474_p00;
wire   [14:0] grp_fu_1482_p00;
wire   [14:0] grp_fu_1490_p00;
wire   [14:0] grp_fu_1498_p00;
wire   [14:0] grp_fu_1516_p00;
wire   [14:0] grp_fu_1524_p00;
wire   [14:0] grp_fu_1532_p00;
wire   [14:0] grp_fu_1540_p00;
wire   [14:0] grp_fu_1548_p00;
wire   [14:0] grp_fu_1556_p00;
wire   [14:0] grp_fu_1564_p00;
wire   [14:0] grp_fu_1582_p00;
wire   [12:0] mul_ln171_1_fu_1358_p00;
wire   [12:0] mul_ln171_fu_1229_p00;
wire   [12:0] mul_ln186_fu_1367_p00;
wire   [12:0] mul_ln199_1_fu_1376_p00;
wire   [12:0] mul_ln199_fu_1238_p00;
wire   [12:0] mul_ln212_1_fu_1385_p00;
wire   [12:0] mul_ln212_fu_1247_p00;
wire   [12:0] mul_ln225_1_fu_1394_p00;
wire   [12:0] mul_ln225_fu_1256_p00;
wire   [12:0] mul_ln238_1_fu_1403_p00;
wire   [12:0] mul_ln238_fu_1265_p00;
wire   [12:0] mul_ln251_1_fu_1412_p00;
wire   [12:0] mul_ln251_fu_1274_p00;
wire   [12:0] mul_ln264_1_fu_1427_p00;
wire   [12:0] mul_ln264_fu_1283_p00;
wire   [12:0] mul_ln277_1_fu_1436_p00;
wire   [12:0] mul_ln277_fu_1299_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start_reg = 1'b0;
#0 phi_mul_fu_130 = 16'd0;
#0 v114_fu_134 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_470(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_d1),.v225_7_q1(v225_7_q1),.phi_mul(phi_mul_load_reg_1617),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_2075),.mul_ln277(mul_ln277_reg_2110),.mul_ln251(mul_ln251_reg_2100),.mul_ln225(mul_ln225_reg_2090),.mul_ln199(mul_ln199_reg_2080),.mul_ln264(mul_ln264_reg_2105),.mul_ln238(mul_ln238_reg_2095),.mul_ln212(mul_ln212_reg_2085),.empty_18(trunc_ln169_reg_2063),.cmp11(cmp11_reg_1664),.v120(reg_639),.v133(reg_645),.v144(reg_651),.v155(reg_657),.v166(reg_663),.v177(reg_669),.v188(reg_675),.v199(reg_681),.v210(reg_687),.empty(empty_47_reg_2115),.grp_fu_2211_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_din0),.grp_fu_2211_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_din1),.grp_fu_2211_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_opcode),.grp_fu_2211_p_dout0(grp_fu_208_p_dout0),.grp_fu_2211_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_ce),.grp_fu_2215_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_din0),.grp_fu_2215_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_din1),.grp_fu_2215_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_opcode),.grp_fu_2215_p_dout0(grp_fu_212_p_dout0),.grp_fu_2215_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_ce),.grp_fu_2219_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_din0),.grp_fu_2219_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_din1),.grp_fu_2219_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_opcode),.grp_fu_2219_p_dout0(grp_fu_216_p_dout0),.grp_fu_2219_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_ce),.grp_fu_2223_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_din0),.grp_fu_2223_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_din1),.grp_fu_2223_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_opcode),.grp_fu_2223_p_dout0(grp_fu_220_p_dout0),.grp_fu_2223_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_ce),.grp_fu_2227_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_din0),.grp_fu_2227_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_din1),.grp_fu_2227_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_opcode),.grp_fu_2227_p_dout0(grp_fu_224_p_dout0),.grp_fu_2227_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_ce),.grp_fu_2231_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_din0),.grp_fu_2231_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_din1),.grp_fu_2231_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_opcode),.grp_fu_2231_p_dout0(grp_fu_228_p_dout0),.grp_fu_2231_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_ce),.grp_fu_2235_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_din0),.grp_fu_2235_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_din1),.grp_fu_2235_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_opcode),.grp_fu_2235_p_dout0(grp_fu_232_p_dout0),.grp_fu_2235_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_ce),.grp_fu_2239_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_din0),.grp_fu_2239_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_din1),.grp_fu_2239_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_opcode),.grp_fu_2239_p_dout0(grp_fu_236_p_dout0),.grp_fu_2239_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_ce),.grp_fu_2243_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_din0),.grp_fu_2243_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_din1),.grp_fu_2243_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_opcode),.grp_fu_2243_p_dout0(grp_fu_240_p_dout0),.grp_fu_2243_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_ce),.grp_fu_2247_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_din0),.grp_fu_2247_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_din1),.grp_fu_2247_p_dout0(grp_fu_244_p_dout0),.grp_fu_2247_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_ce),.grp_fu_2251_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_din0),.grp_fu_2251_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_din1),.grp_fu_2251_p_dout0(grp_fu_248_p_dout0),.grp_fu_2251_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_ce),.grp_fu_2255_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_din0),.grp_fu_2255_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_din1),.grp_fu_2255_p_dout0(grp_fu_252_p_dout0),.grp_fu_2255_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_ce),.grp_fu_2259_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_din0),.grp_fu_2259_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_din1),.grp_fu_2259_p_dout0(grp_fu_256_p_dout0),.grp_fu_2259_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_ce),.grp_fu_2263_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_din0),.grp_fu_2263_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_din1),.grp_fu_2263_p_dout0(grp_fu_260_p_dout0),.grp_fu_2263_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_ce),.grp_fu_2267_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_din0),.grp_fu_2267_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_din1),.grp_fu_2267_p_dout0(grp_fu_264_p_dout0),.grp_fu_2267_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_ce),.grp_fu_2271_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_din0),.grp_fu_2271_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_din1),.grp_fu_2271_p_dout0(grp_fu_268_p_dout0),.grp_fu_2271_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_ce),.grp_fu_2275_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_din0),.grp_fu_2275_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_din1),.grp_fu_2275_p_dout0(grp_fu_272_p_dout0),.grp_fu_2275_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_ce),.grp_fu_2279_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_din0),.grp_fu_2279_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_din1),.grp_fu_2279_p_dout0(grp_fu_276_p_dout0),.grp_fu_2279_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_513(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_d1),.v225_7_q1(v225_7_q1),.phi_mul(phi_mul_load_reg_1617),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_ce1),.v227_q1(v227_q1),.mul_ln186(mul_ln186_reg_2171),.mul_ln264_1(mul_ln264_1_reg_2201),.mul_ln238_1(mul_ln238_1_reg_2191),.mul_ln212_1(mul_ln212_1_reg_2181),.mul_ln171_1(mul_ln171_1_reg_2166),.mul_ln277_1(mul_ln277_1_reg_2206),.mul_ln251_1(mul_ln251_1_reg_2196),.mul_ln225_1(mul_ln225_1_reg_2186),.mul_ln199_1(mul_ln199_1_reg_2176),.empty_17(trunc_ln169_reg_2063),.cmp11(cmp11_reg_1664),.v120_1(reg_639),.v133_1(reg_645),.v144_1(reg_651),.v155_1(reg_657),.v166_1(reg_663),.v177_1(reg_669),.v188_1(reg_675),.v199_1(reg_681),.v210_1(reg_687),.empty(empty_47_reg_2115),.grp_fu_2211_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_din0),.grp_fu_2211_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_din1),.grp_fu_2211_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_opcode),.grp_fu_2211_p_dout0(grp_fu_208_p_dout0),.grp_fu_2211_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_ce),.grp_fu_2215_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_din0),.grp_fu_2215_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_din1),.grp_fu_2215_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_opcode),.grp_fu_2215_p_dout0(grp_fu_212_p_dout0),.grp_fu_2215_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_ce),.grp_fu_2219_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_din0),.grp_fu_2219_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_din1),.grp_fu_2219_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_opcode),.grp_fu_2219_p_dout0(grp_fu_216_p_dout0),.grp_fu_2219_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_ce),.grp_fu_2223_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_din0),.grp_fu_2223_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_din1),.grp_fu_2223_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_opcode),.grp_fu_2223_p_dout0(grp_fu_220_p_dout0),.grp_fu_2223_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_ce),.grp_fu_2227_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_din0),.grp_fu_2227_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_din1),.grp_fu_2227_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_opcode),.grp_fu_2227_p_dout0(grp_fu_224_p_dout0),.grp_fu_2227_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_ce),.grp_fu_2231_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_din0),.grp_fu_2231_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_din1),.grp_fu_2231_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_opcode),.grp_fu_2231_p_dout0(grp_fu_228_p_dout0),.grp_fu_2231_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_ce),.grp_fu_2235_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_din0),.grp_fu_2235_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_din1),.grp_fu_2235_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_opcode),.grp_fu_2235_p_dout0(grp_fu_232_p_dout0),.grp_fu_2235_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_ce),.grp_fu_2239_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_din0),.grp_fu_2239_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_din1),.grp_fu_2239_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_opcode),.grp_fu_2239_p_dout0(grp_fu_236_p_dout0),.grp_fu_2239_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_ce),.grp_fu_2247_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_din0),.grp_fu_2247_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_din1),.grp_fu_2247_p_dout0(grp_fu_244_p_dout0),.grp_fu_2247_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_ce),.grp_fu_2251_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_din0),.grp_fu_2251_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_din1),.grp_fu_2251_p_dout0(grp_fu_248_p_dout0),.grp_fu_2251_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_ce),.grp_fu_2255_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_din0),.grp_fu_2255_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_din1),.grp_fu_2255_p_dout0(grp_fu_252_p_dout0),.grp_fu_2255_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_ce),.grp_fu_2259_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_din0),.grp_fu_2259_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_din1),.grp_fu_2259_p_dout0(grp_fu_256_p_dout0),.grp_fu_2259_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_ce),.grp_fu_2263_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_din0),.grp_fu_2263_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_din1),.grp_fu_2263_p_dout0(grp_fu_260_p_dout0),.grp_fu_2263_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_ce),.grp_fu_2267_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_din0),.grp_fu_2267_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_din1),.grp_fu_2267_p_dout0(grp_fu_264_p_dout0),.grp_fu_2267_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U121(.din0(mul_ln171_fu_1229_p0),.din1(mul_ln171_fu_1229_p1),.dout(mul_ln171_fu_1229_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U122(.din0(mul_ln199_fu_1238_p0),.din1(mul_ln199_fu_1238_p1),.dout(mul_ln199_fu_1238_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U123(.din0(mul_ln212_fu_1247_p0),.din1(mul_ln212_fu_1247_p1),.dout(mul_ln212_fu_1247_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U124(.din0(mul_ln225_fu_1256_p0),.din1(mul_ln225_fu_1256_p1),.dout(mul_ln225_fu_1256_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U125(.din0(mul_ln238_fu_1265_p0),.din1(mul_ln238_fu_1265_p1),.dout(mul_ln238_fu_1265_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U126(.din0(mul_ln251_fu_1274_p0),.din1(mul_ln251_fu_1274_p1),.dout(mul_ln251_fu_1274_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U127(.din0(mul_ln264_fu_1283_p0),.din1(mul_ln264_fu_1283_p1),.dout(mul_ln264_fu_1283_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U128(.din0(mul_ln277_fu_1299_p0),.din1(mul_ln277_fu_1299_p1),.dout(mul_ln277_fu_1299_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U129(.din0(mul_ln171_1_fu_1358_p0),.din1(mul_ln171_1_fu_1358_p1),.dout(mul_ln171_1_fu_1358_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U130(.din0(mul_ln186_fu_1367_p0),.din1(mul_ln186_fu_1367_p1),.dout(mul_ln186_fu_1367_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U131(.din0(mul_ln199_1_fu_1376_p0),.din1(mul_ln199_1_fu_1376_p1),.dout(mul_ln199_1_fu_1376_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U132(.din0(mul_ln212_1_fu_1385_p0),.din1(mul_ln212_1_fu_1385_p1),.dout(mul_ln212_1_fu_1385_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U133(.din0(mul_ln225_1_fu_1394_p0),.din1(mul_ln225_1_fu_1394_p1),.dout(mul_ln225_1_fu_1394_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U134(.din0(mul_ln238_1_fu_1403_p0),.din1(mul_ln238_1_fu_1403_p1),.dout(mul_ln238_1_fu_1403_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U135(.din0(mul_ln251_1_fu_1412_p0),.din1(mul_ln251_1_fu_1412_p1),.dout(mul_ln251_1_fu_1412_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U136(.din0(mul_ln264_1_fu_1427_p0),.din1(mul_ln264_1_fu_1427_p1),.dout(mul_ln264_1_fu_1427_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U137(.din0(mul_ln277_1_fu_1436_p0),.din1(mul_ln277_1_fu_1436_p1),.dout(mul_ln277_1_fu_1436_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U138(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1442_p0),.din1(grp_fu_1442_p1),.din2(grp_fu_1442_p2),.ce(1'b1),.dout(grp_fu_1442_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U139(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1450_p0),.din1(grp_fu_1450_p1),.din2(grp_fu_1450_p2),.ce(1'b1),.dout(grp_fu_1450_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1458_p0),.din1(grp_fu_1458_p1),.din2(grp_fu_1458_p2),.ce(1'b1),.dout(grp_fu_1458_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1466_p0),.din1(grp_fu_1466_p1),.din2(grp_fu_1466_p2),.ce(1'b1),.dout(grp_fu_1466_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1474_p0),.din1(grp_fu_1474_p1),.din2(grp_fu_1474_p2),.ce(1'b1),.dout(grp_fu_1474_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1482_p0),.din1(grp_fu_1482_p1),.din2(grp_fu_1482_p2),.ce(1'b1),.dout(grp_fu_1482_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U144(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1490_p0),.din1(grp_fu_1490_p1),.din2(grp_fu_1490_p2),.ce(1'b1),.dout(grp_fu_1490_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U145(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1498_p0),.din1(grp_fu_1498_p1),.din2(grp_fu_1498_p2),.ce(1'b1),.dout(grp_fu_1498_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U146(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_458),.din1(grp_fu_1506_p1),.din2(grp_fu_1506_p2),.din3(grp_fu_1506_p3),.ce(1'b1),.dout(grp_fu_1506_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U147(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1516_p0),.din1(grp_fu_1516_p1),.din2(grp_fu_1516_p2),.ce(1'b1),.dout(grp_fu_1516_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U148(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1524_p0),.din1(grp_fu_1524_p1),.din2(grp_fu_1524_p2),.ce(1'b1),.dout(grp_fu_1524_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1532_p0),.din1(grp_fu_1532_p1),.din2(grp_fu_1532_p2),.ce(1'b1),.dout(grp_fu_1532_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1540_p0),.din1(grp_fu_1540_p1),.din2(grp_fu_1540_p2),.ce(1'b1),.dout(grp_fu_1540_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1548_p0),.din1(grp_fu_1548_p1),.din2(grp_fu_1548_p2),.ce(1'b1),.dout(grp_fu_1548_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1556_p0),.din1(grp_fu_1556_p1),.din2(grp_fu_1556_p2),.ce(1'b1),.dout(grp_fu_1556_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U153(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1564_p0),.din1(grp_fu_1564_p1),.din2(grp_fu_1564_p2),.ce(1'b1),.dout(grp_fu_1564_p3));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U154(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_458),.din1(grp_fu_1572_p1),.din2(grp_fu_1572_p2),.din3(grp_fu_1572_p3),.ce(1'b1),.dout(grp_fu_1572_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U155(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1582_p0),.din1(grp_fu_1582_p1),.din2(grp_fu_1582_p2),.ce(1'b1),.dout(grp_fu_1582_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_130 <= 16'd0;
    end else if (((icmp_ln169_fu_751_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_130 <= add_ln168_1_reg_1623;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_134 <= 8'd0;
    end else if (((icmp_ln169_fu_751_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_134 <= add_ln168_reg_1631;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_715_p2 == 1'd0))) begin
        v115_reg_458 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_458 <= add_ln169_1_reg_1683;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1623 <= add_ln168_1_fu_709_p2;
        add_ln168_reg_1631 <= add_ln168_fu_721_p2;
        cmp11_reg_1664 <= cmp11_fu_745_p2;
        phi_mul_load_reg_1617 <= phi_mul_fu_130;
        trunc_ln168_reg_1636 <= trunc_ln168_fu_727_p1;
        zext_ln168_reg_1642[6 : 0] <= zext_ln168_fu_741_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_1683 <= add_ln169_1_fu_783_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_47_reg_2115 <= empty_47_fu_1305_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        lshr_ln1_reg_2070 <= {{v115_reg_458[7:3]}};
        mul_ln171_reg_2075 <= mul_ln171_fu_1229_p2;
        mul_ln199_reg_2080 <= mul_ln199_fu_1238_p2;
        mul_ln212_reg_2085 <= mul_ln212_fu_1247_p2;
        mul_ln225_reg_2090 <= mul_ln225_fu_1256_p2;
        mul_ln238_reg_2095 <= mul_ln238_fu_1265_p2;
        mul_ln251_reg_2100 <= mul_ln251_fu_1274_p2;
        mul_ln264_reg_2105 <= mul_ln264_fu_1283_p2;
        mul_ln277_reg_2110 <= mul_ln277_fu_1299_p2;
        trunc_ln169_reg_2063 <= trunc_ln169_fu_1211_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_2166 <= mul_ln171_1_fu_1358_p2;
        mul_ln186_reg_2171 <= mul_ln186_fu_1367_p2;
        mul_ln199_1_reg_2176 <= mul_ln199_1_fu_1376_p2;
        mul_ln212_1_reg_2181 <= mul_ln212_1_fu_1385_p2;
        mul_ln225_1_reg_2186 <= mul_ln225_1_fu_1394_p2;
        mul_ln238_1_reg_2191 <= mul_ln238_1_fu_1403_p2;
        mul_ln251_1_reg_2196 <= mul_ln251_1_fu_1412_p2;
        mul_ln264_1_reg_2201 <= mul_ln264_1_fu_1427_p2;
        mul_ln277_1_reg_2206 <= mul_ln277_1_fu_1436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_607 <= grp_fu_593_p3;
        reg_611 <= grp_fu_600_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_615 <= grp_fu_593_p3;
        reg_619 <= grp_fu_600_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_623 <= grp_fu_593_p3;
        reg_627 <= grp_fu_600_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_631 <= grp_fu_593_p3;
        reg_635 <= grp_fu_600_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_639 <= grp_fu_280_p_dout0;
        reg_645 <= grp_fu_284_p_dout0;
        reg_651 <= grp_fu_288_p_dout0;
        reg_657 <= grp_fu_292_p_dout0;
        reg_663 <= grp_fu_296_p_dout0;
        reg_669 <= grp_fu_300_p_dout0;
        reg_675 <= grp_fu_304_p_dout0;
        reg_681 <= grp_fu_308_p_dout0;
        reg_687 <= grp_fu_312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_10_reg_1863 <= {{empty_56_fu_1017_p2[7:3]}};
        tmp_11_reg_1873 <= {{empty_59_fu_1037_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_12_reg_1903 <= {{empty_62_fu_1067_p2[7:3]}};
        tmp_13_reg_1913 <= {{empty_65_fu_1087_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_14_reg_1953 <= {{empty_72_fu_1117_p2[7:3]}};
        v119_1_v_reg_1923 <= grp_fu_600_p3;
        v209_v_reg_1918 <= grp_fu_593_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_2_reg_1693 <= {{empty_25_fu_797_p2[7:3]}};
        tmp_3_reg_1703 <= {{empty_28_fu_817_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_4_reg_1713 <= {{empty_31_fu_837_p2[7:3]}};
        tmp_5_reg_1723 <= {{empty_34_fu_857_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_6_reg_1753 <= {{empty_37_fu_887_p2[7:3]}};
        tmp_7_reg_1763 <= {{empty_40_fu_907_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_8_reg_1823 <= {{empty_50_fu_967_p2[7:3]}};
        tmp_9_reg_1833 <= {{empty_53_fu_987_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_s_reg_1793 <= {{add_ln169_fu_937_p2[7:3]}};
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_715_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_715_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2211_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2211_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_ce;
    end else begin
        grp_fu_2211_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2211_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2211_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_din0;
    end else begin
        grp_fu_2211_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2211_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2211_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2211_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2211_p_din1;
    end else begin
        grp_fu_2211_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2215_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2215_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_ce;
    end else begin
        grp_fu_2215_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2215_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2215_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_din0;
    end else begin
        grp_fu_2215_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2215_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2215_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2215_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2215_p_din1;
    end else begin
        grp_fu_2215_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2219_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2219_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_ce;
    end else begin
        grp_fu_2219_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2219_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2219_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_din0;
    end else begin
        grp_fu_2219_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2219_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2219_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2219_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2219_p_din1;
    end else begin
        grp_fu_2219_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2223_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2223_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_ce;
    end else begin
        grp_fu_2223_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2223_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2223_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_din0;
    end else begin
        grp_fu_2223_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2223_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2223_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2223_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2223_p_din1;
    end else begin
        grp_fu_2223_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2227_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2227_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_ce;
    end else begin
        grp_fu_2227_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2227_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2227_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_din0;
    end else begin
        grp_fu_2227_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2227_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2227_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2227_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2227_p_din1;
    end else begin
        grp_fu_2227_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2231_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2231_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_ce;
    end else begin
        grp_fu_2231_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2231_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2231_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_din0;
    end else begin
        grp_fu_2231_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2231_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2231_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2231_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2231_p_din1;
    end else begin
        grp_fu_2231_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2235_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2235_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_ce;
    end else begin
        grp_fu_2235_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2235_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2235_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_din0;
    end else begin
        grp_fu_2235_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2235_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2235_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2235_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2235_p_din1;
    end else begin
        grp_fu_2235_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2239_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2239_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_ce;
    end else begin
        grp_fu_2239_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2239_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2239_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_din0;
    end else begin
        grp_fu_2239_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2239_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2239_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2239_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2239_p_din1;
    end else begin
        grp_fu_2239_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2243_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_ce;
    end else begin
        grp_fu_2243_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2247_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2247_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_ce;
    end else begin
        grp_fu_2247_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2247_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2247_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_din0;
    end else begin
        grp_fu_2247_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2247_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2247_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2247_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2247_p_din1;
    end else begin
        grp_fu_2247_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2251_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2251_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_ce;
    end else begin
        grp_fu_2251_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2251_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2251_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_din0;
    end else begin
        grp_fu_2251_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2251_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2251_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2251_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2251_p_din1;
    end else begin
        grp_fu_2251_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2255_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2255_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_ce;
    end else begin
        grp_fu_2255_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2255_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2255_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_din0;
    end else begin
        grp_fu_2255_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2255_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2255_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2255_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2255_p_din1;
    end else begin
        grp_fu_2255_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2259_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2259_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_ce;
    end else begin
        grp_fu_2259_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2259_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2259_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_din0;
    end else begin
        grp_fu_2259_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2259_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2259_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2259_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2259_p_din1;
    end else begin
        grp_fu_2259_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2263_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2263_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_ce;
    end else begin
        grp_fu_2263_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2263_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2263_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_din0;
    end else begin
        grp_fu_2263_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2263_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2263_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2263_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2263_p_din1;
    end else begin
        grp_fu_2263_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2267_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2267_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_ce;
    end else begin
        grp_fu_2267_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2267_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2267_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_din0;
    end else begin
        grp_fu_2267_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2267_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_grp_fu_2267_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2267_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2267_p_din1;
    end else begin
        grp_fu_2267_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2271_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_ce;
    end else begin
        grp_fu_2271_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2275_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_ce;
    end else begin
        grp_fu_2275_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2279_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_ce;
    end else begin
        grp_fu_2279_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_557_ce = 1'b1;
    end else begin
        grp_fu_557_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_557_p0 = v119_1_fu_1311_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_557_p0 = v119_fu_1137_p1;
    end else begin
        grp_fu_557_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_561_ce = 1'b1;
    end else begin
        grp_fu_561_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_561_p0 = v132_1_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_561_p0 = v132_fu_1142_p1;
    end else begin
        grp_fu_561_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_565_ce = 1'b1;
    end else begin
        grp_fu_565_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_565_p0 = v143_1_fu_1320_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_565_p0 = v143_fu_1147_p1;
    end else begin
        grp_fu_565_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_569_ce = 1'b1;
    end else begin
        grp_fu_569_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_569_p0 = v154_1_fu_1325_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_569_p0 = v154_fu_1152_p1;
    end else begin
        grp_fu_569_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_573_ce = 1'b1;
    end else begin
        grp_fu_573_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_573_p0 = v165_1_fu_1330_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_573_p0 = v165_fu_1157_p1;
    end else begin
        grp_fu_573_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_577_ce = 1'b1;
    end else begin
        grp_fu_577_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_577_p0 = v176_1_fu_1335_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_577_p0 = v176_fu_1162_p1;
    end else begin
        grp_fu_577_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_581_ce = 1'b1;
    end else begin
        grp_fu_581_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_581_p0 = v187_1_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_581_p0 = v187_fu_1167_p1;
    end else begin
        grp_fu_581_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_585_ce = 1'b1;
    end else begin
        grp_fu_585_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_585_p0 = v198_1_fu_1345_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_585_p0 = v198_fu_1172_p1;
    end else begin
        grp_fu_585_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_589_ce = 1'b1;
    end else begin
        grp_fu_589_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_589_p0 = v209_1_fu_1350_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_589_p0 = v209_fu_1177_p1;
    end else begin
        grp_fu_589_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_address0;
    end else begin
        v225_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_address1;
    end else begin
        v225_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_ce0;
    end else begin
        v225_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_ce1;
    end else begin
        v225_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_d0;
    end else begin
        v225_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_d1;
    end else begin
        v225_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_we0;
    end else begin
        v225_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_2_we1;
    end else begin
        v225_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_address0;
    end else begin
        v225_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_address1;
    end else begin
        v225_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_ce0;
    end else begin
        v225_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_ce1;
    end else begin
        v225_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_d0;
    end else begin
        v225_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_d1;
    end else begin
        v225_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_we0;
    end else begin
        v225_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_3_we1;
    end else begin
        v225_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_address0;
    end else begin
        v225_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_address1;
    end else begin
        v225_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_ce0;
    end else begin
        v225_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_ce1;
    end else begin
        v225_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_d0;
    end else begin
        v225_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_d1;
    end else begin
        v225_4_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_we0;
    end else begin
        v225_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_4_we1;
    end else begin
        v225_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_address0;
    end else begin
        v225_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_address1;
    end else begin
        v225_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_ce0;
    end else begin
        v225_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_ce1;
    end else begin
        v225_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_d0;
    end else begin
        v225_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_d1;
    end else begin
        v225_5_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_we0;
    end else begin
        v225_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_5_we1;
    end else begin
        v225_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_address0;
    end else begin
        v225_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_address1;
    end else begin
        v225_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_ce0;
    end else begin
        v225_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_ce1;
    end else begin
        v225_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_d0;
    end else begin
        v225_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_d1;
    end else begin
        v225_6_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_we0;
    end else begin
        v225_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_6_we1;
    end else begin
        v225_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_address0;
    end else begin
        v225_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_address1;
    end else begin
        v225_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_ce0;
    end else begin
        v225_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_ce1;
    end else begin
        v225_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_d0;
    end else begin
        v225_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_d1;
    end else begin
        v225_7_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_we0;
    end else begin
        v225_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v225_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v225_7_we1;
    end else begin
        v225_7_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address0_local = p_cast3849_fu_1206_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address0_local = p_cast3847_fu_1196_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0_local = p_cast3845_fu_1186_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address0_local = p_cast3843_fu_1112_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast3841_fu_1062_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast3839_fu_1012_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast3837_fu_962_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast3835_fu_932_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast_fu_882_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address1_local = p_cast3848_fu_1201_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address1_local = p_cast3846_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address1_local = p_cast3844_fu_1181_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address1_local = p_cast3842_fu_1107_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast3840_fu_1057_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast3838_fu_1007_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast3836_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast3834_fu_927_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address1_local = p_cast3833_fu_877_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0_local = p_cast3849_fu_1206_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address0_local = p_cast3847_fu_1196_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address0_local = p_cast3845_fu_1186_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address0_local = p_cast3843_fu_1112_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast3841_fu_1062_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast3839_fu_1012_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast3837_fu_962_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast3835_fu_932_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast_fu_882_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address1_local = p_cast3848_fu_1201_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address1_local = p_cast3846_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address1_local = p_cast3844_fu_1181_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address1_local = p_cast3842_fu_1107_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast3840_fu_1057_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast3838_fu_1007_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast3836_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast3834_fu_927_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address1_local = p_cast3833_fu_877_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_715_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_715_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_715_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_715_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_751_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_1_fu_709_p2 = (phi_mul_fu_130 + 16'd190);
assign add_ln168_fu_721_p2 = (v114_fu_134 + 8'd1);
assign add_ln169_1_fu_783_p2 = (v115_reg_458 + 8'd18);
assign add_ln169_fu_937_p2 = (v115_reg_458 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_715_p2 == 1'd1));
end
assign cmp11_fu_745_p2 = ((v114_fu_134 == 8'd0) ? 1'b1 : 1'b0);
assign empty_25_fu_797_p2 = (v115_reg_458 + 8'd2);
assign empty_28_fu_817_p2 = (v115_reg_458 + 8'd3);
assign empty_31_fu_837_p2 = (v115_reg_458 + 8'd4);
assign empty_34_fu_857_p2 = (v115_reg_458 + 8'd5);
assign empty_37_fu_887_p2 = (v115_reg_458 + 8'd6);
assign empty_40_fu_907_p2 = (v115_reg_458 + 8'd7);
assign empty_46_fu_1289_p2 = (lshr_ln1_fu_1215_p4 + 5'd1);
assign empty_47_fu_1305_p2 = ((trunc_ln169_reg_2063 == 3'd6) ? 1'b1 : 1'b0);
assign empty_50_fu_967_p2 = (v115_reg_458 + 8'd10);
assign empty_53_fu_987_p2 = (v115_reg_458 + 8'd11);
assign empty_56_fu_1017_p2 = (v115_reg_458 + 8'd12);
assign empty_59_fu_1037_p2 = (v115_reg_458 + 8'd13);
assign empty_62_fu_1067_p2 = (v115_reg_458 + 8'd14);
assign empty_65_fu_1087_p2 = (v115_reg_458 + 8'd15);
assign empty_71_fu_1418_p2 = (lshr_ln1_reg_2070 + 5'd2);
assign empty_72_fu_1117_p2 = (v115_reg_458 + 8'd17);
assign grp_fu_1442_p0 = grp_fu_1442_p00;
assign grp_fu_1442_p00 = v115_reg_458;
assign grp_fu_1442_p1 = 15'd105;
assign grp_fu_1442_p2 = zext_ln168_reg_1642;
assign grp_fu_1450_p0 = grp_fu_1450_p00;
assign grp_fu_1450_p00 = tmp_1_fu_771_p3;
assign grp_fu_1450_p1 = 15'd105;
assign grp_fu_1450_p2 = zext_ln168_reg_1642;
assign grp_fu_1458_p0 = grp_fu_1458_p00;
assign grp_fu_1458_p00 = empty_25_fu_797_p2;
assign grp_fu_1458_p1 = 15'd105;
assign grp_fu_1458_p2 = zext_ln168_reg_1642;
assign grp_fu_1466_p0 = grp_fu_1466_p00;
assign grp_fu_1466_p00 = empty_28_fu_817_p2;
assign grp_fu_1466_p1 = 15'd105;
assign grp_fu_1466_p2 = zext_ln168_reg_1642;
assign grp_fu_1474_p0 = grp_fu_1474_p00;
assign grp_fu_1474_p00 = empty_31_fu_837_p2;
assign grp_fu_1474_p1 = 15'd105;
assign grp_fu_1474_p2 = zext_ln168_reg_1642;
assign grp_fu_1482_p0 = grp_fu_1482_p00;
assign grp_fu_1482_p00 = empty_34_fu_857_p2;
assign grp_fu_1482_p1 = 15'd105;
assign grp_fu_1482_p2 = zext_ln168_reg_1642;
assign grp_fu_1490_p0 = grp_fu_1490_p00;
assign grp_fu_1490_p00 = empty_37_fu_887_p2;
assign grp_fu_1490_p1 = 15'd105;
assign grp_fu_1490_p2 = zext_ln168_reg_1642;
assign grp_fu_1498_p0 = grp_fu_1498_p00;
assign grp_fu_1498_p00 = empty_40_fu_907_p2;
assign grp_fu_1498_p1 = 15'd105;
assign grp_fu_1498_p2 = zext_ln168_reg_1642;
assign grp_fu_1506_p1 = 8'd8;
assign grp_fu_1506_p2 = 15'd105;
assign grp_fu_1506_p3 = zext_ln168_reg_1642;
assign grp_fu_1516_p0 = grp_fu_1516_p00;
assign grp_fu_1516_p00 = add_ln169_fu_937_p2;
assign grp_fu_1516_p1 = 15'd105;
assign grp_fu_1516_p2 = zext_ln168_reg_1642;
assign grp_fu_1524_p0 = grp_fu_1524_p00;
assign grp_fu_1524_p00 = empty_50_fu_967_p2;
assign grp_fu_1524_p1 = 15'd105;
assign grp_fu_1524_p2 = zext_ln168_reg_1642;
assign grp_fu_1532_p0 = grp_fu_1532_p00;
assign grp_fu_1532_p00 = empty_53_fu_987_p2;
assign grp_fu_1532_p1 = 15'd105;
assign grp_fu_1532_p2 = zext_ln168_reg_1642;
assign grp_fu_1540_p0 = grp_fu_1540_p00;
assign grp_fu_1540_p00 = empty_56_fu_1017_p2;
assign grp_fu_1540_p1 = 15'd105;
assign grp_fu_1540_p2 = zext_ln168_reg_1642;
assign grp_fu_1548_p0 = grp_fu_1548_p00;
assign grp_fu_1548_p00 = empty_59_fu_1037_p2;
assign grp_fu_1548_p1 = 15'd105;
assign grp_fu_1548_p2 = zext_ln168_reg_1642;
assign grp_fu_1556_p0 = grp_fu_1556_p00;
assign grp_fu_1556_p00 = empty_62_fu_1067_p2;
assign grp_fu_1556_p1 = 15'd105;
assign grp_fu_1556_p2 = zext_ln168_reg_1642;
assign grp_fu_1564_p0 = grp_fu_1564_p00;
assign grp_fu_1564_p00 = empty_65_fu_1087_p2;
assign grp_fu_1564_p1 = 15'd105;
assign grp_fu_1564_p2 = zext_ln168_reg_1642;
assign grp_fu_1572_p1 = 8'd16;
assign grp_fu_1572_p2 = 15'd105;
assign grp_fu_1572_p3 = zext_ln168_reg_1642;
assign grp_fu_1582_p0 = grp_fu_1582_p00;
assign grp_fu_1582_p00 = empty_72_fu_1117_p2;
assign grp_fu_1582_p1 = 15'd105;
assign grp_fu_1582_p2 = zext_ln168_reg_1642;
assign grp_fu_208_p_ce = grp_fu_2211_ce;
assign grp_fu_208_p_din0 = grp_fu_2211_p0;
assign grp_fu_208_p_din1 = grp_fu_2211_p1;
assign grp_fu_208_p_opcode = 2'd0;
assign grp_fu_212_p_ce = grp_fu_2215_ce;
assign grp_fu_212_p_din0 = grp_fu_2215_p0;
assign grp_fu_212_p_din1 = grp_fu_2215_p1;
assign grp_fu_212_p_opcode = 2'd0;
assign grp_fu_216_p_ce = grp_fu_2219_ce;
assign grp_fu_216_p_din0 = grp_fu_2219_p0;
assign grp_fu_216_p_din1 = grp_fu_2219_p1;
assign grp_fu_216_p_opcode = 2'd0;
assign grp_fu_220_p_ce = grp_fu_2223_ce;
assign grp_fu_220_p_din0 = grp_fu_2223_p0;
assign grp_fu_220_p_din1 = grp_fu_2223_p1;
assign grp_fu_220_p_opcode = 2'd0;
assign grp_fu_224_p_ce = grp_fu_2227_ce;
assign grp_fu_224_p_din0 = grp_fu_2227_p0;
assign grp_fu_224_p_din1 = grp_fu_2227_p1;
assign grp_fu_224_p_opcode = 2'd0;
assign grp_fu_228_p_ce = grp_fu_2231_ce;
assign grp_fu_228_p_din0 = grp_fu_2231_p0;
assign grp_fu_228_p_din1 = grp_fu_2231_p1;
assign grp_fu_228_p_opcode = 2'd0;
assign grp_fu_232_p_ce = grp_fu_2235_ce;
assign grp_fu_232_p_din0 = grp_fu_2235_p0;
assign grp_fu_232_p_din1 = grp_fu_2235_p1;
assign grp_fu_232_p_opcode = 2'd0;
assign grp_fu_236_p_ce = grp_fu_2239_ce;
assign grp_fu_236_p_din0 = grp_fu_2239_p0;
assign grp_fu_236_p_din1 = grp_fu_2239_p1;
assign grp_fu_236_p_opcode = 2'd0;
assign grp_fu_240_p_ce = grp_fu_2243_ce;
assign grp_fu_240_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_din0;
assign grp_fu_240_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2243_p_din1;
assign grp_fu_240_p_opcode = 2'd0;
assign grp_fu_244_p_ce = grp_fu_2247_ce;
assign grp_fu_244_p_din0 = grp_fu_2247_p0;
assign grp_fu_244_p_din1 = grp_fu_2247_p1;
assign grp_fu_248_p_ce = grp_fu_2251_ce;
assign grp_fu_248_p_din0 = grp_fu_2251_p0;
assign grp_fu_248_p_din1 = grp_fu_2251_p1;
assign grp_fu_252_p_ce = grp_fu_2255_ce;
assign grp_fu_252_p_din0 = grp_fu_2255_p0;
assign grp_fu_252_p_din1 = grp_fu_2255_p1;
assign grp_fu_256_p_ce = grp_fu_2259_ce;
assign grp_fu_256_p_din0 = grp_fu_2259_p0;
assign grp_fu_256_p_din1 = grp_fu_2259_p1;
assign grp_fu_260_p_ce = grp_fu_2263_ce;
assign grp_fu_260_p_din0 = grp_fu_2263_p0;
assign grp_fu_260_p_din1 = grp_fu_2263_p1;
assign grp_fu_264_p_ce = grp_fu_2267_ce;
assign grp_fu_264_p_din0 = grp_fu_2267_p0;
assign grp_fu_264_p_din1 = grp_fu_2267_p1;
assign grp_fu_268_p_ce = grp_fu_2271_ce;
assign grp_fu_268_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_din0;
assign grp_fu_268_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2271_p_din1;
assign grp_fu_272_p_ce = grp_fu_2275_ce;
assign grp_fu_272_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_din0;
assign grp_fu_272_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2275_p_din1;
assign grp_fu_276_p_ce = grp_fu_2279_ce;
assign grp_fu_276_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_din0;
assign grp_fu_276_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_grp_fu_2279_p_din1;
assign grp_fu_280_p_ce = grp_fu_557_ce;
assign grp_fu_280_p_din0 = grp_fu_557_p0;
assign grp_fu_280_p_din1 = v113;
assign grp_fu_284_p_ce = grp_fu_561_ce;
assign grp_fu_284_p_din0 = grp_fu_561_p0;
assign grp_fu_284_p_din1 = v113;
assign grp_fu_288_p_ce = grp_fu_565_ce;
assign grp_fu_288_p_din0 = grp_fu_565_p0;
assign grp_fu_288_p_din1 = v113;
assign grp_fu_292_p_ce = grp_fu_569_ce;
assign grp_fu_292_p_din0 = grp_fu_569_p0;
assign grp_fu_292_p_din1 = v113;
assign grp_fu_296_p_ce = grp_fu_573_ce;
assign grp_fu_296_p_din0 = grp_fu_573_p0;
assign grp_fu_296_p_din1 = v113;
assign grp_fu_300_p_ce = grp_fu_577_ce;
assign grp_fu_300_p_din0 = grp_fu_577_p0;
assign grp_fu_300_p_din1 = v113;
assign grp_fu_304_p_ce = grp_fu_581_ce;
assign grp_fu_304_p_din0 = grp_fu_581_p0;
assign grp_fu_304_p_din1 = v113;
assign grp_fu_308_p_ce = grp_fu_585_ce;
assign grp_fu_308_p_din0 = grp_fu_585_p0;
assign grp_fu_308_p_din1 = v113;
assign grp_fu_312_p_ce = grp_fu_589_ce;
assign grp_fu_312_p_din0 = grp_fu_589_p0;
assign grp_fu_312_p_din1 = v113;
assign grp_fu_593_p3 = ((trunc_ln168_reg_1636[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_600_p3 = ((trunc_ln168_reg_1636[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_513_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_470_ap_start_reg;
assign icmp_ln168_fu_715_p2 = ((v114_fu_134 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_751_p2 = ((v115_reg_458 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1215_p4 = {{v115_reg_458[7:3]}};
assign lshr_ln_fu_731_p4 = {{v114_fu_134[7:1]}};
assign mul_ln171_1_fu_1358_p0 = mul_ln171_1_fu_1358_p00;
assign mul_ln171_1_fu_1358_p00 = tmp_s_reg_1793;
assign mul_ln171_1_fu_1358_p1 = 13'd190;
assign mul_ln171_fu_1229_p0 = mul_ln171_fu_1229_p00;
assign mul_ln171_fu_1229_p00 = lshr_ln1_fu_1215_p4;
assign mul_ln171_fu_1229_p1 = 13'd190;
assign mul_ln186_fu_1367_p0 = mul_ln186_fu_1367_p00;
assign mul_ln186_fu_1367_p00 = tmp_8_reg_1823;
assign mul_ln186_fu_1367_p1 = 13'd190;
assign mul_ln199_1_fu_1376_p0 = mul_ln199_1_fu_1376_p00;
assign mul_ln199_1_fu_1376_p00 = tmp_9_reg_1833;
assign mul_ln199_1_fu_1376_p1 = 13'd190;
assign mul_ln199_fu_1238_p0 = mul_ln199_fu_1238_p00;
assign mul_ln199_fu_1238_p00 = tmp_2_reg_1693;
assign mul_ln199_fu_1238_p1 = 13'd190;
assign mul_ln212_1_fu_1385_p0 = mul_ln212_1_fu_1385_p00;
assign mul_ln212_1_fu_1385_p00 = tmp_10_reg_1863;
assign mul_ln212_1_fu_1385_p1 = 13'd190;
assign mul_ln212_fu_1247_p0 = mul_ln212_fu_1247_p00;
assign mul_ln212_fu_1247_p00 = tmp_3_reg_1703;
assign mul_ln212_fu_1247_p1 = 13'd190;
assign mul_ln225_1_fu_1394_p0 = mul_ln225_1_fu_1394_p00;
assign mul_ln225_1_fu_1394_p00 = tmp_11_reg_1873;
assign mul_ln225_1_fu_1394_p1 = 13'd190;
assign mul_ln225_fu_1256_p0 = mul_ln225_fu_1256_p00;
assign mul_ln225_fu_1256_p00 = tmp_4_reg_1713;
assign mul_ln225_fu_1256_p1 = 13'd190;
assign mul_ln238_1_fu_1403_p0 = mul_ln238_1_fu_1403_p00;
assign mul_ln238_1_fu_1403_p00 = tmp_12_reg_1903;
assign mul_ln238_1_fu_1403_p1 = 13'd190;
assign mul_ln238_fu_1265_p0 = mul_ln238_fu_1265_p00;
assign mul_ln238_fu_1265_p00 = tmp_5_reg_1723;
assign mul_ln238_fu_1265_p1 = 13'd190;
assign mul_ln251_1_fu_1412_p0 = mul_ln251_1_fu_1412_p00;
assign mul_ln251_1_fu_1412_p00 = tmp_13_reg_1913;
assign mul_ln251_1_fu_1412_p1 = 13'd190;
assign mul_ln251_fu_1274_p0 = mul_ln251_fu_1274_p00;
assign mul_ln251_fu_1274_p00 = tmp_6_reg_1753;
assign mul_ln251_fu_1274_p1 = 13'd190;
assign mul_ln264_1_fu_1427_p0 = mul_ln264_1_fu_1427_p00;
assign mul_ln264_1_fu_1427_p00 = empty_71_fu_1418_p2;
assign mul_ln264_1_fu_1427_p1 = 13'd190;
assign mul_ln264_fu_1283_p0 = mul_ln264_fu_1283_p00;
assign mul_ln264_fu_1283_p00 = tmp_7_reg_1763;
assign mul_ln264_fu_1283_p1 = 13'd190;
assign mul_ln277_1_fu_1436_p0 = mul_ln277_1_fu_1436_p00;
assign mul_ln277_1_fu_1436_p00 = tmp_14_reg_1953;
assign mul_ln277_1_fu_1436_p1 = 13'd190;
assign mul_ln277_fu_1299_p0 = mul_ln277_fu_1299_p00;
assign mul_ln277_fu_1299_p00 = empty_46_fu_1289_p2;
assign mul_ln277_fu_1299_p1 = 13'd190;
assign p_cast3833_fu_877_p1 = grp_fu_1442_p3;
assign p_cast3834_fu_927_p1 = grp_fu_1458_p3;
assign p_cast3835_fu_932_p1 = grp_fu_1466_p3;
assign p_cast3836_fu_957_p1 = grp_fu_1474_p3;
assign p_cast3837_fu_962_p1 = grp_fu_1482_p3;
assign p_cast3838_fu_1007_p1 = grp_fu_1490_p3;
assign p_cast3839_fu_1012_p1 = grp_fu_1498_p3;
assign p_cast3840_fu_1057_p1 = grp_fu_1506_p4;
assign p_cast3841_fu_1062_p1 = grp_fu_1516_p3;
assign p_cast3842_fu_1107_p1 = grp_fu_1524_p3;
assign p_cast3843_fu_1112_p1 = grp_fu_1532_p3;
assign p_cast3844_fu_1181_p1 = grp_fu_1540_p3;
assign p_cast3845_fu_1186_p1 = grp_fu_1548_p3;
assign p_cast3846_fu_1191_p1 = grp_fu_1556_p3;
assign p_cast3847_fu_1196_p1 = grp_fu_1564_p3;
assign p_cast3848_fu_1201_p1 = grp_fu_1572_p4;
assign p_cast3849_fu_1206_p1 = grp_fu_1582_p3;
assign p_cast_fu_882_p1 = grp_fu_1450_p3;
assign tmp_1_fu_771_p3 = {{tmp_fu_761_p4}, {1'd1}};
assign tmp_fu_761_p4 = {{v115_reg_458[7:1]}};
assign trunc_ln168_fu_727_p1 = v114_fu_134[0:0];
assign trunc_ln169_fu_1211_p1 = v115_reg_458[2:0];
assign v119_1_fu_1311_p1 = v119_1_v_reg_1923;
assign v119_fu_1137_p1 = reg_607;
assign v132_1_fu_1315_p1 = reg_607;
assign v132_fu_1142_p1 = reg_611;
assign v143_1_fu_1320_p1 = reg_611;
assign v143_fu_1147_p1 = reg_615;
assign v154_1_fu_1325_p1 = reg_615;
assign v154_fu_1152_p1 = reg_619;
assign v165_1_fu_1330_p1 = reg_619;
assign v165_fu_1157_p1 = reg_623;
assign v176_1_fu_1335_p1 = reg_623;
assign v176_fu_1162_p1 = reg_627;
assign v187_1_fu_1340_p1 = reg_627;
assign v187_fu_1167_p1 = reg_631;
assign v198_1_fu_1345_p1 = reg_631;
assign v198_fu_1172_p1 = reg_635;
assign v209_1_fu_1350_p1 = reg_635;
assign v209_fu_1177_p1 = v209_v_reg_1918;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_741_p1 = lshr_ln_fu_731_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1642[14:7] <= 8'b00000000;
end
endmodule 