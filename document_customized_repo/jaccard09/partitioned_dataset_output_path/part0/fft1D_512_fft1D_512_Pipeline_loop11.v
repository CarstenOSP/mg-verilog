
module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,work_x_0_address0,work_x_0_ce0,work_x_0_we0,work_x_0_d0,work_x_0_address1,work_x_0_ce1,work_x_0_we1,work_x_0_d1,work_y_0_address0,work_y_0_ce0,work_y_0_we0,work_y_0_d0,work_y_0_address1,work_y_0_ce1,work_y_0_we1,work_y_0_d1,work_x_1_address0,work_x_1_ce0,work_x_1_we0,work_x_1_d0,work_x_1_address1,work_x_1_ce1,work_x_1_we1,work_x_1_d1,work_y_1_address0,work_y_1_ce0,work_y_1_we0,work_y_1_d0,work_y_1_address1,work_y_1_ce1,work_y_1_we1,work_y_1_d1,work_y_3_address0,work_y_3_ce0,work_y_3_we0,work_y_3_d0,work_y_3_address1,work_y_3_ce1,work_y_3_we1,work_y_3_d1,work_y_2_address0,work_y_2_ce0,work_y_2_we0,work_y_2_d0,work_y_2_address1,work_y_2_ce1,work_y_2_we1,work_y_2_d1,work_x_3_address0,work_x_3_ce0,work_x_3_we0,work_x_3_d0,work_x_3_address1,work_x_3_ce1,work_x_3_we1,work_x_3_d1,work_x_2_address0,work_x_2_ce0,work_x_2_we0,work_x_2_d0,work_x_2_address1,work_x_2_ce1,work_x_2_we1,work_x_2_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,grp_fu_348_p_din0,grp_fu_348_p_din1,grp_fu_348_p_opcode,grp_fu_348_p_dout0,grp_fu_348_p_ce,grp_fu_352_p_din0,grp_fu_352_p_din1,grp_fu_352_p_opcode,grp_fu_352_p_dout0,grp_fu_352_p_ce,grp_fu_356_p_din0,grp_fu_356_p_din1,grp_fu_356_p_opcode,grp_fu_356_p_dout0,grp_fu_356_p_ce,grp_fu_360_p_din0,grp_fu_360_p_din1,grp_fu_360_p_opcode,grp_fu_360_p_dout0,grp_fu_360_p_ce,grp_fu_364_p_din0,grp_fu_364_p_din1,grp_fu_364_p_opcode,grp_fu_364_p_dout0,grp_fu_364_p_ce,grp_fu_368_p_din0,grp_fu_368_p_din1,grp_fu_368_p_opcode,grp_fu_368_p_dout0,grp_fu_368_p_ce,grp_fu_372_p_din0,grp_fu_372_p_din1,grp_fu_372_p_opcode,grp_fu_372_p_dout0,grp_fu_372_p_ce,grp_fu_376_p_din0,grp_fu_376_p_din1,grp_fu_376_p_opcode,grp_fu_376_p_dout0,grp_fu_376_p_ce,grp_fu_380_p_din0,grp_fu_380_p_din1,grp_fu_380_p_opcode,grp_fu_380_p_dout0,grp_fu_380_p_ce,grp_fu_384_p_din0,grp_fu_384_p_din1,grp_fu_384_p_opcode,grp_fu_384_p_dout0,grp_fu_384_p_ce,grp_fu_388_p_din0,grp_fu_388_p_din1,grp_fu_388_p_opcode,grp_fu_388_p_dout0,grp_fu_388_p_ce,grp_fu_392_p_din0,grp_fu_392_p_din1,grp_fu_392_p_opcode,grp_fu_392_p_dout0,grp_fu_392_p_ce,grp_fu_396_p_din0,grp_fu_396_p_din1,grp_fu_396_p_opcode,grp_fu_396_p_dout0,grp_fu_396_p_ce,grp_fu_400_p_din0,grp_fu_400_p_din1,grp_fu_400_p_opcode,grp_fu_400_p_dout0,grp_fu_400_p_ce,grp_fu_404_p_din0,grp_fu_404_p_din1,grp_fu_404_p_opcode,grp_fu_404_p_dout0,grp_fu_404_p_ce,grp_fu_408_p_din0,grp_fu_408_p_din1,grp_fu_408_p_opcode,grp_fu_408_p_dout0,grp_fu_408_p_ce,grp_fu_412_p_din0,grp_fu_412_p_din1,grp_fu_412_p_opcode,grp_fu_412_p_dout0,grp_fu_412_p_ce,grp_fu_416_p_din0,grp_fu_416_p_din1,grp_fu_416_p_opcode,grp_fu_416_p_dout0,grp_fu_416_p_ce,grp_fu_420_p_din0,grp_fu_420_p_din1,grp_fu_420_p_opcode,grp_fu_420_p_dout0,grp_fu_420_p_ce,grp_fu_424_p_din0,grp_fu_424_p_din1,grp_fu_424_p_opcode,grp_fu_424_p_dout0,grp_fu_424_p_ce,grp_fu_428_p_din0,grp_fu_428_p_din1,grp_fu_428_p_opcode,grp_fu_428_p_dout0,grp_fu_428_p_ce,grp_fu_432_p_din0,grp_fu_432_p_din1,grp_fu_432_p_opcode,grp_fu_432_p_dout0,grp_fu_432_p_ce,grp_fu_436_p_din0,grp_fu_436_p_din1,grp_fu_436_p_opcode,grp_fu_436_p_dout0,grp_fu_436_p_ce,grp_fu_440_p_din0,grp_fu_440_p_din1,grp_fu_440_p_opcode,grp_fu_440_p_dout0,grp_fu_440_p_ce,grp_fu_444_p_din0,grp_fu_444_p_din1,grp_fu_444_p_opcode,grp_fu_444_p_dout0,grp_fu_444_p_ce,grp_fu_448_p_din0,grp_fu_448_p_din1,grp_fu_448_p_opcode,grp_fu_448_p_dout0,grp_fu_448_p_ce,grp_fu_452_p_din0,grp_fu_452_p_din1,grp_fu_452_p_opcode,grp_fu_452_p_dout0,grp_fu_452_p_ce,grp_fu_456_p_din0,grp_fu_456_p_din1,grp_fu_456_p_opcode,grp_fu_456_p_dout0,grp_fu_456_p_ce,grp_fu_460_p_din0,grp_fu_460_p_din1,grp_fu_460_p_opcode,grp_fu_460_p_dout0,grp_fu_460_p_ce,grp_fu_464_p_din0,grp_fu_464_p_din1,grp_fu_464_p_dout0,grp_fu_464_p_ce,grp_fu_468_p_din0,grp_fu_468_p_din1,grp_fu_468_p_dout0,grp_fu_468_p_ce,grp_fu_472_p_din0,grp_fu_472_p_din1,grp_fu_472_p_dout0,grp_fu_472_p_ce,grp_fu_476_p_din0,grp_fu_476_p_din1,grp_fu_476_p_dout0,grp_fu_476_p_ce,grp_fu_480_p_din0,grp_fu_480_p_din1,grp_fu_480_p_dout0,grp_fu_480_p_ce);  
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
output  [6:0] work_x_0_address0;
output   work_x_0_ce0;
output   work_x_0_we0;
output  [63:0] work_x_0_d0;
output  [6:0] work_x_0_address1;
output   work_x_0_ce1;
output   work_x_0_we1;
output  [63:0] work_x_0_d1;
output  [6:0] work_y_0_address0;
output   work_y_0_ce0;
output   work_y_0_we0;
output  [63:0] work_y_0_d0;
output  [6:0] work_y_0_address1;
output   work_y_0_ce1;
output   work_y_0_we1;
output  [63:0] work_y_0_d1;
output  [6:0] work_x_1_address0;
output   work_x_1_ce0;
output   work_x_1_we0;
output  [63:0] work_x_1_d0;
output  [6:0] work_x_1_address1;
output   work_x_1_ce1;
output   work_x_1_we1;
output  [63:0] work_x_1_d1;
output  [6:0] work_y_1_address0;
output   work_y_1_ce0;
output   work_y_1_we0;
output  [63:0] work_y_1_d0;
output  [6:0] work_y_1_address1;
output   work_y_1_ce1;
output   work_y_1_we1;
output  [63:0] work_y_1_d1;
output  [6:0] work_y_3_address0;
output   work_y_3_ce0;
output   work_y_3_we0;
output  [63:0] work_y_3_d0;
output  [6:0] work_y_3_address1;
output   work_y_3_ce1;
output   work_y_3_we1;
output  [63:0] work_y_3_d1;
output  [6:0] work_y_2_address0;
output   work_y_2_ce0;
output   work_y_2_we0;
output  [63:0] work_y_2_d0;
output  [6:0] work_y_2_address1;
output   work_y_2_ce1;
output   work_y_2_we1;
output  [63:0] work_y_2_d1;
output  [6:0] work_x_3_address0;
output   work_x_3_ce0;
output   work_x_3_we0;
output  [63:0] work_x_3_d0;
output  [6:0] work_x_3_address1;
output   work_x_3_ce1;
output   work_x_3_we1;
output  [63:0] work_x_3_d1;
output  [6:0] work_x_2_address0;
output   work_x_2_ce0;
output   work_x_2_we0;
output  [63:0] work_x_2_d0;
output  [6:0] work_x_2_address1;
output   work_x_2_ce1;
output   work_x_2_we1;
output  [63:0] work_x_2_d1;
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
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
output  [0:0] grp_fu_356_p_opcode;
input  [63:0] grp_fu_356_p_dout0;
output   grp_fu_356_p_ce;
output  [63:0] grp_fu_360_p_din0;
output  [63:0] grp_fu_360_p_din1;
output  [0:0] grp_fu_360_p_opcode;
input  [63:0] grp_fu_360_p_dout0;
output   grp_fu_360_p_ce;
output  [63:0] grp_fu_364_p_din0;
output  [63:0] grp_fu_364_p_din1;
output  [1:0] grp_fu_364_p_opcode;
input  [63:0] grp_fu_364_p_dout0;
output   grp_fu_364_p_ce;
output  [63:0] grp_fu_368_p_din0;
output  [63:0] grp_fu_368_p_din1;
output  [0:0] grp_fu_368_p_opcode;
input  [63:0] grp_fu_368_p_dout0;
output   grp_fu_368_p_ce;
output  [63:0] grp_fu_372_p_din0;
output  [63:0] grp_fu_372_p_din1;
output  [1:0] grp_fu_372_p_opcode;
input  [63:0] grp_fu_372_p_dout0;
output   grp_fu_372_p_ce;
output  [63:0] grp_fu_376_p_din0;
output  [63:0] grp_fu_376_p_din1;
output  [1:0] grp_fu_376_p_opcode;
input  [63:0] grp_fu_376_p_dout0;
output   grp_fu_376_p_ce;
output  [63:0] grp_fu_380_p_din0;
output  [63:0] grp_fu_380_p_din1;
output  [1:0] grp_fu_380_p_opcode;
input  [63:0] grp_fu_380_p_dout0;
output   grp_fu_380_p_ce;
output  [63:0] grp_fu_384_p_din0;
output  [63:0] grp_fu_384_p_din1;
output  [1:0] grp_fu_384_p_opcode;
input  [63:0] grp_fu_384_p_dout0;
output   grp_fu_384_p_ce;
output  [63:0] grp_fu_388_p_din0;
output  [63:0] grp_fu_388_p_din1;
output  [1:0] grp_fu_388_p_opcode;
input  [63:0] grp_fu_388_p_dout0;
output   grp_fu_388_p_ce;
output  [63:0] grp_fu_392_p_din0;
output  [63:0] grp_fu_392_p_din1;
output  [1:0] grp_fu_392_p_opcode;
input  [63:0] grp_fu_392_p_dout0;
output   grp_fu_392_p_ce;
output  [63:0] grp_fu_396_p_din0;
output  [63:0] grp_fu_396_p_din1;
output  [1:0] grp_fu_396_p_opcode;
input  [63:0] grp_fu_396_p_dout0;
output   grp_fu_396_p_ce;
output  [63:0] grp_fu_400_p_din0;
output  [63:0] grp_fu_400_p_din1;
output  [1:0] grp_fu_400_p_opcode;
input  [63:0] grp_fu_400_p_dout0;
output   grp_fu_400_p_ce;
output  [63:0] grp_fu_404_p_din0;
output  [63:0] grp_fu_404_p_din1;
output  [1:0] grp_fu_404_p_opcode;
input  [63:0] grp_fu_404_p_dout0;
output   grp_fu_404_p_ce;
output  [63:0] grp_fu_408_p_din0;
output  [63:0] grp_fu_408_p_din1;
output  [1:0] grp_fu_408_p_opcode;
input  [63:0] grp_fu_408_p_dout0;
output   grp_fu_408_p_ce;
output  [63:0] grp_fu_412_p_din0;
output  [63:0] grp_fu_412_p_din1;
output  [0:0] grp_fu_412_p_opcode;
input  [63:0] grp_fu_412_p_dout0;
output   grp_fu_412_p_ce;
output  [63:0] grp_fu_416_p_din0;
output  [63:0] grp_fu_416_p_din1;
output  [1:0] grp_fu_416_p_opcode;
input  [63:0] grp_fu_416_p_dout0;
output   grp_fu_416_p_ce;
output  [63:0] grp_fu_420_p_din0;
output  [63:0] grp_fu_420_p_din1;
output  [0:0] grp_fu_420_p_opcode;
input  [63:0] grp_fu_420_p_dout0;
output   grp_fu_420_p_ce;
output  [63:0] grp_fu_424_p_din0;
output  [63:0] grp_fu_424_p_din1;
output  [1:0] grp_fu_424_p_opcode;
input  [63:0] grp_fu_424_p_dout0;
output   grp_fu_424_p_ce;
output  [63:0] grp_fu_428_p_din0;
output  [63:0] grp_fu_428_p_din1;
output  [1:0] grp_fu_428_p_opcode;
input  [63:0] grp_fu_428_p_dout0;
output   grp_fu_428_p_ce;
output  [63:0] grp_fu_432_p_din0;
output  [63:0] grp_fu_432_p_din1;
output  [0:0] grp_fu_432_p_opcode;
input  [63:0] grp_fu_432_p_dout0;
output   grp_fu_432_p_ce;
output  [63:0] grp_fu_436_p_din0;
output  [63:0] grp_fu_436_p_din1;
output  [0:0] grp_fu_436_p_opcode;
input  [63:0] grp_fu_436_p_dout0;
output   grp_fu_436_p_ce;
output  [63:0] grp_fu_440_p_din0;
output  [63:0] grp_fu_440_p_din1;
output  [1:0] grp_fu_440_p_opcode;
input  [63:0] grp_fu_440_p_dout0;
output   grp_fu_440_p_ce;
output  [63:0] grp_fu_444_p_din0;
output  [63:0] grp_fu_444_p_din1;
output  [1:0] grp_fu_444_p_opcode;
input  [63:0] grp_fu_444_p_dout0;
output   grp_fu_444_p_ce;
output  [63:0] grp_fu_448_p_din0;
output  [63:0] grp_fu_448_p_din1;
output  [1:0] grp_fu_448_p_opcode;
input  [63:0] grp_fu_448_p_dout0;
output   grp_fu_448_p_ce;
output  [63:0] grp_fu_452_p_din0;
output  [63:0] grp_fu_452_p_din1;
output  [1:0] grp_fu_452_p_opcode;
input  [63:0] grp_fu_452_p_dout0;
output   grp_fu_452_p_ce;
output  [63:0] grp_fu_456_p_din0;
output  [63:0] grp_fu_456_p_din1;
output  [1:0] grp_fu_456_p_opcode;
input  [63:0] grp_fu_456_p_dout0;
output   grp_fu_456_p_ce;
output  [63:0] grp_fu_460_p_din0;
output  [63:0] grp_fu_460_p_din1;
output  [1:0] grp_fu_460_p_opcode;
input  [63:0] grp_fu_460_p_dout0;
output   grp_fu_460_p_ce;
output  [63:0] grp_fu_464_p_din0;
output  [63:0] grp_fu_464_p_din1;
input  [63:0] grp_fu_464_p_dout0;
output   grp_fu_464_p_ce;
output  [63:0] grp_fu_468_p_din0;
output  [63:0] grp_fu_468_p_din1;
input  [63:0] grp_fu_468_p_dout0;
output   grp_fu_468_p_ce;
output  [63:0] grp_fu_472_p_din0;
output  [63:0] grp_fu_472_p_din1;
input  [63:0] grp_fu_472_p_dout0;
output   grp_fu_472_p_ce;
output  [63:0] grp_fu_476_p_din0;
output  [63:0] grp_fu_476_p_din1;
input  [63:0] grp_fu_476_p_dout0;
output   grp_fu_476_p_ce;
output  [63:0] grp_fu_480_p_din0;
output  [63:0] grp_fu_480_p_din1;
input  [63:0] grp_fu_480_p_dout0;
output   grp_fu_480_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_2421;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1181;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1185;
reg   [63:0] reg_1189;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1193;
reg   [6:0] tid_5_reg_2409;
reg   [6:0] tid_5_reg_2409_pp0_iter1_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter2_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter3_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter4_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter5_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter6_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter7_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter8_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter9_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter10_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter11_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter12_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter13_reg;
reg   [6:0] tid_5_reg_2409_pp0_iter14_reg;
wire   [0:0] tmp_fu_1205_p3;
wire   [0:0] icmp_ln389_fu_1217_p2;
reg   [0:0] icmp_ln389_reg_2425;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter1_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter2_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter3_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter4_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter5_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter6_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter7_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter8_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter9_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter10_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter11_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter12_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter13_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter14_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter15_reg;
reg   [0:0] icmp_ln389_reg_2425_pp0_iter16_reg;
reg   [63:0] c0_y_39_reg_2589;
reg   [63:0] c0_y_40_reg_2595;
reg   [63:0] c0_y_41_reg_2601;
reg   [63:0] c0_y_42_reg_2607;
reg   [63:0] DATA_y_load_7_reg_2613;
reg   [63:0] DATA_y_1_load_7_reg_2619;
reg   [63:0] DATA_y_2_load_7_reg_2625;
reg   [63:0] DATA_y_3_load_7_reg_2631;
reg   [63:0] c0_x_37_reg_2637;
reg   [63:0] c0_x_38_reg_2643;
reg   [63:0] c0_x_39_reg_2649;
reg   [63:0] c0_x_40_reg_2655;
reg   [63:0] DATA_x_load_9_reg_2661;
reg   [63:0] DATA_x_1_load_9_reg_2667;
reg   [63:0] DATA_x_2_load_9_reg_2673;
reg   [63:0] DATA_x_3_load_9_reg_2679;
reg   [63:0] c0_y_reg_2685;
reg   [63:0] c0_y_29_reg_2691;
reg   [63:0] c0_y_30_reg_2697;
reg   [63:0] c0_y_31_reg_2703;
reg   [63:0] DATA_y_load_6_reg_2709;
reg   [63:0] DATA_y_1_load_6_reg_2715;
reg   [63:0] DATA_y_2_load_6_reg_2721;
reg   [63:0] DATA_y_3_load_6_reg_2727;
reg   [63:0] c0_x_reg_2733;
reg   [63:0] c0_x_29_reg_2739;
reg   [63:0] c0_x_30_reg_2745;
reg   [63:0] c0_x_31_reg_2751;
reg   [63:0] DATA_x_load_8_reg_2757;
reg   [63:0] DATA_x_1_load_8_reg_2763;
reg   [63:0] DATA_x_2_load_8_reg_2769;
reg   [63:0] DATA_x_3_load_8_reg_2775;
reg   [63:0] c0_x_41_reg_2781;
reg   [63:0] c0_y_43_reg_2787;
reg   [63:0] c0_x_24_reg_2793;
reg   [63:0] c0_x_24_reg_2793_pp0_iter3_reg;
reg   [63:0] c0_x_24_reg_2793_pp0_iter4_reg;
reg   [63:0] c0_x_24_reg_2793_pp0_iter5_reg;
reg   [63:0] c0_y_26_reg_2799;
reg   [63:0] c0_y_26_reg_2799_pp0_iter3_reg;
reg   [63:0] c0_y_26_reg_2799_pp0_iter4_reg;
reg   [63:0] c0_y_26_reg_2799_pp0_iter5_reg;
reg   [63:0] c0_y_26_reg_2799_pp0_iter6_reg;
reg   [63:0] c0_x_25_reg_2805;
reg   [63:0] c0_y_27_reg_2811;
reg   [63:0] tmp_1_6_reg_2817;
reg   [63:0] sub1591_1_reg_2823;
reg   [63:0] add1598_1_reg_2829;
reg   [63:0] add1601_1_reg_2835;
reg   [63:0] tmp_1_3_reg_2841;
reg   [63:0] tmp_1_3_reg_2841_pp0_iter3_reg;
reg   [63:0] tmp_1_3_reg_2841_pp0_iter4_reg;
reg   [63:0] sub1607_1_reg_2847;
reg   [63:0] sub1607_1_reg_2847_pp0_iter3_reg;
reg   [63:0] add1614_1_reg_2853;
reg   [63:0] add1617_1_reg_2859;
reg   [63:0] c0_x_32_reg_2865;
reg   [63:0] c0_y_32_reg_2871;
reg   [63:0] c0_x_19_reg_2877;
reg   [63:0] c0_x_19_reg_2877_pp0_iter3_reg;
reg   [63:0] c0_x_19_reg_2877_pp0_iter4_reg;
reg   [63:0] c0_x_19_reg_2877_pp0_iter5_reg;
reg   [63:0] c0_x_19_reg_2877_pp0_iter6_reg;
reg   [63:0] c0_y_21_reg_2883;
reg   [63:0] c0_y_21_reg_2883_pp0_iter3_reg;
reg   [63:0] c0_y_21_reg_2883_pp0_iter4_reg;
reg   [63:0] c0_y_21_reg_2883_pp0_iter5_reg;
reg   [63:0] c0_y_21_reg_2883_pp0_iter6_reg;
reg   [63:0] c0_x_20_reg_2889;
reg   [63:0] c0_y_22_reg_2895;
reg   [63:0] tmp_1_reg_2901;
reg   [63:0] sub_reg_2907;
reg   [63:0] add_reg_2913;
reg   [63:0] add11_reg_2919;
reg   [63:0] tmp_1_1_reg_2925;
reg   [63:0] tmp_1_1_reg_2925_pp0_iter3_reg;
reg   [63:0] tmp_1_1_reg_2925_pp0_iter4_reg;
reg   [63:0] sub12_reg_2931;
reg   [63:0] sub12_reg_2931_pp0_iter3_reg;
reg   [63:0] sub12_reg_2931_pp0_iter4_reg;
reg   [63:0] add12_reg_2937;
reg   [63:0] add13_reg_2943;
wire   [63:0] bitcast_ln386_21_fu_1352_p1;
wire   [63:0] bitcast_ln386_23_fu_1386_p1;
wire   [63:0] bitcast_ln386_29_fu_1421_p1;
wire   [63:0] bitcast_ln386_31_fu_1457_p1;
wire   [63:0] bitcast_ln386_1_fu_1492_p1;
wire   [63:0] bitcast_ln386_3_fu_1526_p1;
wire   [63:0] bitcast_ln386_9_fu_1561_p1;
wire   [63:0] bitcast_ln386_11_fu_1597_p1;
reg   [63:0] mul1641_1_reg_2993;
reg   [63:0] sub1630_1_reg_2998;
reg   [63:0] add1636_1_reg_3003;
wire   [63:0] bitcast_ln386_25_fu_1632_p1;
reg   [63:0] mul1648_1_reg_3013;
reg   [63:0] sub1656_1_reg_3018;
reg   [63:0] add1662_1_reg_3023;
reg   [63:0] c0_x_27_reg_3028;
reg   [63:0] c0_y_35_reg_3034;
reg   [63:0] add1689_1_reg_3040;
reg   [63:0] add1692_1_reg_3046;
reg   [63:0] tmp_10_reg_3052;
reg   [63:0] tmp_10_reg_3052_pp0_iter5_reg;
reg   [63:0] tmp_10_reg_3052_pp0_iter6_reg;
reg   [63:0] sub1698_1_reg_3058;
reg   [63:0] sub1698_1_reg_3058_pp0_iter5_reg;
reg   [63:0] sub1698_1_reg_3058_pp0_iter6_reg;
reg   [63:0] sub14_reg_3064;
reg   [63:0] add14_reg_3069;
reg   [63:0] mul_reg_3074;
reg   [63:0] mul6_reg_3079;
reg   [63:0] sub16_reg_3084;
reg   [63:0] add16_reg_3089;
reg   [63:0] c0_x_33_reg_3094;
reg   [63:0] c0_y_33_reg_3100;
reg   [63:0] add17_reg_3106;
reg   [63:0] add18_reg_3112;
reg   [63:0] tmp_8_reg_3118;
reg   [63:0] tmp_8_reg_3118_pp0_iter5_reg;
reg   [63:0] tmp_8_reg_3118_pp0_iter6_reg;
reg   [63:0] sub17_reg_3124;
reg   [63:0] sub17_reg_3124_pp0_iter5_reg;
reg   [63:0] sub17_reg_3124_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_27_fu_1666_p1;
wire   [63:0] bitcast_ln386_5_fu_1700_p1;
wire   [63:0] bitcast_ln386_7_fu_1734_p1;
reg   [63:0] c0_x_22_reg_3145;
reg   [63:0] c0_x_22_reg_3145_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_3145_pp0_iter6_reg;
reg   [63:0] c0_x_22_reg_3145_pp0_iter7_reg;
reg   [63:0] c0_x_22_reg_3145_pp0_iter8_reg;
reg   [63:0] c0_y_24_reg_3151;
reg   [63:0] c0_y_24_reg_3151_pp0_iter5_reg;
reg   [63:0] c0_y_24_reg_3151_pp0_iter6_reg;
reg   [63:0] c0_y_24_reg_3151_pp0_iter7_reg;
reg   [63:0] c0_y_24_reg_3151_pp0_iter8_reg;
reg   [63:0] c0_x_28_reg_3157;
reg   [63:0] c0_x_28_reg_3157_pp0_iter5_reg;
reg   [63:0] c0_x_28_reg_3157_pp0_iter6_reg;
reg   [63:0] c0_x_28_reg_3157_pp0_iter7_reg;
reg   [63:0] c0_x_28_reg_3157_pp0_iter8_reg;
reg   [63:0] c0_y_36_reg_3163;
reg   [63:0] c0_y_36_reg_3163_pp0_iter5_reg;
reg   [63:0] c0_y_36_reg_3163_pp0_iter6_reg;
reg   [63:0] c0_y_36_reg_3163_pp0_iter7_reg;
reg   [63:0] c0_y_36_reg_3163_pp0_iter8_reg;
reg   [63:0] c0_x_26_reg_3169;
reg   [63:0] c0_y_28_reg_3175;
reg   [63:0] sub1644_1_reg_3181;
reg   [63:0] mul1657_1_reg_3187;
reg   [63:0] mul1663_1_reg_3193;
reg   [63:0] c0_x_21_reg_3199;
reg   [63:0] c0_y_23_reg_3205;
reg   [63:0] mul7_reg_3211;
reg   [63:0] mul8_reg_3217;
reg   [63:0] add1649_1_reg_3223;
reg   [63:0] sub15_reg_3229;
reg   [63:0] add15_reg_3235;
reg   [63:0] mul9_reg_3241;
reg   [63:0] mul1702_1_reg_3246;
reg   [63:0] mul1709_1_reg_3251;
reg   [63:0] mul10_reg_3256;
reg   [63:0] add19_reg_3261;
reg   [63:0] add20_reg_3266;
reg   [63:0] add1717_1_reg_3271;
reg   [63:0] add1720_1_reg_3276;
wire   [4:0] lshr_ln114_1_fu_1739_p4;
reg   [4:0] lshr_ln114_1_reg_3281;
reg   [4:0] lshr_ln114_1_reg_3281_pp0_iter8_reg;
reg   [4:0] lshr_ln114_1_reg_3281_pp0_iter9_reg;
reg   [4:0] lshr_ln114_1_reg_3281_pp0_iter10_reg;
reg   [4:0] lshr_ln114_1_reg_3281_pp0_iter11_reg;
reg   [4:0] lshr_ln114_1_reg_3281_pp0_iter12_reg;
reg   [4:0] lshr_ln114_1_reg_3281_pp0_iter13_reg;
reg   [4:0] lshr_ln114_1_reg_3281_pp0_iter14_reg;
reg   [4:0] lshr_ln114_1_reg_3281_pp0_iter15_reg;
wire   [63:0] bitcast_ln386_13_fu_1789_p1;
wire   [63:0] bitcast_ln386_15_fu_1823_p1;
reg   [63:0] sub20_reg_3298;
reg   [63:0] sub20_reg_3298_pp0_iter8_reg;
reg   [63:0] sub20_reg_3298_pp0_iter9_reg;
reg   [63:0] sub20_reg_3298_pp0_iter10_reg;
reg   [63:0] sub20_reg_3298_pp0_iter11_reg;
reg   [63:0] sub20_reg_3298_pp0_iter12_reg;
reg   [63:0] sub20_reg_3298_pp0_iter13_reg;
reg   [63:0] sub20_reg_3298_pp0_iter14_reg;
reg   [63:0] sub20_reg_3298_pp0_iter15_reg;
reg   [63:0] sub21_reg_3303;
reg   [63:0] sub21_reg_3303_pp0_iter8_reg;
reg   [63:0] sub21_reg_3303_pp0_iter9_reg;
reg   [63:0] sub21_reg_3303_pp0_iter10_reg;
reg   [63:0] sub21_reg_3303_pp0_iter11_reg;
reg   [63:0] sub21_reg_3303_pp0_iter12_reg;
reg   [63:0] sub21_reg_3303_pp0_iter13_reg;
reg   [63:0] sub21_reg_3303_pp0_iter14_reg;
reg   [63:0] sub21_reg_3303_pp0_iter15_reg;
wire   [63:0] bitcast_ln386_33_fu_1857_p1;
wire   [63:0] bitcast_ln386_35_fu_1891_p1;
wire   [63:0] bitcast_ln393_1_fu_1911_p1;
reg   [63:0] bitcast_ln393_1_reg_3318;
reg   [63:0] bitcast_ln393_1_reg_3318_pp0_iter8_reg;
reg   [63:0] bitcast_ln393_1_reg_3318_pp0_iter9_reg;
reg   [63:0] bitcast_ln393_1_reg_3318_pp0_iter10_reg;
reg   [63:0] bitcast_ln393_1_reg_3318_pp0_iter11_reg;
reg   [63:0] bitcast_ln393_1_reg_3318_pp0_iter12_reg;
reg   [63:0] bitcast_ln393_1_reg_3318_pp0_iter13_reg;
reg   [63:0] bitcast_ln393_1_reg_3318_pp0_iter14_reg;
wire   [63:0] bitcast_ln402_1_fu_1920_p1;
reg   [63:0] bitcast_ln402_1_reg_3324;
reg   [63:0] bitcast_ln402_1_reg_3324_pp0_iter8_reg;
reg   [63:0] bitcast_ln402_1_reg_3324_pp0_iter9_reg;
reg   [63:0] bitcast_ln402_1_reg_3324_pp0_iter10_reg;
reg   [63:0] bitcast_ln402_1_reg_3324_pp0_iter11_reg;
reg   [63:0] bitcast_ln402_1_reg_3324_pp0_iter12_reg;
reg   [63:0] bitcast_ln402_1_reg_3324_pp0_iter13_reg;
reg   [63:0] bitcast_ln402_1_reg_3324_pp0_iter14_reg;
reg   [63:0] c0_x_35_reg_3330;
reg   [63:0] c0_x_36_reg_3336;
reg   [63:0] c0_x_36_reg_3336_pp0_iter9_reg;
reg   [63:0] c0_x_36_reg_3336_pp0_iter10_reg;
reg   [63:0] c0_x_36_reg_3336_pp0_iter11_reg;
reg   [63:0] c0_x_36_reg_3336_pp0_iter12_reg;
reg   [63:0] add1768_1_reg_3342;
reg   [63:0] add1771_1_reg_3348;
reg   [63:0] add1771_1_reg_3348_pp0_iter9_reg;
reg   [63:0] tmp_11_reg_3354;
reg   [63:0] tmp_11_reg_3354_pp0_iter9_reg;
reg   [63:0] sub1777_1_reg_3360;
reg   [63:0] sub1777_1_reg_3360_pp0_iter9_reg;
reg   [63:0] tmp_9_reg_3366;
reg   [63:0] tmp_9_reg_3366_pp0_iter9_reg;
reg   [63:0] tmp_9_reg_3366_pp0_iter10_reg;
reg   [63:0] sub24_reg_3372;
reg   [63:0] sub24_reg_3372_pp0_iter9_reg;
reg   [63:0] sub24_reg_3372_pp0_iter10_reg;
reg   [63:0] c0_y_37_reg_3378;
reg   [63:0] sub18_reg_3384;
reg   [63:0] sub19_reg_3390;
reg   [63:0] c0_x_34_reg_3396;
reg   [63:0] c0_y_34_reg_3402;
reg   [63:0] c0_x_23_reg_3408;
reg   [63:0] c0_x_23_reg_3408_pp0_iter9_reg;
reg   [63:0] c0_x_23_reg_3408_pp0_iter10_reg;
reg   [63:0] c0_x_23_reg_3408_pp0_iter11_reg;
reg   [63:0] c0_x_23_reg_3408_pp0_iter12_reg;
reg   [63:0] c0_y_25_reg_3414;
reg   [63:0] c0_y_25_reg_3414_pp0_iter9_reg;
reg   [63:0] c0_y_25_reg_3414_pp0_iter10_reg;
reg   [63:0] c0_y_25_reg_3414_pp0_iter11_reg;
reg   [63:0] c0_y_25_reg_3414_pp0_iter12_reg;
reg   [63:0] add23_reg_3420;
reg   [63:0] add24_reg_3426;
reg   [63:0] sub1705_1_reg_3432;
reg   [63:0] sub1710_1_reg_3438;
reg   [63:0] c0_y_38_reg_3444;
reg   [63:0] c0_y_38_reg_3444_pp0_iter9_reg;
reg   [63:0] c0_y_38_reg_3444_pp0_iter10_reg;
reg   [63:0] c0_y_38_reg_3444_pp0_iter11_reg;
reg   [63:0] mul1781_1_reg_3450;
reg   [63:0] mul1788_1_reg_3455;
wire   [63:0] bitcast_ln386_37_fu_1953_p1;
wire   [63:0] bitcast_ln386_39_fu_1987_p1;
reg   [63:0] add1796_1_reg_3470;
wire   [63:0] bitcast_ln394_1_fu_1992_p1;
reg   [63:0] bitcast_ln394_1_reg_3475;
reg   [63:0] bitcast_ln394_1_reg_3475_pp0_iter11_reg;
reg   [63:0] bitcast_ln394_1_reg_3475_pp0_iter12_reg;
reg   [63:0] bitcast_ln394_1_reg_3475_pp0_iter13_reg;
reg   [63:0] bitcast_ln394_1_reg_3475_pp0_iter14_reg;
wire   [63:0] zext_ln391_1_fu_2015_p1;
reg   [63:0] zext_ln391_1_reg_3481;
reg   [63:0] add21_reg_3487;
reg   [63:0] mul11_reg_3492;
reg   [63:0] mul12_reg_3497;
reg   [63:0] add25_reg_3502;
reg   [63:0] add1736_1_reg_3507;
reg   [63:0] add1799_1_reg_3512;
reg   [63:0] add22_reg_3517;
reg   [63:0] sub22_reg_3522;
reg   [63:0] sub22_reg_3522_pp0_iter12_reg;
reg   [63:0] sub22_reg_3522_pp0_iter13_reg;
reg   [63:0] sub22_reg_3522_pp0_iter14_reg;
reg   [63:0] sub22_reg_3522_pp0_iter15_reg;
reg   [63:0] sub23_reg_3527;
reg   [63:0] sub23_reg_3527_pp0_iter12_reg;
reg   [63:0] sub23_reg_3527_pp0_iter13_reg;
reg   [63:0] sub23_reg_3527_pp0_iter14_reg;
reg   [63:0] sub23_reg_3527_pp0_iter15_reg;
wire   [63:0] bitcast_ln386_17_fu_2055_p1;
wire   [63:0] bitcast_ln386_19_fu_2089_p1;
reg   [63:0] sub27_reg_3542;
reg   [63:0] sub27_reg_3542_pp0_iter12_reg;
reg   [63:0] sub27_reg_3542_pp0_iter13_reg;
reg   [63:0] sub27_reg_3542_pp0_iter14_reg;
reg   [63:0] sub27_reg_3542_pp0_iter15_reg;
reg   [63:0] sub28_reg_3547;
reg   [63:0] sub28_reg_3547_pp0_iter12_reg;
reg   [63:0] sub28_reg_3547_pp0_iter13_reg;
reg   [63:0] sub28_reg_3547_pp0_iter14_reg;
reg   [63:0] sub28_reg_3547_pp0_iter15_reg;
wire  signed [4:0] zext_ln391_cast_fu_2103_p3;
reg  signed [4:0] zext_ln391_cast_reg_3552;
reg  signed [4:0] zext_ln391_cast_reg_3552_pp0_iter12_reg;
reg  signed [4:0] zext_ln391_cast_reg_3552_pp0_iter13_reg;
reg  signed [4:0] zext_ln391_cast_reg_3552_pp0_iter14_reg;
reg  signed [4:0] zext_ln391_cast_reg_3552_pp0_iter15_reg;
reg  signed [4:0] zext_ln391_cast_reg_3552_pp0_iter16_reg;
wire  signed [5:0] zext_ln392_cast_fu_2119_p3;
reg  signed [5:0] zext_ln392_cast_reg_3558;
reg  signed [5:0] zext_ln392_cast_reg_3558_pp0_iter12_reg;
reg  signed [5:0] zext_ln392_cast_reg_3558_pp0_iter13_reg;
reg  signed [5:0] zext_ln392_cast_reg_3558_pp0_iter14_reg;
reg  signed [5:0] zext_ln392_cast_reg_3558_pp0_iter15_reg;
wire   [63:0] zext_ln392_fu_2126_p1;
reg   [63:0] zext_ln392_reg_3563;
wire   [63:0] bitcast_ln395_1_fu_2149_p1;
reg   [63:0] bitcast_ln395_1_reg_3573;
reg   [63:0] bitcast_ln395_1_reg_3573_pp0_iter12_reg;
reg   [63:0] bitcast_ln395_1_reg_3573_pp0_iter13_reg;
reg   [63:0] bitcast_ln395_1_reg_3573_pp0_iter14_reg;
reg   [63:0] bitcast_ln395_1_reg_3573_pp0_iter15_reg;
wire   [63:0] bitcast_ln403_1_fu_2158_p1;
reg   [63:0] bitcast_ln403_1_reg_3579;
reg   [63:0] bitcast_ln403_1_reg_3579_pp0_iter12_reg;
reg   [63:0] bitcast_ln403_1_reg_3579_pp0_iter13_reg;
reg   [63:0] bitcast_ln403_1_reg_3579_pp0_iter14_reg;
wire   [63:0] bitcast_ln404_1_fu_2162_p1;
reg   [63:0] bitcast_ln404_1_reg_3585;
reg   [63:0] bitcast_ln404_1_reg_3585_pp0_iter12_reg;
reg   [63:0] bitcast_ln404_1_reg_3585_pp0_iter13_reg;
reg   [63:0] bitcast_ln404_1_reg_3585_pp0_iter14_reg;
reg   [63:0] bitcast_ln404_1_reg_3585_pp0_iter15_reg;
reg   [63:0] sub1784_1_reg_3591;
reg   [63:0] sub1789_1_reg_3597;
reg   [63:0] sub25_reg_3603;
reg   [63:0] sub26_reg_3609;
reg   [63:0] sub1818_1_reg_3615;
reg   [63:0] sub1818_1_reg_3615_pp0_iter15_reg;
reg   [63:0] sub1821_1_reg_3620;
reg   [63:0] sub1821_1_reg_3620_pp0_iter15_reg;
reg   [6:0] lshr_ln6_reg_3625;
reg   [4:0] trunc_ln7_reg_3630;
reg   [4:0] trunc_ln7_reg_3630_pp0_iter15_reg;
wire   [63:0] zext_ln394_fu_2262_p1;
reg   [63:0] zext_ln394_reg_3635;
reg   [63:0] add27_reg_3643;
reg   [63:0] add28_reg_3648;
reg   [63:0] sub29_reg_3653;
reg   [63:0] sub29_reg_3653_pp0_iter16_reg;
reg   [63:0] sub30_reg_3658;
reg   [63:0] sub30_reg_3658_pp0_iter16_reg;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln367_2_fu_1241_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln371_1_fu_1261_p1;
wire   [63:0] zext_ln367_fu_1281_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln371_fu_1301_p1;
wire   [63:0] zext_ln114_1_fu_1748_p1;
wire   [63:0] zext_ln391_fu_2111_p1;
wire   [63:0] zext_ln393_1_fu_2200_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln395_1_fu_2270_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln393_fu_2280_p1;
wire   [63:0] zext_ln396_fu_2301_p1;
wire   [63:0] zext_ln395_fu_2342_p1;
wire   [63:0] zext_ln389_fu_2353_p1;
wire   [63:0] zext_ln367_1_fu_2384_p1;
reg   [6:0] tid_fu_120;
wire   [6:0] add_ln365_fu_1313_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce1_local;
reg   [6:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [6:0] DATA_y_address0_local;
reg    DATA_y_1_ce1_local;
reg   [6:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [6:0] DATA_y_1_address0_local;
reg    DATA_y_2_ce1_local;
reg   [6:0] DATA_y_2_address1_local;
reg    DATA_y_2_ce0_local;
reg   [6:0] DATA_y_2_address0_local;
reg    DATA_y_3_ce1_local;
reg   [6:0] DATA_y_3_address1_local;
reg    DATA_y_3_ce0_local;
reg   [6:0] DATA_y_3_address0_local;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
reg    work_x_2_we1_local;
reg   [63:0] work_x_2_d1_local;
wire   [63:0] bitcast_ln389_fu_1896_p1;
reg    work_x_2_ce1_local;
reg   [6:0] work_x_2_address1_local;
reg    work_x_2_we0_local;
reg   [63:0] work_x_2_d0_local;
wire   [63:0] bitcast_ln390_fu_2132_p1;
reg    work_x_2_ce0_local;
reg   [6:0] work_x_2_address0_local;
wire   [63:0] bitcast_ln391_fu_2166_p1;
wire   [63:0] bitcast_ln392_fu_2288_p1;
wire   [63:0] bitcast_ln393_fu_2313_p1;
wire   [63:0] bitcast_ln395_fu_2318_p1;
wire   [63:0] bitcast_ln394_fu_2361_p1;
wire   [63:0] bitcast_ln396_fu_2392_p1;
reg    work_y_2_we1_local;
reg   [63:0] work_y_2_d1_local;
wire   [63:0] bitcast_ln398_fu_1901_p1;
reg    work_y_2_ce1_local;
reg   [6:0] work_y_2_address1_local;
reg    work_y_2_we0_local;
reg   [63:0] work_y_2_d0_local;
wire   [63:0] bitcast_ln399_fu_2137_p1;
reg    work_y_2_ce0_local;
reg   [6:0] work_y_2_address0_local;
wire   [63:0] bitcast_ln400_fu_2171_p1;
wire   [63:0] bitcast_ln401_fu_2293_p1;
wire   [63:0] bitcast_ln402_fu_2323_p1;
wire   [63:0] bitcast_ln404_fu_2328_p1;
wire   [63:0] bitcast_ln403_fu_2366_p1;
wire   [63:0] bitcast_ln405_fu_2397_p1;
reg    work_x_3_we1_local;
reg   [63:0] work_x_3_d1_local;
wire   [63:0] bitcast_ln389_1_fu_1906_p1;
reg    work_x_3_ce1_local;
reg   [6:0] work_x_3_address1_local;
wire   [63:0] bitcast_ln390_1_fu_2021_p1;
reg    work_x_3_we0_local;
reg   [63:0] work_x_3_d0_local;
wire   [63:0] bitcast_ln391_1_fu_2143_p1;
reg    work_x_3_ce0_local;
reg   [6:0] work_x_3_address0_local;
wire   [63:0] bitcast_ln392_1_fu_2239_p1;
wire   [63:0] bitcast_ln396_1_fu_2371_p1;
reg    work_y_3_we1_local;
reg   [63:0] work_y_3_d1_local;
wire   [63:0] bitcast_ln398_1_fu_1915_p1;
reg    work_y_3_ce1_local;
reg   [6:0] work_y_3_address1_local;
reg    work_y_3_we0_local;
reg   [63:0] work_y_3_d0_local;
wire   [63:0] bitcast_ln399_1_fu_2153_p1;
reg    work_y_3_ce0_local;
reg   [6:0] work_y_3_address0_local;
wire   [63:0] bitcast_ln400_1_fu_2176_p1;
wire   [63:0] bitcast_ln401_1_fu_2245_p1;
wire   [63:0] bitcast_ln405_1_fu_2376_p1;
reg    work_x_0_we1_local;
reg   [63:0] work_x_0_d1_local;
reg    work_x_0_ce1_local;
reg   [6:0] work_x_0_address1_local;
reg    work_x_0_we0_local;
reg   [63:0] work_x_0_d0_local;
reg    work_x_0_ce0_local;
reg   [6:0] work_x_0_address0_local;
reg    work_y_0_we1_local;
reg   [63:0] work_y_0_d1_local;
reg    work_y_0_ce1_local;
reg   [6:0] work_y_0_address1_local;
reg    work_y_0_we0_local;
reg   [63:0] work_y_0_d0_local;
reg    work_y_0_ce0_local;
reg   [6:0] work_y_0_address0_local;
reg    work_x_1_we1_local;
reg   [63:0] work_x_1_d1_local;
reg    work_x_1_ce1_local;
reg   [6:0] work_x_1_address1_local;
reg    work_x_1_we0_local;
reg   [63:0] work_x_1_d0_local;
reg    work_x_1_ce0_local;
reg   [6:0] work_x_1_address0_local;
reg    work_y_1_we1_local;
reg   [63:0] work_y_1_d1_local;
reg    work_y_1_ce1_local;
reg   [6:0] work_y_1_address1_local;
reg    work_y_1_we0_local;
reg   [63:0] work_y_1_d0_local;
reg    work_y_1_ce0_local;
reg   [6:0] work_y_1_address0_local;
reg   [63:0] grp_fu_1036_p0;
reg   [63:0] grp_fu_1036_p1;
reg   [63:0] grp_fu_1040_p0;
reg   [63:0] grp_fu_1040_p1;
reg   [63:0] grp_fu_1044_p0;
reg   [63:0] grp_fu_1044_p1;
reg   [63:0] grp_fu_1048_p0;
reg   [63:0] grp_fu_1048_p1;
reg   [63:0] grp_fu_1052_p0;
reg   [63:0] grp_fu_1052_p1;
reg   [63:0] grp_fu_1056_p0;
reg   [63:0] grp_fu_1056_p1;
reg   [63:0] grp_fu_1060_p0;
reg   [63:0] grp_fu_1060_p1;
reg   [63:0] grp_fu_1064_p0;
reg   [63:0] grp_fu_1064_p1;
reg   [63:0] grp_fu_1068_p0;
reg   [63:0] grp_fu_1068_p1;
reg   [63:0] grp_fu_1072_p0;
reg   [63:0] grp_fu_1072_p1;
reg   [63:0] grp_fu_1076_p0;
reg   [63:0] grp_fu_1076_p1;
reg   [63:0] grp_fu_1080_p0;
reg   [63:0] grp_fu_1080_p1;
reg   [63:0] grp_fu_1084_p0;
reg   [63:0] grp_fu_1084_p1;
reg   [63:0] grp_fu_1088_p0;
reg   [63:0] grp_fu_1088_p1;
reg   [63:0] grp_fu_1092_p0;
reg   [63:0] grp_fu_1092_p1;
reg   [63:0] grp_fu_1096_p0;
reg   [63:0] grp_fu_1096_p1;
reg   [63:0] grp_fu_1100_p0;
reg   [63:0] grp_fu_1100_p1;
reg   [63:0] grp_fu_1104_p0;
reg   [63:0] grp_fu_1104_p1;
reg   [63:0] grp_fu_1108_p0;
reg   [63:0] grp_fu_1108_p1;
reg   [63:0] grp_fu_1112_p0;
reg   [63:0] grp_fu_1112_p1;
reg   [63:0] grp_fu_1116_p0;
reg   [63:0] grp_fu_1116_p1;
reg   [63:0] grp_fu_1120_p0;
reg   [63:0] grp_fu_1120_p1;
reg   [63:0] grp_fu_1124_p0;
reg   [63:0] grp_fu_1124_p1;
reg   [63:0] grp_fu_1128_p0;
reg   [63:0] grp_fu_1128_p1;
reg   [63:0] grp_fu_1132_p0;
reg   [63:0] grp_fu_1132_p1;
reg   [63:0] grp_fu_1136_p0;
reg   [63:0] grp_fu_1136_p1;
reg   [63:0] grp_fu_1140_p0;
reg   [63:0] grp_fu_1140_p1;
reg   [63:0] grp_fu_1144_p0;
reg   [63:0] grp_fu_1144_p1;
reg   [63:0] grp_fu_1148_p0;
reg   [63:0] grp_fu_1148_p1;
reg   [63:0] grp_fu_1152_p0;
reg   [63:0] grp_fu_1157_p0;
reg   [63:0] grp_fu_1157_p1;
reg   [63:0] grp_fu_1163_p0;
reg   [63:0] grp_fu_1163_p1;
reg   [63:0] grp_fu_1168_p0;
reg   [63:0] grp_fu_1168_p1;
reg   [63:0] grp_fu_1173_p0;
reg   [63:0] grp_fu_1173_p1;
wire   [1:0] trunc_ln365_fu_1213_p1;
wire   [4:0] tmp_s_fu_1223_p4;
wire   [6:0] or_ln7_fu_1233_p3;
wire   [6:0] or_ln371_1_fu_1253_p3;
wire   [6:0] shl_ln367_fu_1276_p2;
wire   [5:0] trunc_ln367_fu_1273_p1;
wire   [6:0] or_ln_fu_1293_p3;
wire   [63:0] bitcast_ln386_20_fu_1323_p1;
wire   [0:0] bit_sel29_fu_1326_p3;
wire   [0:0] xor_ln386_28_fu_1334_p2;
wire   [62:0] trunc_ln386_10_fu_1340_p1;
wire   [63:0] xor_ln386_s_fu_1344_p3;
wire   [63:0] bitcast_ln386_22_fu_1357_p1;
wire   [0:0] bit_sel30_fu_1360_p3;
wire   [0:0] xor_ln386_29_fu_1368_p2;
wire   [62:0] trunc_ln386_11_fu_1374_p1;
wire   [63:0] xor_ln386_10_fu_1378_p3;
wire   [63:0] bitcast_ln386_28_fu_1391_p1;
wire   [0:0] bit_sel33_fu_1395_p3;
wire   [0:0] xor_ln386_32_fu_1403_p2;
wire   [62:0] trunc_ln386_14_fu_1409_p1;
wire   [63:0] xor_ln386_13_fu_1413_p3;
wire   [63:0] bitcast_ln386_30_fu_1427_p1;
wire   [0:0] bit_sel34_fu_1431_p3;
wire   [0:0] xor_ln386_33_fu_1439_p2;
wire   [62:0] trunc_ln386_15_fu_1445_p1;
wire   [63:0] xor_ln386_14_fu_1449_p3;
wire   [63:0] bitcast_ln386_fu_1463_p1;
wire   [0:0] bit_sel_fu_1466_p3;
wire   [0:0] xor_ln386_19_fu_1474_p2;
wire   [62:0] trunc_ln386_fu_1480_p1;
wire   [63:0] xor_ln3_fu_1484_p3;
wire   [63:0] bitcast_ln386_2_fu_1497_p1;
wire   [0:0] bit_sel20_fu_1500_p3;
wire   [0:0] xor_ln386_fu_1508_p2;
wire   [62:0] trunc_ln386_1_fu_1514_p1;
wire   [63:0] xor_ln386_1_fu_1518_p3;
wire   [63:0] bitcast_ln386_8_fu_1531_p1;
wire   [0:0] bit_sel23_fu_1535_p3;
wire   [0:0] xor_ln386_22_fu_1543_p2;
wire   [62:0] trunc_ln386_4_fu_1549_p1;
wire   [63:0] xor_ln386_4_fu_1553_p3;
wire   [63:0] bitcast_ln386_10_fu_1567_p1;
wire   [0:0] bit_sel24_fu_1571_p3;
wire   [0:0] xor_ln386_23_fu_1579_p2;
wire   [62:0] trunc_ln386_5_fu_1585_p1;
wire   [63:0] xor_ln386_5_fu_1589_p3;
wire   [63:0] bitcast_ln386_24_fu_1603_p1;
wire   [0:0] bit_sel31_fu_1606_p3;
wire   [0:0] xor_ln386_30_fu_1614_p2;
wire   [62:0] trunc_ln386_12_fu_1620_p1;
wire   [63:0] xor_ln386_11_fu_1624_p3;
wire   [63:0] bitcast_ln386_26_fu_1637_p1;
wire   [0:0] bit_sel32_fu_1640_p3;
wire   [0:0] xor_ln386_31_fu_1648_p2;
wire   [62:0] trunc_ln386_13_fu_1654_p1;
wire   [63:0] xor_ln386_12_fu_1658_p3;
wire   [63:0] bitcast_ln386_4_fu_1671_p1;
wire   [0:0] bit_sel21_fu_1674_p3;
wire   [0:0] xor_ln386_20_fu_1682_p2;
wire   [62:0] trunc_ln386_2_fu_1688_p1;
wire   [63:0] xor_ln386_2_fu_1692_p3;
wire   [63:0] bitcast_ln386_6_fu_1705_p1;
wire   [0:0] bit_sel22_fu_1708_p3;
wire   [0:0] xor_ln386_21_fu_1716_p2;
wire   [62:0] trunc_ln386_3_fu_1722_p1;
wire   [63:0] xor_ln386_3_fu_1726_p3;
wire   [63:0] bitcast_ln386_12_fu_1760_p1;
wire   [0:0] bit_sel25_fu_1763_p3;
wire   [0:0] xor_ln386_24_fu_1771_p2;
wire   [62:0] trunc_ln386_6_fu_1777_p1;
wire   [63:0] xor_ln386_6_fu_1781_p3;
wire   [63:0] bitcast_ln386_14_fu_1794_p1;
wire   [0:0] bit_sel26_fu_1797_p3;
wire   [0:0] xor_ln386_25_fu_1805_p2;
wire   [62:0] trunc_ln386_7_fu_1811_p1;
wire   [63:0] xor_ln386_7_fu_1815_p3;
wire   [63:0] bitcast_ln386_32_fu_1828_p1;
wire   [0:0] bit_sel35_fu_1831_p3;
wire   [0:0] xor_ln386_34_fu_1839_p2;
wire   [62:0] trunc_ln386_16_fu_1845_p1;
wire   [63:0] xor_ln386_15_fu_1849_p3;
wire   [63:0] bitcast_ln386_34_fu_1862_p1;
wire   [0:0] bit_sel36_fu_1865_p3;
wire   [0:0] xor_ln386_35_fu_1873_p2;
wire   [62:0] trunc_ln386_17_fu_1879_p1;
wire   [63:0] xor_ln386_16_fu_1883_p3;
wire   [63:0] bitcast_ln386_36_fu_1924_p1;
wire   [0:0] bit_sel37_fu_1927_p3;
wire   [0:0] xor_ln386_36_fu_1935_p2;
wire   [62:0] trunc_ln386_18_fu_1941_p1;
wire   [63:0] xor_ln386_17_fu_1945_p3;
wire   [63:0] bitcast_ln386_38_fu_1958_p1;
wire   [0:0] bit_sel38_fu_1961_p3;
wire   [0:0] xor_ln386_37_fu_1969_p2;
wire   [62:0] trunc_ln386_19_fu_1975_p1;
wire   [63:0] xor_ln386_18_fu_1979_p3;
wire   [7:0] zext_ln365_1_fu_1996_p1;
wire   [7:0] add_ln390_fu_1999_p2;
wire   [5:0] lshr_ln4_fu_2005_p4;
wire   [63:0] bitcast_ln386_16_fu_2026_p1;
wire   [0:0] bit_sel27_fu_2029_p3;
wire   [0:0] xor_ln386_26_fu_2037_p2;
wire   [62:0] trunc_ln386_8_fu_2043_p1;
wire   [63:0] xor_ln386_8_fu_2047_p3;
wire   [63:0] bitcast_ln386_18_fu_2060_p1;
wire   [0:0] bit_sel28_fu_2063_p3;
wire   [0:0] xor_ln386_27_fu_2071_p2;
wire   [62:0] trunc_ln386_9_fu_2077_p1;
wire   [63:0] xor_ln386_9_fu_2081_p3;
wire   [3:0] part_sel_fu_2094_p4;
wire   [8:0] zext_ln365_fu_2181_p1;
wire   [8:0] add_ln392_fu_2184_p2;
wire   [6:0] lshr_ln5_fu_2190_p4;
wire   [8:0] add_ln394_1_fu_2208_p2;
wire   [6:0] add_ln396_fu_2224_p2;
wire   [5:0] zext_ln393_2_fu_2251_p1;
wire   [6:0] zext_ln394_cast_fu_2254_p3;
wire  signed [5:0] sext_ln393_fu_2277_p1;
wire  signed [6:0] sext_ln396_fu_2298_p1;
wire   [6:0] zext_ln114_fu_2333_p1;
wire   [6:0] add_ln394_fu_2336_p2;
wire  signed [6:0] sext_ln389_fu_2350_p1;
wire  signed [6:0] sext_ln367_fu_2381_p1;
reg   [1:0] grp_fu_1036_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg   [1:0] grp_fu_1040_opcode;
reg   [1:0] grp_fu_1052_opcode;
reg   [1:0] grp_fu_1060_opcode;
reg   [1:0] grp_fu_1064_opcode;
reg   [1:0] grp_fu_1068_opcode;
reg   [1:0] grp_fu_1072_opcode;
reg   [1:0] grp_fu_1076_opcode;
reg   [1:0] grp_fu_1080_opcode;
reg   [1:0] grp_fu_1084_opcode;
reg   [1:0] grp_fu_1088_opcode;
reg   [1:0] grp_fu_1092_opcode;
reg   [1:0] grp_fu_1096_opcode;
reg   [1:0] grp_fu_1104_opcode;
reg   [1:0] grp_fu_1112_opcode;
reg   [1:0] grp_fu_1116_opcode;
reg   [1:0] grp_fu_1128_opcode;
reg   [1:0] grp_fu_1132_opcode;
reg   [1:0] grp_fu_1136_opcode;
reg   [1:0] grp_fu_1140_opcode;
reg   [1:0] grp_fu_1144_opcode;
reg   [1:0] grp_fu_1148_opcode;
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
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_120 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_120 <= 7'd0;
    end else if (((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_120 <= add_ln365_fu_1313_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_load_8_reg_2763 <= DATA_x_1_q0;
        DATA_x_2_load_8_reg_2769 <= DATA_x_2_q0;
        DATA_x_3_load_8_reg_2775 <= DATA_x_3_q0;
        DATA_x_load_8_reg_2757 <= DATA_x_q0;
        DATA_y_1_load_6_reg_2715 <= DATA_y_1_q0;
        DATA_y_2_load_6_reg_2721 <= DATA_y_2_q0;
        DATA_y_3_load_6_reg_2727 <= DATA_y_3_q0;
        DATA_y_load_6_reg_2709 <= DATA_y_q0;
        c0_x_29_reg_2739 <= DATA_x_1_q1;
        c0_x_30_reg_2745 <= DATA_x_2_q1;
        c0_x_31_reg_2751 <= DATA_x_3_q1;
        c0_x_reg_2733 <= DATA_x_q1;
        c0_y_29_reg_2691 <= DATA_y_1_q1;
        c0_y_30_reg_2697 <= DATA_y_2_q1;
        c0_y_31_reg_2703 <= DATA_y_3_q1;
        c0_y_reg_2685 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_9_reg_2667 <= DATA_x_1_q0;
        DATA_x_2_load_9_reg_2673 <= DATA_x_2_q0;
        DATA_x_3_load_9_reg_2679 <= DATA_x_3_q0;
        DATA_x_load_9_reg_2661 <= DATA_x_q0;
        DATA_y_1_load_7_reg_2619 <= DATA_y_1_q0;
        DATA_y_2_load_7_reg_2625 <= DATA_y_2_q0;
        DATA_y_3_load_7_reg_2631 <= DATA_y_3_q0;
        DATA_y_load_7_reg_2613 <= DATA_y_q0;
        c0_x_37_reg_2637 <= DATA_x_q1;
        c0_x_38_reg_2643 <= DATA_x_1_q1;
        c0_x_39_reg_2649 <= DATA_x_2_q1;
        c0_x_40_reg_2655 <= DATA_x_3_q1;
        c0_y_39_reg_2589 <= DATA_y_q1;
        c0_y_40_reg_2595 <= DATA_y_1_q1;
        c0_y_41_reg_2601 <= DATA_y_2_q1;
        c0_y_42_reg_2607 <= DATA_y_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_2919 <= grp_fu_384_p_dout0;
        add12_reg_2937 <= grp_fu_396_p_dout0;
        add13_reg_2943 <= grp_fu_400_p_dout0;
        add_reg_2913 <= grp_fu_380_p_dout0;
        c0_x_19_reg_2877 <= grp_fu_356_p_dout0;
        c0_x_20_reg_2889 <= grp_fu_364_p_dout0;
        c0_x_32_reg_2865 <= grp_fu_348_p_dout0;
        c0_y_21_reg_2883 <= grp_fu_360_p_dout0;
        c0_y_22_reg_2895 <= grp_fu_368_p_dout0;
        c0_y_32_reg_2871 <= grp_fu_352_p_dout0;
        sub12_reg_2931 <= grp_fu_392_p_dout0;
        sub_reg_2907 <= grp_fu_376_p_dout0;
        tmp_1_1_reg_2925 <= grp_fu_388_p_dout0;
        tmp_1_reg_2901 <= grp_fu_372_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add14_reg_3069 <= grp_fu_416_p_dout0;
        add16_reg_3089 <= grp_fu_424_p_dout0;
        add17_reg_3106 <= grp_fu_436_p_dout0;
        add18_reg_3112 <= grp_fu_440_p_dout0;
        c0_x_33_reg_3094 <= grp_fu_428_p_dout0;
        c0_y_33_reg_3100 <= grp_fu_432_p_dout0;
        mul6_reg_3079 <= grp_fu_468_p_dout0;
        mul_reg_3074 <= grp_fu_464_p_dout0;
        sub14_reg_3064 <= grp_fu_412_p_dout0;
        sub16_reg_3084 <= grp_fu_420_p_dout0;
        sub17_reg_3124 <= grp_fu_448_p_dout0;
        tmp_8_reg_3118 <= grp_fu_444_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1598_1_reg_2829 <= grp_fu_380_p_dout0;
        add1601_1_reg_2835 <= grp_fu_384_p_dout0;
        add1614_1_reg_2853 <= grp_fu_396_p_dout0;
        add1617_1_reg_2859 <= grp_fu_400_p_dout0;
        c0_x_24_reg_2793 <= grp_fu_356_p_dout0;
        c0_x_25_reg_2805 <= grp_fu_364_p_dout0;
        c0_x_41_reg_2781 <= grp_fu_348_p_dout0;
        c0_y_26_reg_2799 <= grp_fu_360_p_dout0;
        c0_y_27_reg_2811 <= grp_fu_368_p_dout0;
        c0_y_43_reg_2787 <= grp_fu_352_p_dout0;
        sub1591_1_reg_2823 <= grp_fu_376_p_dout0;
        sub1607_1_reg_2847 <= grp_fu_392_p_dout0;
        tmp_1_3_reg_2841 <= grp_fu_388_p_dout0;
        tmp_1_6_reg_2817 <= grp_fu_372_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_3235 <= grp_fu_456_p_dout0;
        mul1702_1_reg_3246 <= grp_fu_476_p_dout0;
        mul1709_1_reg_3251 <= grp_fu_480_p_dout0;
        mul9_reg_3241 <= grp_fu_472_p_dout0;
        sub15_reg_3229 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1636_1_reg_3003 <= grp_fu_416_p_dout0;
        add1662_1_reg_3023 <= grp_fu_424_p_dout0;
        add1689_1_reg_3040 <= grp_fu_436_p_dout0;
        add1692_1_reg_3046 <= grp_fu_440_p_dout0;
        c0_x_27_reg_3028 <= grp_fu_428_p_dout0;
        c0_y_35_reg_3034 <= grp_fu_432_p_dout0;
        mul1648_1_reg_3013 <= grp_fu_464_p_dout0;
        sub1630_1_reg_2998 <= grp_fu_412_p_dout0;
        sub1656_1_reg_3018 <= grp_fu_420_p_dout0;
        sub1698_1_reg_3058 <= grp_fu_448_p_dout0;
        tmp_10_reg_3052 <= grp_fu_444_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1649_1_reg_3223 <= grp_fu_452_p_dout0;
        c0_x_21_reg_3199 <= grp_fu_468_p_dout0;
        c0_y_23_reg_3205 <= grp_fu_472_p_dout0;
        mul7_reg_3211 <= grp_fu_476_p_dout0;
        mul8_reg_3217 <= grp_fu_480_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add1717_1_reg_3271 <= grp_fu_372_p_dout0;
        add1720_1_reg_3276 <= grp_fu_376_p_dout0;
        add19_reg_3261 <= grp_fu_364_p_dout0;
        add20_reg_3266 <= grp_fu_368_p_dout0;
        mul10_reg_3256 <= grp_fu_464_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add1736_1_reg_3507 <= grp_fu_440_p_dout0;
        add1799_1_reg_3512 <= grp_fu_444_p_dout0;
        add21_reg_3487 <= grp_fu_424_p_dout0;
        add25_reg_3502 <= grp_fu_428_p_dout0;
        mul11_reg_3492 <= grp_fu_476_p_dout0;
        mul12_reg_3497 <= grp_fu_480_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1768_1_reg_3342 <= grp_fu_376_p_dout0;
        add1771_1_reg_3348 <= grp_fu_380_p_dout0;
        c0_x_35_reg_3330 <= grp_fu_368_p_dout0;
        c0_x_36_reg_3336 <= grp_fu_372_p_dout0;
        sub1777_1_reg_3360 <= grp_fu_388_p_dout0;
        tmp_11_reg_3354 <= grp_fu_384_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1771_1_reg_3348_pp0_iter9_reg <= add1771_1_reg_3348;
        bitcast_ln393_1_reg_3318 <= bitcast_ln393_1_fu_1911_p1;
        bitcast_ln393_1_reg_3318_pp0_iter10_reg <= bitcast_ln393_1_reg_3318_pp0_iter9_reg;
        bitcast_ln393_1_reg_3318_pp0_iter11_reg <= bitcast_ln393_1_reg_3318_pp0_iter10_reg;
        bitcast_ln393_1_reg_3318_pp0_iter12_reg <= bitcast_ln393_1_reg_3318_pp0_iter11_reg;
        bitcast_ln393_1_reg_3318_pp0_iter13_reg <= bitcast_ln393_1_reg_3318_pp0_iter12_reg;
        bitcast_ln393_1_reg_3318_pp0_iter14_reg <= bitcast_ln393_1_reg_3318_pp0_iter13_reg;
        bitcast_ln393_1_reg_3318_pp0_iter8_reg <= bitcast_ln393_1_reg_3318;
        bitcast_ln393_1_reg_3318_pp0_iter9_reg <= bitcast_ln393_1_reg_3318_pp0_iter8_reg;
        bitcast_ln394_1_reg_3475 <= bitcast_ln394_1_fu_1992_p1;
        bitcast_ln394_1_reg_3475_pp0_iter11_reg <= bitcast_ln394_1_reg_3475;
        bitcast_ln394_1_reg_3475_pp0_iter12_reg <= bitcast_ln394_1_reg_3475_pp0_iter11_reg;
        bitcast_ln394_1_reg_3475_pp0_iter13_reg <= bitcast_ln394_1_reg_3475_pp0_iter12_reg;
        bitcast_ln394_1_reg_3475_pp0_iter14_reg <= bitcast_ln394_1_reg_3475_pp0_iter13_reg;
        bitcast_ln395_1_reg_3573 <= bitcast_ln395_1_fu_2149_p1;
        bitcast_ln395_1_reg_3573_pp0_iter12_reg <= bitcast_ln395_1_reg_3573;
        bitcast_ln395_1_reg_3573_pp0_iter13_reg <= bitcast_ln395_1_reg_3573_pp0_iter12_reg;
        bitcast_ln395_1_reg_3573_pp0_iter14_reg <= bitcast_ln395_1_reg_3573_pp0_iter13_reg;
        bitcast_ln395_1_reg_3573_pp0_iter15_reg <= bitcast_ln395_1_reg_3573_pp0_iter14_reg;
        bitcast_ln402_1_reg_3324 <= bitcast_ln402_1_fu_1920_p1;
        bitcast_ln402_1_reg_3324_pp0_iter10_reg <= bitcast_ln402_1_reg_3324_pp0_iter9_reg;
        bitcast_ln402_1_reg_3324_pp0_iter11_reg <= bitcast_ln402_1_reg_3324_pp0_iter10_reg;
        bitcast_ln402_1_reg_3324_pp0_iter12_reg <= bitcast_ln402_1_reg_3324_pp0_iter11_reg;
        bitcast_ln402_1_reg_3324_pp0_iter13_reg <= bitcast_ln402_1_reg_3324_pp0_iter12_reg;
        bitcast_ln402_1_reg_3324_pp0_iter14_reg <= bitcast_ln402_1_reg_3324_pp0_iter13_reg;
        bitcast_ln402_1_reg_3324_pp0_iter8_reg <= bitcast_ln402_1_reg_3324;
        bitcast_ln402_1_reg_3324_pp0_iter9_reg <= bitcast_ln402_1_reg_3324_pp0_iter8_reg;
        bitcast_ln403_1_reg_3579 <= bitcast_ln403_1_fu_2158_p1;
        bitcast_ln403_1_reg_3579_pp0_iter12_reg <= bitcast_ln403_1_reg_3579;
        bitcast_ln403_1_reg_3579_pp0_iter13_reg <= bitcast_ln403_1_reg_3579_pp0_iter12_reg;
        bitcast_ln403_1_reg_3579_pp0_iter14_reg <= bitcast_ln403_1_reg_3579_pp0_iter13_reg;
        bitcast_ln404_1_reg_3585 <= bitcast_ln404_1_fu_2162_p1;
        bitcast_ln404_1_reg_3585_pp0_iter12_reg <= bitcast_ln404_1_reg_3585;
        bitcast_ln404_1_reg_3585_pp0_iter13_reg <= bitcast_ln404_1_reg_3585_pp0_iter12_reg;
        bitcast_ln404_1_reg_3585_pp0_iter14_reg <= bitcast_ln404_1_reg_3585_pp0_iter13_reg;
        bitcast_ln404_1_reg_3585_pp0_iter15_reg <= bitcast_ln404_1_reg_3585_pp0_iter14_reg;
        c0_x_36_reg_3336_pp0_iter10_reg <= c0_x_36_reg_3336_pp0_iter9_reg;
        c0_x_36_reg_3336_pp0_iter11_reg <= c0_x_36_reg_3336_pp0_iter10_reg;
        c0_x_36_reg_3336_pp0_iter12_reg <= c0_x_36_reg_3336_pp0_iter11_reg;
        c0_x_36_reg_3336_pp0_iter9_reg <= c0_x_36_reg_3336;
        icmp_ln389_reg_2425 <= icmp_ln389_fu_1217_p2;
        icmp_ln389_reg_2425_pp0_iter10_reg <= icmp_ln389_reg_2425_pp0_iter9_reg;
        icmp_ln389_reg_2425_pp0_iter11_reg <= icmp_ln389_reg_2425_pp0_iter10_reg;
        icmp_ln389_reg_2425_pp0_iter12_reg <= icmp_ln389_reg_2425_pp0_iter11_reg;
        icmp_ln389_reg_2425_pp0_iter13_reg <= icmp_ln389_reg_2425_pp0_iter12_reg;
        icmp_ln389_reg_2425_pp0_iter14_reg <= icmp_ln389_reg_2425_pp0_iter13_reg;
        icmp_ln389_reg_2425_pp0_iter15_reg <= icmp_ln389_reg_2425_pp0_iter14_reg;
        icmp_ln389_reg_2425_pp0_iter16_reg <= icmp_ln389_reg_2425_pp0_iter15_reg;
        icmp_ln389_reg_2425_pp0_iter1_reg <= icmp_ln389_reg_2425;
        icmp_ln389_reg_2425_pp0_iter2_reg <= icmp_ln389_reg_2425_pp0_iter1_reg;
        icmp_ln389_reg_2425_pp0_iter3_reg <= icmp_ln389_reg_2425_pp0_iter2_reg;
        icmp_ln389_reg_2425_pp0_iter4_reg <= icmp_ln389_reg_2425_pp0_iter3_reg;
        icmp_ln389_reg_2425_pp0_iter5_reg <= icmp_ln389_reg_2425_pp0_iter4_reg;
        icmp_ln389_reg_2425_pp0_iter6_reg <= icmp_ln389_reg_2425_pp0_iter5_reg;
        icmp_ln389_reg_2425_pp0_iter7_reg <= icmp_ln389_reg_2425_pp0_iter6_reg;
        icmp_ln389_reg_2425_pp0_iter8_reg <= icmp_ln389_reg_2425_pp0_iter7_reg;
        icmp_ln389_reg_2425_pp0_iter9_reg <= icmp_ln389_reg_2425_pp0_iter8_reg;
        lshr_ln114_1_reg_3281 <= {{tid_5_reg_2409_pp0_iter6_reg[6:2]}};
        lshr_ln114_1_reg_3281_pp0_iter10_reg <= lshr_ln114_1_reg_3281_pp0_iter9_reg;
        lshr_ln114_1_reg_3281_pp0_iter11_reg <= lshr_ln114_1_reg_3281_pp0_iter10_reg;
        lshr_ln114_1_reg_3281_pp0_iter12_reg <= lshr_ln114_1_reg_3281_pp0_iter11_reg;
        lshr_ln114_1_reg_3281_pp0_iter13_reg <= lshr_ln114_1_reg_3281_pp0_iter12_reg;
        lshr_ln114_1_reg_3281_pp0_iter14_reg <= lshr_ln114_1_reg_3281_pp0_iter13_reg;
        lshr_ln114_1_reg_3281_pp0_iter15_reg <= lshr_ln114_1_reg_3281_pp0_iter14_reg;
        lshr_ln114_1_reg_3281_pp0_iter8_reg <= lshr_ln114_1_reg_3281;
        lshr_ln114_1_reg_3281_pp0_iter9_reg <= lshr_ln114_1_reg_3281_pp0_iter8_reg;
        sub1777_1_reg_3360_pp0_iter9_reg <= sub1777_1_reg_3360;
        sub1818_1_reg_3615_pp0_iter15_reg <= sub1818_1_reg_3615;
        sub1821_1_reg_3620_pp0_iter15_reg <= sub1821_1_reg_3620;
        sub20_reg_3298_pp0_iter10_reg <= sub20_reg_3298_pp0_iter9_reg;
        sub20_reg_3298_pp0_iter11_reg <= sub20_reg_3298_pp0_iter10_reg;
        sub20_reg_3298_pp0_iter12_reg <= sub20_reg_3298_pp0_iter11_reg;
        sub20_reg_3298_pp0_iter13_reg <= sub20_reg_3298_pp0_iter12_reg;
        sub20_reg_3298_pp0_iter14_reg <= sub20_reg_3298_pp0_iter13_reg;
        sub20_reg_3298_pp0_iter15_reg <= sub20_reg_3298_pp0_iter14_reg;
        sub20_reg_3298_pp0_iter8_reg <= sub20_reg_3298;
        sub20_reg_3298_pp0_iter9_reg <= sub20_reg_3298_pp0_iter8_reg;
        sub21_reg_3303_pp0_iter10_reg <= sub21_reg_3303_pp0_iter9_reg;
        sub21_reg_3303_pp0_iter11_reg <= sub21_reg_3303_pp0_iter10_reg;
        sub21_reg_3303_pp0_iter12_reg <= sub21_reg_3303_pp0_iter11_reg;
        sub21_reg_3303_pp0_iter13_reg <= sub21_reg_3303_pp0_iter12_reg;
        sub21_reg_3303_pp0_iter14_reg <= sub21_reg_3303_pp0_iter13_reg;
        sub21_reg_3303_pp0_iter15_reg <= sub21_reg_3303_pp0_iter14_reg;
        sub21_reg_3303_pp0_iter8_reg <= sub21_reg_3303;
        sub21_reg_3303_pp0_iter9_reg <= sub21_reg_3303_pp0_iter8_reg;
        sub22_reg_3522_pp0_iter12_reg <= sub22_reg_3522;
        sub22_reg_3522_pp0_iter13_reg <= sub22_reg_3522_pp0_iter12_reg;
        sub22_reg_3522_pp0_iter14_reg <= sub22_reg_3522_pp0_iter13_reg;
        sub22_reg_3522_pp0_iter15_reg <= sub22_reg_3522_pp0_iter14_reg;
        sub23_reg_3527_pp0_iter12_reg <= sub23_reg_3527;
        sub23_reg_3527_pp0_iter13_reg <= sub23_reg_3527_pp0_iter12_reg;
        sub23_reg_3527_pp0_iter14_reg <= sub23_reg_3527_pp0_iter13_reg;
        sub23_reg_3527_pp0_iter15_reg <= sub23_reg_3527_pp0_iter14_reg;
        sub27_reg_3542_pp0_iter12_reg <= sub27_reg_3542;
        sub27_reg_3542_pp0_iter13_reg <= sub27_reg_3542_pp0_iter12_reg;
        sub27_reg_3542_pp0_iter14_reg <= sub27_reg_3542_pp0_iter13_reg;
        sub27_reg_3542_pp0_iter15_reg <= sub27_reg_3542_pp0_iter14_reg;
        sub28_reg_3547_pp0_iter12_reg <= sub28_reg_3547;
        sub28_reg_3547_pp0_iter13_reg <= sub28_reg_3547_pp0_iter12_reg;
        sub28_reg_3547_pp0_iter14_reg <= sub28_reg_3547_pp0_iter13_reg;
        sub28_reg_3547_pp0_iter15_reg <= sub28_reg_3547_pp0_iter14_reg;
        sub29_reg_3653_pp0_iter16_reg <= sub29_reg_3653;
        sub30_reg_3658_pp0_iter16_reg <= sub30_reg_3658;
        tid_5_reg_2409 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_2409_pp0_iter10_reg <= tid_5_reg_2409_pp0_iter9_reg;
        tid_5_reg_2409_pp0_iter11_reg <= tid_5_reg_2409_pp0_iter10_reg;
        tid_5_reg_2409_pp0_iter12_reg <= tid_5_reg_2409_pp0_iter11_reg;
        tid_5_reg_2409_pp0_iter13_reg <= tid_5_reg_2409_pp0_iter12_reg;
        tid_5_reg_2409_pp0_iter14_reg <= tid_5_reg_2409_pp0_iter13_reg;
        tid_5_reg_2409_pp0_iter1_reg <= tid_5_reg_2409;
        tid_5_reg_2409_pp0_iter2_reg <= tid_5_reg_2409_pp0_iter1_reg;
        tid_5_reg_2409_pp0_iter3_reg <= tid_5_reg_2409_pp0_iter2_reg;
        tid_5_reg_2409_pp0_iter4_reg <= tid_5_reg_2409_pp0_iter3_reg;
        tid_5_reg_2409_pp0_iter5_reg <= tid_5_reg_2409_pp0_iter4_reg;
        tid_5_reg_2409_pp0_iter6_reg <= tid_5_reg_2409_pp0_iter5_reg;
        tid_5_reg_2409_pp0_iter7_reg <= tid_5_reg_2409_pp0_iter6_reg;
        tid_5_reg_2409_pp0_iter8_reg <= tid_5_reg_2409_pp0_iter7_reg;
        tid_5_reg_2409_pp0_iter9_reg <= tid_5_reg_2409_pp0_iter8_reg;
        tmp_11_reg_3354_pp0_iter9_reg <= tmp_11_reg_3354;
        tmp_reg_2421 <= ap_sig_allocacmp_tid_5[32'd6];
        zext_ln391_cast_reg_3552[3 : 0] <= zext_ln391_cast_fu_2103_p3[3 : 0];
        zext_ln391_cast_reg_3552_pp0_iter12_reg[3 : 0] <= zext_ln391_cast_reg_3552[3 : 0];
        zext_ln391_cast_reg_3552_pp0_iter13_reg[3 : 0] <= zext_ln391_cast_reg_3552_pp0_iter12_reg[3 : 0];
        zext_ln391_cast_reg_3552_pp0_iter14_reg[3 : 0] <= zext_ln391_cast_reg_3552_pp0_iter13_reg[3 : 0];
        zext_ln391_cast_reg_3552_pp0_iter15_reg[3 : 0] <= zext_ln391_cast_reg_3552_pp0_iter14_reg[3 : 0];
        zext_ln391_cast_reg_3552_pp0_iter16_reg[3 : 0] <= zext_ln391_cast_reg_3552_pp0_iter15_reg[3 : 0];
        zext_ln392_cast_reg_3558[4 : 0] <= zext_ln392_cast_fu_2119_p3[4 : 0];
        zext_ln392_cast_reg_3558_pp0_iter12_reg[4 : 0] <= zext_ln392_cast_reg_3558[4 : 0];
        zext_ln392_cast_reg_3558_pp0_iter13_reg[4 : 0] <= zext_ln392_cast_reg_3558_pp0_iter12_reg[4 : 0];
        zext_ln392_cast_reg_3558_pp0_iter14_reg[4 : 0] <= zext_ln392_cast_reg_3558_pp0_iter13_reg[4 : 0];
        zext_ln392_cast_reg_3558_pp0_iter15_reg[4 : 0] <= zext_ln392_cast_reg_3558_pp0_iter14_reg[4 : 0];
        zext_ln392_reg_3563[4 : 0] <= zext_ln392_fu_2126_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1796_1_reg_3470 <= grp_fu_392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add22_reg_3517 <= grp_fu_400_p_dout0;
        sub22_reg_3522 <= grp_fu_404_p_dout0;
        sub23_reg_3527 <= grp_fu_408_p_dout0;
        sub27_reg_3542 <= grp_fu_412_p_dout0;
        sub28_reg_3547 <= grp_fu_416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add23_reg_3420 <= grp_fu_404_p_dout0;
        add24_reg_3426 <= grp_fu_408_p_dout0;
        c0_x_23_reg_3408 <= grp_fu_396_p_dout0;
        c0_x_34_reg_3396 <= grp_fu_388_p_dout0;
        c0_y_25_reg_3414 <= grp_fu_400_p_dout0;
        c0_y_34_reg_3402 <= grp_fu_392_p_dout0;
        c0_y_38_reg_3444 <= grp_fu_420_p_dout0;
        sub1705_1_reg_3432 <= grp_fu_412_p_dout0;
        sub1710_1_reg_3438 <= grp_fu_416_p_dout0;
        sub18_reg_3384 <= grp_fu_380_p_dout0;
        sub19_reg_3390 <= grp_fu_384_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add27_reg_3643 <= grp_fu_448_p_dout0;
        add28_reg_3648 <= grp_fu_452_p_dout0;
        sub29_reg_3653 <= grp_fu_456_p_dout0;
        sub30_reg_3658 <= grp_fu_460_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        c0_x_22_reg_3145_pp0_iter5_reg <= c0_x_22_reg_3145;
        c0_x_22_reg_3145_pp0_iter6_reg <= c0_x_22_reg_3145_pp0_iter5_reg;
        c0_x_22_reg_3145_pp0_iter7_reg <= c0_x_22_reg_3145_pp0_iter6_reg;
        c0_x_22_reg_3145_pp0_iter8_reg <= c0_x_22_reg_3145_pp0_iter7_reg;
        c0_x_23_reg_3408_pp0_iter10_reg <= c0_x_23_reg_3408_pp0_iter9_reg;
        c0_x_23_reg_3408_pp0_iter11_reg <= c0_x_23_reg_3408_pp0_iter10_reg;
        c0_x_23_reg_3408_pp0_iter12_reg <= c0_x_23_reg_3408_pp0_iter11_reg;
        c0_x_23_reg_3408_pp0_iter9_reg <= c0_x_23_reg_3408;
        c0_x_28_reg_3157_pp0_iter5_reg <= c0_x_28_reg_3157;
        c0_x_28_reg_3157_pp0_iter6_reg <= c0_x_28_reg_3157_pp0_iter5_reg;
        c0_x_28_reg_3157_pp0_iter7_reg <= c0_x_28_reg_3157_pp0_iter6_reg;
        c0_x_28_reg_3157_pp0_iter8_reg <= c0_x_28_reg_3157_pp0_iter7_reg;
        c0_y_24_reg_3151_pp0_iter5_reg <= c0_y_24_reg_3151;
        c0_y_24_reg_3151_pp0_iter6_reg <= c0_y_24_reg_3151_pp0_iter5_reg;
        c0_y_24_reg_3151_pp0_iter7_reg <= c0_y_24_reg_3151_pp0_iter6_reg;
        c0_y_24_reg_3151_pp0_iter8_reg <= c0_y_24_reg_3151_pp0_iter7_reg;
        c0_y_25_reg_3414_pp0_iter10_reg <= c0_y_25_reg_3414_pp0_iter9_reg;
        c0_y_25_reg_3414_pp0_iter11_reg <= c0_y_25_reg_3414_pp0_iter10_reg;
        c0_y_25_reg_3414_pp0_iter12_reg <= c0_y_25_reg_3414_pp0_iter11_reg;
        c0_y_25_reg_3414_pp0_iter9_reg <= c0_y_25_reg_3414;
        c0_y_36_reg_3163_pp0_iter5_reg <= c0_y_36_reg_3163;
        c0_y_36_reg_3163_pp0_iter6_reg <= c0_y_36_reg_3163_pp0_iter5_reg;
        c0_y_36_reg_3163_pp0_iter7_reg <= c0_y_36_reg_3163_pp0_iter6_reg;
        c0_y_36_reg_3163_pp0_iter8_reg <= c0_y_36_reg_3163_pp0_iter7_reg;
        c0_y_38_reg_3444_pp0_iter10_reg <= c0_y_38_reg_3444_pp0_iter9_reg;
        c0_y_38_reg_3444_pp0_iter11_reg <= c0_y_38_reg_3444_pp0_iter10_reg;
        c0_y_38_reg_3444_pp0_iter9_reg <= c0_y_38_reg_3444;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_19_reg_2877_pp0_iter3_reg <= c0_x_19_reg_2877;
        c0_x_19_reg_2877_pp0_iter4_reg <= c0_x_19_reg_2877_pp0_iter3_reg;
        c0_x_19_reg_2877_pp0_iter5_reg <= c0_x_19_reg_2877_pp0_iter4_reg;
        c0_x_19_reg_2877_pp0_iter6_reg <= c0_x_19_reg_2877_pp0_iter5_reg;
        c0_y_21_reg_2883_pp0_iter3_reg <= c0_y_21_reg_2883;
        c0_y_21_reg_2883_pp0_iter4_reg <= c0_y_21_reg_2883_pp0_iter3_reg;
        c0_y_21_reg_2883_pp0_iter5_reg <= c0_y_21_reg_2883_pp0_iter4_reg;
        c0_y_21_reg_2883_pp0_iter6_reg <= c0_y_21_reg_2883_pp0_iter5_reg;
        sub12_reg_2931_pp0_iter3_reg <= sub12_reg_2931;
        sub12_reg_2931_pp0_iter4_reg <= sub12_reg_2931_pp0_iter3_reg;
        sub17_reg_3124_pp0_iter5_reg <= sub17_reg_3124;
        sub17_reg_3124_pp0_iter6_reg <= sub17_reg_3124_pp0_iter5_reg;
        tmp_1_1_reg_2925_pp0_iter3_reg <= tmp_1_1_reg_2925;
        tmp_1_1_reg_2925_pp0_iter4_reg <= tmp_1_1_reg_2925_pp0_iter3_reg;
        tmp_8_reg_3118_pp0_iter5_reg <= tmp_8_reg_3118;
        tmp_8_reg_3118_pp0_iter6_reg <= tmp_8_reg_3118_pp0_iter5_reg;
        zext_ln394_reg_3635[4 : 0] <= zext_ln394_fu_2262_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_22_reg_3145 <= grp_fu_348_p_dout0;
        c0_x_28_reg_3157 <= grp_fu_356_p_dout0;
        c0_y_24_reg_3151 <= grp_fu_352_p_dout0;
        c0_y_36_reg_3163 <= grp_fu_360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c0_x_24_reg_2793_pp0_iter3_reg <= c0_x_24_reg_2793;
        c0_x_24_reg_2793_pp0_iter4_reg <= c0_x_24_reg_2793_pp0_iter3_reg;
        c0_x_24_reg_2793_pp0_iter5_reg <= c0_x_24_reg_2793_pp0_iter4_reg;
        c0_y_26_reg_2799_pp0_iter3_reg <= c0_y_26_reg_2799;
        c0_y_26_reg_2799_pp0_iter4_reg <= c0_y_26_reg_2799_pp0_iter3_reg;
        c0_y_26_reg_2799_pp0_iter5_reg <= c0_y_26_reg_2799_pp0_iter4_reg;
        c0_y_26_reg_2799_pp0_iter6_reg <= c0_y_26_reg_2799_pp0_iter5_reg;
        lshr_ln6_reg_3625 <= {{add_ln394_1_fu_2208_p2[8:2]}};
        sub1607_1_reg_2847_pp0_iter3_reg <= sub1607_1_reg_2847;
        sub1698_1_reg_3058_pp0_iter5_reg <= sub1698_1_reg_3058;
        sub1698_1_reg_3058_pp0_iter6_reg <= sub1698_1_reg_3058_pp0_iter5_reg;
        sub24_reg_3372_pp0_iter10_reg <= sub24_reg_3372_pp0_iter9_reg;
        sub24_reg_3372_pp0_iter9_reg <= sub24_reg_3372;
        tmp_10_reg_3052_pp0_iter5_reg <= tmp_10_reg_3052;
        tmp_10_reg_3052_pp0_iter6_reg <= tmp_10_reg_3052_pp0_iter5_reg;
        tmp_1_3_reg_2841_pp0_iter3_reg <= tmp_1_3_reg_2841;
        tmp_1_3_reg_2841_pp0_iter4_reg <= tmp_1_3_reg_2841_pp0_iter3_reg;
        tmp_9_reg_3366_pp0_iter10_reg <= tmp_9_reg_3366_pp0_iter9_reg;
        tmp_9_reg_3366_pp0_iter9_reg <= tmp_9_reg_3366;
        trunc_ln7_reg_3630 <= {{add_ln396_fu_2224_p2[6:2]}};
        trunc_ln7_reg_3630_pp0_iter15_reg <= trunc_ln7_reg_3630;
        zext_ln391_1_reg_3481[5 : 0] <= zext_ln391_1_fu_2015_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_26_reg_3169 <= grp_fu_468_p_dout0;
        c0_y_28_reg_3175 <= grp_fu_472_p_dout0;
        mul1657_1_reg_3187 <= grp_fu_476_p_dout0;
        mul1663_1_reg_3193 <= grp_fu_480_p_dout0;
        sub1644_1_reg_3181 <= grp_fu_348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_y_37_reg_3378 <= grp_fu_460_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul1641_1_reg_2993 <= grp_fu_464_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul1781_1_reg_3450 <= grp_fu_468_p_dout0;
        mul1788_1_reg_3455 <= grp_fu_472_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1181 <= grp_fu_404_p_dout0;
        reg_1185 <= grp_fu_408_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1189 <= grp_fu_432_p_dout0;
        reg_1193 <= grp_fu_436_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub1784_1_reg_3591 <= grp_fu_448_p_dout0;
        sub1789_1_reg_3597 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub1818_1_reg_3615 <= grp_fu_440_p_dout0;
        sub1821_1_reg_3620 <= grp_fu_444_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub20_reg_3298 <= grp_fu_352_p_dout0;
        sub21_reg_3303 <= grp_fu_356_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub24_reg_3372 <= grp_fu_460_p_dout0;
        tmp_9_reg_3366 <= grp_fu_456_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_3603 <= grp_fu_456_p_dout0;
        sub26_reg_3609 <= grp_fu_460_p_dout0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln371_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln371_1_fu_1261_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln367_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln367_2_fu_1241_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln371_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln371_1_fu_1261_p1;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln367_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln367_2_fu_1241_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln371_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address0_local = zext_ln371_1_fu_1261_p1;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln367_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln367_2_fu_1241_p1;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln371_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln371_1_fu_1261_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln367_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln367_2_fu_1241_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln371_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln371_1_fu_1261_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln367_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln367_2_fu_1241_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_2_address0_local = zext_ln371_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address0_local = zext_ln371_1_fu_1261_p1;
        end else begin
            DATA_y_2_address0_local = 'bx;
        end
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_2_address1_local = zext_ln367_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address1_local = zext_ln367_2_fu_1241_p1;
        end else begin
            DATA_y_2_address1_local = 'bx;
        end
    end else begin
        DATA_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_3_address0_local = zext_ln371_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address0_local = zext_ln371_1_fu_1261_p1;
        end else begin
            DATA_y_3_address0_local = 'bx;
        end
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_3_address1_local = zext_ln367_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address1_local = zext_ln367_2_fu_1241_p1;
        end else begin
            DATA_y_3_address1_local = 'bx;
        end
    end else begin
        DATA_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln371_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln371_1_fu_1261_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln367_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln367_2_fu_1241_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2421 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_120;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1036_opcode = 2'd1;
    end else if ((((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1036_opcode = 2'd0;
    end else begin
        grp_fu_1036_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1036_p0 = mul1641_1_reg_2993;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1036_p0 = c0_x_32_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1036_p0 = c0_x_reg_2733;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1036_p0 = c0_x_37_reg_2637;
    end else begin
        grp_fu_1036_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1036_p1 = bitcast_ln386_25_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1036_p1 = add_reg_2913;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1036_p1 = DATA_x_load_8_reg_2757;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1036_p1 = DATA_x_load_9_reg_2661;
    end else begin
        grp_fu_1036_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1040_opcode = 2'd1;
    end else if ((((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1040_opcode = 2'd0;
    end else begin
        grp_fu_1040_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1040_p0 = c0_x_33_reg_3094;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1040_p0 = c0_y_32_reg_2871;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1040_p0 = c0_y_reg_2685;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1040_p0 = c0_y_39_reg_2589;
    end else begin
        grp_fu_1040_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1040_p1 = add17_reg_3106;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1040_p1 = add11_reg_2919;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1040_p1 = DATA_y_load_6_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1040_p1 = DATA_y_load_7_reg_2613;
    end else begin
        grp_fu_1040_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1044_p0 = c0_y_33_reg_3100;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1044_p0 = c0_x_41_reg_2781;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1044_p0 = c0_x_reg_2733;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1044_p0 = c0_x_37_reg_2637;
    end else begin
        grp_fu_1044_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1044_p1 = add18_reg_3112;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1044_p1 = add1598_1_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1044_p1 = DATA_x_load_8_reg_2757;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1044_p1 = DATA_x_load_9_reg_2661;
    end else begin
        grp_fu_1044_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1048_p0 = c0_x_27_reg_3028;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1048_p0 = c0_y_43_reg_2787;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1048_p0 = c0_y_reg_2685;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1048_p0 = c0_y_39_reg_2589;
    end else begin
        grp_fu_1048_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1048_p1 = add1689_1_reg_3040;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1048_p1 = add1601_1_reg_2835;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1048_p1 = DATA_y_load_6_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1048_p1 = DATA_y_load_7_reg_2613;
    end else begin
        grp_fu_1048_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1052_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1052_opcode = 2'd0;
    end else begin
        grp_fu_1052_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1052_p0 = c0_y_35_reg_3034;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1052_p0 = c0_x_33_reg_3094;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1052_p0 = c0_x_29_reg_2739;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1052_p0 = c0_x_38_reg_2643;
    end else begin
        grp_fu_1052_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1052_p1 = add1692_1_reg_3046;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1052_p1 = add17_reg_3106;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1052_p1 = DATA_x_1_load_8_reg_2763;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1052_p1 = DATA_x_1_load_9_reg_2667;
    end else begin
        grp_fu_1052_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1056_p0 = c0_x_24_reg_2793_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1056_p0 = c0_y_33_reg_3100;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1056_p0 = c0_y_29_reg_2691;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1056_p0 = c0_y_40_reg_2595;
    end else begin
        grp_fu_1056_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1056_p1 = sub1644_1_reg_3181;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1056_p1 = add18_reg_3112;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1056_p1 = DATA_y_1_load_6_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1056_p1 = DATA_y_1_load_7_reg_2619;
    end else begin
        grp_fu_1056_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1060_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1060_opcode = 2'd0;
    end else begin
        grp_fu_1060_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1060_p0 = c0_x_24_reg_2793_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1060_p0 = c0_x_27_reg_3028;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1060_p0 = c0_x_29_reg_2739;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1060_p0 = c0_x_38_reg_2643;
    end else begin
        grp_fu_1060_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1060_p1 = sub1644_1_reg_3181;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1060_p1 = add1689_1_reg_3040;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1060_p1 = DATA_x_1_load_8_reg_2763;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1060_p1 = DATA_x_1_load_9_reg_2667;
    end else begin
        grp_fu_1060_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1064_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1064_opcode = 2'd0;
    end else begin
        grp_fu_1064_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1064_p0 = c0_x_26_reg_3169;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1064_p0 = c0_y_35_reg_3034;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1064_p0 = c0_y_29_reg_2691;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1064_p0 = c0_y_40_reg_2595;
    end else begin
        grp_fu_1064_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1064_p1 = mul1657_1_reg_3187;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1064_p1 = add1692_1_reg_3046;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1064_p1 = DATA_y_1_load_6_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1064_p1 = DATA_y_1_load_7_reg_2619;
    end else begin
        grp_fu_1064_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1068_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1068_opcode = 2'd0;
    end else begin
        grp_fu_1068_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1068_p0 = mul9_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1068_p0 = c0_y_28_reg_3175;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1068_p0 = c0_x_30_reg_2745;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1068_p0 = c0_x_39_reg_2649;
    end else begin
        grp_fu_1068_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1068_p1 = bitcast_ln386_13_fu_1789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1068_p1 = mul1663_1_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1068_p1 = DATA_x_2_load_8_reg_2769;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1068_p1 = DATA_x_2_load_9_reg_2673;
    end else begin
        grp_fu_1068_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1072_opcode = 2'd1;
    end else if ((((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1072_opcode = 2'd0;
    end else begin
        grp_fu_1072_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1072_p0 = bitcast_ln386_15_fu_1823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1072_p0 = c0_x_26_reg_3169;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1072_p0 = c0_y_30_reg_2697;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1072_p0 = c0_y_41_reg_2601;
    end else begin
        grp_fu_1072_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1072_p1 = mul10_reg_3256;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1072_p1 = mul1657_1_reg_3187;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1072_p1 = DATA_y_2_load_6_reg_2721;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1072_p1 = DATA_y_2_load_7_reg_2625;
    end else begin
        grp_fu_1072_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1076_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1076_opcode = 2'd0;
    end else begin
        grp_fu_1076_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1076_p0 = c0_x_19_reg_2877_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1076_p0 = c0_y_28_reg_3175;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1076_p0 = c0_x_30_reg_2745;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1076_p0 = c0_x_39_reg_2649;
    end else begin
        grp_fu_1076_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1076_p1 = sub15_reg_3229;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1076_p1 = mul1663_1_reg_3193;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1076_p1 = DATA_x_2_load_8_reg_2769;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1076_p1 = DATA_x_2_load_9_reg_2673;
    end else begin
        grp_fu_1076_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1080_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1080_opcode = 2'd0;
    end else begin
        grp_fu_1080_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p0 = c0_x_35_reg_3330;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p0 = c0_y_21_reg_2883_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1080_p0 = c0_y_30_reg_2697;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p0 = c0_y_41_reg_2601;
    end else begin
        grp_fu_1080_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p1 = add1768_1_reg_3342;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p1 = add15_reg_3235;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1080_p1 = DATA_y_2_load_6_reg_2721;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p1 = DATA_y_2_load_7_reg_2625;
    end else begin
        grp_fu_1080_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1084_opcode = 2'd1;
    end else if ((((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1084_opcode = 2'd0;
    end else begin
        grp_fu_1084_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p0 = c0_x_35_reg_3330;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p0 = c0_x_19_reg_2877_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1084_p0 = c0_x_31_reg_2751;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p0 = c0_x_40_reg_2655;
    end else begin
        grp_fu_1084_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p1 = add1768_1_reg_3342;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p1 = sub15_reg_3229;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1084_p1 = DATA_x_3_load_8_reg_2775;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p1 = DATA_x_3_load_9_reg_2679;
    end else begin
        grp_fu_1084_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1088_opcode = 2'd0;
    end else begin
        grp_fu_1088_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1088_p0 = c0_y_24_reg_3151_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_p0 = c0_y_21_reg_2883_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1088_p0 = c0_y_31_reg_2703;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1088_p0 = c0_y_42_reg_2607;
    end else begin
        grp_fu_1088_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1088_p1 = sub19_reg_3390;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_p1 = add15_reg_3235;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1088_p1 = DATA_y_3_load_6_reg_2727;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1088_p1 = DATA_y_3_load_7_reg_2631;
    end else begin
        grp_fu_1088_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1092_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_opcode = 2'd0;
    end else begin
        grp_fu_1092_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1092_p0 = c0_x_22_reg_3145_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_p0 = c0_x_21_reg_3199;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1092_p0 = c0_x_31_reg_2751;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1092_p0 = c0_x_40_reg_2655;
    end else begin
        grp_fu_1092_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1092_p1 = sub18_reg_3384;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_p1 = mul7_reg_3211;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1092_p1 = DATA_x_3_load_8_reg_2775;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1092_p1 = DATA_x_3_load_9_reg_2679;
    end else begin
        grp_fu_1092_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1096_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1096_opcode = 2'd0;
    end else begin
        grp_fu_1096_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1096_p0 = c0_y_24_reg_3151_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1096_p0 = c0_y_23_reg_3205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1096_p0 = c0_y_31_reg_2703;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1096_p0 = c0_y_42_reg_2607;
    end else begin
        grp_fu_1096_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1096_p1 = sub19_reg_3390;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1096_p1 = mul8_reg_3217;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1096_p1 = DATA_y_3_load_6_reg_2727;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1096_p1 = DATA_y_3_load_7_reg_2631;
    end else begin
        grp_fu_1096_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1100_p0 = c0_x_34_reg_3396;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1100_p0 = mul1702_1_reg_3246;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1100_p0 = tmp_1_reg_2901;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1100_p0 = tmp_1_6_reg_2817;
    end else begin
        grp_fu_1100_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1100_p1 = add23_reg_3420;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1100_p1 = bitcast_ln386_33_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1100_p1 = bitcast_ln386_1_fu_1492_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1100_p1 = bitcast_ln386_21_fu_1352_p1;
    end else begin
        grp_fu_1100_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1104_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1104_opcode = 2'd0;
    end else begin
        grp_fu_1104_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1104_p0 = c0_y_34_reg_3402;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1104_p0 = bitcast_ln386_35_fu_1891_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1104_p0 = bitcast_ln386_3_fu_1526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p0 = bitcast_ln386_23_fu_1386_p1;
    end else begin
        grp_fu_1104_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1104_p1 = add24_reg_3426;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1104_p1 = mul1709_1_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1104_p1 = sub_reg_2907;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p1 = sub1591_1_reg_2823;
    end else begin
        grp_fu_1104_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1108_p0 = c0_x_28_reg_3157_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1108_p0 = c0_y_26_reg_2799_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1108_p0 = bitcast_ln386_9_fu_1561_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1108_p0 = bitcast_ln386_29_fu_1421_p1;
    end else begin
        grp_fu_1108_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1108_p1 = sub1705_1_reg_3432;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1108_p1 = add1649_1_reg_3223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1108_p1 = bitcast_ln386_11_fu_1597_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1108_p1 = bitcast_ln386_31_fu_1457_p1;
    end else begin
        grp_fu_1108_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1112_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1112_opcode = 2'd0;
    end else begin
        grp_fu_1112_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1112_p0 = c0_y_36_reg_3163_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1112_p0 = c0_x_22_reg_3145_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1112_p0 = bitcast_ln386_9_fu_1561_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1112_p0 = bitcast_ln386_29_fu_1421_p1;
    end else begin
        grp_fu_1112_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1112_p1 = sub1710_1_reg_3438;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1112_p1 = sub18_reg_3384;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1112_p1 = bitcast_ln386_11_fu_1597_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1112_p1 = bitcast_ln386_31_fu_1457_p1;
    end else begin
        grp_fu_1112_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1116_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1116_opcode = 2'd0;
    end else begin
        grp_fu_1116_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1116_p0 = c0_y_37_reg_3378;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1116_p0 = c0_x_34_reg_3396;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1116_p0 = c0_x_32_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1116_p0 = c0_x_41_reg_2781;
    end else begin
        grp_fu_1116_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1116_p1 = add1771_1_reg_3348_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1116_p1 = add23_reg_3420;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1116_p1 = add_reg_2913;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1116_p1 = add1598_1_reg_2829;
    end else begin
        grp_fu_1116_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1120_p0 = c0_x_36_reg_3336_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1120_p0 = c0_y_34_reg_3402;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1120_p0 = c0_y_32_reg_2871;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1120_p0 = c0_y_43_reg_2787;
    end else begin
        grp_fu_1120_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1120_p1 = sub1784_1_reg_3591;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1120_p1 = add24_reg_3426;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1120_p1 = add11_reg_2919;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1120_p1 = add1601_1_reg_2835;
    end else begin
        grp_fu_1120_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1124_p0 = c0_y_38_reg_3444_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1124_p0 = c0_x_28_reg_3157_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1124_p0 = c0_x_20_reg_2889;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1124_p0 = c0_x_25_reg_2805;
    end else begin
        grp_fu_1124_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1124_p1 = sub1789_1_reg_3597;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1124_p1 = sub1705_1_reg_3432;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1124_p1 = add12_reg_2937;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1124_p1 = add1614_1_reg_2853;
    end else begin
        grp_fu_1124_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1128_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1128_opcode = 2'd0;
    end else begin
        grp_fu_1128_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1128_p0 = c0_x_36_reg_3336_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1128_p0 = c0_y_36_reg_3163_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1128_p0 = c0_y_22_reg_2895;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1128_p0 = c0_y_27_reg_2811;
    end else begin
        grp_fu_1128_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1128_p1 = sub1784_1_reg_3591;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1128_p1 = sub1710_1_reg_3438;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1128_p1 = add13_reg_2943;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1128_p1 = add1617_1_reg_2859;
    end else begin
        grp_fu_1128_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1132_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1132_opcode = 2'd0;
    end else begin
        grp_fu_1132_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1132_p0 = c0_y_38_reg_3444_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1132_p0 = c0_y_37_reg_3378;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1132_p0 = c0_x_20_reg_2889;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1132_p0 = c0_x_25_reg_2805;
    end else begin
        grp_fu_1132_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1132_p1 = sub1789_1_reg_3597;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1132_p1 = add1771_1_reg_3348;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1132_p1 = add12_reg_2937;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1132_p1 = add1614_1_reg_2853;
    end else begin
        grp_fu_1132_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1136_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1136_opcode = 2'd0;
    end else begin
        grp_fu_1136_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1136_p0 = c0_x_23_reg_3408_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1136_p0 = mul1781_1_reg_3450;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1136_p0 = c0_y_22_reg_2895;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1136_p0 = c0_y_27_reg_2811;
    end else begin
        grp_fu_1136_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1136_p1 = sub25_reg_3603;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1136_p1 = bitcast_ln386_37_fu_1953_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1136_p1 = add13_reg_2943;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1136_p1 = add1617_1_reg_2859;
    end else begin
        grp_fu_1136_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1140_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1140_opcode = 2'd0;
    end else begin
        grp_fu_1140_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1140_p0 = c0_y_25_reg_3414_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1140_p0 = bitcast_ln386_39_fu_1987_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1140_p0 = mul_reg_3074;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1140_p0 = bitcast_ln386_27_fu_1666_p1;
    end else begin
        grp_fu_1140_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1140_p1 = sub26_reg_3609;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1140_p1 = mul1788_1_reg_3455;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1140_p1 = bitcast_ln386_5_fu_1700_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1140_p1 = mul1648_1_reg_3013;
    end else begin
        grp_fu_1140_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1144_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1144_opcode = 2'd0;
    end else begin
        grp_fu_1144_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1144_p0 = c0_x_23_reg_3408_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1144_p0 = mul11_reg_3492;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1144_p0 = c0_x_21_reg_3199;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1144_p0 = bitcast_ln386_7_fu_1734_p1;
    end else begin
        grp_fu_1144_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1144_p1 = sub25_reg_3603;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1144_p1 = bitcast_ln386_17_fu_2055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1144_p1 = mul7_reg_3211;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1144_p1 = mul6_reg_3079;
    end else begin
        grp_fu_1144_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1148_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1148_opcode = 2'd0;
    end else begin
        grp_fu_1148_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1148_p0 = c0_y_25_reg_3414_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1148_p0 = bitcast_ln386_19_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1148_p0 = c0_y_26_reg_2799_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1148_p0 = c0_y_23_reg_3205;
    end else begin
        grp_fu_1148_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1148_p1 = sub26_reg_3609;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1148_p1 = mul12_reg_3497;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1148_p1 = add1649_1_reg_3223;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1148_p1 = mul8_reg_3217;
    end else begin
        grp_fu_1148_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1152_p0 = sub17_reg_3124;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1152_p0 = tmp_1_1_reg_2925;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1152_p0 = sub1607_1_reg_2847;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1152_p0 = tmp_1_3_reg_2841;
    end else begin
        grp_fu_1152_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1157_p0 = tmp_11_reg_3354;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1157_p0 = sub14_reg_3064;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1157_p0 = sub1630_1_reg_2998;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1157_p0 = sub12_reg_2931;
    end else begin
        grp_fu_1157_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1157_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1157_p1 = 64'd0;
    end else begin
        grp_fu_1157_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1163_p0 = sub1777_1_reg_3360;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1163_p0 = tmp_8_reg_3118;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1163_p0 = add14_reg_3069;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1163_p0 = add1636_1_reg_3003;
    end else begin
        grp_fu_1163_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1163_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1163_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1163_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1168_p0 = tmp_9_reg_3366;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1168_p0 = tmp_10_reg_3052;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1168_p0 = sub16_reg_3084;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1168_p0 = sub1656_1_reg_3018;
    end else begin
        grp_fu_1168_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1168_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1168_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1168_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1173_p0 = sub24_reg_3372;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1173_p0 = sub1698_1_reg_3058;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1173_p0 = add16_reg_3089;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1173_p0 = add1662_1_reg_3023;
    end else begin
        grp_fu_1173_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1173_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1173_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1173_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address0_local = zext_ln367_1_fu_2384_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address0_local = zext_ln396_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address0_local = zext_ln393_fu_2280_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address0_local = zext_ln391_fu_2111_p1;
    end else begin
        work_x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address1_local = zext_ln395_fu_2342_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address1_local = zext_ln394_reg_3635;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address1_local = zext_ln392_reg_3563;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address1_local = zext_ln114_1_fu_1748_p1;
    end else begin
        work_x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_ce0_local = 1'b1;
    end else begin
        work_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_ce1_local = 1'b1;
    end else begin
        work_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d0_local = bitcast_ln396_fu_2392_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d0_local = bitcast_ln395_fu_2318_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d0_local = bitcast_ln392_fu_2288_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d0_local = bitcast_ln390_fu_2132_p1;
    end else begin
        work_x_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d1_local = bitcast_ln394_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d1_local = bitcast_ln393_fu_2313_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d1_local = bitcast_ln391_fu_2166_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d1_local = bitcast_ln389_fu_1896_p1;
    end else begin
        work_x_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_we0_local = 1'b1;
    end else begin
        work_x_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter11_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_we1_local = 1'b1;
    end else begin
        work_x_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address0_local = zext_ln389_fu_2353_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address0_local = zext_ln396_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address0_local = zext_ln393_1_fu_2200_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address0_local = zext_ln392_fu_2126_p1;
    end else begin
        work_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address1_local = zext_ln395_1_fu_2270_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address1_local = zext_ln394_fu_2262_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address1_local = zext_ln391_1_fu_2015_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address1_local = zext_ln114_1_fu_1748_p1;
    end else begin
        work_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_ce0_local = 1'b1;
    end else begin
        work_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_ce1_local = 1'b1;
    end else begin
        work_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d0_local = bitcast_ln396_1_fu_2371_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d0_local = bitcast_ln395_1_reg_3573_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d0_local = bitcast_ln392_1_fu_2239_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d0_local = bitcast_ln391_1_fu_2143_p1;
    end else begin
        work_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d1_local = bitcast_ln394_1_reg_3475_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d1_local = bitcast_ln393_1_reg_3318_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d1_local = bitcast_ln390_1_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d1_local = bitcast_ln389_1_fu_1906_p1;
    end else begin
        work_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_we0_local = 1'b1;
    end else begin
        work_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_we1_local = 1'b1;
    end else begin
        work_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_address0_local = zext_ln367_1_fu_2384_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_address0_local = zext_ln396_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_address0_local = zext_ln393_fu_2280_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_address0_local = zext_ln391_fu_2111_p1;
    end else begin
        work_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_address1_local = zext_ln395_fu_2342_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_address1_local = zext_ln394_reg_3635;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_address1_local = zext_ln392_reg_3563;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_address1_local = zext_ln114_1_fu_1748_p1;
    end else begin
        work_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_ce0_local = 1'b1;
    end else begin
        work_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_ce1_local = 1'b1;
    end else begin
        work_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_d0_local = bitcast_ln396_fu_2392_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_d0_local = bitcast_ln395_fu_2318_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_d0_local = bitcast_ln392_fu_2288_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_d0_local = bitcast_ln390_fu_2132_p1;
    end else begin
        work_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_d1_local = bitcast_ln394_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_d1_local = bitcast_ln393_fu_2313_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_d1_local = bitcast_ln391_fu_2166_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_d1_local = bitcast_ln389_fu_1896_p1;
    end else begin
        work_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_we0_local = 1'b1;
    end else begin
        work_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter11_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_we1_local = 1'b1;
    end else begin
        work_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_address0_local = zext_ln389_fu_2353_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_address0_local = zext_ln396_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_address0_local = zext_ln393_1_fu_2200_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_address0_local = zext_ln392_fu_2126_p1;
    end else begin
        work_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_address1_local = zext_ln395_1_fu_2270_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_address1_local = zext_ln394_fu_2262_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_address1_local = zext_ln391_1_fu_2015_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_address1_local = zext_ln114_1_fu_1748_p1;
    end else begin
        work_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_ce0_local = 1'b1;
    end else begin
        work_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_ce1_local = 1'b1;
    end else begin
        work_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_d0_local = bitcast_ln396_1_fu_2371_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_d0_local = bitcast_ln395_1_reg_3573_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_d0_local = bitcast_ln392_1_fu_2239_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_d0_local = bitcast_ln391_1_fu_2143_p1;
    end else begin
        work_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_d1_local = bitcast_ln394_1_reg_3475_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_d1_local = bitcast_ln393_1_reg_3318_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_d1_local = bitcast_ln390_1_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_d1_local = bitcast_ln389_1_fu_1906_p1;
    end else begin
        work_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_we0_local = 1'b1;
    end else begin
        work_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_we1_local = 1'b1;
    end else begin
        work_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address0_local = zext_ln367_1_fu_2384_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address0_local = zext_ln396_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address0_local = zext_ln393_fu_2280_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address0_local = zext_ln391_fu_2111_p1;
    end else begin
        work_y_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address1_local = zext_ln395_fu_2342_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address1_local = zext_ln394_reg_3635;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address1_local = zext_ln392_reg_3563;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address1_local = zext_ln114_1_fu_1748_p1;
    end else begin
        work_y_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_ce0_local = 1'b1;
    end else begin
        work_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_ce1_local = 1'b1;
    end else begin
        work_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d0_local = bitcast_ln405_fu_2397_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d0_local = bitcast_ln404_fu_2328_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d0_local = bitcast_ln401_fu_2293_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d0_local = bitcast_ln399_fu_2137_p1;
    end else begin
        work_y_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d1_local = bitcast_ln403_fu_2366_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d1_local = bitcast_ln402_fu_2323_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d1_local = bitcast_ln400_fu_2171_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d1_local = bitcast_ln398_fu_1901_p1;
    end else begin
        work_y_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_we0_local = 1'b1;
    end else begin
        work_y_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter11_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_we1_local = 1'b1;
    end else begin
        work_y_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address0_local = zext_ln389_fu_2353_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address0_local = zext_ln396_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address0_local = zext_ln393_1_fu_2200_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address0_local = zext_ln391_1_reg_3481;
    end else begin
        work_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address1_local = zext_ln395_1_fu_2270_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address1_local = zext_ln394_fu_2262_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address1_local = zext_ln392_reg_3563;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address1_local = zext_ln114_1_fu_1748_p1;
    end else begin
        work_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_ce0_local = 1'b1;
    end else begin
        work_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_ce1_local = 1'b1;
    end else begin
        work_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d0_local = bitcast_ln405_1_fu_2376_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d0_local = bitcast_ln404_1_reg_3585_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d0_local = bitcast_ln401_1_fu_2245_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d0_local = bitcast_ln399_1_fu_2153_p1;
    end else begin
        work_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d1_local = bitcast_ln403_1_reg_3579_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d1_local = bitcast_ln402_1_reg_3324_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d1_local = bitcast_ln400_1_fu_2176_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d1_local = bitcast_ln398_1_fu_1915_p1;
    end else begin
        work_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_we0_local = 1'b1;
    end else begin
        work_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter11_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_we1_local = 1'b1;
    end else begin
        work_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_address0_local = zext_ln367_1_fu_2384_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_address0_local = zext_ln396_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_address0_local = zext_ln393_fu_2280_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_address0_local = zext_ln391_fu_2111_p1;
    end else begin
        work_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_address1_local = zext_ln395_fu_2342_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_address1_local = zext_ln394_reg_3635;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_address1_local = zext_ln392_reg_3563;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_address1_local = zext_ln114_1_fu_1748_p1;
    end else begin
        work_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_ce0_local = 1'b1;
    end else begin
        work_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_ce1_local = 1'b1;
    end else begin
        work_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_d0_local = bitcast_ln405_fu_2397_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_d0_local = bitcast_ln404_fu_2328_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_d0_local = bitcast_ln401_fu_2293_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_d0_local = bitcast_ln399_fu_2137_p1;
    end else begin
        work_y_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_d1_local = bitcast_ln403_fu_2366_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_d1_local = bitcast_ln402_fu_2323_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_d1_local = bitcast_ln400_fu_2171_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_d1_local = bitcast_ln398_fu_1901_p1;
    end else begin
        work_y_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_we0_local = 1'b1;
    end else begin
        work_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter11_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_we1_local = 1'b1;
    end else begin
        work_y_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_address0_local = zext_ln389_fu_2353_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_address0_local = zext_ln396_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_address0_local = zext_ln393_1_fu_2200_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_address0_local = zext_ln391_1_reg_3481;
    end else begin
        work_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_address1_local = zext_ln395_1_fu_2270_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_address1_local = zext_ln394_fu_2262_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_address1_local = zext_ln392_reg_3563;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_address1_local = zext_ln114_1_fu_1748_p1;
    end else begin
        work_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_ce0_local = 1'b1;
    end else begin
        work_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_ce1_local = 1'b1;
    end else begin
        work_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_d0_local = bitcast_ln405_1_fu_2376_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_d0_local = bitcast_ln404_1_reg_3585_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_d0_local = bitcast_ln401_1_fu_2245_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_d0_local = bitcast_ln399_1_fu_2153_p1;
    end else begin
        work_y_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_d1_local = bitcast_ln403_1_reg_3579_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_d1_local = bitcast_ln402_1_reg_3324_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_d1_local = bitcast_ln400_1_fu_2176_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_d1_local = bitcast_ln398_1_fu_1915_p1;
    end else begin
        work_y_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter10_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_we0_local = 1'b1;
    end else begin
        work_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (icmp_ln389_reg_2425_pp0_iter11_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_we1_local = 1'b1;
    end else begin
        work_y_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = DATA_y_2_address0_local;
assign DATA_y_2_address1 = DATA_y_2_address1_local;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = DATA_y_3_address0_local;
assign DATA_y_3_address1 = DATA_y_3_address1_local;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_1313_p2 = (tid_5_reg_2409 + 7'd2);
assign add_ln390_fu_1999_p2 = (zext_ln365_1_fu_1996_p1 + 8'd65);
assign add_ln392_fu_2184_p2 = (zext_ln365_fu_2181_p1 + 9'd193);
assign add_ln394_1_fu_2208_p2 = ($signed(zext_ln365_fu_2181_p1) + $signed(9'd321));
assign add_ln394_fu_2336_p2 = ($signed(zext_ln114_fu_2333_p1) + $signed(7'd80));
assign add_ln396_fu_2224_p2 = ($signed(tid_5_reg_2409_pp0_iter14_reg) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bit_sel20_fu_1500_p3 = bitcast_ln386_2_fu_1497_p1[64'd63];
assign bit_sel21_fu_1674_p3 = bitcast_ln386_4_fu_1671_p1[64'd63];
assign bit_sel22_fu_1708_p3 = bitcast_ln386_6_fu_1705_p1[64'd63];
assign bit_sel23_fu_1535_p3 = bitcast_ln386_8_fu_1531_p1[64'd63];
assign bit_sel24_fu_1571_p3 = bitcast_ln386_10_fu_1567_p1[64'd63];
assign bit_sel25_fu_1763_p3 = bitcast_ln386_12_fu_1760_p1[64'd63];
assign bit_sel26_fu_1797_p3 = bitcast_ln386_14_fu_1794_p1[64'd63];
assign bit_sel27_fu_2029_p3 = bitcast_ln386_16_fu_2026_p1[64'd63];
assign bit_sel28_fu_2063_p3 = bitcast_ln386_18_fu_2060_p1[64'd63];
assign bit_sel29_fu_1326_p3 = bitcast_ln386_20_fu_1323_p1[64'd63];
assign bit_sel30_fu_1360_p3 = bitcast_ln386_22_fu_1357_p1[64'd63];
assign bit_sel31_fu_1606_p3 = bitcast_ln386_24_fu_1603_p1[64'd63];
assign bit_sel32_fu_1640_p3 = bitcast_ln386_26_fu_1637_p1[64'd63];
assign bit_sel33_fu_1395_p3 = bitcast_ln386_28_fu_1391_p1[64'd63];
assign bit_sel34_fu_1431_p3 = bitcast_ln386_30_fu_1427_p1[64'd63];
assign bit_sel35_fu_1831_p3 = bitcast_ln386_32_fu_1828_p1[64'd63];
assign bit_sel36_fu_1865_p3 = bitcast_ln386_34_fu_1862_p1[64'd63];
assign bit_sel37_fu_1927_p3 = bitcast_ln386_36_fu_1924_p1[64'd63];
assign bit_sel38_fu_1961_p3 = bitcast_ln386_38_fu_1958_p1[64'd63];
assign bit_sel_fu_1466_p3 = bitcast_ln386_fu_1463_p1[64'd63];
assign bitcast_ln386_10_fu_1567_p1 = reg_1185;
assign bitcast_ln386_11_fu_1597_p1 = xor_ln386_5_fu_1589_p3;
assign bitcast_ln386_12_fu_1760_p1 = sub17_reg_3124_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1789_p1 = xor_ln386_6_fu_1781_p3;
assign bitcast_ln386_14_fu_1794_p1 = tmp_8_reg_3118_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1823_p1 = xor_ln386_7_fu_1815_p3;
assign bitcast_ln386_16_fu_2026_p1 = sub24_reg_3372_pp0_iter10_reg;
assign bitcast_ln386_17_fu_2055_p1 = xor_ln386_8_fu_2047_p3;
assign bitcast_ln386_18_fu_2060_p1 = tmp_9_reg_3366_pp0_iter10_reg;
assign bitcast_ln386_19_fu_2089_p1 = xor_ln386_9_fu_2081_p3;
assign bitcast_ln386_1_fu_1492_p1 = xor_ln3_fu_1484_p3;
assign bitcast_ln386_20_fu_1323_p1 = sub1591_1_reg_2823;
assign bitcast_ln386_21_fu_1352_p1 = xor_ln386_s_fu_1344_p3;
assign bitcast_ln386_22_fu_1357_p1 = tmp_1_6_reg_2817;
assign bitcast_ln386_23_fu_1386_p1 = xor_ln386_10_fu_1378_p3;
assign bitcast_ln386_24_fu_1603_p1 = sub1607_1_reg_2847_pp0_iter3_reg;
assign bitcast_ln386_25_fu_1632_p1 = xor_ln386_11_fu_1624_p3;
assign bitcast_ln386_26_fu_1637_p1 = tmp_1_3_reg_2841_pp0_iter4_reg;
assign bitcast_ln386_27_fu_1666_p1 = xor_ln386_12_fu_1658_p3;
assign bitcast_ln386_28_fu_1391_p1 = reg_1181;
assign bitcast_ln386_29_fu_1421_p1 = xor_ln386_13_fu_1413_p3;
assign bitcast_ln386_2_fu_1497_p1 = tmp_1_reg_2901;
assign bitcast_ln386_30_fu_1427_p1 = reg_1185;
assign bitcast_ln386_31_fu_1457_p1 = xor_ln386_14_fu_1449_p3;
assign bitcast_ln386_32_fu_1828_p1 = sub1698_1_reg_3058_pp0_iter6_reg;
assign bitcast_ln386_33_fu_1857_p1 = xor_ln386_15_fu_1849_p3;
assign bitcast_ln386_34_fu_1862_p1 = tmp_10_reg_3052_pp0_iter6_reg;
assign bitcast_ln386_35_fu_1891_p1 = xor_ln386_16_fu_1883_p3;
assign bitcast_ln386_36_fu_1924_p1 = sub1777_1_reg_3360_pp0_iter9_reg;
assign bitcast_ln386_37_fu_1953_p1 = xor_ln386_17_fu_1945_p3;
assign bitcast_ln386_38_fu_1958_p1 = tmp_11_reg_3354_pp0_iter9_reg;
assign bitcast_ln386_39_fu_1987_p1 = xor_ln386_18_fu_1979_p3;
assign bitcast_ln386_3_fu_1526_p1 = xor_ln386_1_fu_1518_p3;
assign bitcast_ln386_4_fu_1671_p1 = sub12_reg_2931_pp0_iter4_reg;
assign bitcast_ln386_5_fu_1700_p1 = xor_ln386_2_fu_1692_p3;
assign bitcast_ln386_6_fu_1705_p1 = tmp_1_1_reg_2925_pp0_iter4_reg;
assign bitcast_ln386_7_fu_1734_p1 = xor_ln386_3_fu_1726_p3;
assign bitcast_ln386_8_fu_1531_p1 = reg_1181;
assign bitcast_ln386_9_fu_1561_p1 = xor_ln386_4_fu_1553_p3;
assign bitcast_ln386_fu_1463_p1 = sub_reg_2907;
assign bitcast_ln389_1_fu_1906_p1 = add1717_1_reg_3271;
assign bitcast_ln389_fu_1896_p1 = add19_reg_3261;
assign bitcast_ln390_1_fu_2021_p1 = add1796_1_reg_3470;
assign bitcast_ln390_fu_2132_p1 = add25_reg_3502;
assign bitcast_ln391_1_fu_2143_p1 = reg_1193;
assign bitcast_ln391_fu_2166_p1 = add21_reg_3487;
assign bitcast_ln392_1_fu_2239_p1 = reg_1189;
assign bitcast_ln392_fu_2288_p1 = add27_reg_3643;
assign bitcast_ln393_1_fu_1911_p1 = grp_fu_360_p_dout0;
assign bitcast_ln393_fu_2313_p1 = sub20_reg_3298_pp0_iter15_reg;
assign bitcast_ln394_1_fu_1992_p1 = grp_fu_396_p_dout0;
assign bitcast_ln394_fu_2361_p1 = sub27_reg_3542_pp0_iter15_reg;
assign bitcast_ln395_1_fu_2149_p1 = grp_fu_420_p_dout0;
assign bitcast_ln395_fu_2318_p1 = sub22_reg_3522_pp0_iter15_reg;
assign bitcast_ln396_1_fu_2371_p1 = sub1818_1_reg_3615_pp0_iter15_reg;
assign bitcast_ln396_fu_2392_p1 = sub29_reg_3653_pp0_iter16_reg;
assign bitcast_ln398_1_fu_1915_p1 = add1720_1_reg_3276;
assign bitcast_ln398_fu_1901_p1 = add20_reg_3266;
assign bitcast_ln399_1_fu_2153_p1 = add1799_1_reg_3512;
assign bitcast_ln399_fu_2137_p1 = reg_1189;
assign bitcast_ln400_1_fu_2176_p1 = add1736_1_reg_3507;
assign bitcast_ln400_fu_2171_p1 = add22_reg_3517;
assign bitcast_ln401_1_fu_2245_p1 = reg_1193;
assign bitcast_ln401_fu_2293_p1 = add28_reg_3648;
assign bitcast_ln402_1_fu_1920_p1 = grp_fu_364_p_dout0;
assign bitcast_ln402_fu_2323_p1 = sub21_reg_3303_pp0_iter15_reg;
assign bitcast_ln403_1_fu_2158_p1 = grp_fu_428_p_dout0;
assign bitcast_ln403_fu_2366_p1 = sub28_reg_3547_pp0_iter15_reg;
assign bitcast_ln404_1_fu_2162_p1 = grp_fu_424_p_dout0;
assign bitcast_ln404_fu_2328_p1 = sub23_reg_3527_pp0_iter15_reg;
assign bitcast_ln405_1_fu_2376_p1 = sub1821_1_reg_3620_pp0_iter15_reg;
assign bitcast_ln405_fu_2397_p1 = sub30_reg_3658_pp0_iter16_reg;
assign grp_fu_348_p_ce = 1'b1;
assign grp_fu_348_p_din0 = grp_fu_1036_p0;
assign grp_fu_348_p_din1 = grp_fu_1036_p1;
assign grp_fu_348_p_opcode = grp_fu_1036_opcode;
assign grp_fu_352_p_ce = 1'b1;
assign grp_fu_352_p_din0 = grp_fu_1040_p0;
assign grp_fu_352_p_din1 = grp_fu_1040_p1;
assign grp_fu_352_p_opcode = grp_fu_1040_opcode;
assign grp_fu_356_p_ce = 1'b1;
assign grp_fu_356_p_din0 = grp_fu_1044_p0;
assign grp_fu_356_p_din1 = grp_fu_1044_p1;
assign grp_fu_356_p_opcode = 2'd1;
assign grp_fu_360_p_ce = 1'b1;
assign grp_fu_360_p_din0 = grp_fu_1048_p0;
assign grp_fu_360_p_din1 = grp_fu_1048_p1;
assign grp_fu_360_p_opcode = 2'd1;
assign grp_fu_364_p_ce = 1'b1;
assign grp_fu_364_p_din0 = grp_fu_1052_p0;
assign grp_fu_364_p_din1 = grp_fu_1052_p1;
assign grp_fu_364_p_opcode = grp_fu_1052_opcode;
assign grp_fu_368_p_ce = 1'b1;
assign grp_fu_368_p_din0 = grp_fu_1056_p0;
assign grp_fu_368_p_din1 = grp_fu_1056_p1;
assign grp_fu_368_p_opcode = 2'd0;
assign grp_fu_372_p_ce = 1'b1;
assign grp_fu_372_p_din0 = grp_fu_1060_p0;
assign grp_fu_372_p_din1 = grp_fu_1060_p1;
assign grp_fu_372_p_opcode = grp_fu_1060_opcode;
assign grp_fu_376_p_ce = 1'b1;
assign grp_fu_376_p_din0 = grp_fu_1064_p0;
assign grp_fu_376_p_din1 = grp_fu_1064_p1;
assign grp_fu_376_p_opcode = grp_fu_1064_opcode;
assign grp_fu_380_p_ce = 1'b1;
assign grp_fu_380_p_din0 = grp_fu_1068_p0;
assign grp_fu_380_p_din1 = grp_fu_1068_p1;
assign grp_fu_380_p_opcode = grp_fu_1068_opcode;
assign grp_fu_384_p_ce = 1'b1;
assign grp_fu_384_p_din0 = grp_fu_1072_p0;
assign grp_fu_384_p_din1 = grp_fu_1072_p1;
assign grp_fu_384_p_opcode = grp_fu_1072_opcode;
assign grp_fu_388_p_ce = 1'b1;
assign grp_fu_388_p_din0 = grp_fu_1076_p0;
assign grp_fu_388_p_din1 = grp_fu_1076_p1;
assign grp_fu_388_p_opcode = grp_fu_1076_opcode;
assign grp_fu_392_p_ce = 1'b1;
assign grp_fu_392_p_din0 = grp_fu_1080_p0;
assign grp_fu_392_p_din1 = grp_fu_1080_p1;
assign grp_fu_392_p_opcode = grp_fu_1080_opcode;
assign grp_fu_396_p_ce = 1'b1;
assign grp_fu_396_p_din0 = grp_fu_1084_p0;
assign grp_fu_396_p_din1 = grp_fu_1084_p1;
assign grp_fu_396_p_opcode = grp_fu_1084_opcode;
assign grp_fu_400_p_ce = 1'b1;
assign grp_fu_400_p_din0 = grp_fu_1088_p0;
assign grp_fu_400_p_din1 = grp_fu_1088_p1;
assign grp_fu_400_p_opcode = grp_fu_1088_opcode;
assign grp_fu_404_p_ce = 1'b1;
assign grp_fu_404_p_din0 = grp_fu_1092_p0;
assign grp_fu_404_p_din1 = grp_fu_1092_p1;
assign grp_fu_404_p_opcode = grp_fu_1092_opcode;
assign grp_fu_408_p_ce = 1'b1;
assign grp_fu_408_p_din0 = grp_fu_1096_p0;
assign grp_fu_408_p_din1 = grp_fu_1096_p1;
assign grp_fu_408_p_opcode = grp_fu_1096_opcode;
assign grp_fu_412_p_ce = 1'b1;
assign grp_fu_412_p_din0 = grp_fu_1100_p0;
assign grp_fu_412_p_din1 = grp_fu_1100_p1;
assign grp_fu_412_p_opcode = 2'd1;
assign grp_fu_416_p_ce = 1'b1;
assign grp_fu_416_p_din0 = grp_fu_1104_p0;
assign grp_fu_416_p_din1 = grp_fu_1104_p1;
assign grp_fu_416_p_opcode = grp_fu_1104_opcode;
assign grp_fu_420_p_ce = 1'b1;
assign grp_fu_420_p_din0 = grp_fu_1108_p0;
assign grp_fu_420_p_din1 = grp_fu_1108_p1;
assign grp_fu_420_p_opcode = 2'd1;
assign grp_fu_424_p_ce = 1'b1;
assign grp_fu_424_p_din0 = grp_fu_1112_p0;
assign grp_fu_424_p_din1 = grp_fu_1112_p1;
assign grp_fu_424_p_opcode = grp_fu_1112_opcode;
assign grp_fu_428_p_ce = 1'b1;
assign grp_fu_428_p_din0 = grp_fu_1116_p0;
assign grp_fu_428_p_din1 = grp_fu_1116_p1;
assign grp_fu_428_p_opcode = grp_fu_1116_opcode;
assign grp_fu_432_p_ce = 1'b1;
assign grp_fu_432_p_din0 = grp_fu_1120_p0;
assign grp_fu_432_p_din1 = grp_fu_1120_p1;
assign grp_fu_432_p_opcode = 2'd0;
assign grp_fu_436_p_ce = 1'b1;
assign grp_fu_436_p_din0 = grp_fu_1124_p0;
assign grp_fu_436_p_din1 = grp_fu_1124_p1;
assign grp_fu_436_p_opcode = 2'd0;
assign grp_fu_440_p_ce = 1'b1;
assign grp_fu_440_p_din0 = grp_fu_1128_p0;
assign grp_fu_440_p_din1 = grp_fu_1128_p1;
assign grp_fu_440_p_opcode = grp_fu_1128_opcode;
assign grp_fu_444_p_ce = 1'b1;
assign grp_fu_444_p_din0 = grp_fu_1132_p0;
assign grp_fu_444_p_din1 = grp_fu_1132_p1;
assign grp_fu_444_p_opcode = grp_fu_1132_opcode;
assign grp_fu_448_p_ce = 1'b1;
assign grp_fu_448_p_din0 = grp_fu_1136_p0;
assign grp_fu_448_p_din1 = grp_fu_1136_p1;
assign grp_fu_448_p_opcode = grp_fu_1136_opcode;
assign grp_fu_452_p_ce = 1'b1;
assign grp_fu_452_p_din0 = grp_fu_1140_p0;
assign grp_fu_452_p_din1 = grp_fu_1140_p1;
assign grp_fu_452_p_opcode = grp_fu_1140_opcode;
assign grp_fu_456_p_ce = 1'b1;
assign grp_fu_456_p_din0 = grp_fu_1144_p0;
assign grp_fu_456_p_din1 = grp_fu_1144_p1;
assign grp_fu_456_p_opcode = grp_fu_1144_opcode;
assign grp_fu_460_p_ce = 1'b1;
assign grp_fu_460_p_din0 = grp_fu_1148_p0;
assign grp_fu_460_p_din1 = grp_fu_1148_p1;
assign grp_fu_460_p_opcode = grp_fu_1148_opcode;
assign grp_fu_464_p_ce = 1'b1;
assign grp_fu_464_p_din0 = grp_fu_1152_p0;
assign grp_fu_464_p_din1 = 64'd0;
assign grp_fu_468_p_ce = 1'b1;
assign grp_fu_468_p_din0 = grp_fu_1157_p0;
assign grp_fu_468_p_din1 = grp_fu_1157_p1;
assign grp_fu_472_p_ce = 1'b1;
assign grp_fu_472_p_din0 = grp_fu_1163_p0;
assign grp_fu_472_p_din1 = grp_fu_1163_p1;
assign grp_fu_476_p_ce = 1'b1;
assign grp_fu_476_p_din0 = grp_fu_1168_p0;
assign grp_fu_476_p_din1 = grp_fu_1168_p1;
assign grp_fu_480_p_ce = 1'b1;
assign grp_fu_480_p_din0 = grp_fu_1173_p0;
assign grp_fu_480_p_din1 = grp_fu_1173_p1;
assign icmp_ln389_fu_1217_p2 = ((trunc_ln365_fu_1213_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln114_1_fu_1739_p4 = {{tid_5_reg_2409_pp0_iter6_reg[6:2]}};
assign lshr_ln4_fu_2005_p4 = {{add_ln390_fu_1999_p2[7:2]}};
assign lshr_ln5_fu_2190_p4 = {{add_ln392_fu_2184_p2[8:2]}};
assign or_ln371_1_fu_1253_p3 = {{tmp_s_fu_1223_p4}, {2'd3}};
assign or_ln7_fu_1233_p3 = {{tmp_s_fu_1223_p4}, {2'd2}};
assign or_ln_fu_1293_p3 = {{trunc_ln367_fu_1273_p1}, {1'd1}};
assign part_sel_fu_2094_p4 = {{tid_5_reg_2409_pp0_iter10_reg[5:2]}};
assign sext_ln367_fu_2381_p1 = zext_ln391_cast_reg_3552_pp0_iter16_reg;
assign sext_ln389_fu_2350_p1 = $signed(trunc_ln7_reg_3630_pp0_iter15_reg);
assign sext_ln393_fu_2277_p1 = zext_ln391_cast_reg_3552_pp0_iter15_reg;
assign sext_ln396_fu_2298_p1 = zext_ln392_cast_reg_3558_pp0_iter15_reg;
assign shl_ln367_fu_1276_p2 = tid_5_reg_2409 << 7'd1;
assign tmp_fu_1205_p3 = ap_sig_allocacmp_tid_5[32'd6];
assign tmp_s_fu_1223_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign trunc_ln365_fu_1213_p1 = ap_sig_allocacmp_tid_5[1:0];
assign trunc_ln367_fu_1273_p1 = tid_5_reg_2409[5:0];
assign trunc_ln386_10_fu_1340_p1 = bitcast_ln386_20_fu_1323_p1[62:0];
assign trunc_ln386_11_fu_1374_p1 = bitcast_ln386_22_fu_1357_p1[62:0];
assign trunc_ln386_12_fu_1620_p1 = bitcast_ln386_24_fu_1603_p1[62:0];
assign trunc_ln386_13_fu_1654_p1 = bitcast_ln386_26_fu_1637_p1[62:0];
assign trunc_ln386_14_fu_1409_p1 = bitcast_ln386_28_fu_1391_p1[62:0];
assign trunc_ln386_15_fu_1445_p1 = bitcast_ln386_30_fu_1427_p1[62:0];
assign trunc_ln386_16_fu_1845_p1 = bitcast_ln386_32_fu_1828_p1[62:0];
assign trunc_ln386_17_fu_1879_p1 = bitcast_ln386_34_fu_1862_p1[62:0];
assign trunc_ln386_18_fu_1941_p1 = bitcast_ln386_36_fu_1924_p1[62:0];
assign trunc_ln386_19_fu_1975_p1 = bitcast_ln386_38_fu_1958_p1[62:0];
assign trunc_ln386_1_fu_1514_p1 = bitcast_ln386_2_fu_1497_p1[62:0];
assign trunc_ln386_2_fu_1688_p1 = bitcast_ln386_4_fu_1671_p1[62:0];
assign trunc_ln386_3_fu_1722_p1 = bitcast_ln386_6_fu_1705_p1[62:0];
assign trunc_ln386_4_fu_1549_p1 = bitcast_ln386_8_fu_1531_p1[62:0];
assign trunc_ln386_5_fu_1585_p1 = bitcast_ln386_10_fu_1567_p1[62:0];
assign trunc_ln386_6_fu_1777_p1 = bitcast_ln386_12_fu_1760_p1[62:0];
assign trunc_ln386_7_fu_1811_p1 = bitcast_ln386_14_fu_1794_p1[62:0];
assign trunc_ln386_8_fu_2043_p1 = bitcast_ln386_16_fu_2026_p1[62:0];
assign trunc_ln386_9_fu_2077_p1 = bitcast_ln386_18_fu_2060_p1[62:0];
assign trunc_ln386_fu_1480_p1 = bitcast_ln386_fu_1463_p1[62:0];
assign work_x_0_address0 = work_x_0_address0_local;
assign work_x_0_address1 = work_x_0_address1_local;
assign work_x_0_ce0 = work_x_0_ce0_local;
assign work_x_0_ce1 = work_x_0_ce1_local;
assign work_x_0_d0 = work_x_0_d0_local;
assign work_x_0_d1 = work_x_0_d1_local;
assign work_x_0_we0 = work_x_0_we0_local;
assign work_x_0_we1 = work_x_0_we1_local;
assign work_x_1_address0 = work_x_1_address0_local;
assign work_x_1_address1 = work_x_1_address1_local;
assign work_x_1_ce0 = work_x_1_ce0_local;
assign work_x_1_ce1 = work_x_1_ce1_local;
assign work_x_1_d0 = work_x_1_d0_local;
assign work_x_1_d1 = work_x_1_d1_local;
assign work_x_1_we0 = work_x_1_we0_local;
assign work_x_1_we1 = work_x_1_we1_local;
assign work_x_2_address0 = work_x_2_address0_local;
assign work_x_2_address1 = work_x_2_address1_local;
assign work_x_2_ce0 = work_x_2_ce0_local;
assign work_x_2_ce1 = work_x_2_ce1_local;
assign work_x_2_d0 = work_x_2_d0_local;
assign work_x_2_d1 = work_x_2_d1_local;
assign work_x_2_we0 = work_x_2_we0_local;
assign work_x_2_we1 = work_x_2_we1_local;
assign work_x_3_address0 = work_x_3_address0_local;
assign work_x_3_address1 = work_x_3_address1_local;
assign work_x_3_ce0 = work_x_3_ce0_local;
assign work_x_3_ce1 = work_x_3_ce1_local;
assign work_x_3_d0 = work_x_3_d0_local;
assign work_x_3_d1 = work_x_3_d1_local;
assign work_x_3_we0 = work_x_3_we0_local;
assign work_x_3_we1 = work_x_3_we1_local;
assign work_y_0_address0 = work_y_0_address0_local;
assign work_y_0_address1 = work_y_0_address1_local;
assign work_y_0_ce0 = work_y_0_ce0_local;
assign work_y_0_ce1 = work_y_0_ce1_local;
assign work_y_0_d0 = work_y_0_d0_local;
assign work_y_0_d1 = work_y_0_d1_local;
assign work_y_0_we0 = work_y_0_we0_local;
assign work_y_0_we1 = work_y_0_we1_local;
assign work_y_1_address0 = work_y_1_address0_local;
assign work_y_1_address1 = work_y_1_address1_local;
assign work_y_1_ce0 = work_y_1_ce0_local;
assign work_y_1_ce1 = work_y_1_ce1_local;
assign work_y_1_d0 = work_y_1_d0_local;
assign work_y_1_d1 = work_y_1_d1_local;
assign work_y_1_we0 = work_y_1_we0_local;
assign work_y_1_we1 = work_y_1_we1_local;
assign work_y_2_address0 = work_y_2_address0_local;
assign work_y_2_address1 = work_y_2_address1_local;
assign work_y_2_ce0 = work_y_2_ce0_local;
assign work_y_2_ce1 = work_y_2_ce1_local;
assign work_y_2_d0 = work_y_2_d0_local;
assign work_y_2_d1 = work_y_2_d1_local;
assign work_y_2_we0 = work_y_2_we0_local;
assign work_y_2_we1 = work_y_2_we1_local;
assign work_y_3_address0 = work_y_3_address0_local;
assign work_y_3_address1 = work_y_3_address1_local;
assign work_y_3_ce0 = work_y_3_ce0_local;
assign work_y_3_ce1 = work_y_3_ce1_local;
assign work_y_3_d0 = work_y_3_d0_local;
assign work_y_3_d1 = work_y_3_d1_local;
assign work_y_3_we0 = work_y_3_we0_local;
assign work_y_3_we1 = work_y_3_we1_local;
assign xor_ln386_10_fu_1378_p3 = {{xor_ln386_29_fu_1368_p2}, {trunc_ln386_11_fu_1374_p1}};
assign xor_ln386_11_fu_1624_p3 = {{xor_ln386_30_fu_1614_p2}, {trunc_ln386_12_fu_1620_p1}};
assign xor_ln386_12_fu_1658_p3 = {{xor_ln386_31_fu_1648_p2}, {trunc_ln386_13_fu_1654_p1}};
assign xor_ln386_13_fu_1413_p3 = {{xor_ln386_32_fu_1403_p2}, {trunc_ln386_14_fu_1409_p1}};
assign xor_ln386_14_fu_1449_p3 = {{xor_ln386_33_fu_1439_p2}, {trunc_ln386_15_fu_1445_p1}};
assign xor_ln386_15_fu_1849_p3 = {{xor_ln386_34_fu_1839_p2}, {trunc_ln386_16_fu_1845_p1}};
assign xor_ln386_16_fu_1883_p3 = {{xor_ln386_35_fu_1873_p2}, {trunc_ln386_17_fu_1879_p1}};
assign xor_ln386_17_fu_1945_p3 = {{xor_ln386_36_fu_1935_p2}, {trunc_ln386_18_fu_1941_p1}};
assign xor_ln386_18_fu_1979_p3 = {{xor_ln386_37_fu_1969_p2}, {trunc_ln386_19_fu_1975_p1}};
assign xor_ln386_19_fu_1474_p2 = (bit_sel_fu_1466_p3 ^ 1'd1);
assign xor_ln386_1_fu_1518_p3 = {{xor_ln386_fu_1508_p2}, {trunc_ln386_1_fu_1514_p1}};
assign xor_ln386_20_fu_1682_p2 = (bit_sel21_fu_1674_p3 ^ 1'd1);
assign xor_ln386_21_fu_1716_p2 = (bit_sel22_fu_1708_p3 ^ 1'd1);
assign xor_ln386_22_fu_1543_p2 = (bit_sel23_fu_1535_p3 ^ 1'd1);
assign xor_ln386_23_fu_1579_p2 = (bit_sel24_fu_1571_p3 ^ 1'd1);
assign xor_ln386_24_fu_1771_p2 = (bit_sel25_fu_1763_p3 ^ 1'd1);
assign xor_ln386_25_fu_1805_p2 = (bit_sel26_fu_1797_p3 ^ 1'd1);
assign xor_ln386_26_fu_2037_p2 = (bit_sel27_fu_2029_p3 ^ 1'd1);
assign xor_ln386_27_fu_2071_p2 = (bit_sel28_fu_2063_p3 ^ 1'd1);
assign xor_ln386_28_fu_1334_p2 = (bit_sel29_fu_1326_p3 ^ 1'd1);
assign xor_ln386_29_fu_1368_p2 = (bit_sel30_fu_1360_p3 ^ 1'd1);
assign xor_ln386_2_fu_1692_p3 = {{xor_ln386_20_fu_1682_p2}, {trunc_ln386_2_fu_1688_p1}};
assign xor_ln386_30_fu_1614_p2 = (bit_sel31_fu_1606_p3 ^ 1'd1);
assign xor_ln386_31_fu_1648_p2 = (bit_sel32_fu_1640_p3 ^ 1'd1);
assign xor_ln386_32_fu_1403_p2 = (bit_sel33_fu_1395_p3 ^ 1'd1);
assign xor_ln386_33_fu_1439_p2 = (bit_sel34_fu_1431_p3 ^ 1'd1);
assign xor_ln386_34_fu_1839_p2 = (bit_sel35_fu_1831_p3 ^ 1'd1);
assign xor_ln386_35_fu_1873_p2 = (bit_sel36_fu_1865_p3 ^ 1'd1);
assign xor_ln386_36_fu_1935_p2 = (bit_sel37_fu_1927_p3 ^ 1'd1);
assign xor_ln386_37_fu_1969_p2 = (bit_sel38_fu_1961_p3 ^ 1'd1);
assign xor_ln386_3_fu_1726_p3 = {{xor_ln386_21_fu_1716_p2}, {trunc_ln386_3_fu_1722_p1}};
assign xor_ln386_4_fu_1553_p3 = {{xor_ln386_22_fu_1543_p2}, {trunc_ln386_4_fu_1549_p1}};
assign xor_ln386_5_fu_1589_p3 = {{xor_ln386_23_fu_1579_p2}, {trunc_ln386_5_fu_1585_p1}};
assign xor_ln386_6_fu_1781_p3 = {{xor_ln386_24_fu_1771_p2}, {trunc_ln386_6_fu_1777_p1}};
assign xor_ln386_7_fu_1815_p3 = {{xor_ln386_25_fu_1805_p2}, {trunc_ln386_7_fu_1811_p1}};
assign xor_ln386_8_fu_2047_p3 = {{xor_ln386_26_fu_2037_p2}, {trunc_ln386_8_fu_2043_p1}};
assign xor_ln386_9_fu_2081_p3 = {{xor_ln386_27_fu_2071_p2}, {trunc_ln386_9_fu_2077_p1}};
assign xor_ln386_fu_1508_p2 = (bit_sel20_fu_1500_p3 ^ 1'd1);
assign xor_ln386_s_fu_1344_p3 = {{xor_ln386_28_fu_1334_p2}, {trunc_ln386_10_fu_1340_p1}};
assign xor_ln3_fu_1484_p3 = {{xor_ln386_19_fu_1474_p2}, {trunc_ln386_fu_1480_p1}};
assign zext_ln114_1_fu_1748_p1 = lshr_ln114_1_fu_1739_p4;
assign zext_ln114_fu_2333_p1 = lshr_ln114_1_reg_3281_pp0_iter15_reg;
assign zext_ln365_1_fu_1996_p1 = tid_5_reg_2409_pp0_iter10_reg;
assign zext_ln365_fu_2181_p1 = tid_5_reg_2409_pp0_iter14_reg;
assign zext_ln367_1_fu_2384_p1 = $unsigned(sext_ln367_fu_2381_p1);
assign zext_ln367_2_fu_1241_p1 = or_ln7_fu_1233_p3;
assign zext_ln367_fu_1281_p1 = shl_ln367_fu_1276_p2;
assign zext_ln371_1_fu_1261_p1 = or_ln371_1_fu_1253_p3;
assign zext_ln371_fu_1301_p1 = or_ln_fu_1293_p3;
assign zext_ln389_fu_2353_p1 = $unsigned(sext_ln389_fu_2350_p1);
assign zext_ln391_1_fu_2015_p1 = lshr_ln4_fu_2005_p4;
assign zext_ln391_cast_fu_2103_p3 = {{1'd1}, {part_sel_fu_2094_p4}};
assign zext_ln391_fu_2111_p1 = $unsigned(zext_ln391_cast_fu_2103_p3);
assign zext_ln392_cast_fu_2119_p3 = {{1'd1}, {lshr_ln114_1_reg_3281_pp0_iter10_reg}};
assign zext_ln392_fu_2126_p1 = $unsigned(zext_ln392_cast_fu_2119_p3);
assign zext_ln393_1_fu_2200_p1 = lshr_ln5_fu_2190_p4;
assign zext_ln393_2_fu_2251_p1 = lshr_ln114_1_reg_3281_pp0_iter14_reg;
assign zext_ln393_fu_2280_p1 = $unsigned(sext_ln393_fu_2277_p1);
assign zext_ln394_cast_fu_2254_p3 = {{1'd1}, {zext_ln393_2_fu_2251_p1}};
assign zext_ln394_fu_2262_p1 = zext_ln394_cast_fu_2254_p3;
assign zext_ln395_1_fu_2270_p1 = lshr_ln6_reg_3625;
assign zext_ln395_fu_2342_p1 = add_ln394_fu_2336_p2;
assign zext_ln396_fu_2301_p1 = $unsigned(sext_ln396_fu_2298_p1);
always @ (posedge ap_clk) begin
    zext_ln391_1_reg_3481[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln391_cast_reg_3552[4] <= 1'b1;
    zext_ln391_cast_reg_3552_pp0_iter12_reg[4] <= 1'b1;
    zext_ln391_cast_reg_3552_pp0_iter13_reg[4] <= 1'b1;
    zext_ln391_cast_reg_3552_pp0_iter14_reg[4] <= 1'b1;
    zext_ln391_cast_reg_3552_pp0_iter15_reg[4] <= 1'b1;
    zext_ln391_cast_reg_3552_pp0_iter16_reg[4] <= 1'b1;
    zext_ln392_cast_reg_3558[5] <= 1'b1;
    zext_ln392_cast_reg_3558_pp0_iter12_reg[5] <= 1'b1;
    zext_ln392_cast_reg_3558_pp0_iter13_reg[5] <= 1'b1;
    zext_ln392_cast_reg_3558_pp0_iter14_reg[5] <= 1'b1;
    zext_ln392_cast_reg_3558_pp0_iter15_reg[5] <= 1'b1;
    zext_ln392_reg_3563[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000001;
    zext_ln394_reg_3635[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000010;
end
endmodule 
