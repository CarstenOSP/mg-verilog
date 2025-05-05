module fft1D_512_fft1D_512_Pipeline_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,work_x_0_address0,work_x_0_ce0,work_x_0_q0,work_x_0_address1,work_x_0_ce1,work_x_0_q1,work_y_0_address0,work_y_0_ce0,work_y_0_q0,work_y_0_address1,work_y_0_ce1,work_y_0_q1,work_x_1_address0,work_x_1_ce0,work_x_1_q0,work_x_1_address1,work_x_1_ce1,work_x_1_q1,work_y_1_address0,work_y_1_ce0,work_y_1_q0,work_y_1_address1,work_y_1_ce1,work_y_1_q1,grp_fu_252_p_din0,grp_fu_252_p_din1,grp_fu_252_p_opcode,grp_fu_252_p_dout0,grp_fu_252_p_ce,grp_fu_256_p_din0,grp_fu_256_p_din1,grp_fu_256_p_opcode,grp_fu_256_p_dout0,grp_fu_256_p_ce,grp_fu_260_p_din0,grp_fu_260_p_din1,grp_fu_260_p_opcode,grp_fu_260_p_dout0,grp_fu_260_p_ce,grp_fu_264_p_din0,grp_fu_264_p_din1,grp_fu_264_p_opcode,grp_fu_264_p_dout0,grp_fu_264_p_ce,grp_fu_268_p_din0,grp_fu_268_p_din1,grp_fu_268_p_opcode,grp_fu_268_p_dout0,grp_fu_268_p_ce,grp_fu_272_p_din0,grp_fu_272_p_din1,grp_fu_272_p_opcode,grp_fu_272_p_dout0,grp_fu_272_p_ce,grp_fu_276_p_din0,grp_fu_276_p_din1,grp_fu_276_p_opcode,grp_fu_276_p_dout0,grp_fu_276_p_ce,grp_fu_280_p_din0,grp_fu_280_p_din1,grp_fu_280_p_opcode,grp_fu_280_p_dout0,grp_fu_280_p_ce,grp_fu_284_p_din0,grp_fu_284_p_din1,grp_fu_284_p_opcode,grp_fu_284_p_dout0,grp_fu_284_p_ce,grp_fu_288_p_din0,grp_fu_288_p_din1,grp_fu_288_p_opcode,grp_fu_288_p_dout0,grp_fu_288_p_ce,grp_fu_292_p_din0,grp_fu_292_p_din1,grp_fu_292_p_opcode,grp_fu_292_p_dout0,grp_fu_292_p_ce,grp_fu_296_p_din0,grp_fu_296_p_din1,grp_fu_296_p_opcode,grp_fu_296_p_dout0,grp_fu_296_p_ce,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_304_p_din0,grp_fu_304_p_din1,grp_fu_304_p_opcode,grp_fu_304_p_dout0,grp_fu_304_p_ce,grp_fu_308_p_din0,grp_fu_308_p_din1,grp_fu_308_p_opcode,grp_fu_308_p_dout0,grp_fu_308_p_ce,grp_fu_312_p_din0,grp_fu_312_p_din1,grp_fu_312_p_opcode,grp_fu_312_p_dout0,grp_fu_312_p_ce,grp_fu_316_p_din0,grp_fu_316_p_din1,grp_fu_316_p_opcode,grp_fu_316_p_dout0,grp_fu_316_p_ce,grp_fu_320_p_din0,grp_fu_320_p_din1,grp_fu_320_p_opcode,grp_fu_320_p_dout0,grp_fu_320_p_ce,grp_fu_324_p_din0,grp_fu_324_p_din1,grp_fu_324_p_opcode,grp_fu_324_p_dout0,grp_fu_324_p_ce,grp_fu_328_p_din0,grp_fu_328_p_din1,grp_fu_328_p_opcode,grp_fu_328_p_dout0,grp_fu_328_p_ce,grp_fu_332_p_din0,grp_fu_332_p_din1,grp_fu_332_p_opcode,grp_fu_332_p_dout0,grp_fu_332_p_ce,grp_fu_336_p_din0,grp_fu_336_p_din1,grp_fu_336_p_opcode,grp_fu_336_p_dout0,grp_fu_336_p_ce,grp_fu_340_p_din0,grp_fu_340_p_din1,grp_fu_340_p_opcode,grp_fu_340_p_dout0,grp_fu_340_p_ce,grp_fu_344_p_din0,grp_fu_344_p_din1,grp_fu_344_p_opcode,grp_fu_344_p_dout0,grp_fu_344_p_ce,grp_fu_348_p_din0,grp_fu_348_p_din1,grp_fu_348_p_opcode,grp_fu_348_p_dout0,grp_fu_348_p_ce,grp_fu_352_p_din0,grp_fu_352_p_din1,grp_fu_352_p_opcode,grp_fu_352_p_dout0,grp_fu_352_p_ce,grp_fu_356_p_din0,grp_fu_356_p_din1,grp_fu_356_p_opcode,grp_fu_356_p_dout0,grp_fu_356_p_ce,grp_fu_360_p_din0,grp_fu_360_p_din1,grp_fu_360_p_opcode,grp_fu_360_p_dout0,grp_fu_360_p_ce,grp_fu_364_p_din0,grp_fu_364_p_din1,grp_fu_364_p_opcode,grp_fu_364_p_dout0,grp_fu_364_p_ce,grp_fu_368_p_din0,grp_fu_368_p_din1,grp_fu_368_p_dout0,grp_fu_368_p_ce,grp_fu_372_p_din0,grp_fu_372_p_din1,grp_fu_372_p_dout0,grp_fu_372_p_ce,grp_fu_376_p_din0,grp_fu_376_p_din1,grp_fu_376_p_dout0,grp_fu_376_p_ce,grp_fu_380_p_din0,grp_fu_380_p_din1,grp_fu_380_p_dout0,grp_fu_380_p_ce,grp_fu_384_p_din0,grp_fu_384_p_din1,grp_fu_384_p_dout0,grp_fu_384_p_ce,grp_twiddles8_fu_388_p_din1,grp_twiddles8_fu_388_p_din2,grp_twiddles8_fu_388_p_din3,grp_twiddles8_fu_388_p_din4,grp_twiddles8_fu_388_p_din5,grp_twiddles8_fu_388_p_din6,grp_twiddles8_fu_388_p_din7,grp_twiddles8_fu_388_p_din8,grp_twiddles8_fu_388_p_din9,grp_twiddles8_fu_388_p_din10,grp_twiddles8_fu_388_p_din11,grp_twiddles8_fu_388_p_din12,grp_twiddles8_fu_388_p_din13,grp_twiddles8_fu_388_p_din14,grp_twiddles8_fu_388_p_din15,grp_twiddles8_fu_388_p_din16,grp_twiddles8_fu_388_p_dout0_0,grp_twiddles8_fu_388_p_dout0_1,grp_twiddles8_fu_388_p_dout0_2,grp_twiddles8_fu_388_p_dout0_3,grp_twiddles8_fu_388_p_dout0_4,grp_twiddles8_fu_388_p_dout0_5,grp_twiddles8_fu_388_p_dout0_6,grp_twiddles8_fu_388_p_dout0_7,grp_twiddles8_fu_388_p_dout0_8,grp_twiddles8_fu_388_p_dout0_9,grp_twiddles8_fu_388_p_dout0_10,grp_twiddles8_fu_388_p_dout0_11,grp_twiddles8_fu_388_p_dout0_12,grp_twiddles8_fu_388_p_dout0_13,grp_twiddles8_fu_388_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [7:0] work_x_0_address0;
output   work_x_0_ce0;
input  [63:0] work_x_0_q0;
output  [7:0] work_x_0_address1;
output   work_x_0_ce1;
input  [63:0] work_x_0_q1;
output  [7:0] work_y_0_address0;
output   work_y_0_ce0;
input  [63:0] work_y_0_q0;
output  [7:0] work_y_0_address1;
output   work_y_0_ce1;
input  [63:0] work_y_0_q1;
output  [7:0] work_x_1_address0;
output   work_x_1_ce0;
input  [63:0] work_x_1_q0;
output  [7:0] work_x_1_address1;
output   work_x_1_ce1;
input  [63:0] work_x_1_q1;
output  [7:0] work_y_1_address0;
output   work_y_1_ce0;
input  [63:0] work_y_1_q0;
output  [7:0] work_y_1_address1;
output   work_y_1_ce1;
input  [63:0] work_y_1_q1;
output  [63:0] grp_fu_252_p_din0;
output  [63:0] grp_fu_252_p_din1;
output  [0:0] grp_fu_252_p_opcode;
input  [63:0] grp_fu_252_p_dout0;
output   grp_fu_252_p_ce;
output  [63:0] grp_fu_256_p_din0;
output  [63:0] grp_fu_256_p_din1;
output  [0:0] grp_fu_256_p_opcode;
input  [63:0] grp_fu_256_p_dout0;
output   grp_fu_256_p_ce;
output  [63:0] grp_fu_260_p_din0;
output  [63:0] grp_fu_260_p_din1;
output  [1:0] grp_fu_260_p_opcode;
input  [63:0] grp_fu_260_p_dout0;
output   grp_fu_260_p_ce;
output  [63:0] grp_fu_264_p_din0;
output  [63:0] grp_fu_264_p_din1;
output  [1:0] grp_fu_264_p_opcode;
input  [63:0] grp_fu_264_p_dout0;
output   grp_fu_264_p_ce;
output  [63:0] grp_fu_268_p_din0;
output  [63:0] grp_fu_268_p_din1;
output  [0:0] grp_fu_268_p_opcode;
input  [63:0] grp_fu_268_p_dout0;
output   grp_fu_268_p_ce;
output  [63:0] grp_fu_272_p_din0;
output  [63:0] grp_fu_272_p_din1;
output  [0:0] grp_fu_272_p_opcode;
input  [63:0] grp_fu_272_p_dout0;
output   grp_fu_272_p_ce;
output  [63:0] grp_fu_276_p_din0;
output  [63:0] grp_fu_276_p_din1;
output  [0:0] grp_fu_276_p_opcode;
input  [63:0] grp_fu_276_p_dout0;
output   grp_fu_276_p_ce;
output  [63:0] grp_fu_280_p_din0;
output  [63:0] grp_fu_280_p_din1;
output  [0:0] grp_fu_280_p_opcode;
input  [63:0] grp_fu_280_p_dout0;
output   grp_fu_280_p_ce;
output  [63:0] grp_fu_284_p_din0;
output  [63:0] grp_fu_284_p_din1;
output  [1:0] grp_fu_284_p_opcode;
input  [63:0] grp_fu_284_p_dout0;
output   grp_fu_284_p_ce;
output  [63:0] grp_fu_288_p_din0;
output  [63:0] grp_fu_288_p_din1;
output  [0:0] grp_fu_288_p_opcode;
input  [63:0] grp_fu_288_p_dout0;
output   grp_fu_288_p_ce;
output  [63:0] grp_fu_292_p_din0;
output  [63:0] grp_fu_292_p_din1;
output  [1:0] grp_fu_292_p_opcode;
input  [63:0] grp_fu_292_p_dout0;
output   grp_fu_292_p_ce;
output  [63:0] grp_fu_296_p_din0;
output  [63:0] grp_fu_296_p_din1;
output  [1:0] grp_fu_296_p_opcode;
input  [63:0] grp_fu_296_p_dout0;
output   grp_fu_296_p_ce;
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [1:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_304_p_din0;
output  [63:0] grp_fu_304_p_din1;
output  [0:0] grp_fu_304_p_opcode;
input  [63:0] grp_fu_304_p_dout0;
output   grp_fu_304_p_ce;
output  [63:0] grp_fu_308_p_din0;
output  [63:0] grp_fu_308_p_din1;
output  [1:0] grp_fu_308_p_opcode;
input  [63:0] grp_fu_308_p_dout0;
output   grp_fu_308_p_ce;
output  [63:0] grp_fu_312_p_din0;
output  [63:0] grp_fu_312_p_din1;
output  [1:0] grp_fu_312_p_opcode;
input  [63:0] grp_fu_312_p_dout0;
output   grp_fu_312_p_ce;
output  [63:0] grp_fu_316_p_din0;
output  [63:0] grp_fu_316_p_din1;
output  [0:0] grp_fu_316_p_opcode;
input  [63:0] grp_fu_316_p_dout0;
output   grp_fu_316_p_ce;
output  [63:0] grp_fu_320_p_din0;
output  [63:0] grp_fu_320_p_din1;
output  [1:0] grp_fu_320_p_opcode;
input  [63:0] grp_fu_320_p_dout0;
output   grp_fu_320_p_ce;
output  [63:0] grp_fu_324_p_din0;
output  [63:0] grp_fu_324_p_din1;
output  [1:0] grp_fu_324_p_opcode;
input  [63:0] grp_fu_324_p_dout0;
output   grp_fu_324_p_ce;
output  [63:0] grp_fu_328_p_din0;
output  [63:0] grp_fu_328_p_din1;
output  [1:0] grp_fu_328_p_opcode;
input  [63:0] grp_fu_328_p_dout0;
output   grp_fu_328_p_ce;
output  [63:0] grp_fu_332_p_din0;
output  [63:0] grp_fu_332_p_din1;
output  [0:0] grp_fu_332_p_opcode;
input  [63:0] grp_fu_332_p_dout0;
output   grp_fu_332_p_ce;
output  [63:0] grp_fu_336_p_din0;
output  [63:0] grp_fu_336_p_din1;
output  [1:0] grp_fu_336_p_opcode;
input  [63:0] grp_fu_336_p_dout0;
output   grp_fu_336_p_ce;
output  [63:0] grp_fu_340_p_din0;
output  [63:0] grp_fu_340_p_din1;
output  [1:0] grp_fu_340_p_opcode;
input  [63:0] grp_fu_340_p_dout0;
output   grp_fu_340_p_ce;
output  [63:0] grp_fu_344_p_din0;
output  [63:0] grp_fu_344_p_din1;
output  [1:0] grp_fu_344_p_opcode;
input  [63:0] grp_fu_344_p_dout0;
output   grp_fu_344_p_ce;
output  [63:0] grp_fu_348_p_din0;
output  [63:0] grp_fu_348_p_din1;
output  [1:0] grp_fu_348_p_opcode;
input  [63:0] grp_fu_348_p_dout0;
output   grp_fu_348_p_ce;
output  [63:0] grp_fu_352_p_din0;
output  [63:0] grp_fu_352_p_din1;
output  [1:0] grp_fu_352_p_opcode;
input  [63:0] grp_fu_352_p_dout0;
output   grp_fu_352_p_ce;
output  [63:0] grp_fu_356_p_din0;
output  [63:0] grp_fu_356_p_din1;
output  [1:0] grp_fu_356_p_opcode;
input  [63:0] grp_fu_356_p_dout0;
output   grp_fu_356_p_ce;
output  [63:0] grp_fu_360_p_din0;
output  [63:0] grp_fu_360_p_din1;
output  [1:0] grp_fu_360_p_opcode;
input  [63:0] grp_fu_360_p_dout0;
output   grp_fu_360_p_ce;
output  [63:0] grp_fu_364_p_din0;
output  [63:0] grp_fu_364_p_din1;
output  [0:0] grp_fu_364_p_opcode;
input  [63:0] grp_fu_364_p_dout0;
output   grp_fu_364_p_ce;
output  [63:0] grp_fu_368_p_din0;
output  [63:0] grp_fu_368_p_din1;
input  [63:0] grp_fu_368_p_dout0;
output   grp_fu_368_p_ce;
output  [63:0] grp_fu_372_p_din0;
output  [63:0] grp_fu_372_p_din1;
input  [63:0] grp_fu_372_p_dout0;
output   grp_fu_372_p_ce;
output  [63:0] grp_fu_376_p_din0;
output  [63:0] grp_fu_376_p_din1;
input  [63:0] grp_fu_376_p_dout0;
output   grp_fu_376_p_ce;
output  [63:0] grp_fu_380_p_din0;
output  [63:0] grp_fu_380_p_din1;
input  [63:0] grp_fu_380_p_dout0;
output   grp_fu_380_p_ce;
output  [63:0] grp_fu_384_p_din0;
output  [63:0] grp_fu_384_p_din1;
input  [63:0] grp_fu_384_p_dout0;
output   grp_fu_384_p_ce;
output  [63:0] grp_twiddles8_fu_388_p_din1;
output  [63:0] grp_twiddles8_fu_388_p_din2;
output  [63:0] grp_twiddles8_fu_388_p_din3;
output  [63:0] grp_twiddles8_fu_388_p_din4;
output  [63:0] grp_twiddles8_fu_388_p_din5;
output  [63:0] grp_twiddles8_fu_388_p_din6;
output  [63:0] grp_twiddles8_fu_388_p_din7;
output  [63:0] grp_twiddles8_fu_388_p_din8;
output  [63:0] grp_twiddles8_fu_388_p_din9;
output  [63:0] grp_twiddles8_fu_388_p_din10;
output  [63:0] grp_twiddles8_fu_388_p_din11;
output  [63:0] grp_twiddles8_fu_388_p_din12;
output  [63:0] grp_twiddles8_fu_388_p_din13;
output  [63:0] grp_twiddles8_fu_388_p_din14;
output  [5:0] grp_twiddles8_fu_388_p_din15;
output  [9:0] grp_twiddles8_fu_388_p_din16;
input  [63:0] grp_twiddles8_fu_388_p_dout0_0;
input  [63:0] grp_twiddles8_fu_388_p_dout0_1;
input  [63:0] grp_twiddles8_fu_388_p_dout0_2;
input  [63:0] grp_twiddles8_fu_388_p_dout0_3;
input  [63:0] grp_twiddles8_fu_388_p_dout0_4;
input  [63:0] grp_twiddles8_fu_388_p_dout0_5;
input  [63:0] grp_twiddles8_fu_388_p_dout0_6;
input  [63:0] grp_twiddles8_fu_388_p_dout0_7;
input  [63:0] grp_twiddles8_fu_388_p_dout0_8;
input  [63:0] grp_twiddles8_fu_388_p_dout0_9;
input  [63:0] grp_twiddles8_fu_388_p_dout0_10;
input  [63:0] grp_twiddles8_fu_388_p_dout0_11;
input  [63:0] grp_twiddles8_fu_388_p_dout0_12;
input  [63:0] grp_twiddles8_fu_388_p_dout0_13;
output   grp_twiddles8_fu_388_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_enable_reg_pp0_iter27;
reg    ap_enable_reg_pp0_iter28;
reg    ap_enable_reg_pp0_iter29;
reg    ap_enable_reg_pp0_iter30;
reg    ap_enable_reg_pp0_iter31;
reg    ap_enable_reg_pp0_iter32;
reg    ap_enable_reg_pp0_iter33;
reg    ap_enable_reg_pp0_iter34;
reg    ap_enable_reg_pp0_iter35;
reg    ap_enable_reg_pp0_iter36;
reg    ap_enable_reg_pp0_iter37;
reg    ap_enable_reg_pp0_iter38;
reg    ap_enable_reg_pp0_iter39;
reg    ap_enable_reg_pp0_iter40;
reg    ap_enable_reg_pp0_iter41;
reg    ap_enable_reg_pp0_iter42;
reg    ap_enable_reg_pp0_iter43;
reg    ap_enable_reg_pp0_iter44;
reg    ap_enable_reg_pp0_iter45;
reg    ap_enable_reg_pp0_iter46;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_128_reg_2171;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_935;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_939;
reg   [63:0] reg_943;
reg   [63:0] reg_947;
reg   [63:0] reg_951;
reg   [63:0] reg_955;
reg   [63:0] reg_959;
reg   [63:0] reg_963;
reg   [63:0] reg_967;
reg   [63:0] reg_972;
reg   [63:0] reg_978;
reg   [63:0] reg_983;
reg   [63:0] reg_989;
reg   [63:0] reg_994;
reg   [63:0] reg_1000;
reg   [63:0] reg_1005;
reg   [6:0] tid_7_reg_2164;
wire   [4:0] part_sel1_fu_1027_p4;
reg   [4:0] part_sel1_reg_2175;
reg   [4:0] part_sel1_reg_2175_pp0_iter1_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter2_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter3_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter4_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter5_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter6_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter7_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter8_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter9_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter10_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter11_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter12_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter13_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter14_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter15_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter16_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter17_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter18_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter19_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter20_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter21_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter22_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter23_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter24_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter25_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter26_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter27_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter28_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter29_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter30_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter31_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter32_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter33_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter34_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter35_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter36_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter37_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter38_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter39_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter40_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter41_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter42_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter43_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter44_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter45_reg;
reg   [4:0] part_sel1_reg_2175_pp0_iter46_reg;
wire  signed [5:0] zext_ln130_cast_fu_1037_p3;
reg  signed [5:0] zext_ln130_cast_reg_2184;
wire   [5:0] lshr_ln_fu_1065_p4;
reg   [5:0] lshr_ln_reg_2229;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] work_x_0_load_5_reg_2281;
reg   [63:0] work_x_0_load_7_reg_2291;
reg   [63:0] work_y_0_load_5_reg_2301;
reg   [63:0] work_y_0_load_7_reg_2311;
reg   [63:0] work_x_1_load_5_reg_2321;
reg   [63:0] work_x_1_load_7_reg_2331;
reg   [63:0] work_y_1_load_5_reg_2341;
reg   [63:0] work_y_1_load_7_reg_2351;
wire   [63:0] c0_x_66_fu_1140_p1;
wire   [63:0] c0_x_68_fu_1146_p1;
wire   [63:0] bitcast_ln134_fu_1168_p1;
wire   [63:0] bitcast_ln136_fu_1173_p1;
wire   [63:0] c0_y_68_fu_1178_p1;
wire   [63:0] c0_y_70_fu_1184_p1;
wire   [63:0] bitcast_ln143_fu_1190_p1;
wire   [63:0] bitcast_ln145_fu_1195_p1;
wire   [5:0] trunc_ln151_fu_1200_p1;
reg   [5:0] trunc_ln151_reg_2424;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter1_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter2_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter3_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter4_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter5_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter6_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter7_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter8_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter9_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter10_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter11_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter12_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter13_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter14_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter15_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter16_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter17_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter18_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter19_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter20_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter21_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter22_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter23_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter24_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter25_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter26_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter27_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter28_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter29_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter30_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter31_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter32_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter33_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter34_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter35_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter36_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter37_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter38_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter39_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter40_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter41_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter42_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter43_reg;
reg   [5:0] trunc_ln151_reg_2424_pp0_iter44_reg;
wire   [63:0] c0_x_70_fu_1203_p1;
wire   [63:0] c0_x_72_fu_1209_p1;
wire   [63:0] bitcast_ln134_1_fu_1215_p1;
wire   [63:0] bitcast_ln136_1_fu_1220_p1;
wire   [63:0] c0_y_72_fu_1225_p1;
wire   [63:0] c0_y_74_fu_1231_p1;
wire   [63:0] bitcast_ln143_1_fu_1237_p1;
wire   [63:0] bitcast_ln145_1_fu_1242_p1;
wire   [63:0] c0_x_67_fu_1257_p1;
wire   [63:0] bitcast_ln135_fu_1263_p1;
wire   [63:0] c0_y_69_fu_1269_p1;
wire   [63:0] bitcast_ln144_fu_1275_p1;
wire   [63:0] c0_x_71_fu_1281_p1;
wire   [63:0] bitcast_ln135_1_fu_1287_p1;
wire   [63:0] c0_y_73_fu_1293_p1;
wire   [63:0] bitcast_ln144_1_fu_1299_p1;
wire   [63:0] c0_x_fu_1305_p1;
wire   [63:0] bitcast_ln133_fu_1311_p1;
wire   [63:0] c0_y_fu_1317_p1;
wire   [63:0] bitcast_ln142_fu_1323_p1;
wire   [63:0] c0_x_69_fu_1329_p1;
wire   [63:0] bitcast_ln133_1_fu_1335_p1;
wire   [63:0] c0_y_71_fu_1341_p1;
wire   [63:0] bitcast_ln142_1_fu_1347_p1;
reg   [63:0] c0_x_5_reg_2597;
reg   [63:0] c0_y_5_reg_2603;
reg   [63:0] tmp_1_reg_2609;
reg   [63:0] sub3_reg_2615;
reg   [63:0] add6_reg_2621;
reg   [63:0] add7_reg_2627;
reg   [63:0] tmp_1_2_reg_2633;
reg   [63:0] sub7_reg_2638;
reg   [63:0] c0_x_15_reg_2643;
reg   [63:0] c0_y_15_reg_2649;
reg   [63:0] tmp_1_3_reg_2655;
reg   [63:0] sub104_1_reg_2661;
reg   [63:0] add127_1_reg_2667;
reg   [63:0] add130_1_reg_2673;
reg   [63:0] tmp_1_5_reg_2679;
reg   [63:0] sub136_1_reg_2684;
reg   [63:0] add4_reg_2689;
reg   [63:0] add5_reg_2695;
reg   [63:0] tmp_1_1_reg_2701;
reg   [63:0] tmp_1_1_reg_2701_pp0_iter3_reg;
reg   [63:0] tmp_1_1_reg_2701_pp0_iter4_reg;
reg   [63:0] sub5_reg_2707;
reg   [63:0] sub5_reg_2707_pp0_iter3_reg;
reg   [63:0] sub5_reg_2707_pp0_iter4_reg;
wire   [63:0] bitcast_ln148_1_fu_1382_p1;
wire   [63:0] bitcast_ln148_3_fu_1416_p1;
wire   [63:0] bitcast_ln148_9_fu_1450_p1;
wire   [63:0] bitcast_ln148_11_fu_1485_p1;
reg   [63:0] add111_1_reg_2735;
reg   [63:0] add114_1_reg_2741;
reg   [63:0] tmp_1_4_reg_2747;
reg   [63:0] tmp_1_4_reg_2747_pp0_iter3_reg;
reg   [63:0] tmp_1_4_reg_2747_pp0_iter4_reg;
reg   [63:0] sub120_1_reg_2753;
reg   [63:0] sub120_1_reg_2753_pp0_iter3_reg;
reg   [63:0] sub120_1_reg_2753_pp0_iter4_reg;
wire   [63:0] bitcast_ln148_21_fu_1520_p1;
wire   [63:0] bitcast_ln148_23_fu_1554_p1;
wire   [63:0] bitcast_ln148_29_fu_1588_p1;
wire   [63:0] bitcast_ln148_31_fu_1623_p1;
reg   [63:0] c0_x_4_reg_2781;
reg   [63:0] c0_y_4_reg_2787;
reg   [63:0] c0_x_8_reg_2793;
reg   [63:0] c0_x_8_reg_2793_pp0_iter4_reg;
reg   [63:0] c0_x_8_reg_2793_pp0_iter5_reg;
reg   [63:0] c0_x_8_reg_2793_pp0_iter6_reg;
reg   [63:0] c0_y_8_reg_2799;
reg   [63:0] c0_y_8_reg_2799_pp0_iter4_reg;
reg   [63:0] c0_y_8_reg_2799_pp0_iter5_reg;
reg   [63:0] c0_y_8_reg_2799_pp0_iter6_reg;
reg   [63:0] c0_x_21_reg_2805;
reg   [63:0] c0_y_21_reg_2811;
reg   [63:0] c0_x_13_reg_2817;
reg   [63:0] c0_x_13_reg_2817_pp0_iter4_reg;
reg   [63:0] c0_x_13_reg_2817_pp0_iter5_reg;
reg   [63:0] c0_x_13_reg_2817_pp0_iter6_reg;
reg   [63:0] c0_y_13_reg_2823;
reg   [63:0] c0_y_13_reg_2823_pp0_iter4_reg;
reg   [63:0] c0_y_13_reg_2823_pp0_iter5_reg;
reg   [63:0] c0_y_13_reg_2823_pp0_iter6_reg;
reg   [63:0] sub8_reg_2829;
reg   [63:0] add8_reg_2834;
reg   [63:0] mul6_reg_2839;
reg   [63:0] mul9_reg_2844;
reg   [63:0] sub1_reg_2849;
reg   [63:0] add1_reg_2854;
reg   [63:0] tmp_reg_2859;
reg   [63:0] tmp_reg_2859_pp0_iter5_reg;
reg   [63:0] tmp_reg_2859_pp0_iter6_reg;
reg   [63:0] sub2_reg_2865;
reg   [63:0] sub2_reg_2865_pp0_iter5_reg;
reg   [63:0] sub2_reg_2865_pp0_iter6_reg;
reg   [63:0] sub143_1_reg_2871;
reg   [63:0] add149_1_reg_2876;
reg   [63:0] sub169_1_reg_2881;
reg   [63:0] add175_1_reg_2886;
reg   [63:0] tmp_3_reg_2891;
reg   [63:0] tmp_3_reg_2891_pp0_iter5_reg;
reg   [63:0] tmp_3_reg_2891_pp0_iter6_reg;
reg   [63:0] sub208_1_reg_2897;
reg   [63:0] sub208_1_reg_2897_pp0_iter5_reg;
reg   [63:0] sub208_1_reg_2897_pp0_iter6_reg;
reg   [63:0] add2_reg_2903;
reg   [63:0] add3_reg_2909;
reg   [63:0] mul154_1_reg_2915;
reg   [63:0] mul161_1_reg_2920;
reg   [63:0] add199_1_reg_2925;
reg   [63:0] add202_1_reg_2931;
wire   [63:0] bitcast_ln148_5_fu_1658_p1;
wire   [63:0] bitcast_ln148_7_fu_1692_p1;
reg   [63:0] c0_x_6_reg_2947;
reg   [63:0] c0_y_6_reg_2953;
reg   [63:0] c0_x_7_reg_2959;
reg   [63:0] c0_x_7_reg_2959_pp0_iter6_reg;
reg   [63:0] c0_x_7_reg_2959_pp0_iter7_reg;
reg   [63:0] c0_x_7_reg_2959_pp0_iter8_reg;
reg   [63:0] c0_x_7_reg_2959_pp0_iter9_reg;
reg   [63:0] c0_y_7_reg_2965;
reg   [63:0] c0_y_7_reg_2965_pp0_iter6_reg;
reg   [63:0] c0_y_7_reg_2965_pp0_iter7_reg;
reg   [63:0] c0_y_7_reg_2965_pp0_iter8_reg;
reg   [63:0] c0_y_7_reg_2965_pp0_iter9_reg;
wire   [63:0] bitcast_ln148_25_fu_1726_p1;
wire   [63:0] bitcast_ln148_27_fu_1760_p1;
reg   [63:0] c0_x_18_reg_2981;
reg   [63:0] c0_y_18_reg_2987;
reg   [63:0] c0_x_19_reg_2993;
reg   [63:0] c0_x_19_reg_2993_pp0_iter6_reg;
reg   [63:0] c0_x_19_reg_2993_pp0_iter7_reg;
reg   [63:0] c0_x_19_reg_2993_pp0_iter8_reg;
reg   [63:0] c0_x_19_reg_2993_pp0_iter9_reg;
reg   [63:0] c0_y_19_reg_2999;
reg   [63:0] c0_y_19_reg_2999_pp0_iter6_reg;
reg   [63:0] c0_y_19_reg_2999_pp0_iter7_reg;
reg   [63:0] c0_y_19_reg_2999_pp0_iter8_reg;
reg   [63:0] c0_y_19_reg_2999_pp0_iter9_reg;
reg   [63:0] c0_x_9_reg_3005;
reg   [63:0] c0_y_9_reg_3011;
reg   [63:0] mul3_reg_3017;
reg   [63:0] mul5_reg_3023;
reg   [63:0] c0_x_20_reg_3029;
reg   [63:0] c0_y_20_reg_3035;
reg   [63:0] mul170_1_reg_3041;
reg   [63:0] mul176_1_reg_3047;
reg   [63:0] sub9_reg_3053;
reg   [63:0] add9_reg_3059;
reg   [63:0] mul_reg_3065;
reg   [63:0] mul1_reg_3070;
reg   [63:0] sub157_1_reg_3075;
reg   [63:0] add162_1_reg_3081;
reg   [63:0] mul212_1_reg_3087;
wire   [63:0] bitcast_ln148_13_fu_1794_p1;
wire   [63:0] bitcast_ln148_15_fu_1828_p1;
reg   [63:0] data_x_1_reg_3102;
reg   [63:0] data_x_1_reg_3102_pp0_iter8_reg;
reg   [63:0] data_x_1_reg_3102_pp0_iter9_reg;
reg   [63:0] data_x_1_reg_3102_pp0_iter10_reg;
reg   [63:0] data_x_1_reg_3102_pp0_iter11_reg;
reg   [63:0] data_x_1_reg_3102_pp0_iter12_reg;
reg   [63:0] data_x_1_reg_3102_pp0_iter13_reg;
reg   [63:0] data_x_1_reg_3102_pp0_iter14_reg;
reg   [63:0] data_y_1_reg_3107;
reg   [63:0] data_y_1_reg_3107_pp0_iter8_reg;
reg   [63:0] data_y_1_reg_3107_pp0_iter9_reg;
reg   [63:0] data_y_1_reg_3107_pp0_iter10_reg;
reg   [63:0] data_y_1_reg_3107_pp0_iter11_reg;
reg   [63:0] data_y_1_reg_3107_pp0_iter12_reg;
reg   [63:0] data_y_1_reg_3107_pp0_iter13_reg;
reg   [63:0] data_y_1_reg_3107_pp0_iter14_reg;
wire   [63:0] bitcast_ln148_33_fu_1862_p1;
reg   [63:0] mul219_1_reg_3117;
reg   [63:0] data_x_1_2_reg_3122;
reg   [63:0] data_x_1_2_reg_3122_pp0_iter8_reg;
reg   [63:0] data_x_1_2_reg_3122_pp0_iter9_reg;
reg   [63:0] data_x_1_2_reg_3122_pp0_iter10_reg;
reg   [63:0] data_x_1_2_reg_3122_pp0_iter11_reg;
reg   [63:0] data_x_1_2_reg_3122_pp0_iter12_reg;
reg   [63:0] data_x_1_2_reg_3122_pp0_iter13_reg;
reg   [63:0] data_x_1_2_reg_3122_pp0_iter14_reg;
reg   [63:0] data_x_1_2_reg_3122_pp0_iter15_reg;
reg   [63:0] data_y_1_2_reg_3127;
reg   [63:0] data_y_1_2_reg_3127_pp0_iter8_reg;
reg   [63:0] data_y_1_2_reg_3127_pp0_iter9_reg;
reg   [63:0] data_y_1_2_reg_3127_pp0_iter10_reg;
reg   [63:0] data_y_1_2_reg_3127_pp0_iter11_reg;
reg   [63:0] data_y_1_2_reg_3127_pp0_iter12_reg;
reg   [63:0] data_y_1_2_reg_3127_pp0_iter13_reg;
reg   [63:0] data_y_1_2_reg_3127_pp0_iter14_reg;
reg   [63:0] data_y_1_2_reg_3127_pp0_iter15_reg;
reg   [63:0] data_x_0_reg_3132;
reg   [63:0] data_y_0_reg_3137;
wire   [63:0] bitcast_ln148_35_fu_1896_p1;
reg   [63:0] data_x_0_1_reg_3147;
reg   [63:0] data_y_0_1_reg_3152;
wire   [63:0] zext_ln154_fu_1908_p1;
reg   [63:0] zext_ln154_reg_3157;
reg   [63:0] zext_ln154_reg_3157_pp0_iter8_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter9_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter10_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter11_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter12_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter13_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter14_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter15_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter16_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter17_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter18_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter19_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter20_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter21_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter22_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter23_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter24_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter25_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter26_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter27_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter28_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter29_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter30_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter31_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter32_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter33_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter34_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter35_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter36_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter37_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter38_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter39_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter40_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter41_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter42_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter43_reg;
reg   [63:0] zext_ln154_reg_3157_pp0_iter44_reg;
wire   [63:0] zext_ln154_1_fu_1921_p1;
reg   [63:0] zext_ln154_1_reg_3163;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter8_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter9_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter10_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter11_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter12_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter13_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter14_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter15_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter16_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter17_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter18_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter19_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter20_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter21_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter22_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter23_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter24_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter25_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter26_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter27_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter28_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter29_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter30_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter31_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter32_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter33_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter34_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter35_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter36_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter37_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter38_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter39_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter40_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter41_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter42_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter43_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter44_reg;
reg   [63:0] zext_ln154_1_reg_3163_pp0_iter45_reg;
reg   [63:0] add_reg_3169;
reg   [63:0] add_reg_3169_pp0_iter9_reg;
reg   [63:0] add10_reg_3175;
reg   [63:0] add10_reg_3175_pp0_iter9_reg;
reg   [63:0] tmp_2_reg_3181;
reg   [63:0] tmp_2_reg_3181_pp0_iter9_reg;
reg   [63:0] sub10_reg_3187;
reg   [63:0] sub10_reg_3187_pp0_iter9_reg;
reg   [63:0] tmp_4_reg_3193;
reg   [63:0] tmp_4_reg_3193_pp0_iter9_reg;
reg   [63:0] tmp_4_reg_3193_pp0_iter10_reg;
reg   [63:0] sub4_reg_3199;
reg   [63:0] sub6_reg_3205;
reg   [63:0] c0_x_11_reg_3211;
reg   [63:0] c0_y_11_reg_3217;
reg   [63:0] c0_x_10_reg_3223;
reg   [63:0] c0_x_10_reg_3223_pp0_iter9_reg;
reg   [63:0] c0_x_10_reg_3223_pp0_iter10_reg;
reg   [63:0] c0_x_10_reg_3223_pp0_iter11_reg;
reg   [63:0] c0_y_10_reg_3229;
reg   [63:0] c0_y_10_reg_3229_pp0_iter9_reg;
reg   [63:0] c0_y_10_reg_3229_pp0_iter10_reg;
reg   [63:0] c0_y_10_reg_3229_pp0_iter11_reg;
reg   [63:0] sub215_1_reg_3235;
reg   [63:0] c0_x_23_reg_3241;
reg   [63:0] c0_y_23_reg_3247;
reg   [63:0] c0_x_22_reg_3253;
reg   [63:0] c0_x_22_reg_3253_pp0_iter9_reg;
reg   [63:0] c0_x_22_reg_3253_pp0_iter10_reg;
reg   [63:0] c0_x_22_reg_3253_pp0_iter11_reg;
reg   [63:0] c0_x_22_reg_3253_pp0_iter12_reg;
reg   [63:0] c0_y_22_reg_3259;
reg   [63:0] c0_y_22_reg_3259_pp0_iter9_reg;
reg   [63:0] c0_y_22_reg_3259_pp0_iter10_reg;
reg   [63:0] c0_y_22_reg_3259_pp0_iter11_reg;
reg   [63:0] c0_y_22_reg_3259_pp0_iter12_reg;
reg   [63:0] add278_1_reg_3265;
reg   [63:0] sub287_1_reg_3271;
reg   [63:0] sub287_1_reg_3271_pp0_iter9_reg;
reg   [63:0] sub287_1_reg_3271_pp0_iter10_reg;
reg   [63:0] sub220_1_reg_3277;
reg   [63:0] add281_1_reg_3283;
reg   [63:0] mul2_reg_3289;
reg   [63:0] mul4_reg_3294;
wire   [63:0] bitcast_ln148_17_fu_1956_p1;
wire   [63:0] bitcast_ln148_19_fu_1990_p1;
reg   [63:0] data_x_2_reg_3309;
reg   [63:0] data_x_2_reg_3309_pp0_iter12_reg;
reg   [63:0] data_x_2_reg_3309_pp0_iter13_reg;
reg   [63:0] data_x_2_reg_3309_pp0_iter14_reg;
reg   [63:0] data_y_2_reg_3314;
reg   [63:0] data_y_2_reg_3314_pp0_iter12_reg;
reg   [63:0] data_y_2_reg_3314_pp0_iter13_reg;
reg   [63:0] data_y_2_reg_3314_pp0_iter14_reg;
reg   [63:0] data_x_3_reg_3319;
reg   [63:0] data_x_3_reg_3319_pp0_iter12_reg;
reg   [63:0] data_x_3_reg_3319_pp0_iter13_reg;
reg   [63:0] data_x_3_reg_3319_pp0_iter14_reg;
reg   [63:0] mul291_1_reg_3324;
reg   [63:0] mul298_1_reg_3329;
reg   [63:0] data_y_3_reg_3334;
reg   [63:0] data_y_3_reg_3334_pp0_iter12_reg;
reg   [63:0] data_y_3_reg_3334_pp0_iter13_reg;
reg   [63:0] data_y_3_reg_3334_pp0_iter14_reg;
reg   [63:0] data_x_4_reg_3339;
reg   [63:0] data_x_4_reg_3339_pp0_iter12_reg;
reg   [63:0] data_x_4_reg_3339_pp0_iter13_reg;
reg   [63:0] data_x_4_reg_3339_pp0_iter14_reg;
reg   [63:0] data_y_4_reg_3344;
reg   [63:0] data_y_4_reg_3344_pp0_iter12_reg;
reg   [63:0] data_y_4_reg_3344_pp0_iter13_reg;
reg   [63:0] data_y_4_reg_3344_pp0_iter14_reg;
reg   [63:0] data_x_5_reg_3349;
reg   [63:0] data_x_5_reg_3349_pp0_iter12_reg;
reg   [63:0] data_x_5_reg_3349_pp0_iter13_reg;
reg   [63:0] data_x_5_reg_3349_pp0_iter14_reg;
reg   [63:0] data_y_5_reg_3354;
reg   [63:0] data_y_5_reg_3354_pp0_iter12_reg;
reg   [63:0] data_y_5_reg_3354_pp0_iter13_reg;
reg   [63:0] data_y_5_reg_3354_pp0_iter14_reg;
reg   [63:0] data_x_2_2_reg_3359;
reg   [63:0] data_x_2_2_reg_3359_pp0_iter12_reg;
reg   [63:0] data_x_2_2_reg_3359_pp0_iter13_reg;
reg   [63:0] data_x_2_2_reg_3359_pp0_iter14_reg;
reg   [63:0] data_x_2_2_reg_3359_pp0_iter15_reg;
reg   [63:0] data_y_2_2_reg_3364;
reg   [63:0] data_y_2_2_reg_3364_pp0_iter12_reg;
reg   [63:0] data_y_2_2_reg_3364_pp0_iter13_reg;
reg   [63:0] data_y_2_2_reg_3364_pp0_iter14_reg;
reg   [63:0] data_y_2_2_reg_3364_pp0_iter15_reg;
reg   [63:0] data_x_3_2_reg_3369;
reg   [63:0] data_x_3_2_reg_3369_pp0_iter12_reg;
reg   [63:0] data_x_3_2_reg_3369_pp0_iter13_reg;
reg   [63:0] data_x_3_2_reg_3369_pp0_iter14_reg;
reg   [63:0] data_x_3_2_reg_3369_pp0_iter15_reg;
reg   [63:0] data_y_3_2_reg_3374;
reg   [63:0] data_y_3_2_reg_3374_pp0_iter12_reg;
reg   [63:0] data_y_3_2_reg_3374_pp0_iter13_reg;
reg   [63:0] data_y_3_2_reg_3374_pp0_iter14_reg;
reg   [63:0] data_y_3_2_reg_3374_pp0_iter15_reg;
wire   [63:0] bitcast_ln148_37_fu_2024_p1;
wire   [63:0] bitcast_ln148_39_fu_2058_p1;
reg   [63:0] data_x_4_2_reg_3389;
reg   [63:0] data_x_4_2_reg_3389_pp0_iter12_reg;
reg   [63:0] data_x_4_2_reg_3389_pp0_iter13_reg;
reg   [63:0] data_x_4_2_reg_3389_pp0_iter14_reg;
reg   [63:0] data_x_4_2_reg_3389_pp0_iter15_reg;
reg   [63:0] data_y_4_2_reg_3394;
reg   [63:0] data_y_4_2_reg_3394_pp0_iter12_reg;
reg   [63:0] data_y_4_2_reg_3394_pp0_iter13_reg;
reg   [63:0] data_y_4_2_reg_3394_pp0_iter14_reg;
reg   [63:0] data_y_4_2_reg_3394_pp0_iter15_reg;
reg   [63:0] data_x_5_2_reg_3399;
reg   [63:0] data_x_5_2_reg_3399_pp0_iter12_reg;
reg   [63:0] data_x_5_2_reg_3399_pp0_iter13_reg;
reg   [63:0] data_x_5_2_reg_3399_pp0_iter14_reg;
reg   [63:0] data_x_5_2_reg_3399_pp0_iter15_reg;
reg   [63:0] data_y_5_2_reg_3404;
reg   [63:0] data_y_5_2_reg_3404_pp0_iter12_reg;
reg   [63:0] data_y_5_2_reg_3404_pp0_iter13_reg;
reg   [63:0] data_y_5_2_reg_3404_pp0_iter14_reg;
reg   [63:0] data_y_5_2_reg_3404_pp0_iter15_reg;
reg   [63:0] sub11_reg_3409;
reg   [63:0] sub12_reg_3415;
reg   [63:0] sub294_1_reg_3421;
reg   [63:0] sub299_1_reg_3427;
reg   [63:0] data_x_6_reg_3433;
reg   [63:0] data_y_6_reg_3438;
reg   [63:0] data_x_7_reg_3443;
reg   [63:0] data_y_7_reg_3448;
reg   [63:0] data_x_6_2_reg_3453;
reg   [63:0] data_y_6_2_reg_3458;
reg   [63:0] data_x_7_2_reg_3463;
reg   [63:0] data_y_7_2_reg_3468;
wire   [5:0] or_ln6_fu_2063_p3;
reg   [63:0] data_x_5_1_reg_3478;
reg   [63:0] data_x_6_1_reg_3483;
reg   [63:0] data_x_7_1_reg_3488;
reg   [63:0] data_y_5_1_reg_3493;
reg   [63:0] data_y_6_1_reg_3498;
reg   [63:0] data_y_7_1_reg_3503;
wire   [63:0] zext_ln158_fu_2093_p1;
reg   [63:0] zext_ln158_reg_3508;
reg   [63:0] data_x_5_3_reg_3514;
reg   [63:0] data_x_6_3_reg_3519;
reg   [63:0] data_x_7_3_reg_3524;
reg   [63:0] data_y_5_3_reg_3529;
reg   [63:0] data_y_6_3_reg_3534;
reg   [63:0] data_y_7_3_reg_3539;
wire   [63:0] zext_ln156_1_fu_2121_p1;
reg   [63:0] zext_ln156_1_reg_3544;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [63:0] grp_twiddles8_fu_700_a_x_1_read;
reg   [63:0] grp_twiddles8_fu_700_a_x_2_read;
reg   [63:0] grp_twiddles8_fu_700_a_x_3_read;
reg   [63:0] grp_twiddles8_fu_700_a_x_4_read;
reg   [63:0] grp_twiddles8_fu_700_a_x_5_read;
reg   [63:0] grp_twiddles8_fu_700_a_x_6_read;
reg   [63:0] grp_twiddles8_fu_700_a_x_7_read;
reg   [63:0] grp_twiddles8_fu_700_a_y_1_read;
reg   [63:0] grp_twiddles8_fu_700_a_y_2_read;
reg   [63:0] grp_twiddles8_fu_700_a_y_3_read;
reg   [63:0] grp_twiddles8_fu_700_a_y_4_read;
reg   [63:0] grp_twiddles8_fu_700_a_y_5_read;
reg   [63:0] grp_twiddles8_fu_700_a_y_6_read;
reg   [63:0] grp_twiddles8_fu_700_a_y_7_read;
reg   [5:0] grp_twiddles8_fu_700_i;
reg    grp_twiddles8_fu_700_ap_ce;
wire    ap_block_pp0_stage2_11001_ignoreCallOp1535;
wire    ap_block_pp0_stage3_11001_ignoreCallOp1540;
wire    ap_block_pp0_stage1_11001_ignoreCallOp1550;
wire    ap_block_pp0_stage0_11001_ignoreCallOp1545;
wire    ap_block_pp0_stage2_ignoreCallOp1535;
wire    ap_block_pp0_stage3_ignoreCallOp1558;
wire   [63:0] zext_ln130_fu_1045_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln132_fu_1057_p1;
wire   [63:0] zext_ln134_fu_1084_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln136_fu_1095_p1;
wire   [63:0] zext_ln131_fu_1110_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln135_fu_1122_p1;
wire   [63:0] zext_ln114_fu_1133_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln133_fu_1160_p1;
wire   [63:0] zext_ln156_fu_2078_p1;
wire   [63:0] zext_ln160_fu_2106_p1;
wire   [63:0] zext_ln158_1_fu_2134_p1;
wire   [63:0] zext_ln160_1_fu_2149_p1;
reg   [6:0] tid_fu_112;
wire   [6:0] add_ln127_fu_1247_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_7;
reg    work_x_0_ce1_local;
reg   [7:0] work_x_0_address1_local;
reg    work_x_0_ce0_local;
reg   [7:0] work_x_0_address0_local;
reg    work_y_0_ce1_local;
reg   [7:0] work_y_0_address1_local;
reg    work_y_0_ce0_local;
reg   [7:0] work_y_0_address0_local;
reg    work_x_1_ce1_local;
reg   [7:0] work_x_1_address1_local;
reg    work_x_1_ce0_local;
reg   [7:0] work_x_1_address0_local;
reg    work_y_1_ce1_local;
reg   [7:0] work_y_1_address1_local;
reg    work_y_1_ce0_local;
reg   [7:0] work_y_1_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_y_we1_local;
reg   [63:0] DATA_y_d1_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_we0_local;
reg   [63:0] DATA_y_d0_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    DATA_y_1_we1_local;
reg   [63:0] DATA_y_1_d1_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_we0_local;
reg   [63:0] DATA_y_1_d0_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
reg   [63:0] grp_fu_733_p0;
reg   [63:0] grp_fu_733_p1;
reg   [63:0] grp_fu_737_p0;
reg   [63:0] grp_fu_737_p1;
reg   [63:0] grp_fu_741_p0;
reg   [63:0] grp_fu_741_p1;
reg   [63:0] grp_fu_745_p0;
reg   [63:0] grp_fu_745_p1;
reg   [63:0] grp_fu_749_p0;
reg   [63:0] grp_fu_749_p1;
reg   [63:0] grp_fu_753_p0;
reg   [63:0] grp_fu_753_p1;
reg   [63:0] grp_fu_757_p0;
reg   [63:0] grp_fu_757_p1;
reg   [63:0] grp_fu_761_p0;
reg   [63:0] grp_fu_761_p1;
reg   [63:0] grp_fu_765_p0;
reg   [63:0] grp_fu_765_p1;
reg   [63:0] grp_fu_769_p0;
reg   [63:0] grp_fu_769_p1;
reg   [63:0] grp_fu_773_p0;
reg   [63:0] grp_fu_773_p1;
reg   [63:0] grp_fu_777_p0;
reg   [63:0] grp_fu_777_p1;
reg   [63:0] grp_fu_781_p0;
reg   [63:0] grp_fu_781_p1;
reg   [63:0] grp_fu_785_p0;
reg   [63:0] grp_fu_785_p1;
reg   [63:0] grp_fu_789_p0;
reg   [63:0] grp_fu_789_p1;
reg   [63:0] grp_fu_793_p0;
reg   [63:0] grp_fu_793_p1;
reg   [63:0] grp_fu_797_p0;
reg   [63:0] grp_fu_797_p1;
reg   [63:0] grp_fu_801_p0;
reg   [63:0] grp_fu_801_p1;
reg   [63:0] grp_fu_805_p0;
reg   [63:0] grp_fu_805_p1;
reg   [63:0] grp_fu_809_p0;
reg   [63:0] grp_fu_809_p1;
reg   [63:0] grp_fu_813_p0;
reg   [63:0] grp_fu_813_p1;
reg   [63:0] grp_fu_817_p0;
reg   [63:0] grp_fu_817_p1;
reg   [63:0] grp_fu_821_p0;
reg   [63:0] grp_fu_821_p1;
reg   [63:0] grp_fu_825_p0;
reg   [63:0] grp_fu_825_p1;
reg   [63:0] grp_fu_829_p0;
reg   [63:0] grp_fu_829_p1;
reg   [63:0] grp_fu_833_p0;
reg   [63:0] grp_fu_833_p1;
reg   [63:0] grp_fu_837_p0;
reg   [63:0] grp_fu_837_p1;
reg   [63:0] grp_fu_841_p0;
reg   [63:0] grp_fu_841_p1;
reg   [63:0] grp_fu_845_p0;
reg   [63:0] grp_fu_845_p1;
reg   [63:0] grp_fu_849_p0;
reg   [63:0] grp_fu_849_p1;
reg   [63:0] grp_fu_854_p0;
reg   [63:0] grp_fu_854_p1;
reg   [63:0] grp_fu_861_p0;
reg   [63:0] grp_fu_861_p1;
reg   [63:0] grp_fu_866_p0;
reg   [63:0] grp_fu_866_p1;
reg   [63:0] grp_fu_871_p0;
reg   [63:0] grp_fu_871_p1;
wire  signed [6:0] sext_ln132_fu_1053_p1;
wire   [7:0] zext_ln114_1_fu_1074_p1;
wire   [7:0] add_ln134_fu_1078_p2;
wire  signed [7:0] sext_ln136_fu_1092_p1;
wire  signed [6:0] zext_ln131_cast_fu_1103_p3;
wire  signed [7:0] sext_ln135_fu_1118_p1;
wire   [6:0] zext_ln114_3_fu_1130_p1;
wire   [7:0] zext_ln133_cast_fu_1152_p3;
wire   [63:0] bitcast_ln148_fu_1353_p1;
wire   [0:0] bit_sel2_fu_1356_p3;
wire   [0:0] xor_ln148_19_fu_1364_p2;
wire   [62:0] trunc_ln148_fu_1370_p1;
wire   [63:0] xor_ln1_fu_1374_p3;
wire   [63:0] bitcast_ln148_2_fu_1387_p1;
wire   [0:0] bit_sel3_fu_1390_p3;
wire   [0:0] xor_ln148_fu_1398_p2;
wire   [62:0] trunc_ln148_1_fu_1404_p1;
wire   [63:0] xor_ln148_1_fu_1408_p3;
wire   [63:0] bitcast_ln148_8_fu_1421_p1;
wire   [0:0] bit_sel8_fu_1424_p3;
wire   [0:0] xor_ln148_22_fu_1432_p2;
wire   [62:0] trunc_ln148_4_fu_1438_p1;
wire   [63:0] xor_ln148_4_fu_1442_p3;
wire   [63:0] bitcast_ln148_10_fu_1456_p1;
wire   [0:0] bit_sel9_fu_1459_p3;
wire   [0:0] xor_ln148_23_fu_1467_p2;
wire   [62:0] trunc_ln148_5_fu_1473_p1;
wire   [63:0] xor_ln148_5_fu_1477_p3;
wire   [63:0] bitcast_ln148_20_fu_1491_p1;
wire   [0:0] bit_sel17_fu_1494_p3;
wire   [0:0] xor_ln148_28_fu_1502_p2;
wire   [62:0] trunc_ln148_10_fu_1508_p1;
wire   [63:0] xor_ln148_s_fu_1512_p3;
wire   [63:0] bitcast_ln148_22_fu_1525_p1;
wire   [0:0] bit_sel18_fu_1528_p3;
wire   [0:0] xor_ln148_29_fu_1536_p2;
wire   [62:0] trunc_ln148_11_fu_1542_p1;
wire   [63:0] xor_ln148_10_fu_1546_p3;
wire   [63:0] bitcast_ln148_28_fu_1559_p1;
wire   [0:0] bit_sel13_fu_1562_p3;
wire   [0:0] xor_ln148_32_fu_1570_p2;
wire   [62:0] trunc_ln148_14_fu_1576_p1;
wire   [63:0] xor_ln148_13_fu_1580_p3;
wire   [63:0] bitcast_ln148_30_fu_1594_p1;
wire   [0:0] bit_sel10_fu_1597_p3;
wire   [0:0] xor_ln148_33_fu_1605_p2;
wire   [62:0] trunc_ln148_15_fu_1611_p1;
wire   [63:0] xor_ln148_14_fu_1615_p3;
wire   [63:0] bitcast_ln148_4_fu_1629_p1;
wire   [0:0] bit_sel5_fu_1632_p3;
wire   [0:0] xor_ln148_20_fu_1640_p2;
wire   [62:0] trunc_ln148_2_fu_1646_p1;
wire   [63:0] xor_ln148_2_fu_1650_p3;
wire   [63:0] bitcast_ln148_6_fu_1663_p1;
wire   [0:0] bit_sel6_fu_1666_p3;
wire   [0:0] xor_ln148_21_fu_1674_p2;
wire   [62:0] trunc_ln148_3_fu_1680_p1;
wire   [63:0] xor_ln148_3_fu_1684_p3;
wire   [63:0] bitcast_ln148_24_fu_1697_p1;
wire   [0:0] bit_sel19_fu_1700_p3;
wire   [0:0] xor_ln148_30_fu_1708_p2;
wire   [62:0] trunc_ln148_12_fu_1714_p1;
wire   [63:0] xor_ln148_11_fu_1718_p3;
wire   [63:0] bitcast_ln148_26_fu_1731_p1;
wire   [0:0] bit_sel16_fu_1734_p3;
wire   [0:0] xor_ln148_31_fu_1742_p2;
wire   [62:0] trunc_ln148_13_fu_1748_p1;
wire   [63:0] xor_ln148_12_fu_1752_p3;
wire   [63:0] bitcast_ln148_12_fu_1765_p1;
wire   [0:0] bit_sel11_fu_1768_p3;
wire   [0:0] xor_ln148_24_fu_1776_p2;
wire   [62:0] trunc_ln148_6_fu_1782_p1;
wire   [63:0] xor_ln148_6_fu_1786_p3;
wire   [63:0] bitcast_ln148_14_fu_1799_p1;
wire   [0:0] bit_sel12_fu_1802_p3;
wire   [0:0] xor_ln148_25_fu_1810_p2;
wire   [62:0] trunc_ln148_7_fu_1816_p1;
wire   [63:0] xor_ln148_7_fu_1820_p3;
wire   [63:0] bitcast_ln148_32_fu_1833_p1;
wire   [0:0] bit_sel7_fu_1836_p3;
wire   [0:0] xor_ln148_34_fu_1844_p2;
wire   [62:0] trunc_ln148_16_fu_1850_p1;
wire   [63:0] xor_ln148_15_fu_1854_p3;
wire   [63:0] bitcast_ln148_34_fu_1867_p1;
wire   [0:0] bit_sel4_fu_1870_p3;
wire   [0:0] xor_ln148_35_fu_1878_p2;
wire   [62:0] trunc_ln148_17_fu_1884_p1;
wire   [63:0] xor_ln148_16_fu_1888_p3;
wire   [7:0] shl_ln_fu_1901_p3;
wire   [7:0] shl_ln154_1_fu_1914_p3;
wire   [63:0] bitcast_ln148_16_fu_1927_p1;
wire   [0:0] bit_sel14_fu_1930_p3;
wire   [0:0] xor_ln148_26_fu_1938_p2;
wire   [62:0] trunc_ln148_8_fu_1944_p1;
wire   [63:0] xor_ln148_8_fu_1948_p3;
wire   [63:0] bitcast_ln148_18_fu_1961_p1;
wire   [0:0] bit_sel15_fu_1964_p3;
wire   [0:0] xor_ln148_27_fu_1972_p2;
wire   [62:0] trunc_ln148_9_fu_1978_p1;
wire   [63:0] xor_ln148_9_fu_1982_p3;
wire   [63:0] bitcast_ln148_36_fu_1995_p1;
wire   [0:0] bit_sel1_fu_1998_p3;
wire   [0:0] xor_ln148_36_fu_2006_p2;
wire   [62:0] trunc_ln148_18_fu_2012_p1;
wire   [63:0] xor_ln148_17_fu_2016_p3;
wire   [63:0] bitcast_ln148_38_fu_2029_p1;
wire   [0:0] bit_sel_fu_2032_p3;
wire   [0:0] xor_ln148_37_fu_2040_p2;
wire   [62:0] trunc_ln148_19_fu_2046_p1;
wire   [63:0] xor_ln148_18_fu_2050_p3;
wire   [7:0] or_ln3_fu_2071_p3;
wire   [7:0] or_ln4_fu_2086_p3;
wire   [7:0] or_ln5_fu_2099_p3;
wire   [7:0] or_ln156_1_fu_2114_p3;
wire   [7:0] or_ln158_1_fu_2127_p3;
wire   [7:0] or_ln160_1_fu_2142_p3;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
reg   [1:0] grp_fu_741_opcode;
reg   [1:0] grp_fu_745_opcode;
reg   [1:0] grp_fu_765_opcode;
reg   [1:0] grp_fu_773_opcode;
reg   [1:0] grp_fu_777_opcode;
reg   [1:0] grp_fu_781_opcode;
reg   [1:0] grp_fu_789_opcode;
reg   [1:0] grp_fu_793_opcode;
reg   [1:0] grp_fu_801_opcode;
reg   [1:0] grp_fu_805_opcode;
reg   [1:0] grp_fu_809_opcode;
reg   [1:0] grp_fu_817_opcode;
reg   [1:0] grp_fu_821_opcode;
reg   [1:0] grp_fu_825_opcode;
reg   [1:0] grp_fu_829_opcode;
reg   [1:0] grp_fu_833_opcode;
reg   [1:0] grp_fu_837_opcode;
reg   [1:0] grp_fu_841_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg    ap_loop_exit_ready_pp0_iter26_reg;
reg    ap_loop_exit_ready_pp0_iter27_reg;
reg    ap_loop_exit_ready_pp0_iter28_reg;
reg    ap_loop_exit_ready_pp0_iter29_reg;
reg    ap_loop_exit_ready_pp0_iter30_reg;
reg    ap_loop_exit_ready_pp0_iter31_reg;
reg    ap_loop_exit_ready_pp0_iter32_reg;
reg    ap_loop_exit_ready_pp0_iter33_reg;
reg    ap_loop_exit_ready_pp0_iter34_reg;
reg    ap_loop_exit_ready_pp0_iter35_reg;
reg    ap_loop_exit_ready_pp0_iter36_reg;
reg    ap_loop_exit_ready_pp0_iter37_reg;
reg    ap_loop_exit_ready_pp0_iter38_reg;
reg    ap_loop_exit_ready_pp0_iter39_reg;
reg    ap_loop_exit_ready_pp0_iter40_reg;
reg    ap_loop_exit_ready_pp0_iter41_reg;
reg    ap_loop_exit_ready_pp0_iter42_reg;
reg    ap_loop_exit_ready_pp0_iter43_reg;
reg    ap_loop_exit_ready_pp0_iter44_reg;
reg    ap_loop_exit_ready_pp0_iter45_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to46;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_enable_reg_pp0_iter36 = 1'b0;
#0 ap_enable_reg_pp0_iter37 = 1'b0;
#0 ap_enable_reg_pp0_iter38 = 1'b0;
#0 ap_enable_reg_pp0_iter39 = 1'b0;
#0 ap_enable_reg_pp0_iter40 = 1'b0;
#0 ap_enable_reg_pp0_iter41 = 1'b0;
#0 ap_enable_reg_pp0_iter42 = 1'b0;
#0 ap_enable_reg_pp0_iter43 = 1'b0;
#0 ap_enable_reg_pp0_iter44 = 1'b0;
#0 ap_enable_reg_pp0_iter45 = 1'b0;
#0 ap_enable_reg_pp0_iter46 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_112 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter45_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter33 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter34 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter35 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter36 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter36 <= ap_enable_reg_pp0_iter35;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter37 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter37 <= ap_enable_reg_pp0_iter36;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter38 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter38 <= ap_enable_reg_pp0_iter37;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter39 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter39 <= ap_enable_reg_pp0_iter38;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter40 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter40 <= ap_enable_reg_pp0_iter39;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter41 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter41 <= ap_enable_reg_pp0_iter40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter42 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter42 <= ap_enable_reg_pp0_iter41;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter43 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter43 <= ap_enable_reg_pp0_iter42;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter44 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter44 <= ap_enable_reg_pp0_iter43;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter45 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter45 <= ap_enable_reg_pp0_iter44;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter46 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter46 <= ap_enable_reg_pp0_iter45;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tid_fu_112 <= 7'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        tid_fu_112 <= add_ln127_fu_1247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add10_reg_3175 <= grp_fu_272_p_dout0;
        add_reg_3169 <= grp_fu_268_p_dout0;
        sub10_reg_3187 <= grp_fu_280_p_dout0;
        tmp_2_reg_3181 <= grp_fu_276_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add10_reg_3175_pp0_iter9_reg <= add10_reg_3175;
        add_reg_3169_pp0_iter9_reg <= add_reg_3169;
        data_x_2_2_reg_3359_pp0_iter12_reg <= data_x_2_2_reg_3359;
        data_x_2_2_reg_3359_pp0_iter13_reg <= data_x_2_2_reg_3359_pp0_iter12_reg;
        data_x_2_2_reg_3359_pp0_iter14_reg <= data_x_2_2_reg_3359_pp0_iter13_reg;
        data_x_2_2_reg_3359_pp0_iter15_reg <= data_x_2_2_reg_3359_pp0_iter14_reg;
        data_x_3_2_reg_3369_pp0_iter12_reg <= data_x_3_2_reg_3369;
        data_x_3_2_reg_3369_pp0_iter13_reg <= data_x_3_2_reg_3369_pp0_iter12_reg;
        data_x_3_2_reg_3369_pp0_iter14_reg <= data_x_3_2_reg_3369_pp0_iter13_reg;
        data_x_3_2_reg_3369_pp0_iter15_reg <= data_x_3_2_reg_3369_pp0_iter14_reg;
        data_x_4_2_reg_3389_pp0_iter12_reg <= data_x_4_2_reg_3389;
        data_x_4_2_reg_3389_pp0_iter13_reg <= data_x_4_2_reg_3389_pp0_iter12_reg;
        data_x_4_2_reg_3389_pp0_iter14_reg <= data_x_4_2_reg_3389_pp0_iter13_reg;
        data_x_4_2_reg_3389_pp0_iter15_reg <= data_x_4_2_reg_3389_pp0_iter14_reg;
        data_x_4_reg_3339_pp0_iter12_reg <= data_x_4_reg_3339;
        data_x_4_reg_3339_pp0_iter13_reg <= data_x_4_reg_3339_pp0_iter12_reg;
        data_x_4_reg_3339_pp0_iter14_reg <= data_x_4_reg_3339_pp0_iter13_reg;
        data_x_5_2_reg_3399_pp0_iter12_reg <= data_x_5_2_reg_3399;
        data_x_5_2_reg_3399_pp0_iter13_reg <= data_x_5_2_reg_3399_pp0_iter12_reg;
        data_x_5_2_reg_3399_pp0_iter14_reg <= data_x_5_2_reg_3399_pp0_iter13_reg;
        data_x_5_2_reg_3399_pp0_iter15_reg <= data_x_5_2_reg_3399_pp0_iter14_reg;
        data_x_5_reg_3349_pp0_iter12_reg <= data_x_5_reg_3349;
        data_x_5_reg_3349_pp0_iter13_reg <= data_x_5_reg_3349_pp0_iter12_reg;
        data_x_5_reg_3349_pp0_iter14_reg <= data_x_5_reg_3349_pp0_iter13_reg;
        data_y_2_2_reg_3364_pp0_iter12_reg <= data_y_2_2_reg_3364;
        data_y_2_2_reg_3364_pp0_iter13_reg <= data_y_2_2_reg_3364_pp0_iter12_reg;
        data_y_2_2_reg_3364_pp0_iter14_reg <= data_y_2_2_reg_3364_pp0_iter13_reg;
        data_y_2_2_reg_3364_pp0_iter15_reg <= data_y_2_2_reg_3364_pp0_iter14_reg;
        data_y_3_2_reg_3374_pp0_iter12_reg <= data_y_3_2_reg_3374;
        data_y_3_2_reg_3374_pp0_iter13_reg <= data_y_3_2_reg_3374_pp0_iter12_reg;
        data_y_3_2_reg_3374_pp0_iter14_reg <= data_y_3_2_reg_3374_pp0_iter13_reg;
        data_y_3_2_reg_3374_pp0_iter15_reg <= data_y_3_2_reg_3374_pp0_iter14_reg;
        data_y_3_reg_3334_pp0_iter12_reg <= data_y_3_reg_3334;
        data_y_3_reg_3334_pp0_iter13_reg <= data_y_3_reg_3334_pp0_iter12_reg;
        data_y_3_reg_3334_pp0_iter14_reg <= data_y_3_reg_3334_pp0_iter13_reg;
        data_y_4_2_reg_3394_pp0_iter12_reg <= data_y_4_2_reg_3394;
        data_y_4_2_reg_3394_pp0_iter13_reg <= data_y_4_2_reg_3394_pp0_iter12_reg;
        data_y_4_2_reg_3394_pp0_iter14_reg <= data_y_4_2_reg_3394_pp0_iter13_reg;
        data_y_4_2_reg_3394_pp0_iter15_reg <= data_y_4_2_reg_3394_pp0_iter14_reg;
        data_y_4_reg_3344_pp0_iter12_reg <= data_y_4_reg_3344;
        data_y_4_reg_3344_pp0_iter13_reg <= data_y_4_reg_3344_pp0_iter12_reg;
        data_y_4_reg_3344_pp0_iter14_reg <= data_y_4_reg_3344_pp0_iter13_reg;
        data_y_5_2_reg_3404_pp0_iter12_reg <= data_y_5_2_reg_3404;
        data_y_5_2_reg_3404_pp0_iter13_reg <= data_y_5_2_reg_3404_pp0_iter12_reg;
        data_y_5_2_reg_3404_pp0_iter14_reg <= data_y_5_2_reg_3404_pp0_iter13_reg;
        data_y_5_2_reg_3404_pp0_iter15_reg <= data_y_5_2_reg_3404_pp0_iter14_reg;
        data_y_5_reg_3354_pp0_iter12_reg <= data_y_5_reg_3354;
        data_y_5_reg_3354_pp0_iter13_reg <= data_y_5_reg_3354_pp0_iter12_reg;
        data_y_5_reg_3354_pp0_iter14_reg <= data_y_5_reg_3354_pp0_iter13_reg;
        lshr_ln_reg_2229 <= {{tid_7_reg_2164[6:1]}};
        sub10_reg_3187_pp0_iter9_reg <= sub10_reg_3187;
        tmp_2_reg_3181_pp0_iter9_reg <= tmp_2_reg_3181;
        zext_ln156_1_reg_3544[7 : 3] <= zext_ln156_1_fu_2121_p1[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add111_1_reg_2735 <= grp_fu_268_p_dout0;
        add114_1_reg_2741 <= grp_fu_272_p_dout0;
        add4_reg_2689 <= grp_fu_252_p_dout0;
        add5_reg_2695 <= grp_fu_256_p_dout0;
        sub120_1_reg_2753 <= grp_fu_280_p_dout0;
        sub5_reg_2707 <= grp_fu_264_p_dout0;
        tmp_1_1_reg_2701 <= grp_fu_260_p_dout0;
        tmp_1_4_reg_2747 <= grp_fu_276_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add127_1_reg_2667 <= grp_fu_300_p_dout0;
        add130_1_reg_2673 <= grp_fu_304_p_dout0;
        add6_reg_2621 <= grp_fu_268_p_dout0;
        add7_reg_2627 <= grp_fu_272_p_dout0;
        c0_x_15_reg_2643 <= grp_fu_284_p_dout0;
        c0_x_5_reg_2597 <= grp_fu_252_p_dout0;
        c0_y_15_reg_2649 <= grp_fu_288_p_dout0;
        c0_y_5_reg_2603 <= grp_fu_256_p_dout0;
        sub104_1_reg_2661 <= grp_fu_296_p_dout0;
        sub136_1_reg_2684 <= grp_fu_312_p_dout0;
        sub3_reg_2615 <= grp_fu_264_p_dout0;
        sub7_reg_2638 <= grp_fu_280_p_dout0;
        tmp_1_2_reg_2633 <= grp_fu_276_p_dout0;
        tmp_1_3_reg_2655 <= grp_fu_292_p_dout0;
        tmp_1_5_reg_2679 <= grp_fu_308_p_dout0;
        tmp_1_reg_2609 <= grp_fu_260_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add149_1_reg_2876 <= grp_fu_344_p_dout0;
        add175_1_reg_2886 <= grp_fu_352_p_dout0;
        add1_reg_2854 <= grp_fu_328_p_dout0;
        add8_reg_2834 <= grp_fu_320_p_dout0;
        mul6_reg_2839 <= grp_fu_368_p_dout0;
        mul9_reg_2844 <= grp_fu_372_p_dout0;
        sub143_1_reg_2871 <= grp_fu_340_p_dout0;
        sub169_1_reg_2881 <= grp_fu_348_p_dout0;
        sub1_reg_2849 <= grp_fu_324_p_dout0;
        sub208_1_reg_2897 <= grp_fu_360_p_dout0;
        sub2_reg_2865 <= grp_fu_336_p_dout0;
        sub8_reg_2829 <= grp_fu_316_p_dout0;
        tmp_3_reg_2891 <= grp_fu_356_p_dout0;
        tmp_reg_2859 <= grp_fu_332_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add162_1_reg_3081 <= grp_fu_312_p_dout0;
        add9_reg_3059 <= grp_fu_304_p_dout0;
        mul1_reg_3070 <= grp_fu_380_p_dout0;
        mul212_1_reg_3087 <= grp_fu_384_p_dout0;
        mul_reg_3065 <= grp_fu_376_p_dout0;
        sub157_1_reg_3075 <= grp_fu_308_p_dout0;
        sub9_reg_3053 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add199_1_reg_2925 <= grp_fu_292_p_dout0;
        add202_1_reg_2931 <= grp_fu_296_p_dout0;
        add2_reg_2903 <= grp_fu_284_p_dout0;
        add3_reg_2909 <= grp_fu_288_p_dout0;
        mul154_1_reg_2915 <= grp_fu_368_p_dout0;
        mul161_1_reg_2920 <= grp_fu_372_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add278_1_reg_3265 <= grp_fu_360_p_dout0;
        c0_x_10_reg_3223 <= grp_fu_332_p_dout0;
        c0_x_11_reg_3211 <= grp_fu_324_p_dout0;
        c0_x_22_reg_3253 <= grp_fu_352_p_dout0;
        c0_x_23_reg_3241 <= grp_fu_344_p_dout0;
        c0_y_10_reg_3229 <= grp_fu_336_p_dout0;
        c0_y_11_reg_3217 <= grp_fu_328_p_dout0;
        c0_y_22_reg_3259 <= grp_fu_356_p_dout0;
        c0_y_23_reg_3247 <= grp_fu_348_p_dout0;
        sub215_1_reg_3235 <= grp_fu_340_p_dout0;
        sub287_1_reg_3271 <= grp_fu_364_p_dout0;
        sub4_reg_3199 <= grp_fu_316_p_dout0;
        sub6_reg_3205 <= grp_fu_320_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add281_1_reg_3283 <= grp_fu_336_p_dout0;
        sub220_1_reg_3277 <= grp_fu_332_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
        ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
        ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
        ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
        ap_loop_exit_ready_pp0_iter35_reg <= ap_loop_exit_ready_pp0_iter34_reg;
        ap_loop_exit_ready_pp0_iter36_reg <= ap_loop_exit_ready_pp0_iter35_reg;
        ap_loop_exit_ready_pp0_iter37_reg <= ap_loop_exit_ready_pp0_iter36_reg;
        ap_loop_exit_ready_pp0_iter38_reg <= ap_loop_exit_ready_pp0_iter37_reg;
        ap_loop_exit_ready_pp0_iter39_reg <= ap_loop_exit_ready_pp0_iter38_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter40_reg <= ap_loop_exit_ready_pp0_iter39_reg;
        ap_loop_exit_ready_pp0_iter41_reg <= ap_loop_exit_ready_pp0_iter40_reg;
        ap_loop_exit_ready_pp0_iter42_reg <= ap_loop_exit_ready_pp0_iter41_reg;
        ap_loop_exit_ready_pp0_iter43_reg <= ap_loop_exit_ready_pp0_iter42_reg;
        ap_loop_exit_ready_pp0_iter44_reg <= ap_loop_exit_ready_pp0_iter43_reg;
        ap_loop_exit_ready_pp0_iter45_reg <= ap_loop_exit_ready_pp0_iter44_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        c0_x_10_reg_3223_pp0_iter10_reg <= c0_x_10_reg_3223_pp0_iter9_reg;
        c0_x_10_reg_3223_pp0_iter11_reg <= c0_x_10_reg_3223_pp0_iter10_reg;
        c0_x_10_reg_3223_pp0_iter9_reg <= c0_x_10_reg_3223;
        c0_x_22_reg_3253_pp0_iter10_reg <= c0_x_22_reg_3253_pp0_iter9_reg;
        c0_x_22_reg_3253_pp0_iter11_reg <= c0_x_22_reg_3253_pp0_iter10_reg;
        c0_x_22_reg_3253_pp0_iter12_reg <= c0_x_22_reg_3253_pp0_iter11_reg;
        c0_x_22_reg_3253_pp0_iter9_reg <= c0_x_22_reg_3253;
        c0_y_10_reg_3229_pp0_iter10_reg <= c0_y_10_reg_3229_pp0_iter9_reg;
        c0_y_10_reg_3229_pp0_iter11_reg <= c0_y_10_reg_3229_pp0_iter10_reg;
        c0_y_10_reg_3229_pp0_iter9_reg <= c0_y_10_reg_3229;
        c0_y_22_reg_3259_pp0_iter10_reg <= c0_y_22_reg_3259_pp0_iter9_reg;
        c0_y_22_reg_3259_pp0_iter11_reg <= c0_y_22_reg_3259_pp0_iter10_reg;
        c0_y_22_reg_3259_pp0_iter12_reg <= c0_y_22_reg_3259_pp0_iter11_reg;
        c0_y_22_reg_3259_pp0_iter9_reg <= c0_y_22_reg_3259;
        sub120_1_reg_2753_pp0_iter3_reg <= sub120_1_reg_2753;
        sub120_1_reg_2753_pp0_iter4_reg <= sub120_1_reg_2753_pp0_iter3_reg;
        sub287_1_reg_3271_pp0_iter10_reg <= sub287_1_reg_3271_pp0_iter9_reg;
        sub287_1_reg_3271_pp0_iter9_reg <= sub287_1_reg_3271;
        sub5_reg_2707_pp0_iter3_reg <= sub5_reg_2707;
        sub5_reg_2707_pp0_iter4_reg <= sub5_reg_2707_pp0_iter3_reg;
        tmp_1_1_reg_2701_pp0_iter3_reg <= tmp_1_1_reg_2701;
        tmp_1_1_reg_2701_pp0_iter4_reg <= tmp_1_1_reg_2701_pp0_iter3_reg;
        tmp_1_4_reg_2747_pp0_iter3_reg <= tmp_1_4_reg_2747;
        tmp_1_4_reg_2747_pp0_iter4_reg <= tmp_1_4_reg_2747_pp0_iter3_reg;
        trunc_ln151_reg_2424 <= trunc_ln151_fu_1200_p1;
        trunc_ln151_reg_2424_pp0_iter10_reg <= trunc_ln151_reg_2424_pp0_iter9_reg;
        trunc_ln151_reg_2424_pp0_iter11_reg <= trunc_ln151_reg_2424_pp0_iter10_reg;
        trunc_ln151_reg_2424_pp0_iter12_reg <= trunc_ln151_reg_2424_pp0_iter11_reg;
        trunc_ln151_reg_2424_pp0_iter13_reg <= trunc_ln151_reg_2424_pp0_iter12_reg;
        trunc_ln151_reg_2424_pp0_iter14_reg <= trunc_ln151_reg_2424_pp0_iter13_reg;
        trunc_ln151_reg_2424_pp0_iter15_reg <= trunc_ln151_reg_2424_pp0_iter14_reg;
        trunc_ln151_reg_2424_pp0_iter16_reg <= trunc_ln151_reg_2424_pp0_iter15_reg;
        trunc_ln151_reg_2424_pp0_iter17_reg <= trunc_ln151_reg_2424_pp0_iter16_reg;
        trunc_ln151_reg_2424_pp0_iter18_reg <= trunc_ln151_reg_2424_pp0_iter17_reg;
        trunc_ln151_reg_2424_pp0_iter19_reg <= trunc_ln151_reg_2424_pp0_iter18_reg;
        trunc_ln151_reg_2424_pp0_iter1_reg <= trunc_ln151_reg_2424;
        trunc_ln151_reg_2424_pp0_iter20_reg <= trunc_ln151_reg_2424_pp0_iter19_reg;
        trunc_ln151_reg_2424_pp0_iter21_reg <= trunc_ln151_reg_2424_pp0_iter20_reg;
        trunc_ln151_reg_2424_pp0_iter22_reg <= trunc_ln151_reg_2424_pp0_iter21_reg;
        trunc_ln151_reg_2424_pp0_iter23_reg <= trunc_ln151_reg_2424_pp0_iter22_reg;
        trunc_ln151_reg_2424_pp0_iter24_reg <= trunc_ln151_reg_2424_pp0_iter23_reg;
        trunc_ln151_reg_2424_pp0_iter25_reg <= trunc_ln151_reg_2424_pp0_iter24_reg;
        trunc_ln151_reg_2424_pp0_iter26_reg <= trunc_ln151_reg_2424_pp0_iter25_reg;
        trunc_ln151_reg_2424_pp0_iter27_reg <= trunc_ln151_reg_2424_pp0_iter26_reg;
        trunc_ln151_reg_2424_pp0_iter28_reg <= trunc_ln151_reg_2424_pp0_iter27_reg;
        trunc_ln151_reg_2424_pp0_iter29_reg <= trunc_ln151_reg_2424_pp0_iter28_reg;
        trunc_ln151_reg_2424_pp0_iter2_reg <= trunc_ln151_reg_2424_pp0_iter1_reg;
        trunc_ln151_reg_2424_pp0_iter30_reg <= trunc_ln151_reg_2424_pp0_iter29_reg;
        trunc_ln151_reg_2424_pp0_iter31_reg <= trunc_ln151_reg_2424_pp0_iter30_reg;
        trunc_ln151_reg_2424_pp0_iter32_reg <= trunc_ln151_reg_2424_pp0_iter31_reg;
        trunc_ln151_reg_2424_pp0_iter33_reg <= trunc_ln151_reg_2424_pp0_iter32_reg;
        trunc_ln151_reg_2424_pp0_iter34_reg <= trunc_ln151_reg_2424_pp0_iter33_reg;
        trunc_ln151_reg_2424_pp0_iter35_reg <= trunc_ln151_reg_2424_pp0_iter34_reg;
        trunc_ln151_reg_2424_pp0_iter36_reg <= trunc_ln151_reg_2424_pp0_iter35_reg;
        trunc_ln151_reg_2424_pp0_iter37_reg <= trunc_ln151_reg_2424_pp0_iter36_reg;
        trunc_ln151_reg_2424_pp0_iter38_reg <= trunc_ln151_reg_2424_pp0_iter37_reg;
        trunc_ln151_reg_2424_pp0_iter39_reg <= trunc_ln151_reg_2424_pp0_iter38_reg;
        trunc_ln151_reg_2424_pp0_iter3_reg <= trunc_ln151_reg_2424_pp0_iter2_reg;
        trunc_ln151_reg_2424_pp0_iter40_reg <= trunc_ln151_reg_2424_pp0_iter39_reg;
        trunc_ln151_reg_2424_pp0_iter41_reg <= trunc_ln151_reg_2424_pp0_iter40_reg;
        trunc_ln151_reg_2424_pp0_iter42_reg <= trunc_ln151_reg_2424_pp0_iter41_reg;
        trunc_ln151_reg_2424_pp0_iter43_reg <= trunc_ln151_reg_2424_pp0_iter42_reg;
        trunc_ln151_reg_2424_pp0_iter44_reg <= trunc_ln151_reg_2424_pp0_iter43_reg;
        trunc_ln151_reg_2424_pp0_iter4_reg <= trunc_ln151_reg_2424_pp0_iter3_reg;
        trunc_ln151_reg_2424_pp0_iter5_reg <= trunc_ln151_reg_2424_pp0_iter4_reg;
        trunc_ln151_reg_2424_pp0_iter6_reg <= trunc_ln151_reg_2424_pp0_iter5_reg;
        trunc_ln151_reg_2424_pp0_iter7_reg <= trunc_ln151_reg_2424_pp0_iter6_reg;
        trunc_ln151_reg_2424_pp0_iter8_reg <= trunc_ln151_reg_2424_pp0_iter7_reg;
        trunc_ln151_reg_2424_pp0_iter9_reg <= trunc_ln151_reg_2424_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_2817 <= grp_fu_276_p_dout0;
        c0_x_21_reg_2805 <= grp_fu_268_p_dout0;
        c0_x_4_reg_2781 <= grp_fu_252_p_dout0;
        c0_x_8_reg_2793 <= grp_fu_260_p_dout0;
        c0_y_13_reg_2823 <= grp_fu_280_p_dout0;
        c0_y_21_reg_2811 <= grp_fu_272_p_dout0;
        c0_y_4_reg_2787 <= grp_fu_256_p_dout0;
        c0_y_8_reg_2799 <= grp_fu_264_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_2817_pp0_iter4_reg <= c0_x_13_reg_2817;
        c0_x_13_reg_2817_pp0_iter5_reg <= c0_x_13_reg_2817_pp0_iter4_reg;
        c0_x_13_reg_2817_pp0_iter6_reg <= c0_x_13_reg_2817_pp0_iter5_reg;
        c0_x_19_reg_2993_pp0_iter6_reg <= c0_x_19_reg_2993;
        c0_x_19_reg_2993_pp0_iter7_reg <= c0_x_19_reg_2993_pp0_iter6_reg;
        c0_x_19_reg_2993_pp0_iter8_reg <= c0_x_19_reg_2993_pp0_iter7_reg;
        c0_x_19_reg_2993_pp0_iter9_reg <= c0_x_19_reg_2993_pp0_iter8_reg;
        c0_x_7_reg_2959_pp0_iter6_reg <= c0_x_7_reg_2959;
        c0_x_7_reg_2959_pp0_iter7_reg <= c0_x_7_reg_2959_pp0_iter6_reg;
        c0_x_7_reg_2959_pp0_iter8_reg <= c0_x_7_reg_2959_pp0_iter7_reg;
        c0_x_7_reg_2959_pp0_iter9_reg <= c0_x_7_reg_2959_pp0_iter8_reg;
        c0_x_8_reg_2793_pp0_iter4_reg <= c0_x_8_reg_2793;
        c0_x_8_reg_2793_pp0_iter5_reg <= c0_x_8_reg_2793_pp0_iter4_reg;
        c0_x_8_reg_2793_pp0_iter6_reg <= c0_x_8_reg_2793_pp0_iter5_reg;
        c0_y_13_reg_2823_pp0_iter4_reg <= c0_y_13_reg_2823;
        c0_y_13_reg_2823_pp0_iter5_reg <= c0_y_13_reg_2823_pp0_iter4_reg;
        c0_y_13_reg_2823_pp0_iter6_reg <= c0_y_13_reg_2823_pp0_iter5_reg;
        c0_y_19_reg_2999_pp0_iter6_reg <= c0_y_19_reg_2999;
        c0_y_19_reg_2999_pp0_iter7_reg <= c0_y_19_reg_2999_pp0_iter6_reg;
        c0_y_19_reg_2999_pp0_iter8_reg <= c0_y_19_reg_2999_pp0_iter7_reg;
        c0_y_19_reg_2999_pp0_iter9_reg <= c0_y_19_reg_2999_pp0_iter8_reg;
        c0_y_7_reg_2965_pp0_iter6_reg <= c0_y_7_reg_2965;
        c0_y_7_reg_2965_pp0_iter7_reg <= c0_y_7_reg_2965_pp0_iter6_reg;
        c0_y_7_reg_2965_pp0_iter8_reg <= c0_y_7_reg_2965_pp0_iter7_reg;
        c0_y_7_reg_2965_pp0_iter9_reg <= c0_y_7_reg_2965_pp0_iter8_reg;
        c0_y_8_reg_2799_pp0_iter4_reg <= c0_y_8_reg_2799;
        c0_y_8_reg_2799_pp0_iter5_reg <= c0_y_8_reg_2799_pp0_iter4_reg;
        c0_y_8_reg_2799_pp0_iter6_reg <= c0_y_8_reg_2799_pp0_iter5_reg;
        data_x_1_2_reg_3122_pp0_iter10_reg <= data_x_1_2_reg_3122_pp0_iter9_reg;
        data_x_1_2_reg_3122_pp0_iter11_reg <= data_x_1_2_reg_3122_pp0_iter10_reg;
        data_x_1_2_reg_3122_pp0_iter12_reg <= data_x_1_2_reg_3122_pp0_iter11_reg;
        data_x_1_2_reg_3122_pp0_iter13_reg <= data_x_1_2_reg_3122_pp0_iter12_reg;
        data_x_1_2_reg_3122_pp0_iter14_reg <= data_x_1_2_reg_3122_pp0_iter13_reg;
        data_x_1_2_reg_3122_pp0_iter15_reg <= data_x_1_2_reg_3122_pp0_iter14_reg;
        data_x_1_2_reg_3122_pp0_iter8_reg <= data_x_1_2_reg_3122;
        data_x_1_2_reg_3122_pp0_iter9_reg <= data_x_1_2_reg_3122_pp0_iter8_reg;
        data_x_1_reg_3102_pp0_iter10_reg <= data_x_1_reg_3102_pp0_iter9_reg;
        data_x_1_reg_3102_pp0_iter11_reg <= data_x_1_reg_3102_pp0_iter10_reg;
        data_x_1_reg_3102_pp0_iter12_reg <= data_x_1_reg_3102_pp0_iter11_reg;
        data_x_1_reg_3102_pp0_iter13_reg <= data_x_1_reg_3102_pp0_iter12_reg;
        data_x_1_reg_3102_pp0_iter14_reg <= data_x_1_reg_3102_pp0_iter13_reg;
        data_x_1_reg_3102_pp0_iter8_reg <= data_x_1_reg_3102;
        data_x_1_reg_3102_pp0_iter9_reg <= data_x_1_reg_3102_pp0_iter8_reg;
        data_x_2_reg_3309_pp0_iter12_reg <= data_x_2_reg_3309;
        data_x_2_reg_3309_pp0_iter13_reg <= data_x_2_reg_3309_pp0_iter12_reg;
        data_x_2_reg_3309_pp0_iter14_reg <= data_x_2_reg_3309_pp0_iter13_reg;
        data_x_3_reg_3319_pp0_iter12_reg <= data_x_3_reg_3319;
        data_x_3_reg_3319_pp0_iter13_reg <= data_x_3_reg_3319_pp0_iter12_reg;
        data_x_3_reg_3319_pp0_iter14_reg <= data_x_3_reg_3319_pp0_iter13_reg;
        data_y_1_2_reg_3127_pp0_iter10_reg <= data_y_1_2_reg_3127_pp0_iter9_reg;
        data_y_1_2_reg_3127_pp0_iter11_reg <= data_y_1_2_reg_3127_pp0_iter10_reg;
        data_y_1_2_reg_3127_pp0_iter12_reg <= data_y_1_2_reg_3127_pp0_iter11_reg;
        data_y_1_2_reg_3127_pp0_iter13_reg <= data_y_1_2_reg_3127_pp0_iter12_reg;
        data_y_1_2_reg_3127_pp0_iter14_reg <= data_y_1_2_reg_3127_pp0_iter13_reg;
        data_y_1_2_reg_3127_pp0_iter15_reg <= data_y_1_2_reg_3127_pp0_iter14_reg;
        data_y_1_2_reg_3127_pp0_iter8_reg <= data_y_1_2_reg_3127;
        data_y_1_2_reg_3127_pp0_iter9_reg <= data_y_1_2_reg_3127_pp0_iter8_reg;
        data_y_1_reg_3107_pp0_iter10_reg <= data_y_1_reg_3107_pp0_iter9_reg;
        data_y_1_reg_3107_pp0_iter11_reg <= data_y_1_reg_3107_pp0_iter10_reg;
        data_y_1_reg_3107_pp0_iter12_reg <= data_y_1_reg_3107_pp0_iter11_reg;
        data_y_1_reg_3107_pp0_iter13_reg <= data_y_1_reg_3107_pp0_iter12_reg;
        data_y_1_reg_3107_pp0_iter14_reg <= data_y_1_reg_3107_pp0_iter13_reg;
        data_y_1_reg_3107_pp0_iter8_reg <= data_y_1_reg_3107;
        data_y_1_reg_3107_pp0_iter9_reg <= data_y_1_reg_3107_pp0_iter8_reg;
        data_y_2_reg_3314_pp0_iter12_reg <= data_y_2_reg_3314;
        data_y_2_reg_3314_pp0_iter13_reg <= data_y_2_reg_3314_pp0_iter12_reg;
        data_y_2_reg_3314_pp0_iter14_reg <= data_y_2_reg_3314_pp0_iter13_reg;
        part_sel1_reg_2175 <= {{ap_sig_allocacmp_tid_7[5:1]}};
        part_sel1_reg_2175_pp0_iter10_reg <= part_sel1_reg_2175_pp0_iter9_reg;
        part_sel1_reg_2175_pp0_iter11_reg <= part_sel1_reg_2175_pp0_iter10_reg;
        part_sel1_reg_2175_pp0_iter12_reg <= part_sel1_reg_2175_pp0_iter11_reg;
        part_sel1_reg_2175_pp0_iter13_reg <= part_sel1_reg_2175_pp0_iter12_reg;
        part_sel1_reg_2175_pp0_iter14_reg <= part_sel1_reg_2175_pp0_iter13_reg;
        part_sel1_reg_2175_pp0_iter15_reg <= part_sel1_reg_2175_pp0_iter14_reg;
        part_sel1_reg_2175_pp0_iter16_reg <= part_sel1_reg_2175_pp0_iter15_reg;
        part_sel1_reg_2175_pp0_iter17_reg <= part_sel1_reg_2175_pp0_iter16_reg;
        part_sel1_reg_2175_pp0_iter18_reg <= part_sel1_reg_2175_pp0_iter17_reg;
        part_sel1_reg_2175_pp0_iter19_reg <= part_sel1_reg_2175_pp0_iter18_reg;
        part_sel1_reg_2175_pp0_iter1_reg <= part_sel1_reg_2175;
        part_sel1_reg_2175_pp0_iter20_reg <= part_sel1_reg_2175_pp0_iter19_reg;
        part_sel1_reg_2175_pp0_iter21_reg <= part_sel1_reg_2175_pp0_iter20_reg;
        part_sel1_reg_2175_pp0_iter22_reg <= part_sel1_reg_2175_pp0_iter21_reg;
        part_sel1_reg_2175_pp0_iter23_reg <= part_sel1_reg_2175_pp0_iter22_reg;
        part_sel1_reg_2175_pp0_iter24_reg <= part_sel1_reg_2175_pp0_iter23_reg;
        part_sel1_reg_2175_pp0_iter25_reg <= part_sel1_reg_2175_pp0_iter24_reg;
        part_sel1_reg_2175_pp0_iter26_reg <= part_sel1_reg_2175_pp0_iter25_reg;
        part_sel1_reg_2175_pp0_iter27_reg <= part_sel1_reg_2175_pp0_iter26_reg;
        part_sel1_reg_2175_pp0_iter28_reg <= part_sel1_reg_2175_pp0_iter27_reg;
        part_sel1_reg_2175_pp0_iter29_reg <= part_sel1_reg_2175_pp0_iter28_reg;
        part_sel1_reg_2175_pp0_iter2_reg <= part_sel1_reg_2175_pp0_iter1_reg;
        part_sel1_reg_2175_pp0_iter30_reg <= part_sel1_reg_2175_pp0_iter29_reg;
        part_sel1_reg_2175_pp0_iter31_reg <= part_sel1_reg_2175_pp0_iter30_reg;
        part_sel1_reg_2175_pp0_iter32_reg <= part_sel1_reg_2175_pp0_iter31_reg;
        part_sel1_reg_2175_pp0_iter33_reg <= part_sel1_reg_2175_pp0_iter32_reg;
        part_sel1_reg_2175_pp0_iter34_reg <= part_sel1_reg_2175_pp0_iter33_reg;
        part_sel1_reg_2175_pp0_iter35_reg <= part_sel1_reg_2175_pp0_iter34_reg;
        part_sel1_reg_2175_pp0_iter36_reg <= part_sel1_reg_2175_pp0_iter35_reg;
        part_sel1_reg_2175_pp0_iter37_reg <= part_sel1_reg_2175_pp0_iter36_reg;
        part_sel1_reg_2175_pp0_iter38_reg <= part_sel1_reg_2175_pp0_iter37_reg;
        part_sel1_reg_2175_pp0_iter39_reg <= part_sel1_reg_2175_pp0_iter38_reg;
        part_sel1_reg_2175_pp0_iter3_reg <= part_sel1_reg_2175_pp0_iter2_reg;
        part_sel1_reg_2175_pp0_iter40_reg <= part_sel1_reg_2175_pp0_iter39_reg;
        part_sel1_reg_2175_pp0_iter41_reg <= part_sel1_reg_2175_pp0_iter40_reg;
        part_sel1_reg_2175_pp0_iter42_reg <= part_sel1_reg_2175_pp0_iter41_reg;
        part_sel1_reg_2175_pp0_iter43_reg <= part_sel1_reg_2175_pp0_iter42_reg;
        part_sel1_reg_2175_pp0_iter44_reg <= part_sel1_reg_2175_pp0_iter43_reg;
        part_sel1_reg_2175_pp0_iter45_reg <= part_sel1_reg_2175_pp0_iter44_reg;
        part_sel1_reg_2175_pp0_iter46_reg <= part_sel1_reg_2175_pp0_iter45_reg;
        part_sel1_reg_2175_pp0_iter4_reg <= part_sel1_reg_2175_pp0_iter3_reg;
        part_sel1_reg_2175_pp0_iter5_reg <= part_sel1_reg_2175_pp0_iter4_reg;
        part_sel1_reg_2175_pp0_iter6_reg <= part_sel1_reg_2175_pp0_iter5_reg;
        part_sel1_reg_2175_pp0_iter7_reg <= part_sel1_reg_2175_pp0_iter6_reg;
        part_sel1_reg_2175_pp0_iter8_reg <= part_sel1_reg_2175_pp0_iter7_reg;
        part_sel1_reg_2175_pp0_iter9_reg <= part_sel1_reg_2175_pp0_iter8_reg;
        tid_7_reg_2164 <= ap_sig_allocacmp_tid_7;
        tmp_128_reg_2171 <= ap_sig_allocacmp_tid_7[32'd6];
        zext_ln130_cast_reg_2184[4 : 0] <= zext_ln130_cast_fu_1037_p3[4 : 0];
        zext_ln158_reg_3508[7 : 2] <= zext_ln158_fu_2093_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_18_reg_2981 <= grp_fu_300_p_dout0;
        c0_x_19_reg_2993 <= grp_fu_308_p_dout0;
        c0_x_6_reg_2947 <= grp_fu_284_p_dout0;
        c0_x_7_reg_2959 <= grp_fu_292_p_dout0;
        c0_y_18_reg_2987 <= grp_fu_304_p_dout0;
        c0_y_19_reg_2999 <= grp_fu_312_p_dout0;
        c0_y_6_reg_2953 <= grp_fu_288_p_dout0;
        c0_y_7_reg_2965 <= grp_fu_296_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        c0_x_20_reg_3029 <= grp_fu_384_p_dout0;
        c0_x_9_reg_3005 <= grp_fu_368_p_dout0;
        c0_y_9_reg_3011 <= grp_fu_372_p_dout0;
        mul3_reg_3017 <= grp_fu_376_p_dout0;
        mul5_reg_3023 <= grp_fu_380_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        c0_y_20_reg_3035 <= grp_fu_376_p_dout0;
        mul170_1_reg_3041 <= grp_fu_380_p_dout0;
        mul176_1_reg_3047 <= grp_fu_384_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_0_1_reg_3147 <= grp_fu_260_p_dout0;
        data_x_0_reg_3132 <= grp_fu_252_p_dout0;
        data_y_0_1_reg_3152 <= grp_fu_264_p_dout0;
        data_y_0_reg_3137 <= grp_fu_256_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_1_2_reg_3122 <= grp_fu_324_p_dout0;
        data_x_1_reg_3102 <= grp_fu_316_p_dout0;
        data_y_1_2_reg_3127 <= grp_fu_328_p_dout0;
        data_y_1_reg_3107 <= grp_fu_320_p_dout0;
        mul219_1_reg_3117 <= grp_fu_368_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_2_2_reg_3359 <= grp_fu_304_p_dout0;
        data_x_3_2_reg_3369 <= grp_fu_312_p_dout0;
        data_x_4_2_reg_3389 <= grp_fu_320_p_dout0;
        data_x_4_reg_3339 <= grp_fu_288_p_dout0;
        data_x_5_2_reg_3399 <= grp_fu_328_p_dout0;
        data_x_5_reg_3349 <= grp_fu_296_p_dout0;
        data_y_2_2_reg_3364 <= grp_fu_308_p_dout0;
        data_y_3_2_reg_3374 <= grp_fu_316_p_dout0;
        data_y_3_reg_3334 <= grp_fu_284_p_dout0;
        data_y_4_2_reg_3394 <= grp_fu_324_p_dout0;
        data_y_4_reg_3344 <= grp_fu_292_p_dout0;
        data_y_5_2_reg_3404 <= grp_fu_332_p_dout0;
        data_y_5_reg_3354 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_2_reg_3309 <= grp_fu_340_p_dout0;
        data_x_3_reg_3319 <= grp_fu_348_p_dout0;
        data_y_2_reg_3314 <= grp_fu_344_p_dout0;
        mul291_1_reg_3324 <= grp_fu_380_p_dout0;
        mul298_1_reg_3329 <= grp_fu_384_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter44 == 1'b1))) begin
        data_x_5_1_reg_3478 <= grp_twiddles8_fu_388_p_dout0_4;
        data_x_6_1_reg_3483 <= grp_twiddles8_fu_388_p_dout0_5;
        data_x_7_1_reg_3488 <= grp_twiddles8_fu_388_p_dout0_6;
        data_y_5_1_reg_3493 <= grp_twiddles8_fu_388_p_dout0_11;
        data_y_6_1_reg_3498 <= grp_twiddles8_fu_388_p_dout0_12;
        data_y_7_1_reg_3503 <= grp_twiddles8_fu_388_p_dout0_13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        data_x_5_3_reg_3514 <= grp_twiddles8_fu_388_p_dout0_4;
        data_x_6_3_reg_3519 <= grp_twiddles8_fu_388_p_dout0_5;
        data_x_7_3_reg_3524 <= grp_twiddles8_fu_388_p_dout0_6;
        data_y_5_3_reg_3529 <= grp_twiddles8_fu_388_p_dout0_11;
        data_y_6_3_reg_3534 <= grp_twiddles8_fu_388_p_dout0_12;
        data_y_7_3_reg_3539 <= grp_twiddles8_fu_388_p_dout0_13;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_2_reg_3453 <= grp_fu_352_p_dout0;
        data_x_7_2_reg_3463 <= grp_fu_360_p_dout0;
        data_y_6_2_reg_3458 <= grp_fu_356_p_dout0;
        data_y_7_2_reg_3468 <= grp_fu_364_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3433 <= grp_fu_336_p_dout0;
        data_x_7_reg_3443 <= grp_fu_344_p_dout0;
        data_y_6_reg_3438 <= grp_fu_340_p_dout0;
        data_y_7_reg_3448 <= grp_fu_348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul2_reg_3289 <= grp_fu_372_p_dout0;
        mul4_reg_3294 <= grp_fu_376_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter44 == 1'b1)))) begin
        reg_1000 <= grp_twiddles8_fu_388_p_dout0_9;
        reg_1005 <= grp_twiddles8_fu_388_p_dout0_10;
        reg_967 <= grp_twiddles8_fu_388_p_dout0_0;
        reg_972 <= grp_twiddles8_fu_388_p_dout0_1;
        reg_978 <= grp_twiddles8_fu_388_p_dout0_2;
        reg_983 <= grp_twiddles8_fu_388_p_dout0_3;
        reg_989 <= grp_twiddles8_fu_388_p_dout0_7;
        reg_994 <= grp_twiddles8_fu_388_p_dout0_8;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_935 <= work_x_0_q1;
        reg_939 <= work_x_0_q0;
        reg_943 <= work_y_0_q1;
        reg_947 <= work_y_0_q0;
        reg_951 <= work_x_1_q1;
        reg_955 <= work_x_1_q0;
        reg_959 <= work_y_1_q1;
        reg_963 <= work_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sub11_reg_3409 <= grp_fu_352_p_dout0;
        sub12_reg_3415 <= grp_fu_356_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub208_1_reg_2897_pp0_iter5_reg <= sub208_1_reg_2897;
        sub208_1_reg_2897_pp0_iter6_reg <= sub208_1_reg_2897_pp0_iter5_reg;
        sub2_reg_2865_pp0_iter5_reg <= sub2_reg_2865;
        sub2_reg_2865_pp0_iter6_reg <= sub2_reg_2865_pp0_iter5_reg;
        tmp_3_reg_2891_pp0_iter5_reg <= tmp_3_reg_2891;
        tmp_3_reg_2891_pp0_iter6_reg <= tmp_3_reg_2891_pp0_iter5_reg;
        tmp_4_reg_3193_pp0_iter10_reg <= tmp_4_reg_3193_pp0_iter9_reg;
        tmp_4_reg_3193_pp0_iter9_reg <= tmp_4_reg_3193;
        tmp_reg_2859_pp0_iter5_reg <= tmp_reg_2859;
        tmp_reg_2859_pp0_iter6_reg <= tmp_reg_2859_pp0_iter5_reg;
        zext_ln154_1_reg_3163[7 : 3] <= zext_ln154_1_fu_1921_p1[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter10_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter9_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter11_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter10_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter12_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter11_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter13_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter12_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter14_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter13_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter15_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter14_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter16_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter15_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter17_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter16_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter18_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter17_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter19_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter18_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter20_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter19_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter21_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter20_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter22_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter21_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter23_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter22_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter24_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter23_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter25_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter24_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter26_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter25_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter27_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter26_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter28_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter27_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter29_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter28_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter30_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter29_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter31_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter30_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter32_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter31_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter33_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter32_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter34_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter33_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter35_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter34_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter36_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter35_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter37_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter36_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter38_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter37_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter39_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter38_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter40_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter39_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter41_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter40_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter42_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter41_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter43_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter42_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter44_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter43_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter45_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter44_reg[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter8_reg[7 : 3] <= zext_ln154_1_reg_3163[7 : 3];
        zext_ln154_1_reg_3163_pp0_iter9_reg[7 : 3] <= zext_ln154_1_reg_3163_pp0_iter8_reg[7 : 3];
        zext_ln154_reg_3157[7 : 2] <= zext_ln154_fu_1908_p1[7 : 2];
        zext_ln154_reg_3157_pp0_iter10_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter9_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter11_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter10_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter12_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter11_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter13_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter12_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter14_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter13_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter15_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter14_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter16_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter15_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter17_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter16_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter18_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter17_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter19_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter18_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter20_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter19_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter21_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter20_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter22_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter21_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter23_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter22_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter24_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter23_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter25_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter24_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter26_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter25_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter27_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter26_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter28_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter27_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter29_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter28_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter30_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter29_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter31_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter30_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter32_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter31_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter33_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter32_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter34_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter33_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter35_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter34_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter36_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter35_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter37_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter36_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter38_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter37_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter39_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter38_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter40_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter39_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter41_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter40_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter42_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter41_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter43_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter42_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter44_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter43_reg[7 : 2];
        zext_ln154_reg_3157_pp0_iter8_reg[7 : 2] <= zext_ln154_reg_3157[7 : 2];
        zext_ln154_reg_3157_pp0_iter9_reg[7 : 2] <= zext_ln154_reg_3157_pp0_iter8_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sub294_1_reg_3421 <= grp_fu_360_p_dout0;
        sub299_1_reg_3427 <= grp_fu_364_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        tmp_4_reg_3193 <= grp_fu_364_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        work_x_0_load_5_reg_2281 <= work_x_0_q1;
        work_x_0_load_7_reg_2291 <= work_x_0_q0;
        work_x_1_load_5_reg_2321 <= work_x_1_q1;
        work_x_1_load_7_reg_2331 <= work_x_1_q0;
        work_y_0_load_5_reg_2301 <= work_y_0_q1;
        work_y_0_load_7_reg_2311 <= work_y_0_q0;
        work_y_1_load_5_reg_2341 <= work_y_1_q1;
        work_y_1_load_7_reg_2351 <= work_y_1_q0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_1_address0_local = zext_ln160_1_fu_2149_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_1_address0_local = zext_ln156_1_reg_3544;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_1_address0_local = zext_ln160_fu_2106_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_1_address0_local = zext_ln156_fu_2078_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_1_address1_local = zext_ln158_1_fu_2134_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_1_address1_local = zext_ln154_1_reg_3163_pp0_iter45_reg;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_1_address1_local = zext_ln158_reg_3508;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_1_address1_local = zext_ln154_reg_3157_pp0_iter44_reg;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_1_d0_local = data_x_7_3_reg_3524;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_1_d0_local = data_x_7_1_reg_3488;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1)))) begin
        DATA_x_1_d0_local = reg_978;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_1_d1_local = data_x_5_3_reg_3514;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_1_d1_local = data_x_5_1_reg_3478;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1)))) begin
        DATA_x_1_d1_local = reg_967;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_address0_local = zext_ln160_1_fu_2149_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_address0_local = zext_ln156_1_fu_2121_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_address0_local = zext_ln158_fu_2093_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln154_1_fu_1921_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_address1_local = zext_ln158_1_fu_2134_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_address1_local = zext_ln160_fu_2106_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_address1_local = zext_ln156_fu_2078_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln154_fu_1908_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_d0_local = data_x_6_3_reg_3519;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_d0_local = reg_972;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_d0_local = reg_983;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        DATA_x_d0_local = data_x_0_1_reg_3147;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_x_d1_local = reg_983;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_d1_local = data_x_6_1_reg_3483;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_x_d1_local = reg_972;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        DATA_x_d1_local = data_x_0_reg_3132;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_1_address0_local = zext_ln160_1_fu_2149_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_1_address0_local = zext_ln156_1_reg_3544;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_1_address0_local = zext_ln160_fu_2106_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_1_address0_local = zext_ln156_fu_2078_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_1_address1_local = zext_ln158_1_fu_2134_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_1_address1_local = zext_ln154_1_reg_3163_pp0_iter45_reg;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_1_address1_local = zext_ln158_reg_3508;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_1_address1_local = zext_ln154_reg_3157_pp0_iter44_reg;
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_1_d0_local = data_y_7_3_reg_3539;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_1_d0_local = data_y_7_1_reg_3503;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1)))) begin
        DATA_y_1_d0_local = reg_1000;
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_1_d1_local = data_y_5_3_reg_3529;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_1_d1_local = data_y_5_1_reg_3493;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1)))) begin
        DATA_y_1_d1_local = reg_989;
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_address0_local = zext_ln160_1_fu_2149_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_address0_local = zext_ln156_1_fu_2121_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_address0_local = zext_ln158_fu_2093_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        DATA_y_address0_local = zext_ln154_1_fu_1921_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_address1_local = zext_ln158_1_fu_2134_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_address1_local = zext_ln160_fu_2106_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_address1_local = zext_ln156_fu_2078_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        DATA_y_address1_local = zext_ln154_fu_1908_p1;
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_d0_local = data_y_6_3_reg_3534;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_d0_local = reg_994;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_d0_local = reg_1005;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        DATA_y_d0_local = data_y_0_1_reg_3152;
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter46 == 1'b1))) begin
        DATA_y_d1_local = reg_1005;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_d1_local = data_y_6_1_reg_3498;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter45 == 1'b1))) begin
        DATA_y_d1_local = reg_994;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        DATA_y_d1_local = data_y_0_reg_3137;
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter45 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter46 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter45_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter46 == 1'b0) & (ap_enable_reg_pp0_iter45 == 1'b0)& (ap_enable_reg_pp0_iter44 == 1'b0) & (ap_enable_reg_pp0_iter43 == 1'b0) & (ap_enable_reg_pp0_iter42 == 1'b0) & (ap_enable_reg_pp0_iter41 == 1'b0) & (ap_enable_reg_pp0_iter40 == 1'b0) & (ap_enable_reg_pp0_iter39 == 1'b0) & (ap_enable_reg_pp0_iter38 == 1'b0) & (ap_enable_reg_pp0_iter37 == 1'b0) & (ap_enable_reg_pp0_iter36 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter46 == 1'b0) & (ap_enable_reg_pp0_iter45 == 1'b0) & (ap_enable_reg_pp0_iter44 == 1'b0)& (ap_enable_reg_pp0_iter43 == 1'b0) & (ap_enable_reg_pp0_iter42 == 1'b0) & (ap_enable_reg_pp0_iter41 == 1'b0) & (ap_enable_reg_pp0_iter40 == 1'b0) & (ap_enable_reg_pp0_iter39 == 1'b0) & (ap_enable_reg_pp0_iter38 == 1'b0) & (ap_enable_reg_pp0_iter37 == 1'b0) & (ap_enable_reg_pp0_iter36 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b0))) begin
        ap_idle_pp0_1to46 = 1'b1;
    end else begin
        ap_idle_pp0_1to46 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tid_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_7 = tid_fu_112;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_733_p0 = c0_x_6_reg_2947;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_733_p0 = c0_x_fu_1305_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_733_p0 = c0_x_67_fu_1257_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_733_p0 = c0_x_66_fu_1140_p1;
    end else begin
        grp_fu_733_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_733_p1 = add2_reg_2903;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_733_p1 = bitcast_ln133_fu_1311_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_733_p1 = bitcast_ln135_fu_1263_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_733_p1 = bitcast_ln134_fu_1168_p1;
    end else begin
        grp_fu_733_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_737_p0 = c0_y_6_reg_2953;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_737_p0 = c0_y_fu_1317_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_737_p0 = c0_y_69_fu_1269_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_737_p0 = c0_y_68_fu_1178_p1;
    end else begin
        grp_fu_737_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_737_p1 = add3_reg_2909;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_737_p1 = bitcast_ln142_fu_1323_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_737_p1 = bitcast_ln144_fu_1275_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_737_p1 = bitcast_ln143_fu_1190_p1;
    end else begin
        grp_fu_737_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_741_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_741_opcode = 2'd0;
    end else begin
        grp_fu_741_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_741_p0 = c0_x_18_reg_2981;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_741_p0 = c0_x_fu_1305_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_741_p0 = c0_x_67_fu_1257_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_741_p0 = c0_x_66_fu_1140_p1;
    end else begin
        grp_fu_741_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_741_p1 = add199_1_reg_2925;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_741_p1 = bitcast_ln133_fu_1311_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_741_p1 = bitcast_ln135_fu_1263_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_741_p1 = bitcast_ln134_fu_1168_p1;
    end else begin
        grp_fu_741_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_745_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_745_opcode = 2'd0;
    end else begin
        grp_fu_745_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_745_p0 = c0_y_18_reg_2987;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_745_p0 = c0_y_fu_1317_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_745_p0 = c0_y_69_fu_1269_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_745_p0 = c0_y_68_fu_1178_p1;
    end else begin
        grp_fu_745_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_745_p1 = add202_1_reg_2931;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_745_p1 = bitcast_ln142_fu_1323_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_745_p1 = bitcast_ln144_fu_1275_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_745_p1 = bitcast_ln143_fu_1190_p1;
    end else begin
        grp_fu_745_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_749_p0 = c0_x_9_reg_3005;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_749_p0 = c0_x_69_fu_1329_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_749_p0 = c0_x_71_fu_1281_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_749_p0 = c0_x_68_fu_1146_p1;
    end else begin
        grp_fu_749_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_749_p1 = mul3_reg_3017;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_749_p1 = bitcast_ln133_1_fu_1335_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_749_p1 = bitcast_ln135_1_fu_1287_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_749_p1 = bitcast_ln136_fu_1173_p1;
    end else begin
        grp_fu_749_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_753_p0 = c0_y_9_reg_3011;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_753_p0 = c0_y_71_fu_1341_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_753_p0 = c0_y_73_fu_1293_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_753_p0 = c0_y_70_fu_1184_p1;
    end else begin
        grp_fu_753_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_753_p1 = mul5_reg_3023;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_753_p1 = bitcast_ln142_1_fu_1347_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_753_p1 = bitcast_ln144_1_fu_1299_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_753_p1 = bitcast_ln145_fu_1195_p1;
    end else begin
        grp_fu_753_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_757_p0 = c0_x_9_reg_3005;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_757_p0 = c0_x_69_fu_1329_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_757_p0 = c0_x_71_fu_1281_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_757_p0 = c0_x_68_fu_1146_p1;
    end else begin
        grp_fu_757_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_757_p1 = mul3_reg_3017;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_757_p1 = bitcast_ln133_1_fu_1335_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_757_p1 = bitcast_ln135_1_fu_1287_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_757_p1 = bitcast_ln136_fu_1173_p1;
    end else begin
        grp_fu_757_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_761_p0 = c0_y_9_reg_3011;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_761_p0 = c0_y_71_fu_1341_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_761_p0 = c0_y_73_fu_1293_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_761_p0 = c0_y_70_fu_1184_p1;
    end else begin
        grp_fu_761_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_761_p1 = mul5_reg_3023;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_761_p1 = bitcast_ln142_1_fu_1347_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_761_p1 = bitcast_ln144_1_fu_1299_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_761_p1 = bitcast_ln145_fu_1195_p1;
    end else begin
        grp_fu_761_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_765_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_765_opcode = 2'd0;
    end else begin
        grp_fu_765_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_765_p0 = c0_y_7_reg_2965_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_765_p0 = c0_x_4_reg_2781;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_765_p0 = c0_x_5_reg_2597;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_765_p0 = c0_x_70_fu_1203_p1;
    end else begin
        grp_fu_765_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_765_p1 = sub6_reg_3205;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_765_p1 = add4_reg_2689;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_765_p1 = add6_reg_2621;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_765_p1 = bitcast_ln134_1_fu_1215_p1;
    end else begin
        grp_fu_765_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_769_p0 = c0_x_11_reg_3211;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_769_p0 = c0_y_4_reg_2787;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_769_p0 = c0_y_5_reg_2603;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_769_p0 = c0_y_72_fu_1225_p1;
    end else begin
        grp_fu_769_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_769_p1 = add_reg_3169_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_769_p1 = add5_reg_2695;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_769_p1 = add7_reg_2627;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_769_p1 = bitcast_ln143_1_fu_1237_p1;
    end else begin
        grp_fu_769_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_773_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_773_opcode = 2'd0;
    end else begin
        grp_fu_773_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_773_p0 = c0_y_11_reg_3217;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_773_p0 = c0_x_4_reg_2781;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_773_p0 = c0_x_15_reg_2643;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_773_p0 = c0_x_70_fu_1203_p1;
    end else begin
        grp_fu_773_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_773_p1 = add10_reg_3175_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_773_p1 = add4_reg_2689;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_773_p1 = add127_1_reg_2667;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_773_p1 = bitcast_ln134_1_fu_1215_p1;
    end else begin
        grp_fu_773_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_777_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001))) begin
        grp_fu_777_opcode = 2'd0;
    end else begin
        grp_fu_777_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_777_p0 = c0_x_11_reg_3211;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_777_p0 = c0_y_4_reg_2787;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_777_p0 = c0_y_15_reg_2649;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_777_p0 = c0_y_72_fu_1225_p1;
    end else begin
        grp_fu_777_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_777_p1 = add_reg_3169_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_777_p1 = add5_reg_2695;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_777_p1 = add130_1_reg_2673;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_777_p1 = bitcast_ln143_1_fu_1237_p1;
    end else begin
        grp_fu_777_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_781_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_781_opcode = 2'd0;
    end else begin
        grp_fu_781_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_781_p0 = c0_y_11_reg_3217;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_781_p0 = mul6_reg_2839;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_781_p0 = c0_x_21_reg_2805;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_781_p0 = c0_x_72_fu_1209_p1;
    end else begin
        grp_fu_781_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_781_p1 = add10_reg_3175_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_781_p1 = bitcast_ln148_5_fu_1658_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_781_p1 = add111_1_reg_2735;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_781_p1 = bitcast_ln136_1_fu_1220_p1;
    end else begin
        grp_fu_781_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_785_p0 = c0_x_19_reg_2993_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_785_p0 = bitcast_ln148_7_fu_1692_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_785_p0 = c0_y_21_reg_2811;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_785_p0 = c0_y_74_fu_1231_p1;
    end else begin
        grp_fu_785_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_785_p1 = sub215_1_reg_3235;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_785_p1 = mul9_reg_2844;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_785_p1 = add114_1_reg_2741;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_785_p1 = bitcast_ln145_1_fu_1242_p1;
    end else begin
        grp_fu_785_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_789_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_789_opcode = 2'd0;
    end else begin
        grp_fu_789_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_789_p0 = c0_y_19_reg_2999_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_789_p0 = mul154_1_reg_2915;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_789_p0 = c0_x_21_reg_2805;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_789_p0 = c0_x_72_fu_1209_p1;
    end else begin
        grp_fu_789_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_789_p1 = sub220_1_reg_3277;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_789_p1 = bitcast_ln148_25_fu_1726_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_789_p1 = add111_1_reg_2735;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_789_p1 = bitcast_ln136_1_fu_1220_p1;
    end else begin
        grp_fu_789_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_128_reg_2171 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_793_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001))) begin
        grp_fu_793_opcode = 2'd0;
    end else begin
        grp_fu_793_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_793_p0 = c0_x_19_reg_2993_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_793_p0 = bitcast_ln148_27_fu_1760_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_793_p0 = c0_y_21_reg_2811;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_793_p0 = c0_y_74_fu_1231_p1;
    end else begin
        grp_fu_793_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_793_p1 = sub215_1_reg_3235;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_793_p1 = mul161_1_reg_2920;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_793_p1 = add114_1_reg_2741;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_793_p1 = bitcast_ln145_1_fu_1242_p1;
    end else begin
        grp_fu_793_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_797_p0 = c0_y_19_reg_2999_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_797_p0 = mul_reg_3065;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_797_p0 = c0_x_6_reg_2947;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_797_p0 = tmp_1_reg_2609;
    end else begin
        grp_fu_797_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_797_p1 = sub220_1_reg_3277;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_797_p1 = bitcast_ln148_13_fu_1794_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_797_p1 = add2_reg_2903;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_797_p1 = bitcast_ln148_1_fu_1382_p1;
    end else begin
        grp_fu_797_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_801_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_801_opcode = 2'd0;
    end else begin
        grp_fu_801_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_801_p0 = c0_x_23_reg_3241;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_801_p0 = bitcast_ln148_15_fu_1828_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_801_p0 = c0_y_6_reg_2953;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_801_p0 = bitcast_ln148_3_fu_1416_p1;
    end else begin
        grp_fu_801_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_801_p1 = add278_1_reg_3265;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_801_p1 = mul1_reg_3070;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_801_p1 = add3_reg_2909;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_801_p1 = sub3_reg_2615;
    end else begin
        grp_fu_801_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_805_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_805_opcode = 2'd0;
    end else begin
        grp_fu_805_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_805_p0 = c0_y_23_reg_3247;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_805_p0 = c0_x_8_reg_2793_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_805_p0 = c0_x_18_reg_2981;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_805_p0 = bitcast_ln148_9_fu_1450_p1;
    end else begin
        grp_fu_805_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_805_p1 = add281_1_reg_3283;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_805_p1 = sub9_reg_3053;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_805_p1 = add199_1_reg_2925;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_805_p1 = bitcast_ln148_11_fu_1485_p1;
    end else begin
        grp_fu_805_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_809_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_809_opcode = 2'd0;
    end else begin
        grp_fu_809_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_809_p0 = c0_x_23_reg_3241;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_809_p0 = c0_y_8_reg_2799_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_809_p0 = c0_y_18_reg_2987;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_809_p0 = bitcast_ln148_9_fu_1450_p1;
    end else begin
        grp_fu_809_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_809_p1 = add278_1_reg_3265;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_809_p1 = add9_reg_3059;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_809_p1 = add202_1_reg_2931;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_809_p1 = bitcast_ln148_11_fu_1485_p1;
    end else begin
        grp_fu_809_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_813_p0 = c0_y_23_reg_3247;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_813_p0 = bitcast_ln148_35_fu_1896_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_813_p0 = c0_x_8_reg_2793_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_813_p0 = c0_x_5_reg_2597;
    end else begin
        grp_fu_813_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_813_p1 = add281_1_reg_3283;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_813_p1 = mul219_1_reg_3117;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_813_p1 = sub9_reg_3053;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_813_p1 = add6_reg_2621;
    end else begin
        grp_fu_813_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_817_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)))) begin
        grp_fu_817_opcode = 2'd0;
    end else begin
        grp_fu_817_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_817_p0 = c0_x_10_reg_3223_pp0_iter11_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_817_p0 = c0_y_20_reg_3035;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_817_p0 = c0_y_8_reg_2799_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_817_p0 = c0_y_5_reg_2603;
    end else begin
        grp_fu_817_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_817_p1 = sub11_reg_3409;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_817_p1 = mul176_1_reg_3047;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_817_p1 = add9_reg_3059;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_817_p1 = add7_reg_2627;
    end else begin
        grp_fu_817_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_821_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)))) begin
        grp_fu_821_opcode = 2'd0;
    end else begin
        grp_fu_821_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_821_p0 = c0_y_10_reg_3229_pp0_iter11_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_821_p0 = c0_x_7_reg_2959_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_821_p0 = mul212_1_reg_3087;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_821_p0 = tmp_1_3_reg_2655;
    end else begin
        grp_fu_821_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_821_p1 = sub12_reg_3415;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_821_p1 = sub4_reg_3199;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_821_p1 = bitcast_ln148_33_fu_1862_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_821_p1 = bitcast_ln148_21_fu_1520_p1;
    end else begin
        grp_fu_821_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_825_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_825_opcode = 2'd0;
    end else begin
        grp_fu_825_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_825_p0 = c0_x_10_reg_3223_pp0_iter11_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_825_p0 = c0_y_7_reg_2965_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_825_p0 = c0_x_13_reg_2817_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_825_p0 = bitcast_ln148_23_fu_1554_p1;
    end else begin
        grp_fu_825_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_825_p1 = sub11_reg_3409;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_825_p1 = sub6_reg_3205;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_825_p1 = sub157_1_reg_3075;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_825_p1 = sub104_1_reg_2661;
    end else begin
        grp_fu_825_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)))) begin
        grp_fu_829_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001))) begin
        grp_fu_829_opcode = 2'd0;
    end else begin
        grp_fu_829_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_829_p0 = c0_y_10_reg_3229_pp0_iter11_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_829_p0 = c0_x_7_reg_2959_pp0_iter9_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_829_p0 = c0_y_13_reg_2823_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_829_p0 = bitcast_ln148_29_fu_1588_p1;
    end else begin
        grp_fu_829_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_829_p1 = sub12_reg_3415;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_829_p1 = sub4_reg_3199;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_829_p1 = add162_1_reg_3081;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_829_p1 = bitcast_ln148_31_fu_1623_p1;
    end else begin
        grp_fu_829_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_833_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_833_opcode = 2'd0;
    end else begin
        grp_fu_833_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_833_p0 = c0_x_22_reg_3253_pp0_iter12_reg;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_833_p0 = mul2_reg_3289;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_833_p0 = c0_x_13_reg_2817_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_833_p0 = bitcast_ln148_29_fu_1588_p1;
    end else begin
        grp_fu_833_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_833_p1 = sub294_1_reg_3421;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_833_p1 = bitcast_ln148_17_fu_1956_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_833_p1 = sub157_1_reg_3075;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_833_p1 = bitcast_ln148_31_fu_1623_p1;
    end else begin
        grp_fu_833_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_837_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_837_opcode = 2'd0;
    end else begin
        grp_fu_837_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_837_p0 = c0_y_22_reg_3259_pp0_iter12_reg;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_837_p0 = bitcast_ln148_19_fu_1990_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_837_p0 = c0_y_13_reg_2823_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_837_p0 = c0_x_15_reg_2643;
    end else begin
        grp_fu_837_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_837_p1 = sub299_1_reg_3427;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_837_p1 = mul4_reg_3294;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_837_p1 = add162_1_reg_3081;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_837_p1 = add127_1_reg_2667;
    end else begin
        grp_fu_837_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)))) begin
        grp_fu_841_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001))) begin
        grp_fu_841_opcode = 2'd0;
    end else begin
        grp_fu_841_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_841_p0 = c0_x_22_reg_3253_pp0_iter12_reg;
    end else if (((ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_841_p0 = mul291_1_reg_3324;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_841_p0 = c0_x_20_reg_3029;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_841_p0 = c0_y_15_reg_2649;
    end else begin
        grp_fu_841_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_841_p1 = sub294_1_reg_3421;
    end else if (((ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_841_p1 = bitcast_ln148_37_fu_2024_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_841_p1 = mul170_1_reg_3041;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_841_p1 = add130_1_reg_2673;
    end else begin
        grp_fu_841_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_845_p0 = c0_y_22_reg_3259_pp0_iter12_reg;
    end else if (((ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_845_p0 = bitcast_ln148_39_fu_2058_p1;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_845_p0 = c0_y_20_reg_3035;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_845_p0 = c0_x_20_reg_3029;
    end else begin
        grp_fu_845_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_845_p1 = sub299_1_reg_3427;
    end else if (((ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_845_p1 = mul298_1_reg_3329;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_845_p1 = mul176_1_reg_3047;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_845_p1 = mul170_1_reg_3041;
    end else begin
        grp_fu_845_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_849_p0 = sub208_1_reg_2897;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_849_p0 = sub8_reg_2829;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_849_p0 = tmp_1_4_reg_2747;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_849_p0 = tmp_1_1_reg_2701;
    end else begin
        grp_fu_849_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_849_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_849_p1 = 64'd0;
    end else begin
        grp_fu_849_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_854_p0 = tmp_2_reg_3181;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_854_p0 = add8_reg_2834;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_854_p0 = sub120_1_reg_2753;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_854_p0 = sub5_reg_2707;
    end else begin
        grp_fu_854_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_854_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)))) begin
        grp_fu_854_p1 = 64'd0;
    end else begin
        grp_fu_854_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_861_p0 = sub10_reg_3187;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_861_p0 = tmp_reg_2859;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_861_p0 = add149_1_reg_2876;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_861_p0 = sub1_reg_2849;
    end else begin
        grp_fu_861_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)))) begin
        grp_fu_861_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_861_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_861_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_866_p0 = tmp_4_reg_3193;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_866_p0 = sub2_reg_2865;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_866_p0 = sub169_1_reg_2881;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_866_p0 = add1_reg_2854;
    end else begin
        grp_fu_866_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)))) begin
        grp_fu_866_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_866_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_866_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_871_p0 = sub287_1_reg_3271;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_871_p0 = tmp_3_reg_2891;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_871_p0 = add175_1_reg_2886;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_871_p0 = sub143_1_reg_2871;
    end else begin
        grp_fu_871_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)))) begin
        grp_fu_871_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_871_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_871_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_x_1_read = data_x_1_2_reg_3122_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_x_1_read = data_x_1_reg_3102_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_x_1_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_x_2_read = data_x_2_2_reg_3359_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_x_2_read = data_x_2_reg_3309_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_x_2_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_x_3_read = data_x_3_2_reg_3369_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_x_3_read = data_x_3_reg_3319_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_x_3_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_x_4_read = data_x_4_2_reg_3389_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_x_4_read = data_x_4_reg_3339_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_x_4_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_x_5_read = data_x_5_2_reg_3399_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_x_5_read = data_x_5_reg_3349_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_x_5_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_x_6_read = data_x_6_2_reg_3453;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_x_6_read = data_x_6_reg_3433;
    end else begin
        grp_twiddles8_fu_700_a_x_6_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_x_7_read = data_x_7_2_reg_3463;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_x_7_read = data_x_7_reg_3443;
    end else begin
        grp_twiddles8_fu_700_a_x_7_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_y_1_read = data_y_1_2_reg_3127_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_y_1_read = data_y_1_reg_3107_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_y_1_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_y_2_read = data_y_2_2_reg_3364_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_y_2_read = data_y_2_reg_3314_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_y_2_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_y_3_read = data_y_3_2_reg_3374_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_y_3_read = data_y_3_reg_3334_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_y_3_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_y_4_read = data_y_4_2_reg_3394_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_y_4_read = data_y_4_reg_3344_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_y_4_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_y_5_read = data_y_5_2_reg_3404_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_y_5_read = data_y_5_reg_3354_pp0_iter14_reg;
    end else begin
        grp_twiddles8_fu_700_a_y_5_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_y_6_read = data_y_6_2_reg_3458;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_y_6_read = data_y_6_reg_3438;
    end else begin
        grp_twiddles8_fu_700_a_y_6_read = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_a_y_7_read = data_y_7_2_reg_3468;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_a_y_7_read = data_y_7_reg_3448;
    end else begin
        grp_twiddles8_fu_700_a_y_7_read = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp1535)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp1550)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp1545)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp1540)))) begin
        grp_twiddles8_fu_700_ap_ce = 1'b1;
    end else begin
        grp_twiddles8_fu_700_ap_ce = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1558))) begin
        grp_twiddles8_fu_700_i = or_ln6_fu_2063_p3;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1535))) begin
        grp_twiddles8_fu_700_i = trunc_ln151_reg_2424_pp0_iter13_reg;
    end else begin
        grp_twiddles8_fu_700_i = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_0_address0_local = zext_ln133_fu_1160_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_0_address0_local = zext_ln135_fu_1122_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_0_address0_local = zext_ln136_fu_1095_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_0_address0_local = zext_ln132_fu_1057_p1;
        end else begin
            work_x_0_address0_local = 'bx;
        end
    end else begin
        work_x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_0_address1_local = zext_ln114_fu_1133_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_0_address1_local = zext_ln131_fu_1110_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_0_address1_local = zext_ln134_fu_1084_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_0_address1_local = zext_ln130_fu_1045_p1;
        end else begin
            work_x_0_address1_local = 'bx;
        end
    end else begin
        work_x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        work_x_0_ce0_local = 1'b1;
    end else begin
        work_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        work_x_0_ce1_local = 1'b1;
    end else begin
        work_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_1_address0_local = zext_ln133_fu_1160_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_1_address0_local = zext_ln135_fu_1122_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_1_address0_local = zext_ln136_fu_1095_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_1_address0_local = zext_ln132_fu_1057_p1;
        end else begin
            work_x_1_address0_local = 'bx;
        end
    end else begin
        work_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_1_address1_local = zext_ln114_fu_1133_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_1_address1_local = zext_ln131_fu_1110_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_1_address1_local = zext_ln134_fu_1084_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_1_address1_local = zext_ln130_fu_1045_p1;
        end else begin
            work_x_1_address1_local = 'bx;
        end
    end else begin
        work_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        work_x_1_ce0_local = 1'b1;
    end else begin
        work_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        work_x_1_ce1_local = 1'b1;
    end else begin
        work_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_0_address0_local = zext_ln133_fu_1160_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_0_address0_local = zext_ln135_fu_1122_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_0_address0_local = zext_ln136_fu_1095_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_0_address0_local = zext_ln132_fu_1057_p1;
        end else begin
            work_y_0_address0_local = 'bx;
        end
    end else begin
        work_y_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_0_address1_local = zext_ln114_fu_1133_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_0_address1_local = zext_ln131_fu_1110_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_0_address1_local = zext_ln134_fu_1084_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_0_address1_local = zext_ln130_fu_1045_p1;
        end else begin
            work_y_0_address1_local = 'bx;
        end
    end else begin
        work_y_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        work_y_0_ce0_local = 1'b1;
    end else begin
        work_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        work_y_0_ce1_local = 1'b1;
    end else begin
        work_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_1_address0_local = zext_ln133_fu_1160_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_1_address0_local = zext_ln135_fu_1122_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_1_address0_local = zext_ln136_fu_1095_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_1_address0_local = zext_ln132_fu_1057_p1;
        end else begin
            work_y_1_address0_local = 'bx;
        end
    end else begin
        work_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_1_address1_local = zext_ln114_fu_1133_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_1_address1_local = zext_ln131_fu_1110_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_1_address1_local = zext_ln134_fu_1084_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_1_address1_local = zext_ln130_fu_1045_p1;
        end else begin
            work_y_1_address1_local = 'bx;
        end
    end else begin
        work_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        work_y_1_ce0_local = 1'b1;
    end else begin
        work_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        work_y_1_ce1_local = 1'b1;
    end else begin
        work_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to46 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = DATA_y_1_d0_local;
assign DATA_y_1_d1 = DATA_y_1_d1_local;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = DATA_y_d0_local;
assign DATA_y_d1 = DATA_y_d1_local;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln127_fu_1247_p2 = (tid_7_reg_2164 + 7'd2);
assign add_ln134_fu_1078_p2 = ($signed(zext_ln114_1_fu_1074_p1) + $signed(8'd160));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001_ignoreCallOp1545 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001_ignoreCallOp1550 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001_ignoreCallOp1535 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp1535 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001_ignoreCallOp1540 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp1558 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bit_sel10_fu_1597_p3 = bitcast_ln148_30_fu_1594_p1[64'd63];
assign bit_sel11_fu_1768_p3 = bitcast_ln148_12_fu_1765_p1[64'd63];
assign bit_sel12_fu_1802_p3 = bitcast_ln148_14_fu_1799_p1[64'd63];
assign bit_sel13_fu_1562_p3 = bitcast_ln148_28_fu_1559_p1[64'd63];
assign bit_sel14_fu_1930_p3 = bitcast_ln148_16_fu_1927_p1[64'd63];
assign bit_sel15_fu_1964_p3 = bitcast_ln148_18_fu_1961_p1[64'd63];
assign bit_sel16_fu_1734_p3 = bitcast_ln148_26_fu_1731_p1[64'd63];
assign bit_sel17_fu_1494_p3 = bitcast_ln148_20_fu_1491_p1[64'd63];
assign bit_sel18_fu_1528_p3 = bitcast_ln148_22_fu_1525_p1[64'd63];
assign bit_sel19_fu_1700_p3 = bitcast_ln148_24_fu_1697_p1[64'd63];
assign bit_sel1_fu_1998_p3 = bitcast_ln148_36_fu_1995_p1[64'd63];
assign bit_sel2_fu_1356_p3 = bitcast_ln148_fu_1353_p1[64'd63];
assign bit_sel3_fu_1390_p3 = bitcast_ln148_2_fu_1387_p1[64'd63];
assign bit_sel4_fu_1870_p3 = bitcast_ln148_34_fu_1867_p1[64'd63];
assign bit_sel5_fu_1632_p3 = bitcast_ln148_4_fu_1629_p1[64'd63];
assign bit_sel6_fu_1666_p3 = bitcast_ln148_6_fu_1663_p1[64'd63];
assign bit_sel7_fu_1836_p3 = bitcast_ln148_32_fu_1833_p1[64'd63];
assign bit_sel8_fu_1424_p3 = bitcast_ln148_8_fu_1421_p1[64'd63];
assign bit_sel9_fu_1459_p3 = bitcast_ln148_10_fu_1456_p1[64'd63];
assign bit_sel_fu_2032_p3 = bitcast_ln148_38_fu_2029_p1[64'd63];
assign bitcast_ln133_1_fu_1335_p1 = reg_955;
assign bitcast_ln133_fu_1311_p1 = reg_939;
assign bitcast_ln134_1_fu_1215_p1 = work_x_1_load_5_reg_2321;
assign bitcast_ln134_fu_1168_p1 = work_x_0_load_5_reg_2281;
assign bitcast_ln135_1_fu_1287_p1 = reg_955;
assign bitcast_ln135_fu_1263_p1 = reg_939;
assign bitcast_ln136_1_fu_1220_p1 = work_x_1_load_7_reg_2331;
assign bitcast_ln136_fu_1173_p1 = work_x_0_load_7_reg_2291;
assign bitcast_ln142_1_fu_1347_p1 = reg_963;
assign bitcast_ln142_fu_1323_p1 = reg_947;
assign bitcast_ln143_1_fu_1237_p1 = work_y_1_load_5_reg_2341;
assign bitcast_ln143_fu_1190_p1 = work_y_0_load_5_reg_2301;
assign bitcast_ln144_1_fu_1299_p1 = reg_963;
assign bitcast_ln144_fu_1275_p1 = reg_947;
assign bitcast_ln145_1_fu_1242_p1 = work_y_1_load_7_reg_2351;
assign bitcast_ln145_fu_1195_p1 = work_y_0_load_7_reg_2311;
assign bitcast_ln148_10_fu_1456_p1 = sub7_reg_2638;
assign bitcast_ln148_11_fu_1485_p1 = xor_ln148_5_fu_1477_p3;
assign bitcast_ln148_12_fu_1765_p1 = sub2_reg_2865_pp0_iter6_reg;
assign bitcast_ln148_13_fu_1794_p1 = xor_ln148_6_fu_1786_p3;
assign bitcast_ln148_14_fu_1799_p1 = tmp_reg_2859_pp0_iter6_reg;
assign bitcast_ln148_15_fu_1828_p1 = xor_ln148_7_fu_1820_p3;
assign bitcast_ln148_16_fu_1927_p1 = sub10_reg_3187_pp0_iter9_reg;
assign bitcast_ln148_17_fu_1956_p1 = xor_ln148_8_fu_1948_p3;
assign bitcast_ln148_18_fu_1961_p1 = tmp_2_reg_3181_pp0_iter9_reg;
assign bitcast_ln148_19_fu_1990_p1 = xor_ln148_9_fu_1982_p3;
assign bitcast_ln148_1_fu_1382_p1 = xor_ln1_fu_1374_p3;
assign bitcast_ln148_20_fu_1491_p1 = sub104_1_reg_2661;
assign bitcast_ln148_21_fu_1520_p1 = xor_ln148_s_fu_1512_p3;
assign bitcast_ln148_22_fu_1525_p1 = tmp_1_3_reg_2655;
assign bitcast_ln148_23_fu_1554_p1 = xor_ln148_10_fu_1546_p3;
assign bitcast_ln148_24_fu_1697_p1 = sub120_1_reg_2753_pp0_iter4_reg;
assign bitcast_ln148_25_fu_1726_p1 = xor_ln148_11_fu_1718_p3;
assign bitcast_ln148_26_fu_1731_p1 = tmp_1_4_reg_2747_pp0_iter4_reg;
assign bitcast_ln148_27_fu_1760_p1 = xor_ln148_12_fu_1752_p3;
assign bitcast_ln148_28_fu_1559_p1 = tmp_1_5_reg_2679;
assign bitcast_ln148_29_fu_1588_p1 = xor_ln148_13_fu_1580_p3;
assign bitcast_ln148_2_fu_1387_p1 = tmp_1_reg_2609;
assign bitcast_ln148_30_fu_1594_p1 = sub136_1_reg_2684;
assign bitcast_ln148_31_fu_1623_p1 = xor_ln148_14_fu_1615_p3;
assign bitcast_ln148_32_fu_1833_p1 = sub208_1_reg_2897_pp0_iter6_reg;
assign bitcast_ln148_33_fu_1862_p1 = xor_ln148_15_fu_1854_p3;
assign bitcast_ln148_34_fu_1867_p1 = tmp_3_reg_2891_pp0_iter6_reg;
assign bitcast_ln148_35_fu_1896_p1 = xor_ln148_16_fu_1888_p3;
assign bitcast_ln148_36_fu_1995_p1 = sub287_1_reg_3271_pp0_iter10_reg;
assign bitcast_ln148_37_fu_2024_p1 = xor_ln148_17_fu_2016_p3;
assign bitcast_ln148_38_fu_2029_p1 = tmp_4_reg_3193_pp0_iter10_reg;
assign bitcast_ln148_39_fu_2058_p1 = xor_ln148_18_fu_2050_p3;
assign bitcast_ln148_3_fu_1416_p1 = xor_ln148_1_fu_1408_p3;
assign bitcast_ln148_4_fu_1629_p1 = sub5_reg_2707_pp0_iter4_reg;
assign bitcast_ln148_5_fu_1658_p1 = xor_ln148_2_fu_1650_p3;
assign bitcast_ln148_6_fu_1663_p1 = tmp_1_1_reg_2701_pp0_iter4_reg;
assign bitcast_ln148_7_fu_1692_p1 = xor_ln148_3_fu_1684_p3;
assign bitcast_ln148_8_fu_1421_p1 = tmp_1_2_reg_2633;
assign bitcast_ln148_9_fu_1450_p1 = xor_ln148_4_fu_1442_p3;
assign bitcast_ln148_fu_1353_p1 = sub3_reg_2615;
assign c0_x_66_fu_1140_p1 = reg_935;
assign c0_x_67_fu_1257_p1 = reg_935;
assign c0_x_68_fu_1146_p1 = reg_939;
assign c0_x_69_fu_1329_p1 = reg_951;
assign c0_x_70_fu_1203_p1 = reg_951;
assign c0_x_71_fu_1281_p1 = reg_951;
assign c0_x_72_fu_1209_p1 = reg_955;
assign c0_x_fu_1305_p1 = reg_935;
assign c0_y_68_fu_1178_p1 = reg_943;
assign c0_y_69_fu_1269_p1 = reg_943;
assign c0_y_70_fu_1184_p1 = reg_947;
assign c0_y_71_fu_1341_p1 = reg_959;
assign c0_y_72_fu_1225_p1 = reg_959;
assign c0_y_73_fu_1293_p1 = reg_959;
assign c0_y_74_fu_1231_p1 = reg_963;
assign c0_y_fu_1317_p1 = reg_943;
assign grp_fu_252_p_ce = 1'b1;
assign grp_fu_252_p_din0 = grp_fu_733_p0;
assign grp_fu_252_p_din1 = grp_fu_733_p1;
assign grp_fu_252_p_opcode = 2'd0;
assign grp_fu_256_p_ce = 1'b1;
assign grp_fu_256_p_din0 = grp_fu_737_p0;
assign grp_fu_256_p_din1 = grp_fu_737_p1;
assign grp_fu_256_p_opcode = 2'd0;
assign grp_fu_260_p_ce = 1'b1;
assign grp_fu_260_p_din0 = grp_fu_741_p0;
assign grp_fu_260_p_din1 = grp_fu_741_p1;
assign grp_fu_260_p_opcode = grp_fu_741_opcode;
assign grp_fu_264_p_ce = 1'b1;
assign grp_fu_264_p_din0 = grp_fu_745_p0;
assign grp_fu_264_p_din1 = grp_fu_745_p1;
assign grp_fu_264_p_opcode = grp_fu_745_opcode;
assign grp_fu_268_p_ce = 1'b1;
assign grp_fu_268_p_din0 = grp_fu_749_p0;
assign grp_fu_268_p_din1 = grp_fu_749_p1;
assign grp_fu_268_p_opcode = 2'd0;
assign grp_fu_272_p_ce = 1'b1;
assign grp_fu_272_p_din0 = grp_fu_753_p0;
assign grp_fu_272_p_din1 = grp_fu_753_p1;
assign grp_fu_272_p_opcode = 2'd0;
assign grp_fu_276_p_ce = 1'b1;
assign grp_fu_276_p_din0 = grp_fu_757_p0;
assign grp_fu_276_p_din1 = grp_fu_757_p1;
assign grp_fu_276_p_opcode = 2'd1;
assign grp_fu_280_p_ce = 1'b1;
assign grp_fu_280_p_din0 = grp_fu_761_p0;
assign grp_fu_280_p_din1 = grp_fu_761_p1;
assign grp_fu_280_p_opcode = 2'd1;
assign grp_fu_284_p_ce = 1'b1;
assign grp_fu_284_p_din0 = grp_fu_765_p0;
assign grp_fu_284_p_din1 = grp_fu_765_p1;
assign grp_fu_284_p_opcode = grp_fu_765_opcode;
assign grp_fu_288_p_ce = 1'b1;
assign grp_fu_288_p_din0 = grp_fu_769_p0;
assign grp_fu_288_p_din1 = grp_fu_769_p1;
assign grp_fu_288_p_opcode = 2'd0;
assign grp_fu_292_p_ce = 1'b1;
assign grp_fu_292_p_din0 = grp_fu_773_p0;
assign grp_fu_292_p_din1 = grp_fu_773_p1;
assign grp_fu_292_p_opcode = grp_fu_773_opcode;
assign grp_fu_296_p_ce = 1'b1;
assign grp_fu_296_p_din0 = grp_fu_777_p0;
assign grp_fu_296_p_din1 = grp_fu_777_p1;
assign grp_fu_296_p_opcode = grp_fu_777_opcode;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_781_p0;
assign grp_fu_300_p_din1 = grp_fu_781_p1;
assign grp_fu_300_p_opcode = grp_fu_781_opcode;
assign grp_fu_304_p_ce = 1'b1;
assign grp_fu_304_p_din0 = grp_fu_785_p0;
assign grp_fu_304_p_din1 = grp_fu_785_p1;
assign grp_fu_304_p_opcode = 2'd0;
assign grp_fu_308_p_ce = 1'b1;
assign grp_fu_308_p_din0 = grp_fu_789_p0;
assign grp_fu_308_p_din1 = grp_fu_789_p1;
assign grp_fu_308_p_opcode = grp_fu_789_opcode;
assign grp_fu_312_p_ce = 1'b1;
assign grp_fu_312_p_din0 = grp_fu_793_p0;
assign grp_fu_312_p_din1 = grp_fu_793_p1;
assign grp_fu_312_p_opcode = grp_fu_793_opcode;
assign grp_fu_316_p_ce = 1'b1;
assign grp_fu_316_p_din0 = grp_fu_797_p0;
assign grp_fu_316_p_din1 = grp_fu_797_p1;
assign grp_fu_316_p_opcode = 2'd1;
assign grp_fu_320_p_ce = 1'b1;
assign grp_fu_320_p_din0 = grp_fu_801_p0;
assign grp_fu_320_p_din1 = grp_fu_801_p1;
assign grp_fu_320_p_opcode = grp_fu_801_opcode;
assign grp_fu_324_p_ce = 1'b1;
assign grp_fu_324_p_din0 = grp_fu_805_p0;
assign grp_fu_324_p_din1 = grp_fu_805_p1;
assign grp_fu_324_p_opcode = grp_fu_805_opcode;
assign grp_fu_328_p_ce = 1'b1;
assign grp_fu_328_p_din0 = grp_fu_809_p0;
assign grp_fu_328_p_din1 = grp_fu_809_p1;
assign grp_fu_328_p_opcode = grp_fu_809_opcode;
assign grp_fu_332_p_ce = 1'b1;
assign grp_fu_332_p_din0 = grp_fu_813_p0;
assign grp_fu_332_p_din1 = grp_fu_813_p1;
assign grp_fu_332_p_opcode = 2'd1;
assign grp_fu_336_p_ce = 1'b1;
assign grp_fu_336_p_din0 = grp_fu_817_p0;
assign grp_fu_336_p_din1 = grp_fu_817_p1;
assign grp_fu_336_p_opcode = grp_fu_817_opcode;
assign grp_fu_340_p_ce = 1'b1;
assign grp_fu_340_p_din0 = grp_fu_821_p0;
assign grp_fu_340_p_din1 = grp_fu_821_p1;
assign grp_fu_340_p_opcode = grp_fu_821_opcode;
assign grp_fu_344_p_ce = 1'b1;
assign grp_fu_344_p_din0 = grp_fu_825_p0;
assign grp_fu_344_p_din1 = grp_fu_825_p1;
assign grp_fu_344_p_opcode = grp_fu_825_opcode;
assign grp_fu_348_p_ce = 1'b1;
assign grp_fu_348_p_din0 = grp_fu_829_p0;
assign grp_fu_348_p_din1 = grp_fu_829_p1;
assign grp_fu_348_p_opcode = grp_fu_829_opcode;
assign grp_fu_352_p_ce = 1'b1;
assign grp_fu_352_p_din0 = grp_fu_833_p0;
assign grp_fu_352_p_din1 = grp_fu_833_p1;
assign grp_fu_352_p_opcode = grp_fu_833_opcode;
assign grp_fu_356_p_ce = 1'b1;
assign grp_fu_356_p_din0 = grp_fu_837_p0;
assign grp_fu_356_p_din1 = grp_fu_837_p1;
assign grp_fu_356_p_opcode = grp_fu_837_opcode;
assign grp_fu_360_p_ce = 1'b1;
assign grp_fu_360_p_din0 = grp_fu_841_p0;
assign grp_fu_360_p_din1 = grp_fu_841_p1;
assign grp_fu_360_p_opcode = grp_fu_841_opcode;
assign grp_fu_364_p_ce = 1'b1;
assign grp_fu_364_p_din0 = grp_fu_845_p0;
assign grp_fu_364_p_din1 = grp_fu_845_p1;
assign grp_fu_364_p_opcode = 2'd1;
assign grp_fu_368_p_ce = 1'b1;
assign grp_fu_368_p_din0 = grp_fu_849_p0;
assign grp_fu_368_p_din1 = grp_fu_849_p1;
assign grp_fu_372_p_ce = 1'b1;
assign grp_fu_372_p_din0 = grp_fu_854_p0;
assign grp_fu_372_p_din1 = grp_fu_854_p1;
assign grp_fu_376_p_ce = 1'b1;
assign grp_fu_376_p_din0 = grp_fu_861_p0;
assign grp_fu_376_p_din1 = grp_fu_861_p1;
assign grp_fu_380_p_ce = 1'b1;
assign grp_fu_380_p_din0 = grp_fu_866_p0;
assign grp_fu_380_p_din1 = grp_fu_866_p1;
assign grp_fu_384_p_ce = 1'b1;
assign grp_fu_384_p_din0 = grp_fu_871_p0;
assign grp_fu_384_p_din1 = grp_fu_871_p1;
assign grp_twiddles8_fu_388_p_ce = grp_twiddles8_fu_700_ap_ce;
assign grp_twiddles8_fu_388_p_din1 = grp_twiddles8_fu_700_a_x_1_read;
assign grp_twiddles8_fu_388_p_din10 = grp_twiddles8_fu_700_a_y_3_read;
assign grp_twiddles8_fu_388_p_din11 = grp_twiddles8_fu_700_a_y_4_read;
assign grp_twiddles8_fu_388_p_din12 = grp_twiddles8_fu_700_a_y_5_read;
assign grp_twiddles8_fu_388_p_din13 = grp_twiddles8_fu_700_a_y_6_read;
assign grp_twiddles8_fu_388_p_din14 = grp_twiddles8_fu_700_a_y_7_read;
assign grp_twiddles8_fu_388_p_din15 = grp_twiddles8_fu_700_i;
assign grp_twiddles8_fu_388_p_din16 = 10'd512;
assign grp_twiddles8_fu_388_p_din2 = grp_twiddles8_fu_700_a_x_2_read;
assign grp_twiddles8_fu_388_p_din3 = grp_twiddles8_fu_700_a_x_3_read;
assign grp_twiddles8_fu_388_p_din4 = grp_twiddles8_fu_700_a_x_4_read;
assign grp_twiddles8_fu_388_p_din5 = grp_twiddles8_fu_700_a_x_5_read;
assign grp_twiddles8_fu_388_p_din6 = grp_twiddles8_fu_700_a_x_6_read;
assign grp_twiddles8_fu_388_p_din7 = grp_twiddles8_fu_700_a_x_7_read;
assign grp_twiddles8_fu_388_p_din8 = grp_twiddles8_fu_700_a_y_1_read;
assign grp_twiddles8_fu_388_p_din9 = grp_twiddles8_fu_700_a_y_2_read;
assign lshr_ln_fu_1065_p4 = {{tid_7_reg_2164[6:1]}};
assign or_ln156_1_fu_2114_p3 = {{part_sel1_reg_2175_pp0_iter46_reg}, {3'd5}};
assign or_ln158_1_fu_2127_p3 = {{part_sel1_reg_2175_pp0_iter46_reg}, {3'd6}};
assign or_ln160_1_fu_2142_p3 = {{part_sel1_reg_2175_pp0_iter46_reg}, {3'd7}};
assign or_ln3_fu_2071_p3 = {{trunc_ln151_reg_2424_pp0_iter44_reg}, {2'd1}};
assign or_ln4_fu_2086_p3 = {{trunc_ln151_reg_2424_pp0_iter44_reg}, {2'd2}};
assign or_ln5_fu_2099_p3 = {{trunc_ln151_reg_2424_pp0_iter44_reg}, {2'd3}};
assign or_ln6_fu_2063_p3 = {{part_sel1_reg_2175_pp0_iter15_reg}, {1'd1}};
assign part_sel1_fu_1027_p4 = {{ap_sig_allocacmp_tid_7[5:1]}};
assign sext_ln132_fu_1053_p1 = zext_ln130_cast_fu_1037_p3;
assign sext_ln135_fu_1118_p1 = zext_ln131_cast_fu_1103_p3;
assign sext_ln136_fu_1092_p1 = zext_ln130_cast_reg_2184;
assign shl_ln154_1_fu_1914_p3 = {{part_sel1_reg_2175_pp0_iter7_reg}, {3'd4}};
assign shl_ln_fu_1901_p3 = {{trunc_ln151_reg_2424_pp0_iter6_reg}, {2'd0}};
assign trunc_ln148_10_fu_1508_p1 = bitcast_ln148_20_fu_1491_p1[62:0];
assign trunc_ln148_11_fu_1542_p1 = bitcast_ln148_22_fu_1525_p1[62:0];
assign trunc_ln148_12_fu_1714_p1 = bitcast_ln148_24_fu_1697_p1[62:0];
assign trunc_ln148_13_fu_1748_p1 = bitcast_ln148_26_fu_1731_p1[62:0];
assign trunc_ln148_14_fu_1576_p1 = bitcast_ln148_28_fu_1559_p1[62:0];
assign trunc_ln148_15_fu_1611_p1 = bitcast_ln148_30_fu_1594_p1[62:0];
assign trunc_ln148_16_fu_1850_p1 = bitcast_ln148_32_fu_1833_p1[62:0];
assign trunc_ln148_17_fu_1884_p1 = bitcast_ln148_34_fu_1867_p1[62:0];
assign trunc_ln148_18_fu_2012_p1 = bitcast_ln148_36_fu_1995_p1[62:0];
assign trunc_ln148_19_fu_2046_p1 = bitcast_ln148_38_fu_2029_p1[62:0];
assign trunc_ln148_1_fu_1404_p1 = bitcast_ln148_2_fu_1387_p1[62:0];
assign trunc_ln148_2_fu_1646_p1 = bitcast_ln148_4_fu_1629_p1[62:0];
assign trunc_ln148_3_fu_1680_p1 = bitcast_ln148_6_fu_1663_p1[62:0];
assign trunc_ln148_4_fu_1438_p1 = bitcast_ln148_8_fu_1421_p1[62:0];
assign trunc_ln148_5_fu_1473_p1 = bitcast_ln148_10_fu_1456_p1[62:0];
assign trunc_ln148_6_fu_1782_p1 = bitcast_ln148_12_fu_1765_p1[62:0];
assign trunc_ln148_7_fu_1816_p1 = bitcast_ln148_14_fu_1799_p1[62:0];
assign trunc_ln148_8_fu_1944_p1 = bitcast_ln148_16_fu_1927_p1[62:0];
assign trunc_ln148_9_fu_1978_p1 = bitcast_ln148_18_fu_1961_p1[62:0];
assign trunc_ln148_fu_1370_p1 = bitcast_ln148_fu_1353_p1[62:0];
assign trunc_ln151_fu_1200_p1 = tid_7_reg_2164[5:0];
assign work_x_0_address0 = work_x_0_address0_local;
assign work_x_0_address1 = work_x_0_address1_local;
assign work_x_0_ce0 = work_x_0_ce0_local;
assign work_x_0_ce1 = work_x_0_ce1_local;
assign work_x_1_address0 = work_x_1_address0_local;
assign work_x_1_address1 = work_x_1_address1_local;
assign work_x_1_ce0 = work_x_1_ce0_local;
assign work_x_1_ce1 = work_x_1_ce1_local;
assign work_y_0_address0 = work_y_0_address0_local;
assign work_y_0_address1 = work_y_0_address1_local;
assign work_y_0_ce0 = work_y_0_ce0_local;
assign work_y_0_ce1 = work_y_0_ce1_local;
assign work_y_1_address0 = work_y_1_address0_local;
assign work_y_1_address1 = work_y_1_address1_local;
assign work_y_1_ce0 = work_y_1_ce0_local;
assign work_y_1_ce1 = work_y_1_ce1_local;
assign xor_ln148_10_fu_1546_p3 = {{xor_ln148_29_fu_1536_p2}, {trunc_ln148_11_fu_1542_p1}};
assign xor_ln148_11_fu_1718_p3 = {{xor_ln148_30_fu_1708_p2}, {trunc_ln148_12_fu_1714_p1}};
assign xor_ln148_12_fu_1752_p3 = {{xor_ln148_31_fu_1742_p2}, {trunc_ln148_13_fu_1748_p1}};
assign xor_ln148_13_fu_1580_p3 = {{xor_ln148_32_fu_1570_p2}, {trunc_ln148_14_fu_1576_p1}};
assign xor_ln148_14_fu_1615_p3 = {{xor_ln148_33_fu_1605_p2}, {trunc_ln148_15_fu_1611_p1}};
assign xor_ln148_15_fu_1854_p3 = {{xor_ln148_34_fu_1844_p2}, {trunc_ln148_16_fu_1850_p1}};
assign xor_ln148_16_fu_1888_p3 = {{xor_ln148_35_fu_1878_p2}, {trunc_ln148_17_fu_1884_p1}};
assign xor_ln148_17_fu_2016_p3 = {{xor_ln148_36_fu_2006_p2}, {trunc_ln148_18_fu_2012_p1}};
assign xor_ln148_18_fu_2050_p3 = {{xor_ln148_37_fu_2040_p2}, {trunc_ln148_19_fu_2046_p1}};
assign xor_ln148_19_fu_1364_p2 = (bit_sel2_fu_1356_p3 ^ 1'd1);
assign xor_ln148_1_fu_1408_p3 = {{xor_ln148_fu_1398_p2}, {trunc_ln148_1_fu_1404_p1}};
assign xor_ln148_20_fu_1640_p2 = (bit_sel5_fu_1632_p3 ^ 1'd1);
assign xor_ln148_21_fu_1674_p2 = (bit_sel6_fu_1666_p3 ^ 1'd1);
assign xor_ln148_22_fu_1432_p2 = (bit_sel8_fu_1424_p3 ^ 1'd1);
assign xor_ln148_23_fu_1467_p2 = (bit_sel9_fu_1459_p3 ^ 1'd1);
assign xor_ln148_24_fu_1776_p2 = (bit_sel11_fu_1768_p3 ^ 1'd1);
assign xor_ln148_25_fu_1810_p2 = (bit_sel12_fu_1802_p3 ^ 1'd1);
assign xor_ln148_26_fu_1938_p2 = (bit_sel14_fu_1930_p3 ^ 1'd1);
assign xor_ln148_27_fu_1972_p2 = (bit_sel15_fu_1964_p3 ^ 1'd1);
assign xor_ln148_28_fu_1502_p2 = (bit_sel17_fu_1494_p3 ^ 1'd1);
assign xor_ln148_29_fu_1536_p2 = (bit_sel18_fu_1528_p3 ^ 1'd1);
assign xor_ln148_2_fu_1650_p3 = {{xor_ln148_20_fu_1640_p2}, {trunc_ln148_2_fu_1646_p1}};
assign xor_ln148_30_fu_1708_p2 = (bit_sel19_fu_1700_p3 ^ 1'd1);
assign xor_ln148_31_fu_1742_p2 = (bit_sel16_fu_1734_p3 ^ 1'd1);
assign xor_ln148_32_fu_1570_p2 = (bit_sel13_fu_1562_p3 ^ 1'd1);
assign xor_ln148_33_fu_1605_p2 = (bit_sel10_fu_1597_p3 ^ 1'd1);
assign xor_ln148_34_fu_1844_p2 = (bit_sel7_fu_1836_p3 ^ 1'd1);
assign xor_ln148_35_fu_1878_p2 = (bit_sel4_fu_1870_p3 ^ 1'd1);
assign xor_ln148_36_fu_2006_p2 = (bit_sel1_fu_1998_p3 ^ 1'd1);
assign xor_ln148_37_fu_2040_p2 = (bit_sel_fu_2032_p3 ^ 1'd1);
assign xor_ln148_3_fu_1684_p3 = {{xor_ln148_21_fu_1674_p2}, {trunc_ln148_3_fu_1680_p1}};
assign xor_ln148_4_fu_1442_p3 = {{xor_ln148_22_fu_1432_p2}, {trunc_ln148_4_fu_1438_p1}};
assign xor_ln148_5_fu_1477_p3 = {{xor_ln148_23_fu_1467_p2}, {trunc_ln148_5_fu_1473_p1}};
assign xor_ln148_6_fu_1786_p3 = {{xor_ln148_24_fu_1776_p2}, {trunc_ln148_6_fu_1782_p1}};
assign xor_ln148_7_fu_1820_p3 = {{xor_ln148_25_fu_1810_p2}, {trunc_ln148_7_fu_1816_p1}};
assign xor_ln148_8_fu_1948_p3 = {{xor_ln148_26_fu_1938_p2}, {trunc_ln148_8_fu_1944_p1}};
assign xor_ln148_9_fu_1982_p3 = {{xor_ln148_27_fu_1972_p2}, {trunc_ln148_9_fu_1978_p1}};
assign xor_ln148_fu_1398_p2 = (bit_sel3_fu_1390_p3 ^ 1'd1);
assign xor_ln148_s_fu_1512_p3 = {{xor_ln148_28_fu_1502_p2}, {trunc_ln148_10_fu_1508_p1}};
assign xor_ln1_fu_1374_p3 = {{xor_ln148_19_fu_1364_p2}, {trunc_ln148_fu_1370_p1}};
assign zext_ln114_1_fu_1074_p1 = lshr_ln_fu_1065_p4;
assign zext_ln114_3_fu_1130_p1 = lshr_ln_reg_2229;
assign zext_ln114_fu_1133_p1 = lshr_ln_reg_2229;
assign zext_ln130_cast_fu_1037_p3 = {{1'd1}, {part_sel1_fu_1027_p4}};
assign zext_ln130_fu_1045_p1 = $unsigned(zext_ln130_cast_fu_1037_p3);
assign zext_ln131_cast_fu_1103_p3 = {{1'd1}, {lshr_ln_reg_2229}};
assign zext_ln131_fu_1110_p1 = $unsigned(zext_ln131_cast_fu_1103_p3);
assign zext_ln132_fu_1057_p1 = $unsigned(sext_ln132_fu_1053_p1);
assign zext_ln133_cast_fu_1152_p3 = {{1'd1}, {zext_ln114_3_fu_1130_p1}};
assign zext_ln133_fu_1160_p1 = zext_ln133_cast_fu_1152_p3;
assign zext_ln134_fu_1084_p1 = add_ln134_fu_1078_p2;
assign zext_ln135_fu_1122_p1 = $unsigned(sext_ln135_fu_1118_p1);
assign zext_ln136_fu_1095_p1 = $unsigned(sext_ln136_fu_1092_p1);
assign zext_ln154_1_fu_1921_p1 = shl_ln154_1_fu_1914_p3;
assign zext_ln154_fu_1908_p1 = shl_ln_fu_1901_p3;
assign zext_ln156_1_fu_2121_p1 = or_ln156_1_fu_2114_p3;
assign zext_ln156_fu_2078_p1 = or_ln3_fu_2071_p3;
assign zext_ln158_1_fu_2134_p1 = or_ln158_1_fu_2127_p3;
assign zext_ln158_fu_2093_p1 = or_ln4_fu_2086_p3;
assign zext_ln160_1_fu_2149_p1 = or_ln160_1_fu_2142_p3;
assign zext_ln160_fu_2106_p1 = or_ln5_fu_2099_p3;
always @ (posedge ap_clk) begin
    zext_ln130_cast_reg_2184[5] <= 1'b1;
    zext_ln154_reg_3157[1:0] <= 2'b00;
    zext_ln154_reg_3157[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter8_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter8_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter9_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter9_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter10_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter10_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter11_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter11_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter12_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter12_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter13_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter13_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter14_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter14_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter15_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter15_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter16_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter16_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter17_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter17_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter18_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter18_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter19_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter19_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter20_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter20_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter21_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter21_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter22_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter22_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter23_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter23_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter24_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter24_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter25_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter25_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter26_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter26_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter27_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter27_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter28_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter28_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter29_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter29_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter30_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter30_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter31_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter31_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter32_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter32_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter33_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter33_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter34_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter34_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter35_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter35_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter36_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter36_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter37_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter37_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter38_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter38_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter39_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter39_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter40_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter40_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter41_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter41_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter42_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter42_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter43_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter43_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3157_pp0_iter44_reg[1:0] <= 2'b00;
    zext_ln154_reg_3157_pp0_iter44_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163[2:0] <= 3'b100;
    zext_ln154_1_reg_3163[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter8_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter8_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter9_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter9_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter10_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter10_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter11_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter11_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter12_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter12_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter13_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter13_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter14_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter14_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter15_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter15_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter16_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter16_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter17_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter17_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter18_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter18_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter19_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter19_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter20_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter20_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter21_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter21_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter22_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter22_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter23_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter23_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter24_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter24_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter25_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter25_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter26_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter26_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter27_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter27_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter28_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter28_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter29_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter29_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter30_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter30_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter31_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter31_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter32_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter32_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter33_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter33_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter34_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter34_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter35_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter35_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter36_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter36_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter37_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter37_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter38_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter38_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter39_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter39_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter40_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter40_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter41_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter41_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter42_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter42_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter43_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter43_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter44_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter44_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln154_1_reg_3163_pp0_iter45_reg[2:0] <= 3'b100;
    zext_ln154_1_reg_3163_pp0_iter45_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln158_reg_3508[1:0] <= 2'b10;
    zext_ln158_reg_3508[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln156_1_reg_3544[2:0] <= 3'b101;
    zext_ln156_1_reg_3544[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 