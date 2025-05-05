module fft1D_512 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,work_x_0_address0,work_x_0_ce0,work_x_0_we0,work_x_0_d0,work_x_0_q0,work_x_0_address1,work_x_0_ce1,work_x_0_we1,work_x_0_d1,work_x_0_q1,work_x_1_address0,work_x_1_ce0,work_x_1_we0,work_x_1_d0,work_x_1_q0,work_x_1_address1,work_x_1_ce1,work_x_1_we1,work_x_1_d1,work_x_1_q1,work_y_0_address0,work_y_0_ce0,work_y_0_we0,work_y_0_d0,work_y_0_q0,work_y_0_address1,work_y_0_ce1,work_y_0_we1,work_y_0_d1,work_y_0_q1,work_y_1_address0,work_y_1_ce0,work_y_1_we0,work_y_1_d0,work_y_1_q0,work_y_1_address1,work_y_1_ce1,work_y_1_we1,work_y_1_d1,work_y_1_q1); 
parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] work_x_0_address0;
output   work_x_0_ce0;
output   work_x_0_we0;
output  [63:0] work_x_0_d0;
input  [63:0] work_x_0_q0;
output  [7:0] work_x_0_address1;
output   work_x_0_ce1;
output   work_x_0_we1;
output  [63:0] work_x_0_d1;
input  [63:0] work_x_0_q1;
output  [7:0] work_x_1_address0;
output   work_x_1_ce0;
output   work_x_1_we0;
output  [63:0] work_x_1_d0;
input  [63:0] work_x_1_q0;
output  [7:0] work_x_1_address1;
output   work_x_1_ce1;
output   work_x_1_we1;
output  [63:0] work_x_1_d1;
input  [63:0] work_x_1_q1;
output  [7:0] work_y_0_address0;
output   work_y_0_ce0;
output   work_y_0_we0;
output  [63:0] work_y_0_d0;
input  [63:0] work_y_0_q0;
output  [7:0] work_y_0_address1;
output   work_y_0_ce1;
output   work_y_0_we1;
output  [63:0] work_y_0_d1;
input  [63:0] work_y_0_q1;
output  [7:0] work_y_1_address0;
output   work_y_1_ce0;
output   work_y_1_we0;
output  [63:0] work_y_1_d0;
input  [63:0] work_y_1_q0;
output  [7:0] work_y_1_address1;
output   work_y_1_ce1;
output   work_y_1_we1;
output  [63:0] work_y_1_d1;
input  [63:0] work_y_1_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] work_x_0_address0;
reg work_x_0_ce0;
reg work_x_0_we0;
reg[7:0] work_x_0_address1;
reg work_x_0_ce1;
reg work_x_0_we1;
reg[7:0] work_x_1_address0;
reg work_x_1_ce0;
reg work_x_1_we0;
reg[7:0] work_x_1_address1;
reg work_x_1_ce1;
reg work_x_1_we1;
reg[7:0] work_y_0_address0;
reg work_y_0_ce0;
reg work_y_0_we0;
reg[7:0] work_y_0_address1;
reg work_y_0_ce1;
reg work_y_0_we1;
reg[7:0] work_y_1_address0;
reg work_y_1_ce0;
reg work_y_1_we0;
reg[7:0] work_y_1_address1;
reg work_y_1_ce1;
reg work_y_1_we1;
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] DATA_x_address0;
reg    DATA_x_ce0;
reg    DATA_x_we0;
reg   [63:0] DATA_x_d0;
wire   [63:0] DATA_x_q0;
reg   [7:0] DATA_x_address1;
reg    DATA_x_ce1;
reg    DATA_x_we1;
reg   [63:0] DATA_x_d1;
wire   [63:0] DATA_x_q1;
reg   [7:0] DATA_x_1_address0;
reg    DATA_x_1_ce0;
reg    DATA_x_1_we0;
reg   [63:0] DATA_x_1_d0;
wire   [63:0] DATA_x_1_q0;
reg   [7:0] DATA_x_1_address1;
reg    DATA_x_1_ce1;
reg    DATA_x_1_we1;
reg   [63:0] DATA_x_1_d1;
wire   [63:0] DATA_x_1_q1;
reg   [7:0] DATA_y_address0;
reg    DATA_y_ce0;
reg    DATA_y_we0;
reg   [63:0] DATA_y_d0;
wire   [63:0] DATA_y_q0;
reg   [7:0] DATA_y_address1;
reg    DATA_y_ce1;
reg    DATA_y_we1;
reg   [63:0] DATA_y_d1;
wire   [63:0] DATA_y_q1;
reg   [7:0] DATA_y_1_address0;
reg    DATA_y_1_ce0;
reg    DATA_y_1_we0;
reg   [63:0] DATA_y_1_d0;
wire   [63:0] DATA_y_1_q0;
reg   [7:0] DATA_y_1_address1;
reg    DATA_y_1_ce1;
reg    DATA_y_1_we1;
reg   [63:0] DATA_y_1_d1;
wire   [63:0] DATA_y_1_q1;
reg   [6:0] smem_address0;
reg    smem_ce0;
reg    smem_we0;
reg   [63:0] smem_d0;
wire   [63:0] smem_q0;
reg   [6:0] smem_address1;
reg    smem_ce1;
reg    smem_we1;
reg   [63:0] smem_d1;
wire   [63:0] smem_q1;
reg   [6:0] smem_1_address0;
reg    smem_1_ce0;
reg    smem_1_we0;
reg   [63:0] smem_1_d0;
wire   [63:0] smem_1_q0;
reg   [6:0] smem_1_address1;
reg    smem_1_ce1;
reg    smem_1_we1;
reg   [63:0] smem_1_d1;
wire   [63:0] smem_1_q1;
reg   [6:0] smem_2_address0;
reg    smem_2_ce0;
reg    smem_2_we0;
reg   [63:0] smem_2_d0;
wire   [63:0] smem_2_q0;
reg   [6:0] smem_2_address1;
reg    smem_2_ce1;
reg    smem_2_we1;
reg   [63:0] smem_2_d1;
wire   [63:0] smem_2_q1;
reg   [6:0] smem_3_address0;
reg    smem_3_ce0;
reg    smem_3_we0;
reg   [63:0] smem_3_d0;
wire   [63:0] smem_3_q0;
reg   [6:0] smem_3_address1;
reg    smem_3_ce1;
reg    smem_3_we1;
reg   [63:0] smem_3_d1;
wire   [63:0] smem_3_q1;
reg   [6:0] smem_4_address0;
reg    smem_4_ce0;
reg    smem_4_we0;
reg   [63:0] smem_4_d0;
wire   [63:0] smem_4_q0;
reg   [6:0] smem_4_address1;
reg    smem_4_ce1;
reg    smem_4_we1;
reg   [63:0] smem_4_d1;
wire   [63:0] smem_4_q1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_ap_start;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_ap_done;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_ap_idle;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_ap_ready;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_ce0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_ce1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_address0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_ce0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_address1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_ce1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_ce0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_ce1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_address0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_ce0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_address1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_ce1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_address0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_address1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_address0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_address1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_ce1;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_din1;
wire   [0:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_opcode;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_din1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_din1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_din1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_din1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_din1;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din1;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din2;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din3;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din4;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din5;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din6;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din7;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din8;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din9;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din10;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din11;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din12;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din13;
wire   [63:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din14;
wire   [5:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din15;
wire  signed [9:0] grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din16;
wire    grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_ce;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_ap_start;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_ap_done;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_ap_idle;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_ap_ready;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_address0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_ce0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_address1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_ce1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_address0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_ce0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_address1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_ce1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_address0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_ce0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_address1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_ce1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_address0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_ce0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_address1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_ce1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_address0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_ce0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_address1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_ce1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_smem_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop2_fu_128_smem_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_address0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_address1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_ce1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_ap_start;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_ap_done;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_ap_idle;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_ap_ready;
wire   [7:0] grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_ce0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_ce1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_address0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_ce0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_address1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_ce1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_address0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_address1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_address0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_address1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_address0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_address1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_address0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_address1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_address0;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_address1;
wire    grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_ce1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_ap_start;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_ap_done;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_ap_idle;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_ap_ready;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_address0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_ce0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_address1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_ce1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_address0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_ce0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_address1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_ce1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_address0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_ce0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_address1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_ce1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_address0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_ce0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_address1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_ce1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_address0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_ce0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_address1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_ce1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_smem_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop4_fu_150_smem_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_address0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_address1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_ce1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_ap_start;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_ap_done;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_ap_idle;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_ap_ready;
wire   [7:0] grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_ce0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_ce1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_address0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_ce0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_address1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_ce1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_address0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_address1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_address0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_address1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_address0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_address1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_address0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_address1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_address0;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_address1;
wire    grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_ce1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_ap_start;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_ap_done;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_ap_idle;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_ap_ready;
wire   [7:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_ce0;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_ce1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_address0;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_ce0;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_address1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_ce1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_ce0;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_ce1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_address0;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_ce0;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_address1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_ce1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_d1;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_opcode;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_din1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_din1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_din1;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din1;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din2;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din3;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din4;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din5;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din6;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din7;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din8;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din9;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din10;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din11;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din12;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din13;
wire   [63:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din14;
wire   [5:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din15;
wire  signed [9:0] grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din16;
wire    grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_ce;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_ap_start;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_ap_done;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_ap_idle;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_ap_ready;
wire   [6:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_address0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_ce0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_address0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_ce0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_address0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_ce0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_address0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_ce0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_address0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_ce0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_smem_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop7_fu_192_smem_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_address0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_address1;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_ce1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_ap_start;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_ap_done;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_ap_idle;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_ap_ready;
wire   [7:0] grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_ce0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_ce1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_address0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_ce0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_address1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_ce1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_address0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_address1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_address0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_address1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_address0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_address1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_address0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_address1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_address0;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_address1;
wire    grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_ce1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_ap_start;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_ap_done;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_ap_idle;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_ap_ready;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_address0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_ce0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_address1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_ce1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_address0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_ce0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_address1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_ce1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_address0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_ce0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_address1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_ce1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_address0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_ce0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_address1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_ce1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_address0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_ce0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_d0;
wire   [6:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_address1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_ce1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_smem_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop9_fu_214_smem_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_address0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_address1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_ce1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_ap_start;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_ap_done;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_ap_idle;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_ap_ready;
wire   [7:0] grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_ce0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_ce1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_address0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_ce0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_address1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_ce1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_d1;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_address0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_address1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_address0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_address1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_address0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_address1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_address0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_address1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_ce1;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_address0;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_ce0;
wire   [6:0] grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_address1;
wire    grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_ce1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_ap_start;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_ap_done;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_ap_idle;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_ap_ready;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_ce0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_ce1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_address0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_ce0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_address1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_ce1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_ce0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_ce1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_address0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_ce0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_we0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_d0;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_address1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_ce1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_we1;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_d1;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_address0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_address1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_address0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_address1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_address0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_address1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_ce1;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_address0;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_ce0;
wire   [7:0] grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_address1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_ce1;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_din1;
wire   [0:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_din1;
wire   [1:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_opcode;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_din1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_din1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_din1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_din1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_ce;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_din0;
wire   [63:0] grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_din1;
wire    grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_ce;
reg   [63:0] grp_twiddles8_fu_388_a_x_1_read;
reg   [63:0] grp_twiddles8_fu_388_a_x_2_read;
reg   [63:0] grp_twiddles8_fu_388_a_x_3_read;
reg   [63:0] grp_twiddles8_fu_388_a_x_4_read;
reg   [63:0] grp_twiddles8_fu_388_a_x_5_read;
reg   [63:0] grp_twiddles8_fu_388_a_x_6_read;
reg   [63:0] grp_twiddles8_fu_388_a_x_7_read;
reg   [63:0] grp_twiddles8_fu_388_a_y_1_read;
reg   [63:0] grp_twiddles8_fu_388_a_y_2_read;
reg   [63:0] grp_twiddles8_fu_388_a_y_3_read;
reg   [63:0] grp_twiddles8_fu_388_a_y_4_read;
reg   [63:0] grp_twiddles8_fu_388_a_y_5_read;
reg   [63:0] grp_twiddles8_fu_388_a_y_6_read;
reg   [63:0] grp_twiddles8_fu_388_a_y_7_read;
reg   [5:0] grp_twiddles8_fu_388_i;
reg   [9:0] grp_twiddles8_fu_388_n;
wire   [63:0] grp_twiddles8_fu_388_ap_return_0;
wire   [63:0] grp_twiddles8_fu_388_ap_return_1;
wire   [63:0] grp_twiddles8_fu_388_ap_return_2;
wire   [63:0] grp_twiddles8_fu_388_ap_return_3;
wire   [63:0] grp_twiddles8_fu_388_ap_return_4;
wire   [63:0] grp_twiddles8_fu_388_ap_return_5;
wire   [63:0] grp_twiddles8_fu_388_ap_return_6;
wire   [63:0] grp_twiddles8_fu_388_ap_return_7;
wire   [63:0] grp_twiddles8_fu_388_ap_return_8;
wire   [63:0] grp_twiddles8_fu_388_ap_return_9;
wire   [63:0] grp_twiddles8_fu_388_ap_return_10;
wire   [63:0] grp_twiddles8_fu_388_ap_return_11;
wire   [63:0] grp_twiddles8_fu_388_ap_return_12;
wire   [63:0] grp_twiddles8_fu_388_ap_return_13;
reg    grp_twiddles8_fu_388_ap_ce;
reg    grp_fft1D_512_Pipeline_loop1_fu_96_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_fft1D_512_Pipeline_loop2_fu_128_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_fft1D_512_Pipeline_loop3_fu_139_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_fft1D_512_Pipeline_loop4_fu_150_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_fft1D_512_Pipeline_loop5_fu_161_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg    grp_fft1D_512_Pipeline_loop6_fu_172_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_fft1D_512_Pipeline_loop7_fu_192_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg    grp_fft1D_512_Pipeline_loop8_fu_203_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
reg    grp_fft1D_512_Pipeline_loop9_fu_214_ap_start_reg;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
reg    grp_fft1D_512_Pipeline_loop10_fu_225_ap_start_reg;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
reg    grp_fft1D_512_Pipeline_loop11_fu_236_ap_start_reg;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire   [63:0] grp_fu_252_p2;
reg   [63:0] grp_fu_252_p0;
reg   [63:0] grp_fu_252_p1;
reg   [1:0] grp_fu_252_opcode;
reg    grp_fu_252_ce;
wire   [63:0] grp_fu_256_p2;
reg   [63:0] grp_fu_256_p0;
reg   [63:0] grp_fu_256_p1;
reg   [1:0] grp_fu_256_opcode;
reg    grp_fu_256_ce;
wire   [63:0] grp_fu_260_p2;
reg   [63:0] grp_fu_260_p0;
reg   [63:0] grp_fu_260_p1;
reg   [1:0] grp_fu_260_opcode;
reg    grp_fu_260_ce;
wire   [63:0] grp_fu_264_p2;
reg   [63:0] grp_fu_264_p0;
reg   [63:0] grp_fu_264_p1;
reg   [1:0] grp_fu_264_opcode;
reg    grp_fu_264_ce;
wire   [63:0] grp_fu_268_p2;
reg   [63:0] grp_fu_268_p0;
reg   [63:0] grp_fu_268_p1;
reg   [1:0] grp_fu_268_opcode;
reg    grp_fu_268_ce;
wire   [63:0] grp_fu_272_p2;
reg   [63:0] grp_fu_272_p0;
reg   [63:0] grp_fu_272_p1;
reg   [1:0] grp_fu_272_opcode;
reg    grp_fu_272_ce;
wire   [63:0] grp_fu_276_p2;
reg   [63:0] grp_fu_276_p0;
reg   [63:0] grp_fu_276_p1;
reg   [1:0] grp_fu_276_opcode;
reg    grp_fu_276_ce;
wire   [63:0] grp_fu_280_p2;
reg   [63:0] grp_fu_280_p0;
reg   [63:0] grp_fu_280_p1;
reg   [1:0] grp_fu_280_opcode;
reg    grp_fu_280_ce;
wire   [63:0] grp_fu_284_p2;
reg   [63:0] grp_fu_284_p0;
reg   [63:0] grp_fu_284_p1;
reg   [1:0] grp_fu_284_opcode;
reg    grp_fu_284_ce;
wire   [63:0] grp_fu_288_p2;
reg   [63:0] grp_fu_288_p0;
reg   [63:0] grp_fu_288_p1;
reg   [1:0] grp_fu_288_opcode;
reg    grp_fu_288_ce;
wire   [63:0] grp_fu_292_p2;
reg   [63:0] grp_fu_292_p0;
reg   [63:0] grp_fu_292_p1;
reg   [1:0] grp_fu_292_opcode;
reg    grp_fu_292_ce;
wire   [63:0] grp_fu_296_p2;
reg   [63:0] grp_fu_296_p0;
reg   [63:0] grp_fu_296_p1;
reg   [1:0] grp_fu_296_opcode;
reg    grp_fu_296_ce;
wire   [63:0] grp_fu_300_p2;
reg   [63:0] grp_fu_300_p0;
reg   [63:0] grp_fu_300_p1;
reg   [1:0] grp_fu_300_opcode;
reg    grp_fu_300_ce;
wire   [63:0] grp_fu_304_p2;
reg   [63:0] grp_fu_304_p0;
reg   [63:0] grp_fu_304_p1;
reg   [1:0] grp_fu_304_opcode;
reg    grp_fu_304_ce;
wire   [63:0] grp_fu_308_p2;
reg   [63:0] grp_fu_308_p0;
reg   [63:0] grp_fu_308_p1;
reg   [1:0] grp_fu_308_opcode;
reg    grp_fu_308_ce;
wire   [63:0] grp_fu_312_p2;
reg   [63:0] grp_fu_312_p0;
reg   [63:0] grp_fu_312_p1;
reg   [1:0] grp_fu_312_opcode;
reg    grp_fu_312_ce;
wire   [63:0] grp_fu_316_p2;
reg   [63:0] grp_fu_316_p0;
reg   [63:0] grp_fu_316_p1;
reg   [1:0] grp_fu_316_opcode;
reg    grp_fu_316_ce;
wire   [63:0] grp_fu_320_p2;
reg   [63:0] grp_fu_320_p0;
reg   [63:0] grp_fu_320_p1;
reg   [1:0] grp_fu_320_opcode;
reg    grp_fu_320_ce;
wire   [63:0] grp_fu_324_p2;
reg   [63:0] grp_fu_324_p0;
reg   [63:0] grp_fu_324_p1;
reg   [1:0] grp_fu_324_opcode;
reg    grp_fu_324_ce;
wire   [63:0] grp_fu_328_p2;
reg   [63:0] grp_fu_328_p0;
reg   [63:0] grp_fu_328_p1;
reg   [1:0] grp_fu_328_opcode;
reg    grp_fu_328_ce;
wire   [63:0] grp_fu_332_p2;
reg   [63:0] grp_fu_332_p0;
reg   [63:0] grp_fu_332_p1;
reg   [1:0] grp_fu_332_opcode;
reg    grp_fu_332_ce;
wire   [63:0] grp_fu_336_p2;
reg   [63:0] grp_fu_336_p0;
reg   [63:0] grp_fu_336_p1;
reg   [1:0] grp_fu_336_opcode;
reg    grp_fu_336_ce;
wire   [63:0] grp_fu_340_p2;
reg   [63:0] grp_fu_340_p0;
reg   [63:0] grp_fu_340_p1;
reg   [1:0] grp_fu_340_opcode;
reg    grp_fu_340_ce;
wire   [63:0] grp_fu_344_p2;
reg   [63:0] grp_fu_344_p0;
reg   [63:0] grp_fu_344_p1;
reg   [1:0] grp_fu_344_opcode;
reg    grp_fu_344_ce;
wire   [63:0] grp_fu_348_p2;
reg   [63:0] grp_fu_348_p0;
reg   [63:0] grp_fu_348_p1;
reg   [1:0] grp_fu_348_opcode;
reg    grp_fu_348_ce;
wire   [63:0] grp_fu_352_p2;
reg   [63:0] grp_fu_352_p0;
reg   [63:0] grp_fu_352_p1;
reg   [1:0] grp_fu_352_opcode;
reg    grp_fu_352_ce;
wire   [63:0] grp_fu_356_p2;
reg   [63:0] grp_fu_356_p0;
reg   [63:0] grp_fu_356_p1;
reg   [1:0] grp_fu_356_opcode;
reg    grp_fu_356_ce;
wire   [63:0] grp_fu_360_p2;
reg   [63:0] grp_fu_360_p0;
reg   [63:0] grp_fu_360_p1;
reg   [1:0] grp_fu_360_opcode;
reg    grp_fu_360_ce;
wire   [63:0] grp_fu_364_p2;
reg   [63:0] grp_fu_364_p0;
reg   [63:0] grp_fu_364_p1;
reg   [1:0] grp_fu_364_opcode;
reg    grp_fu_364_ce;
wire   [63:0] grp_fu_368_p2;
reg   [63:0] grp_fu_368_p0;
reg   [63:0] grp_fu_368_p1;
reg    grp_fu_368_ce;
wire   [63:0] grp_fu_372_p2;
reg   [63:0] grp_fu_372_p0;
reg   [63:0] grp_fu_372_p1;
reg    grp_fu_372_ce;
wire   [63:0] grp_fu_376_p2;
reg   [63:0] grp_fu_376_p0;
reg   [63:0] grp_fu_376_p1;
reg    grp_fu_376_ce;
wire   [63:0] grp_fu_380_p2;
reg   [63:0] grp_fu_380_p0;
reg   [63:0] grp_fu_380_p1;
reg    grp_fu_380_ce;
wire   [63:0] grp_fu_384_p2;
reg   [63:0] grp_fu_384_p0;
reg   [63:0] grp_fu_384_p1;
reg    grp_fu_384_ce;
reg   [21:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
reg    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
reg    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
reg    ap_ST_fsm_state22_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 22'd1;
#0 grp_fft1D_512_Pipeline_loop1_fu_96_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop2_fu_128_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop3_fu_139_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop4_fu_150_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop5_fu_161_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop6_fu_172_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop7_fu_192_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop8_fu_203_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop9_fu_214_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop10_fu_225_ap_start_reg = 1'b0;
#0 grp_fft1D_512_Pipeline_loop11_fu_236_ap_start_reg = 1'b0;
end
fft1D_512_DATA_x_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 256 ),.AddressWidth( 8 ))
DATA_x_U(.clk(ap_clk),.reset(ap_rst),.address0(DATA_x_address0),.ce0(DATA_x_ce0),.we0(DATA_x_we0),.d0(DATA_x_d0),.q0(DATA_x_q0),.address1(DATA_x_address1),.ce1(DATA_x_ce1),.we1(DATA_x_we1),.d1(DATA_x_d1),.q1(DATA_x_q1));
fft1D_512_DATA_x_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 256 ),.AddressWidth( 8 ))
DATA_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(DATA_x_1_address0),.ce0(DATA_x_1_ce0),.we0(DATA_x_1_we0),.d0(DATA_x_1_d0),.q0(DATA_x_1_q0),.address1(DATA_x_1_address1),.ce1(DATA_x_1_ce1),.we1(DATA_x_1_we1),.d1(DATA_x_1_d1),.q1(DATA_x_1_q1));
fft1D_512_DATA_x_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 256 ),.AddressWidth( 8 ))
DATA_y_U(.clk(ap_clk),.reset(ap_rst),.address0(DATA_y_address0),.ce0(DATA_y_ce0),.we0(DATA_y_we0),.d0(DATA_y_d0),.q0(DATA_y_q0),.address1(DATA_y_address1),.ce1(DATA_y_ce1),.we1(DATA_y_we1),.d1(DATA_y_d1),.q1(DATA_y_q1));
fft1D_512_DATA_x_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 256 ),.AddressWidth( 8 ))
DATA_y_1_U(.clk(ap_clk),.reset(ap_rst),.address0(DATA_y_1_address0),.ce0(DATA_y_1_ce0),.we0(DATA_y_1_we0),.d0(DATA_y_1_d0),.q0(DATA_y_1_q0),.address1(DATA_y_1_address1),.ce1(DATA_y_1_ce1),.we1(DATA_y_1_we1),.d1(DATA_y_1_d1),.q1(DATA_y_1_q1));
fft1D_512_smem_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 116 ),.AddressWidth( 7 ))
smem_U(.clk(ap_clk),.reset(ap_rst),.address0(smem_address0),.ce0(smem_ce0),.we0(smem_we0),.d0(smem_d0),.q0(smem_q0),.address1(smem_address1),.ce1(smem_ce1),.we1(smem_we1),.d1(smem_d1),.q1(smem_q1));
fft1D_512_smem_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 116 ),.AddressWidth( 7 ))
smem_1_U(.clk(ap_clk),.reset(ap_rst),.address0(smem_1_address0),.ce0(smem_1_ce0),.we0(smem_1_we0),.d0(smem_1_d0),.q0(smem_1_q0),.address1(smem_1_address1),.ce1(smem_1_ce1),.we1(smem_1_we1),.d1(smem_1_d1),.q1(smem_1_q1));
fft1D_512_smem_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 116 ),.AddressWidth( 7 ))
smem_2_U(.clk(ap_clk),.reset(ap_rst),.address0(smem_2_address0),.ce0(smem_2_ce0),.we0(smem_2_we0),.d0(smem_2_d0),.q0(smem_2_q0),.address1(smem_2_address1),.ce1(smem_2_ce1),.we1(smem_2_we1),.d1(smem_2_d1),.q1(smem_2_q1));
fft1D_512_smem_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 116 ),.AddressWidth( 7 ))
smem_3_U(.clk(ap_clk),.reset(ap_rst),.address0(smem_3_address0),.ce0(smem_3_ce0),.we0(smem_3_we0),.d0(smem_3_d0),.q0(smem_3_q0),.address1(smem_3_address1),.ce1(smem_3_ce1),.we1(smem_3_we1),.d1(smem_3_d1),.q1(smem_3_q1));
fft1D_512_smem_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 116 ),.AddressWidth( 7 ))
smem_4_U(.clk(ap_clk),.reset(ap_rst),.address0(smem_4_address0),.ce0(smem_4_ce0),.we0(smem_4_we0),.d0(smem_4_d0),.q0(smem_4_q0),.address1(smem_4_address1),.ce1(smem_4_ce1),.we1(smem_4_we1),.d1(smem_4_d1),.q1(smem_4_q1));
fft1D_512_fft1D_512_Pipeline_loop1 grp_fft1D_512_Pipeline_loop1_fu_96(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop1_fu_96_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop1_fu_96_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop1_fu_96_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop1_fu_96_ap_ready),.DATA_y_1_address0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_address0),.DATA_y_1_ce0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_ce0),.DATA_y_1_we0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_we0),.DATA_y_1_d0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_d0),.DATA_y_1_address1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_address1),.DATA_y_1_ce1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_ce1),.DATA_y_1_we1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_we1),.DATA_y_1_d1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_d1),.DATA_y_address0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_address0),.DATA_y_ce0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_ce0),.DATA_y_we0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_we0),.DATA_y_d0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_d0),.DATA_y_address1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_address1),.DATA_y_ce1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_ce1),.DATA_y_we1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_we1),.DATA_y_d1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_d1),.DATA_x_1_address0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_address0),.DATA_x_1_ce0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_ce0),.DATA_x_1_we0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_we0),.DATA_x_1_d0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_d0),.DATA_x_1_address1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_address1),.DATA_x_1_ce1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_ce1),.DATA_x_1_we1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_we1),.DATA_x_1_d1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_d1),.DATA_x_address0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_address0),.DATA_x_ce0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_ce0),.DATA_x_we0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_we0),.DATA_x_d0(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_d0),.DATA_x_address1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_address1),.DATA_x_ce1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_ce1),.DATA_x_we1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_we1),.DATA_x_d1(grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_d1),.work_x_0_address0(grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_address0),.work_x_0_ce0(grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_ce0),.work_x_0_q0(work_x_0_q0),.work_x_0_address1(grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_address1),.work_x_0_ce1(grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_ce1),.work_x_0_q1(work_x_0_q1),.work_y_0_address0(grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_address0),.work_y_0_ce0(grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_ce0),.work_y_0_q0(work_y_0_q0),.work_y_0_address1(grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_address1),.work_y_0_ce1(grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_ce1),.work_y_0_q1(work_y_0_q1),.work_x_1_address0(grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_address0),.work_x_1_ce0(grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_ce0),.work_x_1_q0(work_x_1_q0),.work_x_1_address1(grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_address1),.work_x_1_ce1(grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_ce1),.work_x_1_q1(work_x_1_q1),.work_y_1_address0(grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_address0),.work_y_1_ce0(grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_ce0),.work_y_1_q0(work_y_1_q0),.work_y_1_address1(grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_address1),.work_y_1_ce1(grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_ce1),.work_y_1_q1(work_y_1_q1),.grp_fu_252_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_din0),.grp_fu_252_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_din1),.grp_fu_252_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_opcode),.grp_fu_252_p_dout0(grp_fu_252_p2),.grp_fu_252_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_ce),.grp_fu_256_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_256_p2),.grp_fu_256_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_260_p2),.grp_fu_260_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_din1),.grp_fu_264_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_opcode),.grp_fu_264_p_dout0(grp_fu_264_p2),.grp_fu_264_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_ce),.grp_fu_268_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_din1),.grp_fu_268_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_opcode),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_din1),.grp_fu_272_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_opcode),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_din1),.grp_fu_276_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_opcode),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_din1),.grp_fu_280_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_opcode),.grp_fu_280_p_dout0(grp_fu_280_p2),.grp_fu_280_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_ce),.grp_fu_284_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_din1),.grp_fu_284_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_opcode),.grp_fu_284_p_dout0(grp_fu_284_p2),.grp_fu_284_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_din1),.grp_fu_288_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_opcode),.grp_fu_288_p_dout0(grp_fu_288_p2),.grp_fu_288_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_din1),.grp_fu_292_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_opcode),.grp_fu_292_p_dout0(grp_fu_292_p2),.grp_fu_292_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_din1),.grp_fu_296_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_opcode),.grp_fu_296_p_dout0(grp_fu_296_p2),.grp_fu_296_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_din1),.grp_fu_300_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_opcode),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_din1),.grp_fu_304_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_opcode),.grp_fu_304_p_dout0(grp_fu_304_p2),.grp_fu_304_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_ce),.grp_fu_308_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_din0),.grp_fu_308_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_din1),.grp_fu_308_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_opcode),.grp_fu_308_p_dout0(grp_fu_308_p2),.grp_fu_308_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_ce),.grp_fu_312_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_din1),.grp_fu_316_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_opcode),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_din1),.grp_fu_320_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_opcode),.grp_fu_320_p_dout0(grp_fu_320_p2),.grp_fu_320_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_ce),.grp_fu_324_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_din0),.grp_fu_324_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_din1),.grp_fu_324_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_opcode),.grp_fu_324_p_dout0(grp_fu_324_p2),.grp_fu_324_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_ce),.grp_fu_328_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_din0),.grp_fu_328_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_din1),.grp_fu_328_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_opcode),.grp_fu_328_p_dout0(grp_fu_328_p2),.grp_fu_328_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_ce),.grp_fu_332_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_din1),.grp_fu_332_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_opcode),.grp_fu_332_p_dout0(grp_fu_332_p2),.grp_fu_332_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_ce),.grp_fu_336_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_din0),.grp_fu_336_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_din1),.grp_fu_336_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_opcode),.grp_fu_336_p_dout0(grp_fu_336_p2),.grp_fu_336_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_ce),.grp_fu_340_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_din0),.grp_fu_340_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_din1),.grp_fu_340_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_opcode),.grp_fu_340_p_dout0(grp_fu_340_p2),.grp_fu_340_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_ce),.grp_fu_344_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_din0),.grp_fu_344_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_din1),.grp_fu_344_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_opcode),.grp_fu_344_p_dout0(grp_fu_344_p2),.grp_fu_344_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_ce),.grp_fu_348_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_din0),.grp_fu_348_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_din1),.grp_fu_348_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_opcode),.grp_fu_348_p_dout0(grp_fu_348_p2),.grp_fu_348_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_ce),.grp_fu_352_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_din0),.grp_fu_352_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_din1),.grp_fu_352_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_opcode),.grp_fu_352_p_dout0(grp_fu_352_p2),.grp_fu_352_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_ce),.grp_fu_356_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_din0),.grp_fu_356_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_din1),.grp_fu_356_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_opcode),.grp_fu_356_p_dout0(grp_fu_356_p2),.grp_fu_356_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_ce),.grp_fu_360_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_din0),.grp_fu_360_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_din1),.grp_fu_360_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_opcode),.grp_fu_360_p_dout0(grp_fu_360_p2),.grp_fu_360_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_ce),.grp_fu_364_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_din0),.grp_fu_364_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_din1),.grp_fu_364_p_opcode(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_opcode),.grp_fu_364_p_dout0(grp_fu_364_p2),.grp_fu_364_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_ce),.grp_fu_368_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_din0),.grp_fu_368_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_din1),.grp_fu_368_p_dout0(grp_fu_368_p2),.grp_fu_368_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_ce),.grp_fu_372_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_din0),.grp_fu_372_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_din1),.grp_fu_372_p_dout0(grp_fu_372_p2),.grp_fu_372_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_ce),.grp_fu_376_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_din0),.grp_fu_376_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_din1),.grp_fu_376_p_dout0(grp_fu_376_p2),.grp_fu_376_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_ce),.grp_fu_380_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_din0),.grp_fu_380_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_din1),.grp_fu_380_p_dout0(grp_fu_380_p2),.grp_fu_380_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_ce),.grp_fu_384_p_din0(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_din0),.grp_fu_384_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_din1),.grp_fu_384_p_dout0(grp_fu_384_p2),.grp_fu_384_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_ce),.grp_twiddles8_fu_388_p_din1(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din1),.grp_twiddles8_fu_388_p_din2(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din2),.grp_twiddles8_fu_388_p_din3(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din3),.grp_twiddles8_fu_388_p_din4(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din4),.grp_twiddles8_fu_388_p_din5(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din5),.grp_twiddles8_fu_388_p_din6(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din6),.grp_twiddles8_fu_388_p_din7(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din7),.grp_twiddles8_fu_388_p_din8(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din8),.grp_twiddles8_fu_388_p_din9(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din9),.grp_twiddles8_fu_388_p_din10(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din10),.grp_twiddles8_fu_388_p_din11(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din11),.grp_twiddles8_fu_388_p_din12(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din12),.grp_twiddles8_fu_388_p_din13(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din13),.grp_twiddles8_fu_388_p_din14(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din14),.grp_twiddles8_fu_388_p_din15(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din15),.grp_twiddles8_fu_388_p_din16(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din16),.grp_twiddles8_fu_388_p_dout0_0(grp_twiddles8_fu_388_ap_return_0),.grp_twiddles8_fu_388_p_dout0_1(grp_twiddles8_fu_388_ap_return_1),.grp_twiddles8_fu_388_p_dout0_2(grp_twiddles8_fu_388_ap_return_2),.grp_twiddles8_fu_388_p_dout0_3(grp_twiddles8_fu_388_ap_return_3),.grp_twiddles8_fu_388_p_dout0_4(grp_twiddles8_fu_388_ap_return_4),.grp_twiddles8_fu_388_p_dout0_5(grp_twiddles8_fu_388_ap_return_5),.grp_twiddles8_fu_388_p_dout0_6(grp_twiddles8_fu_388_ap_return_6),.grp_twiddles8_fu_388_p_dout0_7(grp_twiddles8_fu_388_ap_return_7),.grp_twiddles8_fu_388_p_dout0_8(grp_twiddles8_fu_388_ap_return_8),.grp_twiddles8_fu_388_p_dout0_9(grp_twiddles8_fu_388_ap_return_9),.grp_twiddles8_fu_388_p_dout0_10(grp_twiddles8_fu_388_ap_return_10),.grp_twiddles8_fu_388_p_dout0_11(grp_twiddles8_fu_388_ap_return_11),.grp_twiddles8_fu_388_p_dout0_12(grp_twiddles8_fu_388_ap_return_12),.grp_twiddles8_fu_388_p_dout0_13(grp_twiddles8_fu_388_ap_return_13),.grp_twiddles8_fu_388_p_ce(grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_ce));
fft1D_512_fft1D_512_Pipeline_loop2 grp_fft1D_512_Pipeline_loop2_fu_128(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop2_fu_128_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop2_fu_128_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop2_fu_128_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop2_fu_128_ap_ready),.smem_4_address0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_address0),.smem_4_ce0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_ce0),.smem_4_we0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_we0),.smem_4_d0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_d0),.smem_4_address1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_address1),.smem_4_ce1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_ce1),.smem_4_we1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_we1),.smem_4_d1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_d1),.smem_3_address0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_address0),.smem_3_ce0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_ce0),.smem_3_we0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_we0),.smem_3_d0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_d0),.smem_3_address1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_address1),.smem_3_ce1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_ce1),.smem_3_we1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_we1),.smem_3_d1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_d1),.smem_2_address0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_address0),.smem_2_ce0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_ce0),.smem_2_we0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_we0),.smem_2_d0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_d0),.smem_2_address1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_address1),.smem_2_ce1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_ce1),.smem_2_we1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_we1),.smem_2_d1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_d1),.smem_1_address0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_address0),.smem_1_ce0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_ce0),.smem_1_we0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_we0),.smem_1_d0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_d0),.smem_1_address1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_address1),.smem_1_ce1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_ce1),.smem_1_we1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_we1),.smem_1_d1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_d1),.smem_address0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_address0),.smem_ce0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_ce0),.smem_we0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_we0),.smem_d0(grp_fft1D_512_Pipeline_loop2_fu_128_smem_d0),.smem_address1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_address1),.smem_ce1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_ce1),.smem_we1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_we1),.smem_d1(grp_fft1D_512_Pipeline_loop2_fu_128_smem_d1),.DATA_x_address0(grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_address0),.DATA_x_ce0(grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_ce0),.DATA_x_q0(DATA_x_q0),.DATA_x_address1(grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_address1),.DATA_x_ce1(grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_ce1),.DATA_x_q1(DATA_x_q1),.DATA_x_1_address0(grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_address0),.DATA_x_1_ce0(grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_ce0),.DATA_x_1_q0(DATA_x_1_q0),.DATA_x_1_address1(grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_address1),.DATA_x_1_ce1(grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_ce1),.DATA_x_1_q1(DATA_x_1_q1));
fft1D_512_fft1D_512_Pipeline_loop3 grp_fft1D_512_Pipeline_loop3_fu_139(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop3_fu_139_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop3_fu_139_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop3_fu_139_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop3_fu_139_ap_ready),.DATA_x_1_address0(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_address0),.DATA_x_1_ce0(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_ce0),.DATA_x_1_we0(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_we0),.DATA_x_1_d0(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_d0),.DATA_x_1_address1(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_address1),.DATA_x_1_ce1(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_ce1),.DATA_x_1_we1(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_we1),.DATA_x_1_d1(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_d1),.DATA_x_address0(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_address0),.DATA_x_ce0(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_ce0),.DATA_x_we0(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_we0),.DATA_x_d0(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_d0),.DATA_x_address1(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_address1),.DATA_x_ce1(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_ce1),.DATA_x_we1(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_we1),.DATA_x_d1(grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_d1),.smem_address0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_address0),.smem_ce0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_ce0),.smem_q0(smem_q0),.smem_address1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_address1),.smem_ce1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_ce1),.smem_q1(smem_q1),.smem_1_address0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_address0),.smem_1_ce0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_ce0),.smem_1_q0(smem_1_q0),.smem_1_address1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_address1),.smem_1_ce1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_ce1),.smem_1_q1(smem_1_q1),.smem_2_address0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_address0),.smem_2_ce0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_ce0),.smem_2_q0(smem_2_q0),.smem_2_address1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_address1),.smem_2_ce1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_ce1),.smem_2_q1(smem_2_q1),.smem_3_address0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_address0),.smem_3_ce0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_ce0),.smem_3_q0(smem_3_q0),.smem_3_address1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_address1),.smem_3_ce1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_ce1),.smem_3_q1(smem_3_q1),.smem_4_address0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_address0),.smem_4_ce0(grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_ce0),.smem_4_q0(smem_4_q0),.smem_4_address1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_address1),.smem_4_ce1(grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_ce1),.smem_4_q1(smem_4_q1));
fft1D_512_fft1D_512_Pipeline_loop4 grp_fft1D_512_Pipeline_loop4_fu_150(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop4_fu_150_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop4_fu_150_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop4_fu_150_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop4_fu_150_ap_ready),.smem_4_address0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_address0),.smem_4_ce0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_ce0),.smem_4_we0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_we0),.smem_4_d0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_d0),.smem_4_address1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_address1),.smem_4_ce1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_ce1),.smem_4_we1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_we1),.smem_4_d1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_d1),.smem_3_address0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_address0),.smem_3_ce0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_ce0),.smem_3_we0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_we0),.smem_3_d0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_d0),.smem_3_address1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_address1),.smem_3_ce1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_ce1),.smem_3_we1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_we1),.smem_3_d1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_d1),.smem_2_address0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_address0),.smem_2_ce0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_ce0),.smem_2_we0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_we0),.smem_2_d0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_d0),.smem_2_address1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_address1),.smem_2_ce1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_ce1),.smem_2_we1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_we1),.smem_2_d1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_d1),.smem_1_address0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_address0),.smem_1_ce0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_ce0),.smem_1_we0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_we0),.smem_1_d0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_d0),.smem_1_address1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_address1),.smem_1_ce1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_ce1),.smem_1_we1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_we1),.smem_1_d1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_d1),.smem_address0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_address0),.smem_ce0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_ce0),.smem_we0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_we0),.smem_d0(grp_fft1D_512_Pipeline_loop4_fu_150_smem_d0),.smem_address1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_address1),.smem_ce1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_ce1),.smem_we1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_we1),.smem_d1(grp_fft1D_512_Pipeline_loop4_fu_150_smem_d1),.DATA_y_address0(grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_address0),.DATA_y_ce0(grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_ce0),.DATA_y_q0(DATA_y_q0),.DATA_y_address1(grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_address1),.DATA_y_ce1(grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_ce1),.DATA_y_q1(DATA_y_q1),.DATA_y_1_address0(grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_address0),.DATA_y_1_ce0(grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_ce0),.DATA_y_1_q0(DATA_y_1_q0),.DATA_y_1_address1(grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_address1),.DATA_y_1_ce1(grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_ce1),.DATA_y_1_q1(DATA_y_1_q1));
fft1D_512_fft1D_512_Pipeline_loop5 grp_fft1D_512_Pipeline_loop5_fu_161(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop5_fu_161_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop5_fu_161_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop5_fu_161_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop5_fu_161_ap_ready),.DATA_y_1_address0(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_address0),.DATA_y_1_ce0(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_ce0),.DATA_y_1_we0(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_we0),.DATA_y_1_d0(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_d0),.DATA_y_1_address1(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_address1),.DATA_y_1_ce1(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_ce1),.DATA_y_1_we1(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_we1),.DATA_y_1_d1(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_d1),.DATA_y_address0(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_address0),.DATA_y_ce0(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_ce0),.DATA_y_we0(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_we0),.DATA_y_d0(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_d0),.DATA_y_address1(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_address1),.DATA_y_ce1(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_ce1),.DATA_y_we1(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_we1),.DATA_y_d1(grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_d1),.smem_address0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_address0),.smem_ce0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_ce0),.smem_q0(smem_q0),.smem_address1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_address1),.smem_ce1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_ce1),.smem_q1(smem_q1),.smem_1_address0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_address0),.smem_1_ce0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_ce0),.smem_1_q0(smem_1_q0),.smem_1_address1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_address1),.smem_1_ce1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_ce1),.smem_1_q1(smem_1_q1),.smem_2_address0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_address0),.smem_2_ce0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_ce0),.smem_2_q0(smem_2_q0),.smem_2_address1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_address1),.smem_2_ce1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_ce1),.smem_2_q1(smem_2_q1),.smem_3_address0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_address0),.smem_3_ce0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_ce0),.smem_3_q0(smem_3_q0),.smem_3_address1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_address1),.smem_3_ce1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_ce1),.smem_3_q1(smem_3_q1),.smem_4_address0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_address0),.smem_4_ce0(grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_ce0),.smem_4_q0(smem_4_q0),.smem_4_address1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_address1),.smem_4_ce1(grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_ce1),.smem_4_q1(smem_4_q1));
fft1D_512_fft1D_512_Pipeline_loop6 grp_fft1D_512_Pipeline_loop6_fu_172(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop6_fu_172_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop6_fu_172_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop6_fu_172_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop6_fu_172_ap_ready),.DATA_y_1_address0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_address0),.DATA_y_1_ce0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_ce0),.DATA_y_1_we0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_we0),.DATA_y_1_d0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_d0),.DATA_y_1_q0(DATA_y_1_q0),.DATA_y_1_address1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_address1),.DATA_y_1_ce1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_ce1),.DATA_y_1_we1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_we1),.DATA_y_1_d1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_d1),.DATA_y_1_q1(DATA_y_1_q1),.DATA_y_address0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_address0),.DATA_y_ce0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_ce0),.DATA_y_we0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_we0),.DATA_y_d0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_d0),.DATA_y_q0(DATA_y_q0),.DATA_y_address1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_address1),.DATA_y_ce1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_ce1),.DATA_y_we1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_we1),.DATA_y_d1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_d1),.DATA_y_q1(DATA_y_q1),.DATA_x_1_address0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_address0),.DATA_x_1_ce0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_ce0),.DATA_x_1_we0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_we0),.DATA_x_1_d0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_d0),.DATA_x_1_q0(DATA_x_1_q0),.DATA_x_1_address1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_address1),.DATA_x_1_ce1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_ce1),.DATA_x_1_we1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_we1),.DATA_x_1_d1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_d1),.DATA_x_1_q1(DATA_x_1_q1),.DATA_x_address0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_address0),.DATA_x_ce0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_ce0),.DATA_x_we0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_we0),.DATA_x_d0(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_d0),.DATA_x_q0(DATA_x_q0),.DATA_x_address1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_address1),.DATA_x_ce1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_ce1),.DATA_x_we1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_we1),.DATA_x_d1(grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_d1),.DATA_x_q1(DATA_x_q1),.grp_fu_252_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_din0),.grp_fu_252_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_din1),.grp_fu_252_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_opcode),.grp_fu_252_p_dout0(grp_fu_252_p2),.grp_fu_252_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_ce),.grp_fu_256_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_256_p2),.grp_fu_256_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_260_p2),.grp_fu_260_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_din1),.grp_fu_264_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_opcode),.grp_fu_264_p_dout0(grp_fu_264_p2),.grp_fu_264_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_ce),.grp_fu_268_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_din1),.grp_fu_268_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_opcode),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_din1),.grp_fu_272_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_opcode),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_din1),.grp_fu_276_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_opcode),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_din1),.grp_fu_280_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_opcode),.grp_fu_280_p_dout0(grp_fu_280_p2),.grp_fu_280_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_ce),.grp_fu_284_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_din1),.grp_fu_284_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_opcode),.grp_fu_284_p_dout0(grp_fu_284_p2),.grp_fu_284_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_din1),.grp_fu_288_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_opcode),.grp_fu_288_p_dout0(grp_fu_288_p2),.grp_fu_288_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_din1),.grp_fu_292_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_opcode),.grp_fu_292_p_dout0(grp_fu_292_p2),.grp_fu_292_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_din1),.grp_fu_296_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_opcode),.grp_fu_296_p_dout0(grp_fu_296_p2),.grp_fu_296_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_din1),.grp_fu_300_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_opcode),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_din1),.grp_fu_304_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_opcode),.grp_fu_304_p_dout0(grp_fu_304_p2),.grp_fu_304_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_ce),.grp_fu_308_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_din0),.grp_fu_308_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_din1),.grp_fu_308_p_opcode(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_opcode),.grp_fu_308_p_dout0(grp_fu_308_p2),.grp_fu_308_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_ce),.grp_fu_368_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_din0),.grp_fu_368_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_din1),.grp_fu_368_p_dout0(grp_fu_368_p2),.grp_fu_368_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_ce),.grp_fu_372_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_din0),.grp_fu_372_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_din1),.grp_fu_372_p_dout0(grp_fu_372_p2),.grp_fu_372_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_ce),.grp_fu_376_p_din0(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_din0),.grp_fu_376_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_din1),.grp_fu_376_p_dout0(grp_fu_376_p2),.grp_fu_376_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_ce),.grp_twiddles8_fu_388_p_din1(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din1),.grp_twiddles8_fu_388_p_din2(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din2),.grp_twiddles8_fu_388_p_din3(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din3),.grp_twiddles8_fu_388_p_din4(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din4),.grp_twiddles8_fu_388_p_din5(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din5),.grp_twiddles8_fu_388_p_din6(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din6),.grp_twiddles8_fu_388_p_din7(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din7),.grp_twiddles8_fu_388_p_din8(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din8),.grp_twiddles8_fu_388_p_din9(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din9),.grp_twiddles8_fu_388_p_din10(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din10),.grp_twiddles8_fu_388_p_din11(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din11),.grp_twiddles8_fu_388_p_din12(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din12),.grp_twiddles8_fu_388_p_din13(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din13),.grp_twiddles8_fu_388_p_din14(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din14),.grp_twiddles8_fu_388_p_din15(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din15),.grp_twiddles8_fu_388_p_din16(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din16),.grp_twiddles8_fu_388_p_dout0_0(grp_twiddles8_fu_388_ap_return_0),.grp_twiddles8_fu_388_p_dout0_1(grp_twiddles8_fu_388_ap_return_1),.grp_twiddles8_fu_388_p_dout0_2(grp_twiddles8_fu_388_ap_return_2),.grp_twiddles8_fu_388_p_dout0_3(grp_twiddles8_fu_388_ap_return_3),.grp_twiddles8_fu_388_p_dout0_4(grp_twiddles8_fu_388_ap_return_4),.grp_twiddles8_fu_388_p_dout0_5(grp_twiddles8_fu_388_ap_return_5),.grp_twiddles8_fu_388_p_dout0_6(grp_twiddles8_fu_388_ap_return_6),.grp_twiddles8_fu_388_p_dout0_7(grp_twiddles8_fu_388_ap_return_7),.grp_twiddles8_fu_388_p_dout0_8(grp_twiddles8_fu_388_ap_return_8),.grp_twiddles8_fu_388_p_dout0_9(grp_twiddles8_fu_388_ap_return_9),.grp_twiddles8_fu_388_p_dout0_10(grp_twiddles8_fu_388_ap_return_10),.grp_twiddles8_fu_388_p_dout0_11(grp_twiddles8_fu_388_ap_return_11),.grp_twiddles8_fu_388_p_dout0_12(grp_twiddles8_fu_388_ap_return_12),.grp_twiddles8_fu_388_p_dout0_13(grp_twiddles8_fu_388_ap_return_13),.grp_twiddles8_fu_388_p_ce(grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_ce));
fft1D_512_fft1D_512_Pipeline_loop7 grp_fft1D_512_Pipeline_loop7_fu_192(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop7_fu_192_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop7_fu_192_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop7_fu_192_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop7_fu_192_ap_ready),.smem_4_address0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_address0),.smem_4_ce0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_ce0),.smem_4_we0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_we0),.smem_4_d0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_d0),.smem_3_address0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_address0),.smem_3_ce0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_ce0),.smem_3_we0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_we0),.smem_3_d0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_d0),.smem_2_address0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_address0),.smem_2_ce0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_ce0),.smem_2_we0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_we0),.smem_2_d0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_d0),.smem_1_address0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_address0),.smem_1_ce0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_ce0),.smem_1_we0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_we0),.smem_1_d0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_d0),.smem_address0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_address0),.smem_ce0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_ce0),.smem_we0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_we0),.smem_d0(grp_fft1D_512_Pipeline_loop7_fu_192_smem_d0),.DATA_x_address0(grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_address0),.DATA_x_ce0(grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_ce0),.DATA_x_q0(DATA_x_q0),.DATA_x_address1(grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_address1),.DATA_x_ce1(grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_ce1),.DATA_x_q1(DATA_x_q1),.DATA_x_1_address0(grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_address0),.DATA_x_1_ce0(grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_ce0),.DATA_x_1_q0(DATA_x_1_q0),.DATA_x_1_address1(grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_address1),.DATA_x_1_ce1(grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_ce1),.DATA_x_1_q1(DATA_x_1_q1));
fft1D_512_fft1D_512_Pipeline_loop8 grp_fft1D_512_Pipeline_loop8_fu_203(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop8_fu_203_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop8_fu_203_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop8_fu_203_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop8_fu_203_ap_ready),.DATA_x_1_address0(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_address0),.DATA_x_1_ce0(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_ce0),.DATA_x_1_we0(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_we0),.DATA_x_1_d0(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_d0),.DATA_x_1_address1(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_address1),.DATA_x_1_ce1(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_ce1),.DATA_x_1_we1(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_we1),.DATA_x_1_d1(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_d1),.DATA_x_address0(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_address0),.DATA_x_ce0(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_ce0),.DATA_x_we0(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_we0),.DATA_x_d0(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_d0),.DATA_x_address1(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_address1),.DATA_x_ce1(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_ce1),.DATA_x_we1(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_we1),.DATA_x_d1(grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_d1),.smem_address0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_address0),.smem_ce0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_ce0),.smem_q0(smem_q0),.smem_address1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_address1),.smem_ce1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_ce1),.smem_q1(smem_q1),.smem_1_address0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_address0),.smem_1_ce0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_ce0),.smem_1_q0(smem_1_q0),.smem_1_address1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_address1),.smem_1_ce1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_ce1),.smem_1_q1(smem_1_q1),.smem_2_address0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_address0),.smem_2_ce0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_ce0),.smem_2_q0(smem_2_q0),.smem_2_address1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_address1),.smem_2_ce1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_ce1),.smem_2_q1(smem_2_q1),.smem_3_address0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_address0),.smem_3_ce0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_ce0),.smem_3_q0(smem_3_q0),.smem_3_address1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_address1),.smem_3_ce1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_ce1),.smem_3_q1(smem_3_q1),.smem_4_address0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_address0),.smem_4_ce0(grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_ce0),.smem_4_q0(smem_4_q0),.smem_4_address1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_address1),.smem_4_ce1(grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_ce1),.smem_4_q1(smem_4_q1));
fft1D_512_fft1D_512_Pipeline_loop9 grp_fft1D_512_Pipeline_loop9_fu_214(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop9_fu_214_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop9_fu_214_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop9_fu_214_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop9_fu_214_ap_ready),.smem_4_address0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_address0),.smem_4_ce0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_ce0),.smem_4_we0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_we0),.smem_4_d0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_d0),.smem_4_address1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_address1),.smem_4_ce1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_ce1),.smem_4_we1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_we1),.smem_4_d1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_d1),.smem_3_address0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_address0),.smem_3_ce0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_ce0),.smem_3_we0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_we0),.smem_3_d0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_d0),.smem_3_address1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_address1),.smem_3_ce1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_ce1),.smem_3_we1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_we1),.smem_3_d1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_d1),.smem_2_address0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_address0),.smem_2_ce0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_ce0),.smem_2_we0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_we0),.smem_2_d0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_d0),.smem_2_address1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_address1),.smem_2_ce1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_ce1),.smem_2_we1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_we1),.smem_2_d1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_d1),.smem_1_address0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_address0),.smem_1_ce0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_ce0),.smem_1_we0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_we0),.smem_1_d0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_d0),.smem_1_address1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_address1),.smem_1_ce1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_ce1),.smem_1_we1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_we1),.smem_1_d1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_d1),.smem_address0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_address0),.smem_ce0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_ce0),.smem_we0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_we0),.smem_d0(grp_fft1D_512_Pipeline_loop9_fu_214_smem_d0),.smem_address1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_address1),.smem_ce1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_ce1),.smem_we1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_we1),.smem_d1(grp_fft1D_512_Pipeline_loop9_fu_214_smem_d1),.DATA_y_address0(grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_address0),.DATA_y_ce0(grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_ce0),.DATA_y_q0(DATA_y_q0),.DATA_y_address1(grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_address1),.DATA_y_ce1(grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_ce1),.DATA_y_q1(DATA_y_q1),.DATA_y_1_address0(grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_address0),.DATA_y_1_ce0(grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_ce0),.DATA_y_1_q0(DATA_y_1_q0),.DATA_y_1_address1(grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_address1),.DATA_y_1_ce1(grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_ce1),.DATA_y_1_q1(DATA_y_1_q1));
fft1D_512_fft1D_512_Pipeline_loop10 grp_fft1D_512_Pipeline_loop10_fu_225(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop10_fu_225_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop10_fu_225_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop10_fu_225_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop10_fu_225_ap_ready),.DATA_y_1_address0(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_address0),.DATA_y_1_ce0(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_ce0),.DATA_y_1_we0(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_we0),.DATA_y_1_d0(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_d0),.DATA_y_1_address1(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_address1),.DATA_y_1_ce1(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_ce1),.DATA_y_1_we1(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_we1),.DATA_y_1_d1(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_d1),.DATA_y_address0(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_address0),.DATA_y_ce0(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_ce0),.DATA_y_we0(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_we0),.DATA_y_d0(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_d0),.DATA_y_address1(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_address1),.DATA_y_ce1(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_ce1),.DATA_y_we1(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_we1),.DATA_y_d1(grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_d1),.smem_address0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_address0),.smem_ce0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_ce0),.smem_q0(smem_q0),.smem_address1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_address1),.smem_ce1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_ce1),.smem_q1(smem_q1),.smem_1_address0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_address0),.smem_1_ce0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_ce0),.smem_1_q0(smem_1_q0),.smem_1_address1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_address1),.smem_1_ce1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_ce1),.smem_1_q1(smem_1_q1),.smem_2_address0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_address0),.smem_2_ce0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_ce0),.smem_2_q0(smem_2_q0),.smem_2_address1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_address1),.smem_2_ce1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_ce1),.smem_2_q1(smem_2_q1),.smem_3_address0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_address0),.smem_3_ce0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_ce0),.smem_3_q0(smem_3_q0),.smem_3_address1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_address1),.smem_3_ce1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_ce1),.smem_3_q1(smem_3_q1),.smem_4_address0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_address0),.smem_4_ce0(grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_ce0),.smem_4_q0(smem_4_q0),.smem_4_address1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_address1),.smem_4_ce1(grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_ce1),.smem_4_q1(smem_4_q1));
fft1D_512_fft1D_512_Pipeline_loop11 grp_fft1D_512_Pipeline_loop11_fu_236(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_fft1D_512_Pipeline_loop11_fu_236_ap_start),.ap_done(grp_fft1D_512_Pipeline_loop11_fu_236_ap_done),.ap_idle(grp_fft1D_512_Pipeline_loop11_fu_236_ap_idle),.ap_ready(grp_fft1D_512_Pipeline_loop11_fu_236_ap_ready),.work_y_1_address0(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_address0),.work_y_1_ce0(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_ce0),.work_y_1_we0(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_we0),.work_y_1_d0(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_d0),.work_y_1_address1(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_address1),.work_y_1_ce1(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_ce1),.work_y_1_we1(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_we1),.work_y_1_d1(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_d1),.work_y_0_address0(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_address0),.work_y_0_ce0(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_ce0),.work_y_0_we0(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_we0),.work_y_0_d0(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_d0),.work_y_0_address1(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_address1),.work_y_0_ce1(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_ce1),.work_y_0_we1(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_we1),.work_y_0_d1(grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_d1),.work_x_1_address0(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_address0),.work_x_1_ce0(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_ce0),.work_x_1_we0(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_we0),.work_x_1_d0(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_d0),.work_x_1_address1(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_address1),.work_x_1_ce1(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_ce1),.work_x_1_we1(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_we1),.work_x_1_d1(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_d1),.work_x_0_address0(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_address0),.work_x_0_ce0(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_ce0),.work_x_0_we0(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_we0),.work_x_0_d0(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_d0),.work_x_0_address1(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_address1),.work_x_0_ce1(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_ce1),.work_x_0_we1(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_we1),.work_x_0_d1(grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_d1),.DATA_y_address0(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_address0),.DATA_y_ce0(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_ce0),.DATA_y_q0(DATA_y_q0),.DATA_y_address1(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_address1),.DATA_y_ce1(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_ce1),.DATA_y_q1(DATA_y_q1),.DATA_y_1_address0(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_address0),.DATA_y_1_ce0(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_ce0),.DATA_y_1_q0(DATA_y_1_q0),.DATA_y_1_address1(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_address1),.DATA_y_1_ce1(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_ce1),.DATA_y_1_q1(DATA_y_1_q1),.DATA_x_address0(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_address0),.DATA_x_ce0(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_ce0),.DATA_x_q0(DATA_x_q0),.DATA_x_address1(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_address1),.DATA_x_ce1(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_ce1),.DATA_x_q1(DATA_x_q1),.DATA_x_1_address0(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_address0),.DATA_x_1_ce0(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_ce0),.DATA_x_1_q0(DATA_x_1_q0),.DATA_x_1_address1(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_address1),.DATA_x_1_ce1(grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_ce1),.DATA_x_1_q1(DATA_x_1_q1),.grp_fu_252_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_din0),.grp_fu_252_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_din1),.grp_fu_252_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_opcode),.grp_fu_252_p_dout0(grp_fu_252_p2),.grp_fu_252_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_ce),.grp_fu_256_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_256_p2),.grp_fu_256_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_260_p2),.grp_fu_260_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_din1),.grp_fu_264_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_opcode),.grp_fu_264_p_dout0(grp_fu_264_p2),.grp_fu_264_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_ce),.grp_fu_268_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_din1),.grp_fu_268_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_opcode),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_din1),.grp_fu_272_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_opcode),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_din1),.grp_fu_276_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_opcode),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_din1),.grp_fu_280_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_opcode),.grp_fu_280_p_dout0(grp_fu_280_p2),.grp_fu_280_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_ce),.grp_fu_284_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_din1),.grp_fu_284_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_opcode),.grp_fu_284_p_dout0(grp_fu_284_p2),.grp_fu_284_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_din1),.grp_fu_288_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_opcode),.grp_fu_288_p_dout0(grp_fu_288_p2),.grp_fu_288_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_din1),.grp_fu_292_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_opcode),.grp_fu_292_p_dout0(grp_fu_292_p2),.grp_fu_292_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_din1),.grp_fu_296_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_opcode),.grp_fu_296_p_dout0(grp_fu_296_p2),.grp_fu_296_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_din1),.grp_fu_300_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_opcode),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_din1),.grp_fu_304_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_opcode),.grp_fu_304_p_dout0(grp_fu_304_p2),.grp_fu_304_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_ce),.grp_fu_308_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_din0),.grp_fu_308_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_din1),.grp_fu_308_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_opcode),.grp_fu_308_p_dout0(grp_fu_308_p2),.grp_fu_308_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_ce),.grp_fu_312_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_din1),.grp_fu_316_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_opcode),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_din1),.grp_fu_320_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_opcode),.grp_fu_320_p_dout0(grp_fu_320_p2),.grp_fu_320_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_ce),.grp_fu_324_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_din0),.grp_fu_324_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_din1),.grp_fu_324_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_opcode),.grp_fu_324_p_dout0(grp_fu_324_p2),.grp_fu_324_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_ce),.grp_fu_328_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_din0),.grp_fu_328_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_din1),.grp_fu_328_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_opcode),.grp_fu_328_p_dout0(grp_fu_328_p2),.grp_fu_328_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_ce),.grp_fu_332_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_din1),.grp_fu_332_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_opcode),.grp_fu_332_p_dout0(grp_fu_332_p2),.grp_fu_332_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_ce),.grp_fu_336_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_din0),.grp_fu_336_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_din1),.grp_fu_336_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_opcode),.grp_fu_336_p_dout0(grp_fu_336_p2),.grp_fu_336_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_ce),.grp_fu_340_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_din0),.grp_fu_340_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_din1),.grp_fu_340_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_opcode),.grp_fu_340_p_dout0(grp_fu_340_p2),.grp_fu_340_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_ce),.grp_fu_344_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_din0),.grp_fu_344_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_din1),.grp_fu_344_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_opcode),.grp_fu_344_p_dout0(grp_fu_344_p2),.grp_fu_344_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_ce),.grp_fu_348_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_din0),.grp_fu_348_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_din1),.grp_fu_348_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_opcode),.grp_fu_348_p_dout0(grp_fu_348_p2),.grp_fu_348_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_ce),.grp_fu_352_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_din0),.grp_fu_352_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_din1),.grp_fu_352_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_opcode),.grp_fu_352_p_dout0(grp_fu_352_p2),.grp_fu_352_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_ce),.grp_fu_356_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_din0),.grp_fu_356_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_din1),.grp_fu_356_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_opcode),.grp_fu_356_p_dout0(grp_fu_356_p2),.grp_fu_356_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_ce),.grp_fu_360_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_din0),.grp_fu_360_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_din1),.grp_fu_360_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_opcode),.grp_fu_360_p_dout0(grp_fu_360_p2),.grp_fu_360_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_ce),.grp_fu_364_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_din0),.grp_fu_364_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_din1),.grp_fu_364_p_opcode(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_opcode),.grp_fu_364_p_dout0(grp_fu_364_p2),.grp_fu_364_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_ce),.grp_fu_368_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_din0),.grp_fu_368_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_din1),.grp_fu_368_p_dout0(grp_fu_368_p2),.grp_fu_368_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_ce),.grp_fu_372_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_din0),.grp_fu_372_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_din1),.grp_fu_372_p_dout0(grp_fu_372_p2),.grp_fu_372_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_ce),.grp_fu_376_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_din0),.grp_fu_376_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_din1),.grp_fu_376_p_dout0(grp_fu_376_p2),.grp_fu_376_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_ce),.grp_fu_380_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_din0),.grp_fu_380_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_din1),.grp_fu_380_p_dout0(grp_fu_380_p2),.grp_fu_380_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_ce),.grp_fu_384_p_din0(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_din0),.grp_fu_384_p_din1(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_din1),.grp_fu_384_p_dout0(grp_fu_384_p2),.grp_fu_384_p_ce(grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_ce));
fft1D_512_twiddles8 grp_twiddles8_fu_388(.ap_clk(ap_clk),.ap_rst(ap_rst),.a_x_1_read(grp_twiddles8_fu_388_a_x_1_read),.a_x_2_read(grp_twiddles8_fu_388_a_x_2_read),.a_x_3_read(grp_twiddles8_fu_388_a_x_3_read),.a_x_4_read(grp_twiddles8_fu_388_a_x_4_read),.a_x_5_read(grp_twiddles8_fu_388_a_x_5_read),.a_x_6_read(grp_twiddles8_fu_388_a_x_6_read),.a_x_7_read(grp_twiddles8_fu_388_a_x_7_read),.a_y_1_read(grp_twiddles8_fu_388_a_y_1_read),.a_y_2_read(grp_twiddles8_fu_388_a_y_2_read),.a_y_3_read(grp_twiddles8_fu_388_a_y_3_read),.a_y_4_read(grp_twiddles8_fu_388_a_y_4_read),.a_y_5_read(grp_twiddles8_fu_388_a_y_5_read),.a_y_6_read(grp_twiddles8_fu_388_a_y_6_read),.a_y_7_read(grp_twiddles8_fu_388_a_y_7_read),.i(grp_twiddles8_fu_388_i),.n(grp_twiddles8_fu_388_n),.ap_return_0(grp_twiddles8_fu_388_ap_return_0),.ap_return_1(grp_twiddles8_fu_388_ap_return_1),.ap_return_2(grp_twiddles8_fu_388_ap_return_2),.ap_return_3(grp_twiddles8_fu_388_ap_return_3),.ap_return_4(grp_twiddles8_fu_388_ap_return_4),.ap_return_5(grp_twiddles8_fu_388_ap_return_5),.ap_return_6(grp_twiddles8_fu_388_ap_return_6),.ap_return_7(grp_twiddles8_fu_388_ap_return_7),.ap_return_8(grp_twiddles8_fu_388_ap_return_8),.ap_return_9(grp_twiddles8_fu_388_ap_return_9),.ap_return_10(grp_twiddles8_fu_388_ap_return_10),.ap_return_11(grp_twiddles8_fu_388_ap_return_11),.ap_return_12(grp_twiddles8_fu_388_ap_return_12),.ap_return_13(grp_twiddles8_fu_388_ap_return_13),.ap_ce(grp_twiddles8_fu_388_ap_ce));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U593(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_252_p0),.din1(grp_fu_252_p1),.opcode(grp_fu_252_opcode),.ce(grp_fu_252_ce),.dout(grp_fu_252_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U594(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_256_p0),.din1(grp_fu_256_p1),.opcode(grp_fu_256_opcode),.ce(grp_fu_256_ce),.dout(grp_fu_256_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U595(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_260_p0),.din1(grp_fu_260_p1),.opcode(grp_fu_260_opcode),.ce(grp_fu_260_ce),.dout(grp_fu_260_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U596(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_264_p0),.din1(grp_fu_264_p1),.opcode(grp_fu_264_opcode),.ce(grp_fu_264_ce),.dout(grp_fu_264_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U597(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_268_p0),.din1(grp_fu_268_p1),.opcode(grp_fu_268_opcode),.ce(grp_fu_268_ce),.dout(grp_fu_268_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U598(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_272_p0),.din1(grp_fu_272_p1),.opcode(grp_fu_272_opcode),.ce(grp_fu_272_ce),.dout(grp_fu_272_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U599(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_276_p0),.din1(grp_fu_276_p1),.opcode(grp_fu_276_opcode),.ce(grp_fu_276_ce),.dout(grp_fu_276_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U600(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_280_p0),.din1(grp_fu_280_p1),.opcode(grp_fu_280_opcode),.ce(grp_fu_280_ce),.dout(grp_fu_280_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U601(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_284_p0),.din1(grp_fu_284_p1),.opcode(grp_fu_284_opcode),.ce(grp_fu_284_ce),.dout(grp_fu_284_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U602(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_288_p0),.din1(grp_fu_288_p1),.opcode(grp_fu_288_opcode),.ce(grp_fu_288_ce),.dout(grp_fu_288_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U603(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_292_p0),.din1(grp_fu_292_p1),.opcode(grp_fu_292_opcode),.ce(grp_fu_292_ce),.dout(grp_fu_292_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U604(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_296_p0),.din1(grp_fu_296_p1),.opcode(grp_fu_296_opcode),.ce(grp_fu_296_ce),.dout(grp_fu_296_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U605(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_300_p0),.din1(grp_fu_300_p1),.opcode(grp_fu_300_opcode),.ce(grp_fu_300_ce),.dout(grp_fu_300_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U606(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_304_p0),.din1(grp_fu_304_p1),.opcode(grp_fu_304_opcode),.ce(grp_fu_304_ce),.dout(grp_fu_304_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U607(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_308_p0),.din1(grp_fu_308_p1),.opcode(grp_fu_308_opcode),.ce(grp_fu_308_ce),.dout(grp_fu_308_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U608(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_312_p0),.din1(grp_fu_312_p1),.opcode(grp_fu_312_opcode),.ce(grp_fu_312_ce),.dout(grp_fu_312_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U609(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_316_p0),.din1(grp_fu_316_p1),.opcode(grp_fu_316_opcode),.ce(grp_fu_316_ce),.dout(grp_fu_316_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U610(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_320_p0),.din1(grp_fu_320_p1),.opcode(grp_fu_320_opcode),.ce(grp_fu_320_ce),.dout(grp_fu_320_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U611(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_324_p0),.din1(grp_fu_324_p1),.opcode(grp_fu_324_opcode),.ce(grp_fu_324_ce),.dout(grp_fu_324_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U612(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_328_p0),.din1(grp_fu_328_p1),.opcode(grp_fu_328_opcode),.ce(grp_fu_328_ce),.dout(grp_fu_328_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U613(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_332_p0),.din1(grp_fu_332_p1),.opcode(grp_fu_332_opcode),.ce(grp_fu_332_ce),.dout(grp_fu_332_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U614(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_336_p0),.din1(grp_fu_336_p1),.opcode(grp_fu_336_opcode),.ce(grp_fu_336_ce),.dout(grp_fu_336_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U615(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_340_p0),.din1(grp_fu_340_p1),.opcode(grp_fu_340_opcode),.ce(grp_fu_340_ce),.dout(grp_fu_340_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U616(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_344_p0),.din1(grp_fu_344_p1),.opcode(grp_fu_344_opcode),.ce(grp_fu_344_ce),.dout(grp_fu_344_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U617(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_348_p0),.din1(grp_fu_348_p1),.opcode(grp_fu_348_opcode),.ce(grp_fu_348_ce),.dout(grp_fu_348_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U618(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_352_p0),.din1(grp_fu_352_p1),.opcode(grp_fu_352_opcode),.ce(grp_fu_352_ce),.dout(grp_fu_352_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U619(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_356_p0),.din1(grp_fu_356_p1),.opcode(grp_fu_356_opcode),.ce(grp_fu_356_ce),.dout(grp_fu_356_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U620(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_360_p0),.din1(grp_fu_360_p1),.opcode(grp_fu_360_opcode),.ce(grp_fu_360_ce),.dout(grp_fu_360_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U621(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_364_p0),.din1(grp_fu_364_p1),.opcode(grp_fu_364_opcode),.ce(grp_fu_364_ce),.dout(grp_fu_364_p2));
fft1D_512_dmul_64ns_64ns_64_7_max_dsp_0 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_0_U622(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_368_p0),.din1(grp_fu_368_p1),.ce(grp_fu_368_ce),.dout(grp_fu_368_p2));
fft1D_512_dmul_64ns_64ns_64_7_max_dsp_0 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_0_U623(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_372_p0),.din1(grp_fu_372_p1),.ce(grp_fu_372_ce),.dout(grp_fu_372_p2));
fft1D_512_dmul_64ns_64ns_64_7_max_dsp_0 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_0_U624(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_376_p0),.din1(grp_fu_376_p1),.ce(grp_fu_376_ce),.dout(grp_fu_376_p2));
fft1D_512_dmul_64ns_64ns_64_7_max_dsp_0 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_0_U625(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_380_p0),.din1(grp_fu_380_p1),.ce(grp_fu_380_ce),.dout(grp_fu_380_p2));
fft1D_512_dmul_64ns_64ns_64_7_max_dsp_0 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_0_U626(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_384_p0),.din1(grp_fu_384_p1),.ce(grp_fu_384_ce),.dout(grp_fu_384_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop10_fu_225_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            grp_fft1D_512_Pipeline_loop10_fu_225_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop10_fu_225_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop10_fu_225_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop11_fu_236_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_fft1D_512_Pipeline_loop11_fu_236_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop11_fu_236_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop11_fu_236_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop1_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_fft1D_512_Pipeline_loop1_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop1_fu_96_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop1_fu_96_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop2_fu_128_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_fft1D_512_Pipeline_loop2_fu_128_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop2_fu_128_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop2_fu_128_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop3_fu_139_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_fft1D_512_Pipeline_loop3_fu_139_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop3_fu_139_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop3_fu_139_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop4_fu_150_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_fft1D_512_Pipeline_loop4_fu_150_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop4_fu_150_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop4_fu_150_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop5_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_fft1D_512_Pipeline_loop5_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop5_fu_161_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop5_fu_161_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop6_fu_172_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_fft1D_512_Pipeline_loop6_fu_172_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop6_fu_172_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop6_fu_172_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop7_fu_192_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_fft1D_512_Pipeline_loop7_fu_192_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop7_fu_192_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop7_fu_192_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop8_fu_203_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_fft1D_512_Pipeline_loop8_fu_203_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop8_fu_203_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop8_fu_203_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft1D_512_Pipeline_loop9_fu_214_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_fft1D_512_Pipeline_loop9_fu_214_ap_start_reg <= 1'b1;
        end else if ((grp_fft1D_512_Pipeline_loop9_fu_214_ap_ready == 1'b1)) begin
            grp_fft1D_512_Pipeline_loop9_fu_214_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_x_1_address0 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_1_address0 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_x_1_address0 = grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_1_address0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_1_address0 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        DATA_x_1_address0 = grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_1_address0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_address0;
    end else begin
        DATA_x_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_x_1_address1 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_1_address1 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_x_1_address1 = grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_1_address1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_1_address1 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        DATA_x_1_address1 = grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_1_address1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_address1;
    end else begin
        DATA_x_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_x_1_ce0 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_1_ce0 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_x_1_ce0 = grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_1_ce0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_1_ce0 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        DATA_x_1_ce0 = grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_1_ce0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_ce0;
    end else begin
        DATA_x_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_x_1_ce1 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_1_ce1 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_x_1_ce1 = grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_1_ce1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_1_ce1 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        DATA_x_1_ce1 = grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_1_ce1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_ce1;
    end else begin
        DATA_x_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_1_d0 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_1_d0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_1_d0 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_1_d0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_d0;
    end else begin
        DATA_x_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_1_d1 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_1_d1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_1_d1 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_1_d1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_d1;
    end else begin
        DATA_x_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_1_we0 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_1_we0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_1_we0 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_1_we0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_we0;
    end else begin
        DATA_x_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_1_we1 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_1_we1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_1_we1 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_1_we1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_1_we1;
    end else begin
        DATA_x_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_x_address0 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_address0 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_x_address0 = grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_address0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_address0 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        DATA_x_address0 = grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_address0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_address0;
    end else begin
        DATA_x_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_x_address1 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_address1 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_x_address1 = grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_address1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_address1 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        DATA_x_address1 = grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_address1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_address1;
    end else begin
        DATA_x_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_x_ce0 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_ce0 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_x_ce0 = grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_ce0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_ce0 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        DATA_x_ce0 = grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_ce0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_ce0;
    end else begin
        DATA_x_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_x_ce1 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_x_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_ce1 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_x_ce1 = grp_fft1D_512_Pipeline_loop7_fu_192_DATA_x_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_ce1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_ce1 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        DATA_x_ce1 = grp_fft1D_512_Pipeline_loop2_fu_128_DATA_x_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_ce1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_ce1;
    end else begin
        DATA_x_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_d0 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_d0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_d0 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_d0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_d0;
    end else begin
        DATA_x_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_d1 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_d1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_d1 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_d1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_d1;
    end else begin
        DATA_x_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_we0 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_we0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_we0 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_we0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_we0;
    end else begin
        DATA_x_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        DATA_x_we1 = grp_fft1D_512_Pipeline_loop8_fu_203_DATA_x_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_x_we1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_x_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        DATA_x_we1 = grp_fft1D_512_Pipeline_loop3_fu_139_DATA_x_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_x_we1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_x_we1;
    end else begin
        DATA_x_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_y_1_address0 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_1_address0 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        DATA_y_1_address0 = grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_1_address0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_1_address0 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        DATA_y_1_address0 = grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_1_address0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_address0;
    end else begin
        DATA_y_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_y_1_address1 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_1_address1 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        DATA_y_1_address1 = grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_1_address1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_1_address1 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        DATA_y_1_address1 = grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_1_address1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_address1;
    end else begin
        DATA_y_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_y_1_ce0 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_1_ce0 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        DATA_y_1_ce0 = grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_1_ce0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_1_ce0 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        DATA_y_1_ce0 = grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_1_ce0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_ce0;
    end else begin
        DATA_y_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_y_1_ce1 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_1_ce1 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        DATA_y_1_ce1 = grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_1_ce1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_1_ce1 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        DATA_y_1_ce1 = grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_1_ce1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_ce1;
    end else begin
        DATA_y_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_1_d0 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_1_d0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_1_d0 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_1_d0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_d0;
    end else begin
        DATA_y_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_1_d1 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_1_d1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_1_d1 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_1_d1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_d1;
    end else begin
        DATA_y_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_1_we0 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_1_we0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_1_we0 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_1_we0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_we0;
    end else begin
        DATA_y_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_1_we1 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_1_we1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_1_we1 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_1_we1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_1_we1;
    end else begin
        DATA_y_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_y_address0 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_address0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_address0 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        DATA_y_address0 = grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_address0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_address0 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        DATA_y_address0 = grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_address0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_address0;
    end else begin
        DATA_y_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_y_address1 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_address1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_address1 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_address1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        DATA_y_address1 = grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_address1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_address1 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        DATA_y_address1 = grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_address1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_address1;
    end else begin
        DATA_y_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_y_ce0 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_ce0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_ce0 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        DATA_y_ce0 = grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_ce0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_ce0 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        DATA_y_ce0 = grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_ce0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_ce0;
    end else begin
        DATA_y_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        DATA_y_ce1 = grp_fft1D_512_Pipeline_loop11_fu_236_DATA_y_ce1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_ce1 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_ce1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        DATA_y_ce1 = grp_fft1D_512_Pipeline_loop9_fu_214_DATA_y_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_ce1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_ce1 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        DATA_y_ce1 = grp_fft1D_512_Pipeline_loop4_fu_150_DATA_y_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_ce1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_ce1;
    end else begin
        DATA_y_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_d0 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_d0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_d0 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_d0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_d0;
    end else begin
        DATA_y_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_d1 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_d1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_d1 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_d1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_d1;
    end else begin
        DATA_y_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_we0 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_we0 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_we0 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_we0 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_we0;
    end else begin
        DATA_y_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        DATA_y_we1 = grp_fft1D_512_Pipeline_loop10_fu_225_DATA_y_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        DATA_y_we1 = grp_fft1D_512_Pipeline_loop6_fu_172_DATA_y_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        DATA_y_we1 = grp_fft1D_512_Pipeline_loop5_fu_161_DATA_y_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_y_we1 = grp_fft1D_512_Pipeline_loop1_fu_96_DATA_y_we1;
    end else begin
        DATA_y_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop5_fu_161_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop6_fu_172_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop7_fu_192_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop8_fu_203_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop9_fu_214_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
    end
end
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop10_fu_225_ap_done == 1'b0)) begin
        ap_ST_fsm_state20_blk = 1'b1;
    end else begin
        ap_ST_fsm_state20_blk = 1'b0;
    end
end
assign ap_ST_fsm_state21_blk = 1'b0;
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop11_fu_236_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop1_fu_96_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop2_fu_128_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop3_fu_139_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_fft1D_512_Pipeline_loop4_fu_150_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) & (grp_fft1D_512_Pipeline_loop11_fu_236_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state22) & (grp_fft1D_512_Pipeline_loop11_fu_236_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_252_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_252_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_252_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_ce;
    end else begin
        grp_fu_252_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_252_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_252_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_252_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_opcode;
    end else begin
        grp_fu_252_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_252_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_252_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_252_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_din0;
    end else begin
        grp_fu_252_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_252_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_252_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_252_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_252_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_252_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_252_p_din1;
    end else begin
        grp_fu_252_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_256_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_256_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_256_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_ce;
    end else begin
        grp_fu_256_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_256_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_256_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_256_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_opcode;
    end else begin
        grp_fu_256_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_256_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_256_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_256_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_din0;
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_256_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_256_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_256_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_256_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_256_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_256_p_din1;
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_260_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_260_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_260_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_ce;
    end else begin
        grp_fu_260_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_260_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_260_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_260_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_opcode;
    end else begin
        grp_fu_260_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_260_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_260_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_260_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_din0;
    end else begin
        grp_fu_260_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_260_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_260_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_260_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_260_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_260_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_260_p_din1;
    end else begin
        grp_fu_260_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_264_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_264_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_264_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_ce;
    end else begin
        grp_fu_264_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_264_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_264_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_264_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_opcode;
    end else begin
        grp_fu_264_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_264_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_264_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_264_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_din0;
    end else begin
        grp_fu_264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_264_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_264_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_264_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_264_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_264_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_264_p_din1;
    end else begin
        grp_fu_264_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_268_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_268_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_ce;
    end else begin
        grp_fu_268_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_268_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_268_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_opcode;
    end else begin
        grp_fu_268_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_268_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_268_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_din0;
    end else begin
        grp_fu_268_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_268_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_268_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_268_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_268_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_268_p_din1;
    end else begin
        grp_fu_268_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_272_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_272_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_ce;
    end else begin
        grp_fu_272_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_272_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_272_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_opcode;
    end else begin
        grp_fu_272_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_272_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_272_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_din0;
    end else begin
        grp_fu_272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_272_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_272_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_272_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_272_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_272_p_din1;
    end else begin
        grp_fu_272_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_276_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_276_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_ce;
    end else begin
        grp_fu_276_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_276_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_276_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_opcode;
    end else begin
        grp_fu_276_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_276_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_276_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_din0;
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_276_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_276_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_276_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_276_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_276_p_din1;
    end else begin
        grp_fu_276_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_280_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_280_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_ce;
    end else begin
        grp_fu_280_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_280_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_280_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_opcode;
    end else begin
        grp_fu_280_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_280_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_280_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_din0;
    end else begin
        grp_fu_280_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_280_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_280_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_280_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_280_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_280_p_din1;
    end else begin
        grp_fu_280_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_284_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_284_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_ce;
    end else begin
        grp_fu_284_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_284_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_284_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_opcode;
    end else begin
        grp_fu_284_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_284_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_284_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_din0;
    end else begin
        grp_fu_284_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_284_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_284_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_284_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_284_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_284_p_din1;
    end else begin
        grp_fu_284_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_288_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_288_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_ce;
    end else begin
        grp_fu_288_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_288_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_288_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_opcode;
    end else begin
        grp_fu_288_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_288_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_288_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_din0;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_288_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_288_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_288_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_288_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_288_p_din1;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_292_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_292_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_ce;
    end else begin
        grp_fu_292_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_292_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_292_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_opcode;
    end else begin
        grp_fu_292_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_292_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_292_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_din0;
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_292_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_292_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_292_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_292_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_292_p_din1;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_296_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_296_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_ce;
    end else begin
        grp_fu_296_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_296_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_296_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_opcode;
    end else begin
        grp_fu_296_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_296_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_296_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_din0;
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_296_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_296_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_296_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_296_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_296_p_din1;
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_300_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_300_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_ce;
    end else begin
        grp_fu_300_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_300_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_300_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_opcode;
    end else begin
        grp_fu_300_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_300_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_300_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_din0;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_300_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_300_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_300_p_din1;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_304_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_304_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_ce;
    end else begin
        grp_fu_304_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_304_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_304_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_opcode;
    end else begin
        grp_fu_304_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_304_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_304_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_din0;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_304_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_304_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_304_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_304_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_304_p_din1;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_308_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_308_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_ce;
    end else begin
        grp_fu_308_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_308_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_308_opcode = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_opcode;
    end else begin
        grp_fu_308_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_308_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_308_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_din0;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_308_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_308_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_308_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_308_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_308_p_din1;
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_312_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_ce;
    end else begin
        grp_fu_312_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_312_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_opcode;
    end else begin
        grp_fu_312_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_312_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_din0;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_312_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_312_p_din1;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_316_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_ce;
    end else begin
        grp_fu_316_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_316_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_opcode;
    end else begin
        grp_fu_316_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_316_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_din0;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_316_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_316_p_din1;
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_320_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_320_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_ce;
    end else begin
        grp_fu_320_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_320_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_320_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_opcode;
    end else begin
        grp_fu_320_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_320_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_320_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_din0;
    end else begin
        grp_fu_320_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_320_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_320_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_320_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_320_p_din1;
    end else begin
        grp_fu_320_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_324_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_324_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_ce;
    end else begin
        grp_fu_324_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_324_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_324_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_opcode;
    end else begin
        grp_fu_324_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_324_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_324_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_din0;
    end else begin
        grp_fu_324_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_324_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_324_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_324_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_324_p_din1;
    end else begin
        grp_fu_324_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_328_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_328_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_ce;
    end else begin
        grp_fu_328_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_328_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_328_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_opcode;
    end else begin
        grp_fu_328_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_328_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_328_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_din0;
    end else begin
        grp_fu_328_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_328_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_328_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_328_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_328_p_din1;
    end else begin
        grp_fu_328_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_332_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_332_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_ce;
    end else begin
        grp_fu_332_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_332_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_332_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_opcode;
    end else begin
        grp_fu_332_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_332_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_332_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_din0;
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_332_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_332_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_332_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_332_p_din1;
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_336_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_336_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_ce;
    end else begin
        grp_fu_336_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_336_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_336_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_opcode;
    end else begin
        grp_fu_336_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_336_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_336_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_din0;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_336_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_336_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_336_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_336_p_din1;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_340_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_340_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_ce;
    end else begin
        grp_fu_340_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_340_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_340_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_opcode;
    end else begin
        grp_fu_340_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_340_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_340_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_din0;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_340_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_340_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_340_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_340_p_din1;
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_344_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_344_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_ce;
    end else begin
        grp_fu_344_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_344_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_344_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_opcode;
    end else begin
        grp_fu_344_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_344_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_344_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_din0;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_344_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_344_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_344_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_344_p_din1;
    end else begin
        grp_fu_344_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_348_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_348_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_ce;
    end else begin
        grp_fu_348_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_348_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_348_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_opcode;
    end else begin
        grp_fu_348_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_348_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_348_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_din0;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_348_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_348_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_348_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_348_p_din1;
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_352_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_352_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_ce;
    end else begin
        grp_fu_352_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_352_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_352_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_opcode;
    end else begin
        grp_fu_352_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_352_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_352_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_din0;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_352_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_352_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_352_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_352_p_din1;
    end else begin
        grp_fu_352_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_356_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_356_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_ce;
    end else begin
        grp_fu_356_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_356_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_356_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_opcode;
    end else begin
        grp_fu_356_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_356_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_356_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_din0;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_356_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_356_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_356_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_356_p_din1;
    end else begin
        grp_fu_356_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_360_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_360_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_ce;
    end else begin
        grp_fu_360_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_360_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_360_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_opcode;
    end else begin
        grp_fu_360_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_360_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_360_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_din0;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_360_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_360_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_360_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_360_p_din1;
    end else begin
        grp_fu_360_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_364_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_364_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_ce;
    end else begin
        grp_fu_364_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_364_opcode = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_364_opcode = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_opcode;
    end else begin
        grp_fu_364_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_364_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_364_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_din0;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_364_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_364_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_364_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_364_p_din1;
    end else begin
        grp_fu_364_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_368_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_368_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_368_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_ce;
    end else begin
        grp_fu_368_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_368_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_368_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_368_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_din0;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_368_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_368_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_368_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_368_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_368_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_368_p_din1;
    end else begin
        grp_fu_368_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_372_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_372_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_372_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_ce;
    end else begin
        grp_fu_372_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_372_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_372_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_372_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_din0;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_372_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_372_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_372_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_372_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_372_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_372_p_din1;
    end else begin
        grp_fu_372_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_376_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_376_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_376_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_ce;
    end else begin
        grp_fu_376_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_376_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_376_p0 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_376_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_din0;
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_376_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_376_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_376_p1 = grp_fft1D_512_Pipeline_loop6_fu_172_grp_fu_376_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_376_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_376_p_din1;
    end else begin
        grp_fu_376_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_380_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_380_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_ce;
    end else begin
        grp_fu_380_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_380_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_380_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_din0;
    end else begin
        grp_fu_380_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_380_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_380_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_380_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_380_p_din1;
    end else begin
        grp_fu_380_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_384_ce = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_384_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_ce;
    end else begin
        grp_fu_384_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_384_p0 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_384_p0 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_din0;
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_384_p1 = grp_fft1D_512_Pipeline_loop11_fu_236_grp_fu_384_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_384_p1 = grp_fft1D_512_Pipeline_loop1_fu_96_grp_fu_384_p_din1;
    end else begin
        grp_fu_384_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_x_1_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_x_1_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din1;
    end else begin
        grp_twiddles8_fu_388_a_x_1_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_x_2_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_x_2_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din2;
    end else begin
        grp_twiddles8_fu_388_a_x_2_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_x_3_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_x_3_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din3;
    end else begin
        grp_twiddles8_fu_388_a_x_3_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_x_4_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_x_4_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din4;
    end else begin
        grp_twiddles8_fu_388_a_x_4_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_x_5_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_x_5_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din5;
    end else begin
        grp_twiddles8_fu_388_a_x_5_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_x_6_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din6;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_x_6_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din6;
    end else begin
        grp_twiddles8_fu_388_a_x_6_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_x_7_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din7;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_x_7_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din7;
    end else begin
        grp_twiddles8_fu_388_a_x_7_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_y_1_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din8;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_y_1_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din8;
    end else begin
        grp_twiddles8_fu_388_a_y_1_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_y_2_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din9;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_y_2_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din9;
    end else begin
        grp_twiddles8_fu_388_a_y_2_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_y_3_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din10;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_y_3_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din10;
    end else begin
        grp_twiddles8_fu_388_a_y_3_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_y_4_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din11;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_y_4_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din11;
    end else begin
        grp_twiddles8_fu_388_a_y_4_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_y_5_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din12;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_y_5_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din12;
    end else begin
        grp_twiddles8_fu_388_a_y_5_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_y_6_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din13;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_y_6_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din13;
    end else begin
        grp_twiddles8_fu_388_a_y_6_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_a_y_7_read = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din14;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_a_y_7_read = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din14;
    end else begin
        grp_twiddles8_fu_388_a_y_7_read = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_ap_ce = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_ap_ce = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_ce;
    end else if (~(1'b1 == 1'b1)) begin
        grp_twiddles8_fu_388_ap_ce = 1'b0;
    end else begin
        grp_twiddles8_fu_388_ap_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_i = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din15;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_i = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din15;
    end else begin
        grp_twiddles8_fu_388_i = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_twiddles8_fu_388_n = grp_fft1D_512_Pipeline_loop6_fu_172_grp_twiddles8_fu_388_p_din16;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_twiddles8_fu_388_n = grp_fft1D_512_Pipeline_loop1_fu_96_grp_twiddles8_fu_388_p_din16;
    end else begin
        grp_twiddles8_fu_388_n = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_1_address0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_1_address0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_1_address0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_1_address0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_1_address0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_1_address0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_1_address0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_1_address0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_address0;
    end else begin
        smem_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_1_address1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_1_address1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_1_address1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_1_address1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_1_address1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_1_address1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_1_address1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_address1;
    end else begin
        smem_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_1_ce0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_1_ce0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_1_ce0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_1_ce0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_1_ce0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_1_ce0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_1_ce0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_1_ce0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_1_ce1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_1_ce1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_1_ce1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_1_ce1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_1_ce1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_1_ce1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_1_ce1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_ce1;
    end else begin
        smem_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_1_d0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_1_d0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_1_d0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_1_d0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_d0;
    end else begin
        smem_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_1_d1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_1_d1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_1_d1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_d1;
    end else begin
        smem_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_1_we0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_1_we0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_1_we0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_1_we0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_we0;
    end else begin
        smem_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_1_we1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_1_we1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_1_we1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_1_we1;
    end else begin
        smem_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_2_address0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_2_address0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_2_address0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_2_address0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_2_address0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_2_address0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_2_address0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_2_address0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_address0;
    end else begin
        smem_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_2_address1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_2_address1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_2_address1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_2_address1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_2_address1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_2_address1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_2_address1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_address1;
    end else begin
        smem_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_2_ce0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_2_ce0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_2_ce0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_2_ce0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_2_ce0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_2_ce0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_2_ce0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_2_ce0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_2_ce1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_2_ce1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_2_ce1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_2_ce1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_2_ce1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_2_ce1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_2_ce1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_ce1;
    end else begin
        smem_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_2_d0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_2_d0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_2_d0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_2_d0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_d0;
    end else begin
        smem_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_2_d1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_2_d1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_2_d1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_d1;
    end else begin
        smem_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_2_we0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_2_we0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_2_we0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_2_we0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_we0;
    end else begin
        smem_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_2_we1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_2_we1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_2_we1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_2_we1;
    end else begin
        smem_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_3_address0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_3_address0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_3_address0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_3_address0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_3_address0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_3_address0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_3_address0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_3_address0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_address0;
    end else begin
        smem_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_3_address1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_3_address1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_3_address1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_3_address1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_3_address1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_3_address1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_3_address1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_address1;
    end else begin
        smem_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_3_ce0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_3_ce0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_3_ce0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_3_ce0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_3_ce0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_3_ce0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_3_ce0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_3_ce0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_3_ce1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_3_ce1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_3_ce1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_3_ce1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_3_ce1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_3_ce1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_3_ce1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_ce1;
    end else begin
        smem_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_3_d0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_3_d0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_3_d0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_3_d0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_d0;
    end else begin
        smem_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_3_d1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_3_d1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_3_d1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_d1;
    end else begin
        smem_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_3_we0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_3_we0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_3_we0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_3_we0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_we0;
    end else begin
        smem_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_3_we1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_3_we1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_3_we1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_3_we1;
    end else begin
        smem_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_4_address0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_4_address0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_4_address0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_4_address0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_4_address0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_4_address0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_4_address0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_4_address0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_address0;
    end else begin
        smem_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_4_address1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_4_address1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_4_address1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_4_address1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_4_address1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_4_address1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_4_address1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_address1;
    end else begin
        smem_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_4_ce0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_4_ce0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_4_ce0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_4_ce0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_4_ce0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_4_ce0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_4_ce0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_4_ce0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_ce0;
    end else begin
        smem_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_4_ce1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_4_ce1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_4_ce1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_4_ce1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_4_ce1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_4_ce1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_4_ce1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_ce1;
    end else begin
        smem_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_4_d0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_4_d0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_4_d0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_4_d0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_d0;
    end else begin
        smem_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_4_d1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_4_d1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_4_d1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_d1;
    end else begin
        smem_4_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_4_we0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_4_we0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_4_we0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_4_we0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_we0;
    end else begin
        smem_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_4_we1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_4_we1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_4_we1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_4_we1;
    end else begin
        smem_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_address0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_address0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_address0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_address0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_address0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_address0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_address0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_address0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_address0;
    end else begin
        smem_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_address1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_address1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_address1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_address1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_address1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_address1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_address1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_address1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_address1;
    end else begin
        smem_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_ce0 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_ce0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_ce0 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_ce0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_ce0 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_ce0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_ce0 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_ce0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        smem_ce1 = grp_fft1D_512_Pipeline_loop10_fu_225_smem_ce1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_ce1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        smem_ce1 = grp_fft1D_512_Pipeline_loop8_fu_203_smem_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        smem_ce1 = grp_fft1D_512_Pipeline_loop5_fu_161_smem_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_ce1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        smem_ce1 = grp_fft1D_512_Pipeline_loop3_fu_139_smem_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_ce1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_ce1;
    end else begin
        smem_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_d0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_d0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_d0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_d0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_d0;
    end else begin
        smem_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_d1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_d1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_d1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_d1;
    end else begin
        smem_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_we0 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        smem_we0 = grp_fft1D_512_Pipeline_loop7_fu_192_smem_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_we0 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_we0 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_we0;
    end else begin
        smem_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        smem_we1 = grp_fft1D_512_Pipeline_loop9_fu_214_smem_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        smem_we1 = grp_fft1D_512_Pipeline_loop4_fu_150_smem_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        smem_we1 = grp_fft1D_512_Pipeline_loop2_fu_128_smem_we1;
    end else begin
        smem_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_0_address0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_x_0_address0 = grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_address0;
    end else begin
        work_x_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_0_address1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_x_0_address1 = grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_address1;
    end else begin
        work_x_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_0_ce0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_x_0_ce0 = grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_ce0;
    end else begin
        work_x_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_0_ce1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_x_0_ce1 = grp_fft1D_512_Pipeline_loop1_fu_96_work_x_0_ce1;
    end else begin
        work_x_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_0_we0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_we0;
    end else begin
        work_x_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_0_we1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_we1;
    end else begin
        work_x_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_1_address0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_x_1_address0 = grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_address0;
    end else begin
        work_x_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_1_address1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_x_1_address1 = grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_address1;
    end else begin
        work_x_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_1_ce0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_x_1_ce0 = grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_ce0;
    end else begin
        work_x_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_1_ce1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_x_1_ce1 = grp_fft1D_512_Pipeline_loop1_fu_96_work_x_1_ce1;
    end else begin
        work_x_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_1_we0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_we0;
    end else begin
        work_x_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_x_1_we1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_we1;
    end else begin
        work_x_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_0_address0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_y_0_address0 = grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_address0;
    end else begin
        work_y_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_0_address1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_y_0_address1 = grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_address1;
    end else begin
        work_y_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_0_ce0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_y_0_ce0 = grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_ce0;
    end else begin
        work_y_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_0_ce1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_y_0_ce1 = grp_fft1D_512_Pipeline_loop1_fu_96_work_y_0_ce1;
    end else begin
        work_y_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_0_we0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_we0;
    end else begin
        work_y_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_0_we1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_we1;
    end else begin
        work_y_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_1_address0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_y_1_address0 = grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_address0;
    end else begin
        work_y_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_1_address1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_y_1_address1 = grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_address1;
    end else begin
        work_y_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_1_ce0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_y_1_ce0 = grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_ce0;
    end else begin
        work_y_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_1_ce1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        work_y_1_ce1 = grp_fft1D_512_Pipeline_loop1_fu_96_work_y_1_ce1;
    end else begin
        work_y_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_1_we0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_we0;
    end else begin
        work_y_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        work_y_1_we1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_we1;
    end else begin
        work_y_1_we1 = 1'b0;
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
            if (((grp_fft1D_512_Pipeline_loop1_fu_96_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_fft1D_512_Pipeline_loop2_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_fft1D_512_Pipeline_loop3_fu_139_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_fft1D_512_Pipeline_loop4_fu_150_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_fft1D_512_Pipeline_loop5_fu_161_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_fft1D_512_Pipeline_loop6_fu_172_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_fft1D_512_Pipeline_loop7_fu_192_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_fft1D_512_Pipeline_loop8_fu_203_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_fft1D_512_Pipeline_loop9_fu_214_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            if (((1'b1 == ap_CS_fsm_state20) & (grp_fft1D_512_Pipeline_loop10_fu_225_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            if (((1'b1 == ap_CS_fsm_state22) & (grp_fft1D_512_Pipeline_loop11_fu_236_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
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
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign grp_fft1D_512_Pipeline_loop10_fu_225_ap_start = grp_fft1D_512_Pipeline_loop10_fu_225_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop11_fu_236_ap_start = grp_fft1D_512_Pipeline_loop11_fu_236_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop1_fu_96_ap_start = grp_fft1D_512_Pipeline_loop1_fu_96_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop2_fu_128_ap_start = grp_fft1D_512_Pipeline_loop2_fu_128_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop3_fu_139_ap_start = grp_fft1D_512_Pipeline_loop3_fu_139_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop4_fu_150_ap_start = grp_fft1D_512_Pipeline_loop4_fu_150_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop5_fu_161_ap_start = grp_fft1D_512_Pipeline_loop5_fu_161_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop6_fu_172_ap_start = grp_fft1D_512_Pipeline_loop6_fu_172_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop7_fu_192_ap_start = grp_fft1D_512_Pipeline_loop7_fu_192_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop8_fu_203_ap_start = grp_fft1D_512_Pipeline_loop8_fu_203_ap_start_reg;
assign grp_fft1D_512_Pipeline_loop9_fu_214_ap_start = grp_fft1D_512_Pipeline_loop9_fu_214_ap_start_reg;
assign work_x_0_d0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_d0;
assign work_x_0_d1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_0_d1;
assign work_x_1_d0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_d0;
assign work_x_1_d1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_x_1_d1;
assign work_y_0_d0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_d0;
assign work_y_0_d1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_0_d1;
assign work_y_1_d0 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_d0;
assign work_y_1_d1 = grp_fft1D_512_Pipeline_loop11_fu_236_work_y_1_d1;
endmodule 