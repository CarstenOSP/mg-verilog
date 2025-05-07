module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_4_address1,DATA_y_4_ce1,DATA_y_4_q1,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_5_address1,DATA_y_5_ce1,DATA_y_5_q1,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_6_address1,DATA_y_6_ce1,DATA_y_6_q1,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_7_address1,DATA_y_7_ce1,DATA_y_7_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_q1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_q1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_q1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_q1,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_480_p_din0,grp_fu_480_p_din1,grp_fu_480_p_opcode,grp_fu_480_p_dout0,grp_fu_480_p_ce,grp_fu_484_p_din0,grp_fu_484_p_din1,grp_fu_484_p_opcode,grp_fu_484_p_dout0,grp_fu_484_p_ce,grp_fu_488_p_din0,grp_fu_488_p_din1,grp_fu_488_p_opcode,grp_fu_488_p_dout0,grp_fu_488_p_ce,grp_fu_492_p_din0,grp_fu_492_p_din1,grp_fu_492_p_opcode,grp_fu_492_p_dout0,grp_fu_492_p_ce,grp_fu_496_p_din0,grp_fu_496_p_din1,grp_fu_496_p_opcode,grp_fu_496_p_dout0,grp_fu_496_p_ce,grp_fu_500_p_din0,grp_fu_500_p_din1,grp_fu_500_p_opcode,grp_fu_500_p_dout0,grp_fu_500_p_ce,grp_fu_504_p_din0,grp_fu_504_p_din1,grp_fu_504_p_opcode,grp_fu_504_p_dout0,grp_fu_504_p_ce,grp_fu_508_p_din0,grp_fu_508_p_din1,grp_fu_508_p_opcode,grp_fu_508_p_dout0,grp_fu_508_p_ce,grp_fu_512_p_din0,grp_fu_512_p_din1,grp_fu_512_p_opcode,grp_fu_512_p_dout0,grp_fu_512_p_ce,grp_fu_516_p_din0,grp_fu_516_p_din1,grp_fu_516_p_opcode,grp_fu_516_p_dout0,grp_fu_516_p_ce,grp_fu_520_p_din0,grp_fu_520_p_din1,grp_fu_520_p_opcode,grp_fu_520_p_dout0,grp_fu_520_p_ce,grp_fu_524_p_din0,grp_fu_524_p_din1,grp_fu_524_p_opcode,grp_fu_524_p_dout0,grp_fu_524_p_ce,grp_fu_528_p_din0,grp_fu_528_p_din1,grp_fu_528_p_opcode,grp_fu_528_p_dout0,grp_fu_528_p_ce,grp_fu_532_p_din0,grp_fu_532_p_din1,grp_fu_532_p_opcode,grp_fu_532_p_dout0,grp_fu_532_p_ce,grp_fu_536_p_din0,grp_fu_536_p_din1,grp_fu_536_p_opcode,grp_fu_536_p_dout0,grp_fu_536_p_ce,grp_fu_593_p_din0,grp_fu_593_p_din1,grp_fu_593_p_opcode,grp_fu_593_p_dout0,grp_fu_593_p_ce,grp_fu_597_p_din0,grp_fu_597_p_din1,grp_fu_597_p_opcode,grp_fu_597_p_dout0,grp_fu_597_p_ce,grp_fu_601_p_din0,grp_fu_601_p_din1,grp_fu_601_p_opcode,grp_fu_601_p_dout0,grp_fu_601_p_ce,grp_fu_540_p_din0,grp_fu_540_p_din1,grp_fu_540_p_dout0,grp_fu_540_p_ce,grp_fu_544_p_din0,grp_fu_544_p_din1,grp_fu_544_p_dout0,grp_fu_544_p_ce,grp_fu_548_p_din0,grp_fu_548_p_din1,grp_fu_548_p_dout0,grp_fu_548_p_ce,grp_fu_605_p_din0,grp_fu_605_p_din1,grp_fu_605_p_dout0,grp_fu_605_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [5:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [5:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [5:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [5:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [5:0] DATA_y_4_address1;
output   DATA_y_4_ce1;
input  [63:0] DATA_y_4_q1;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [5:0] DATA_y_5_address1;
output   DATA_y_5_ce1;
input  [63:0] DATA_y_5_q1;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [5:0] DATA_y_6_address1;
output   DATA_y_6_ce1;
input  [63:0] DATA_y_6_q1;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [5:0] DATA_y_7_address1;
output   DATA_y_7_ce1;
input  [63:0] DATA_y_7_q1;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
input  [63:0] DATA_x_4_q1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
input  [63:0] DATA_x_5_q1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
input  [63:0] DATA_x_6_q1;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
input  [63:0] DATA_x_7_q1;
output  [8:0] work_x_address0;
output   work_x_ce0;
output   work_x_we0;
output  [63:0] work_x_d0;
output  [8:0] work_x_address1;
output   work_x_ce1;
output   work_x_we1;
output  [63:0] work_x_d1;
output  [8:0] work_y_address0;
output   work_y_ce0;
output   work_y_we0;
output  [63:0] work_y_d0;
output  [8:0] work_y_address1;
output   work_y_ce1;
output   work_y_we1;
output  [63:0] work_y_d1;
output  [63:0] grp_fu_480_p_din0;
output  [63:0] grp_fu_480_p_din1;
output  [1:0] grp_fu_480_p_opcode;
input  [63:0] grp_fu_480_p_dout0;
output   grp_fu_480_p_ce;
output  [63:0] grp_fu_484_p_din0;
output  [63:0] grp_fu_484_p_din1;
output  [1:0] grp_fu_484_p_opcode;
input  [63:0] grp_fu_484_p_dout0;
output   grp_fu_484_p_ce;
output  [63:0] grp_fu_488_p_din0;
output  [63:0] grp_fu_488_p_din1;
output  [1:0] grp_fu_488_p_opcode;
input  [63:0] grp_fu_488_p_dout0;
output   grp_fu_488_p_ce;
output  [63:0] grp_fu_492_p_din0;
output  [63:0] grp_fu_492_p_din1;
output  [1:0] grp_fu_492_p_opcode;
input  [63:0] grp_fu_492_p_dout0;
output   grp_fu_492_p_ce;
output  [63:0] grp_fu_496_p_din0;
output  [63:0] grp_fu_496_p_din1;
output  [1:0] grp_fu_496_p_opcode;
input  [63:0] grp_fu_496_p_dout0;
output   grp_fu_496_p_ce;
output  [63:0] grp_fu_500_p_din0;
output  [63:0] grp_fu_500_p_din1;
output  [1:0] grp_fu_500_p_opcode;
input  [63:0] grp_fu_500_p_dout0;
output   grp_fu_500_p_ce;
output  [63:0] grp_fu_504_p_din0;
output  [63:0] grp_fu_504_p_din1;
output  [1:0] grp_fu_504_p_opcode;
input  [63:0] grp_fu_504_p_dout0;
output   grp_fu_504_p_ce;
output  [63:0] grp_fu_508_p_din0;
output  [63:0] grp_fu_508_p_din1;
output  [1:0] grp_fu_508_p_opcode;
input  [63:0] grp_fu_508_p_dout0;
output   grp_fu_508_p_ce;
output  [63:0] grp_fu_512_p_din0;
output  [63:0] grp_fu_512_p_din1;
output  [1:0] grp_fu_512_p_opcode;
input  [63:0] grp_fu_512_p_dout0;
output   grp_fu_512_p_ce;
output  [63:0] grp_fu_516_p_din0;
output  [63:0] grp_fu_516_p_din1;
output  [1:0] grp_fu_516_p_opcode;
input  [63:0] grp_fu_516_p_dout0;
output   grp_fu_516_p_ce;
output  [63:0] grp_fu_520_p_din0;
output  [63:0] grp_fu_520_p_din1;
output  [1:0] grp_fu_520_p_opcode;
input  [63:0] grp_fu_520_p_dout0;
output   grp_fu_520_p_ce;
output  [63:0] grp_fu_524_p_din0;
output  [63:0] grp_fu_524_p_din1;
output  [1:0] grp_fu_524_p_opcode;
input  [63:0] grp_fu_524_p_dout0;
output   grp_fu_524_p_ce;
output  [63:0] grp_fu_528_p_din0;
output  [63:0] grp_fu_528_p_din1;
output  [1:0] grp_fu_528_p_opcode;
input  [63:0] grp_fu_528_p_dout0;
output   grp_fu_528_p_ce;
output  [63:0] grp_fu_532_p_din0;
output  [63:0] grp_fu_532_p_din1;
output  [1:0] grp_fu_532_p_opcode;
input  [63:0] grp_fu_532_p_dout0;
output   grp_fu_532_p_ce;
output  [63:0] grp_fu_536_p_din0;
output  [63:0] grp_fu_536_p_din1;
output  [1:0] grp_fu_536_p_opcode;
input  [63:0] grp_fu_536_p_dout0;
output   grp_fu_536_p_ce;
output  [63:0] grp_fu_593_p_din0;
output  [63:0] grp_fu_593_p_din1;
output  [1:0] grp_fu_593_p_opcode;
input  [63:0] grp_fu_593_p_dout0;
output   grp_fu_593_p_ce;
output  [63:0] grp_fu_597_p_din0;
output  [63:0] grp_fu_597_p_din1;
output  [1:0] grp_fu_597_p_opcode;
input  [63:0] grp_fu_597_p_dout0;
output   grp_fu_597_p_ce;
output  [63:0] grp_fu_601_p_din0;
output  [63:0] grp_fu_601_p_din1;
output  [1:0] grp_fu_601_p_opcode;
input  [63:0] grp_fu_601_p_dout0;
output   grp_fu_601_p_ce;
output  [63:0] grp_fu_540_p_din0;
output  [63:0] grp_fu_540_p_din1;
input  [63:0] grp_fu_540_p_dout0;
output   grp_fu_540_p_ce;
output  [63:0] grp_fu_544_p_din0;
output  [63:0] grp_fu_544_p_din1;
input  [63:0] grp_fu_544_p_dout0;
output   grp_fu_544_p_ce;
output  [63:0] grp_fu_548_p_din0;
output  [63:0] grp_fu_548_p_din1;
input  [63:0] grp_fu_548_p_dout0;
output   grp_fu_548_p_ce;
output  [63:0] grp_fu_605_p_din0;
output  [63:0] grp_fu_605_p_din1;
input  [63:0] grp_fu_605_p_dout0;
output   grp_fu_605_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] tmp_reg_2029;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_882;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_888;
reg   [63:0] reg_894;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_899;
reg   [63:0] reg_904;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_910;
reg   [6:0] tid_5_reg_2018;
reg   [6:0] tid_5_reg_2018_pp0_iter1_reg;
reg   [6:0] tid_5_reg_2018_pp0_iter2_reg;
reg   [6:0] tid_5_reg_2018_pp0_iter3_reg;
reg   [6:0] tid_5_reg_2018_pp0_iter4_reg;
reg   [6:0] tid_5_reg_2018_pp0_iter5_reg;
wire   [63:0] zext_ln365_fu_932_p1;
reg   [63:0] zext_ln365_reg_2033;
reg   [63:0] zext_ln365_reg_2033_pp0_iter1_reg;
reg   [63:0] zext_ln365_reg_2033_pp0_iter2_reg;
reg   [63:0] zext_ln365_reg_2033_pp0_iter3_reg;
reg   [63:0] zext_ln365_reg_2033_pp0_iter4_reg;
wire   [63:0] zext_ln367_fu_970_p1;
reg   [63:0] zext_ln367_reg_2119;
reg   [63:0] zext_ln367_reg_2119_pp0_iter1_reg;
reg   [63:0] zext_ln367_reg_2119_pp0_iter2_reg;
reg   [63:0] zext_ln367_reg_2119_pp0_iter3_reg;
reg   [63:0] zext_ln367_reg_2119_pp0_iter4_reg;
reg   [63:0] zext_ln367_reg_2119_pp0_iter5_reg;
reg   [63:0] c0_y_reg_2205;
reg   [63:0] c0_y_29_reg_2211;
reg   [63:0] c0_y_30_reg_2217;
reg   [63:0] c0_y_31_reg_2222;
reg   [63:0] DATA_y_4_load_reg_2228;
reg   [63:0] DATA_y_5_load_reg_2234;
reg   [63:0] DATA_y_6_load_reg_2240;
reg   [63:0] DATA_y_7_load_reg_2245;
reg   [63:0] c0_x_reg_2251;
reg   [63:0] c0_x_29_reg_2257;
reg   [63:0] c0_x_30_reg_2263;
reg   [63:0] c0_x_31_reg_2268;
reg   [63:0] DATA_x_4_load_reg_2274;
reg   [63:0] DATA_x_5_load_reg_2280;
reg   [63:0] DATA_x_6_load_reg_2286;
reg   [63:0] DATA_x_7_load_reg_2291;
reg   [63:0] c0_y_35_reg_2297;
reg   [63:0] c0_y_36_reg_2303;
reg   [63:0] c0_y_37_reg_2309;
reg   [63:0] c0_y_38_reg_2315;
reg   [63:0] DATA_y_4_load_3_reg_2321;
reg   [63:0] DATA_y_5_load_3_reg_2327;
reg   [63:0] DATA_y_6_load_3_reg_2333;
reg   [63:0] DATA_y_7_load_3_reg_2339;
reg   [63:0] c0_x_35_reg_2345;
reg   [63:0] c0_x_36_reg_2351;
reg   [63:0] c0_x_37_reg_2357;
reg   [63:0] c0_x_38_reg_2363;
reg   [63:0] DATA_x_4_load_2_reg_2369;
reg   [63:0] DATA_x_5_load_2_reg_2375;
reg   [63:0] DATA_x_6_load_2_reg_2381;
reg   [63:0] DATA_x_7_load_2_reg_2387;
reg   [63:0] c0_x_20_reg_2393;
reg   [63:0] c0_y_20_reg_2399;
reg   [63:0] tmp_1_reg_2405;
reg   [63:0] sub_reg_2411;
reg   [63:0] tmp_1_1_reg_2417;
reg   [63:0] sub12_reg_2423;
reg   [63:0] add12_reg_2429;
reg   [63:0] add13_reg_2435;
reg   [63:0] c0_x_25_reg_2441;
reg   [63:0] c0_y_25_reg_2447;
reg   [63:0] tmp_1_6_reg_2453;
reg   [63:0] sub1591_1_reg_2459;
reg   [63:0] tmp_1_3_reg_2465;
reg   [63:0] sub1607_1_reg_2471;
reg   [63:0] c0_x_32_reg_2477;
reg   [63:0] c0_y_32_reg_2483;
reg   [63:0] c0_x_19_reg_2489;
reg   [63:0] c0_x_19_reg_2489_pp0_iter1_reg;
reg   [63:0] c0_y_19_reg_2495;
reg   [63:0] c0_y_19_reg_2495_pp0_iter1_reg;
reg   [63:0] add_reg_2501;
reg   [63:0] add11_reg_2507;
wire   [63:0] bitcast_ln386_1_fu_1019_p1;
wire   [63:0] bitcast_ln386_3_fu_1053_p1;
wire   [63:0] bitcast_ln386_9_fu_1088_p1;
wire   [63:0] bitcast_ln386_11_fu_1124_p1;
reg   [63:0] c0_x_39_reg_2535;
reg   [63:0] c0_y_39_reg_2541;
reg   [63:0] c0_x_24_reg_2547;
reg   [63:0] c0_x_24_reg_2547_pp0_iter1_reg;
reg   [63:0] c0_y_24_reg_2553;
reg   [63:0] c0_y_24_reg_2553_pp0_iter1_reg;
reg   [63:0] add1598_1_reg_2559;
reg   [63:0] add1601_1_reg_2565;
reg   [63:0] add1614_1_reg_2571;
reg   [63:0] add1617_1_reg_2577;
wire   [63:0] bitcast_ln386_21_fu_1159_p1;
wire   [63:0] bitcast_ln386_23_fu_1193_p1;
wire   [63:0] bitcast_ln386_29_fu_1228_p1;
wire   [63:0] bitcast_ln386_31_fu_1264_p1;
reg   [63:0] mul_reg_2605;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] mul6_reg_2610;
reg   [63:0] mul1641_1_reg_2615;
reg   [63:0] mul1648_1_reg_2620;
reg   [63:0] sub14_reg_2625;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] add14_reg_2630;
wire   [63:0] bitcast_ln386_5_fu_1309_p1;
wire   [63:0] bitcast_ln386_7_fu_1343_p1;
reg   [63:0] sub16_reg_2645;
reg   [63:0] add16_reg_2650;
reg   [63:0] add17_reg_2655;
reg   [63:0] add18_reg_2661;
reg   [63:0] tmp_8_reg_2667;
reg   [63:0] sub17_reg_2673;
reg   [63:0] sub1630_1_reg_2679;
reg   [63:0] add1636_1_reg_2684;
wire   [63:0] bitcast_ln386_25_fu_1377_p1;
wire   [63:0] bitcast_ln386_27_fu_1411_p1;
reg   [63:0] sub1656_1_reg_2699;
reg   [63:0] add1662_1_reg_2704;
reg   [63:0] c0_x_33_reg_2709;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] c0_y_33_reg_2715;
reg   [63:0] c0_x_22_reg_2721;
reg   [63:0] c0_x_22_reg_2721_pp0_iter2_reg;
reg   [63:0] c0_y_22_reg_2727;
reg   [63:0] c0_y_22_reg_2727_pp0_iter2_reg;
reg   [63:0] c0_x_40_reg_2733;
reg   [63:0] c0_y_40_reg_2739;
reg   [63:0] c0_x_27_reg_2745;
reg   [63:0] c0_x_27_reg_2745_pp0_iter2_reg;
reg   [63:0] c0_y_27_reg_2751;
reg   [63:0] c0_y_27_reg_2751_pp0_iter2_reg;
reg   [63:0] add1689_1_reg_2757;
reg   [63:0] add1692_1_reg_2763;
reg   [63:0] tmp_10_reg_2769;
reg   [63:0] sub1698_1_reg_2775;
reg   [63:0] c0_x_21_reg_2781;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_21_reg_2787;
reg   [63:0] sub15_reg_2793;
reg   [63:0] add15_reg_2799;
reg   [63:0] mul7_reg_2805;
reg   [63:0] mul8_reg_2811;
reg   [63:0] sub1644_1_reg_2817;
reg   [63:0] add1649_1_reg_2823;
reg   [63:0] c0_x_26_reg_2829;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] c0_y_26_reg_2835;
reg   [63:0] mul1657_1_reg_2841;
reg   [63:0] mul1663_1_reg_2847;
reg   [63:0] mul9_reg_2853;
reg   [63:0] mul10_reg_2858;
reg   [63:0] add19_reg_2863;
reg   [63:0] add19_reg_2863_pp0_iter3_reg;
reg   [63:0] add19_reg_2863_pp0_iter4_reg;
reg   [63:0] add20_reg_2868;
reg   [63:0] add20_reg_2868_pp0_iter3_reg;
reg   [63:0] add20_reg_2868_pp0_iter4_reg;
reg   [63:0] sub20_reg_2873;
reg   [63:0] sub20_reg_2873_pp0_iter3_reg;
reg   [63:0] sub20_reg_2873_pp0_iter4_reg;
reg   [63:0] sub21_reg_2878;
reg   [63:0] sub21_reg_2878_pp0_iter3_reg;
reg   [63:0] sub21_reg_2878_pp0_iter4_reg;
reg   [63:0] mul1702_1_reg_2883;
reg   [63:0] mul1709_1_reg_2888;
reg   [63:0] add1717_1_reg_2893;
reg   [63:0] add1717_1_reg_2893_pp0_iter3_reg;
reg   [63:0] add1717_1_reg_2893_pp0_iter4_reg;
reg   [63:0] add1720_1_reg_2898;
reg   [63:0] add1720_1_reg_2898_pp0_iter3_reg;
reg   [63:0] add1720_1_reg_2898_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_2903;
reg   [63:0] sub1723_1_reg_2903_pp0_iter3_reg;
reg   [63:0] sub1723_1_reg_2903_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_2903_pp0_iter5_reg;
reg   [63:0] sub1726_1_reg_2908;
reg   [63:0] sub1726_1_reg_2908_pp0_iter3_reg;
reg   [63:0] sub1726_1_reg_2908_pp0_iter4_reg;
reg   [63:0] sub1726_1_reg_2908_pp0_iter5_reg;
wire   [63:0] bitcast_ln386_13_fu_1445_p1;
wire   [63:0] bitcast_ln386_15_fu_1479_p1;
wire   [63:0] bitcast_ln386_33_fu_1513_p1;
wire   [63:0] bitcast_ln386_35_fu_1547_p1;
reg   [63:0] c0_x_34_reg_2933;
reg   [63:0] c0_y_34_reg_2939;
reg   [63:0] c0_x_23_reg_2945;
reg   [63:0] c0_x_23_reg_2945_pp0_iter4_reg;
reg   [63:0] c0_y_23_reg_2951;
reg   [63:0] c0_y_23_reg_2951_pp0_iter4_reg;
reg   [63:0] add23_reg_2957;
reg   [63:0] add24_reg_2963;
reg   [63:0] c0_x_41_reg_2969;
reg   [63:0] c0_y_41_reg_2975;
reg   [63:0] c0_x_28_reg_2981;
reg   [63:0] c0_x_28_reg_2981_pp0_iter4_reg;
reg   [63:0] c0_y_28_reg_2987;
reg   [63:0] c0_y_28_reg_2987_pp0_iter4_reg;
reg   [63:0] tmp_11_reg_2993;
reg   [63:0] sub1777_1_reg_2999;
reg   [63:0] sub18_reg_3005;
reg   [63:0] sub19_reg_3011;
reg   [63:0] sub1705_1_reg_3017;
reg   [63:0] sub1710_1_reg_3023;
reg   [63:0] mul11_reg_3029;
reg   [63:0] mul12_reg_3034;
wire   [63:0] bitcast_ln386_17_fu_1582_p1;
wire   [63:0] bitcast_ln386_19_fu_1617_p1;
reg   [63:0] mul1781_1_reg_3049;
reg   [63:0] mul1788_1_reg_3054;
reg   [63:0] add25_reg_3059;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] add25_reg_3059_pp0_iter4_reg;
reg   [63:0] add26_reg_3064;
reg   [63:0] add26_reg_3064_pp0_iter4_reg;
reg   [63:0] sub27_reg_3069;
reg   [63:0] sub27_reg_3069_pp0_iter4_reg;
reg   [63:0] sub28_reg_3074;
reg   [63:0] sub28_reg_3074_pp0_iter4_reg;
wire   [63:0] bitcast_ln386_37_fu_1651_p1;
wire   [63:0] bitcast_ln386_39_fu_1685_p1;
reg   [63:0] add1796_1_reg_3089;
reg   [63:0] add1796_1_reg_3089_pp0_iter4_reg;
reg   [63:0] add1799_1_reg_3094;
reg   [63:0] add1799_1_reg_3094_pp0_iter4_reg;
reg   [63:0] sub1802_1_reg_3099;
reg   [63:0] sub1802_1_reg_3099_pp0_iter4_reg;
reg   [63:0] sub1805_1_reg_3104;
reg   [63:0] sub1805_1_reg_3104_pp0_iter4_reg;
reg   [63:0] add21_reg_3109;
reg   [63:0] add22_reg_3114;
reg   [63:0] sub22_reg_3119;
reg   [63:0] sub22_reg_3119_pp0_iter5_reg;
reg   [63:0] sub23_reg_3124;
reg   [63:0] sub23_reg_3124_pp0_iter5_reg;
reg   [63:0] add1733_1_reg_3129;
reg   [63:0] add1733_1_reg_3129_pp0_iter5_reg;
reg   [63:0] add1736_1_reg_3134;
reg   [63:0] add1736_1_reg_3134_pp0_iter5_reg;
reg   [63:0] sub1739_1_reg_3139;
reg   [63:0] sub1739_1_reg_3139_pp0_iter5_reg;
reg   [63:0] sub1742_1_reg_3144;
reg   [63:0] sub1742_1_reg_3144_pp0_iter5_reg;
reg   [63:0] sub25_reg_3149;
reg   [63:0] sub26_reg_3155;
wire  signed [6:0] zext_ln390_cast_fu_1693_p3;
reg  signed [6:0] zext_ln390_cast_reg_3161;
reg   [63:0] add27_reg_3167;
reg   [63:0] add28_reg_3172;
wire  signed [7:0] zext_ln391_cast_fu_1719_p3;
reg  signed [7:0] zext_ln391_cast_reg_3177;
reg   [63:0] add1812_1_reg_3182;
reg   [63:0] add1815_1_reg_3187;
reg   [63:0] sub1818_1_reg_3192;
reg   [63:0] sub1821_1_reg_3197;
wire   [8:0] zext_ln365_1_fu_1823_p1;
reg   [8:0] zext_ln365_1_reg_3202;
wire   [5:0] tmp_37_fu_1873_p4;
reg   [5:0] tmp_37_reg_3208;
wire  signed [7:0] zext_ln391_1_cast_fu_1882_p4;
reg  signed [7:0] zext_ln391_1_cast_reg_3213;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln390_fu_1701_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln391_fu_1726_p1;
wire   [63:0] zext_ln392_fu_1747_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1760_p1;
wire   [63:0] zext_ln393_fu_1789_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln390_1_fu_1809_p1;
wire   [63:0] zext_ln394_fu_1832_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln396_fu_1845_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln391_1_fu_1892_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln392_1_fu_1911_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln393_2_fu_1938_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln394_1_fu_1957_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln395_1_fu_1974_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln396_1_fu_1997_p1;
reg   [6:0] tid_fu_108;
wire   [6:0] add_ln365_fu_1270_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce1_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_ce1_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce1_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_ce1_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce1_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_ce1_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_1707_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
wire   [63:0] bitcast_ln389_fu_1715_p1;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1732_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln392_fu_1753_p1;
wire   [63:0] bitcast_ln395_fu_1766_p1;
wire   [63:0] bitcast_ln393_fu_1795_p1;
wire   [63:0] bitcast_ln390_1_fu_1815_p1;
wire   [63:0] bitcast_ln394_fu_1838_p1;
wire   [63:0] bitcast_ln396_fu_1851_p1;
wire   [63:0] bitcast_ln389_1_fu_1865_p1;
wire   [63:0] bitcast_ln391_1_fu_1898_p1;
wire   [63:0] bitcast_ln392_1_fu_1917_p1;
wire   [63:0] bitcast_ln393_1_fu_1944_p1;
wire   [63:0] bitcast_ln394_1_fu_1963_p1;
wire   [63:0] bitcast_ln395_1_fu_1980_p1;
wire   [63:0] bitcast_ln396_1_fu_2003_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1711_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
wire   [63:0] bitcast_ln398_fu_1736_p1;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1740_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln401_fu_1770_p1;
wire   [63:0] bitcast_ln404_fu_1774_p1;
wire   [63:0] bitcast_ln402_fu_1799_p1;
wire   [63:0] bitcast_ln399_1_fu_1819_p1;
wire   [63:0] bitcast_ln403_fu_1856_p1;
wire   [63:0] bitcast_ln405_fu_1860_p1;
wire   [63:0] bitcast_ln398_1_fu_1869_p1;
wire   [63:0] bitcast_ln400_1_fu_1902_p1;
wire   [63:0] bitcast_ln401_1_fu_1921_p1;
wire   [63:0] bitcast_ln402_1_fu_1948_p1;
wire   [63:0] bitcast_ln403_1_fu_1967_p1;
wire   [63:0] bitcast_ln404_1_fu_1984_p1;
wire   [63:0] bitcast_ln405_1_fu_2007_p1;
reg   [63:0] grp_fu_786_p0;
reg   [63:0] grp_fu_786_p1;
reg   [63:0] grp_fu_790_p0;
reg   [63:0] grp_fu_790_p1;
reg   [63:0] grp_fu_794_p0;
reg   [63:0] grp_fu_794_p1;
reg   [63:0] grp_fu_798_p0;
reg   [63:0] grp_fu_798_p1;
reg   [63:0] grp_fu_802_p0;
reg   [63:0] grp_fu_802_p1;
reg   [63:0] grp_fu_806_p0;
reg   [63:0] grp_fu_806_p1;
reg   [63:0] grp_fu_810_p0;
reg   [63:0] grp_fu_810_p1;
reg   [63:0] grp_fu_814_p0;
reg   [63:0] grp_fu_814_p1;
reg   [63:0] grp_fu_818_p0;
reg   [63:0] grp_fu_818_p1;
reg   [63:0] grp_fu_822_p0;
reg   [63:0] grp_fu_822_p1;
reg   [63:0] grp_fu_826_p0;
reg   [63:0] grp_fu_826_p1;
reg   [63:0] grp_fu_830_p0;
reg   [63:0] grp_fu_830_p1;
reg   [63:0] grp_fu_834_p0;
reg   [63:0] grp_fu_834_p1;
reg   [63:0] grp_fu_838_p0;
reg   [63:0] grp_fu_838_p1;
reg   [63:0] grp_fu_842_p0;
reg   [63:0] grp_fu_842_p1;
reg   [63:0] grp_fu_846_p0;
reg   [63:0] grp_fu_846_p1;
reg   [63:0] grp_fu_850_p0;
reg   [63:0] grp_fu_850_p1;
reg   [63:0] grp_fu_854_p0;
reg   [63:0] grp_fu_854_p1;
reg   [63:0] grp_fu_858_p0;
reg   [63:0] grp_fu_858_p1;
reg   [63:0] grp_fu_863_p0;
reg   [63:0] grp_fu_863_p1;
reg   [63:0] grp_fu_868_p0;
reg   [63:0] grp_fu_868_p1;
reg   [63:0] grp_fu_873_p0;
reg   [63:0] grp_fu_873_p1;
wire   [4:0] tmp_s_fu_952_p4;
wire   [5:0] or_ln_fu_962_p3;
wire   [63:0] bitcast_ln386_fu_990_p1;
wire   [0:0] bit_sel_fu_993_p3;
wire   [0:0] xor_ln386_19_fu_1001_p2;
wire   [62:0] trunc_ln386_fu_1007_p1;
wire   [63:0] xor_ln3_fu_1011_p3;
wire   [63:0] bitcast_ln386_2_fu_1024_p1;
wire   [0:0] bit_sel20_fu_1027_p3;
wire   [0:0] xor_ln386_fu_1035_p2;
wire   [62:0] trunc_ln386_1_fu_1041_p1;
wire   [63:0] xor_ln386_1_fu_1045_p3;
wire   [63:0] bitcast_ln386_8_fu_1058_p1;
wire   [0:0] bit_sel23_fu_1062_p3;
wire   [0:0] xor_ln386_22_fu_1070_p2;
wire   [62:0] trunc_ln386_4_fu_1076_p1;
wire   [63:0] xor_ln386_4_fu_1080_p3;
wire   [63:0] bitcast_ln386_10_fu_1094_p1;
wire   [0:0] bit_sel24_fu_1098_p3;
wire   [0:0] xor_ln386_23_fu_1106_p2;
wire   [62:0] trunc_ln386_5_fu_1112_p1;
wire   [63:0] xor_ln386_5_fu_1116_p3;
wire   [63:0] bitcast_ln386_20_fu_1130_p1;
wire   [0:0] bit_sel29_fu_1133_p3;
wire   [0:0] xor_ln386_28_fu_1141_p2;
wire   [62:0] trunc_ln386_10_fu_1147_p1;
wire   [63:0] xor_ln386_s_fu_1151_p3;
wire   [63:0] bitcast_ln386_22_fu_1164_p1;
wire   [0:0] bit_sel30_fu_1167_p3;
wire   [0:0] xor_ln386_29_fu_1175_p2;
wire   [62:0] trunc_ln386_11_fu_1181_p1;
wire   [63:0] xor_ln386_10_fu_1185_p3;
wire   [63:0] bitcast_ln386_28_fu_1198_p1;
wire   [0:0] bit_sel33_fu_1202_p3;
wire   [0:0] xor_ln386_32_fu_1210_p2;
wire   [62:0] trunc_ln386_14_fu_1216_p1;
wire   [63:0] xor_ln386_13_fu_1220_p3;
wire   [63:0] bitcast_ln386_30_fu_1234_p1;
wire   [0:0] bit_sel34_fu_1238_p3;
wire   [0:0] xor_ln386_33_fu_1246_p2;
wire   [62:0] trunc_ln386_15_fu_1252_p1;
wire   [63:0] xor_ln386_14_fu_1256_p3;
wire   [63:0] bitcast_ln386_4_fu_1280_p1;
wire   [0:0] bit_sel21_fu_1283_p3;
wire   [0:0] xor_ln386_20_fu_1291_p2;
wire   [62:0] trunc_ln386_2_fu_1297_p1;
wire   [63:0] xor_ln386_2_fu_1301_p3;
wire   [63:0] bitcast_ln386_6_fu_1314_p1;
wire   [0:0] bit_sel22_fu_1317_p3;
wire   [0:0] xor_ln386_21_fu_1325_p2;
wire   [62:0] trunc_ln386_3_fu_1331_p1;
wire   [63:0] xor_ln386_3_fu_1335_p3;
wire   [63:0] bitcast_ln386_24_fu_1348_p1;
wire   [0:0] bit_sel31_fu_1351_p3;
wire   [0:0] xor_ln386_30_fu_1359_p2;
wire   [62:0] trunc_ln386_12_fu_1365_p1;
wire   [63:0] xor_ln386_11_fu_1369_p3;
wire   [63:0] bitcast_ln386_26_fu_1382_p1;
wire   [0:0] bit_sel32_fu_1385_p3;
wire   [0:0] xor_ln386_31_fu_1393_p2;
wire   [62:0] trunc_ln386_13_fu_1399_p1;
wire   [63:0] xor_ln386_12_fu_1403_p3;
wire   [63:0] bitcast_ln386_12_fu_1416_p1;
wire   [0:0] bit_sel25_fu_1419_p3;
wire   [0:0] xor_ln386_24_fu_1427_p2;
wire   [62:0] trunc_ln386_6_fu_1433_p1;
wire   [63:0] xor_ln386_6_fu_1437_p3;
wire   [63:0] bitcast_ln386_14_fu_1450_p1;
wire   [0:0] bit_sel26_fu_1453_p3;
wire   [0:0] xor_ln386_25_fu_1461_p2;
wire   [62:0] trunc_ln386_7_fu_1467_p1;
wire   [63:0] xor_ln386_7_fu_1471_p3;
wire   [63:0] bitcast_ln386_32_fu_1484_p1;
wire   [0:0] bit_sel35_fu_1487_p3;
wire   [0:0] xor_ln386_34_fu_1495_p2;
wire   [62:0] trunc_ln386_16_fu_1501_p1;
wire   [63:0] xor_ln386_15_fu_1505_p3;
wire   [63:0] bitcast_ln386_34_fu_1518_p1;
wire   [0:0] bit_sel36_fu_1521_p3;
wire   [0:0] xor_ln386_35_fu_1529_p2;
wire   [62:0] trunc_ln386_17_fu_1535_p1;
wire   [63:0] xor_ln386_16_fu_1539_p3;
wire   [63:0] bitcast_ln386_16_fu_1552_p1;
wire   [0:0] bit_sel27_fu_1556_p3;
wire   [0:0] xor_ln386_26_fu_1564_p2;
wire   [62:0] trunc_ln386_8_fu_1570_p1;
wire   [63:0] xor_ln386_8_fu_1574_p3;
wire   [63:0] bitcast_ln386_18_fu_1587_p1;
wire   [0:0] bit_sel28_fu_1591_p3;
wire   [0:0] xor_ln386_27_fu_1599_p2;
wire   [62:0] trunc_ln386_9_fu_1605_p1;
wire   [63:0] xor_ln386_9_fu_1609_p3;
wire   [63:0] bitcast_ln386_36_fu_1622_p1;
wire   [0:0] bit_sel37_fu_1625_p3;
wire   [0:0] xor_ln386_36_fu_1633_p2;
wire   [62:0] trunc_ln386_18_fu_1639_p1;
wire   [63:0] xor_ln386_17_fu_1643_p3;
wire   [63:0] bitcast_ln386_38_fu_1656_p1;
wire   [0:0] bit_sel38_fu_1659_p3;
wire   [0:0] xor_ln386_37_fu_1667_p2;
wire   [62:0] trunc_ln386_19_fu_1673_p1;
wire   [63:0] xor_ln386_18_fu_1677_p3;
wire   [5:0] trunc_ln390_fu_1690_p1;
wire  signed [7:0] sext_ln392_fu_1744_p1;
wire  signed [8:0] sext_ln395_fu_1757_p1;
wire   [7:0] zext_ln365_2_fu_1778_p1;
wire   [8:0] zext_ln393_cast_fu_1781_p3;
wire   [7:0] add_ln390_fu_1803_p2;
wire   [8:0] add_ln394_fu_1826_p2;
wire  signed [8:0] sext_ln396_fu_1842_p1;
wire   [8:0] add_ln392_fu_1906_p2;
wire   [6:0] zext_ln393_1_fu_1925_p1;
wire   [8:0] zext_ln393_1_cast_fu_1928_p4;
wire   [8:0] add_ln394_1_fu_1952_p2;
wire  signed [8:0] sext_ln395_1_fu_1971_p1;
wire   [6:0] add_ln396_fu_1988_p2;
wire  signed [8:0] sext_ln396_1_fu_1993_p1;
reg   [1:0] grp_fu_786_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg   [1:0] grp_fu_790_opcode;
reg   [1:0] grp_fu_794_opcode;
reg   [1:0] grp_fu_798_opcode;
reg   [1:0] grp_fu_802_opcode;
reg   [1:0] grp_fu_806_opcode;
reg   [1:0] grp_fu_810_opcode;
reg   [1:0] grp_fu_814_opcode;
reg   [1:0] grp_fu_818_opcode;
reg   [1:0] grp_fu_822_opcode;
reg   [1:0] grp_fu_826_opcode;
reg   [1:0] grp_fu_830_opcode;
reg   [1:0] grp_fu_834_opcode;
reg   [1:0] grp_fu_838_opcode;
reg   [1:0] grp_fu_842_opcode;
reg   [1:0] grp_fu_846_opcode;
reg   [1:0] grp_fu_850_opcode;
reg   [1:0] grp_fu_854_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [10:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_108 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_108 <= 7'd0;
    end else if (((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tid_fu_108 <= add_ln365_fu_1270_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_load_2_reg_2369 <= DATA_x_4_q0;
        DATA_x_4_load_reg_2274 <= DATA_x_4_q1;
        DATA_x_5_load_2_reg_2375 <= DATA_x_5_q0;
        DATA_x_5_load_reg_2280 <= DATA_x_5_q1;
        DATA_x_6_load_2_reg_2381 <= DATA_x_6_q0;
        DATA_x_6_load_reg_2286 <= DATA_x_6_q1;
        DATA_x_7_load_2_reg_2387 <= DATA_x_7_q0;
        DATA_x_7_load_reg_2291 <= DATA_x_7_q1;
        DATA_y_4_load_3_reg_2321 <= DATA_y_4_q0;
        DATA_y_4_load_reg_2228 <= DATA_y_4_q1;
        DATA_y_5_load_3_reg_2327 <= DATA_y_5_q0;
        DATA_y_5_load_reg_2234 <= DATA_y_5_q1;
        DATA_y_6_load_3_reg_2333 <= DATA_y_6_q0;
        DATA_y_6_load_reg_2240 <= DATA_y_6_q1;
        DATA_y_7_load_3_reg_2339 <= DATA_y_7_q0;
        DATA_y_7_load_reg_2245 <= DATA_y_7_q1;
        c0_x_29_reg_2257 <= DATA_x_1_q1;
        c0_x_30_reg_2263 <= DATA_x_2_q1;
        c0_x_31_reg_2268 <= DATA_x_3_q1;
        c0_x_35_reg_2345 <= DATA_x_q0;
        c0_x_36_reg_2351 <= DATA_x_1_q0;
        c0_x_37_reg_2357 <= DATA_x_2_q0;
        c0_x_38_reg_2363 <= DATA_x_3_q0;
        c0_x_reg_2251 <= DATA_x_q1;
        c0_y_29_reg_2211 <= DATA_y_1_q1;
        c0_y_30_reg_2217 <= DATA_y_2_q1;
        c0_y_31_reg_2222 <= DATA_y_3_q1;
        c0_y_35_reg_2297 <= DATA_y_q0;
        c0_y_36_reg_2303 <= DATA_y_1_q0;
        c0_y_37_reg_2309 <= DATA_y_2_q0;
        c0_y_38_reg_2315 <= DATA_y_3_q0;
        c0_y_reg_2205 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_reg_2507 <= grp_fu_500_p_dout0;
        add1598_1_reg_2559 <= grp_fu_520_p_dout0;
        add1601_1_reg_2565 <= grp_fu_524_p_dout0;
        add1614_1_reg_2571 <= grp_fu_528_p_dout0;
        add1617_1_reg_2577 <= grp_fu_532_p_dout0;
        add_reg_2501 <= grp_fu_496_p_dout0;
        c0_x_19_reg_2489 <= grp_fu_488_p_dout0;
        c0_x_24_reg_2547 <= grp_fu_512_p_dout0;
        c0_x_32_reg_2477 <= grp_fu_480_p_dout0;
        c0_x_39_reg_2535 <= grp_fu_504_p_dout0;
        c0_y_19_reg_2495 <= grp_fu_492_p_dout0;
        c0_y_24_reg_2553 <= grp_fu_516_p_dout0;
        c0_y_32_reg_2483 <= grp_fu_484_p_dout0;
        c0_y_39_reg_2541 <= grp_fu_508_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add12_reg_2429 <= grp_fu_504_p_dout0;
        add13_reg_2435 <= grp_fu_508_p_dout0;
        c0_x_20_reg_2393 <= grp_fu_480_p_dout0;
        c0_x_25_reg_2441 <= grp_fu_520_p_dout0;
        c0_y_20_reg_2399 <= grp_fu_484_p_dout0;
        c0_y_25_reg_2447 <= grp_fu_524_p_dout0;
        sub12_reg_2423 <= grp_fu_500_p_dout0;
        sub1591_1_reg_2459 <= grp_fu_532_p_dout0;
        sub1607_1_reg_2471 <= grp_fu_593_p_dout0;
        sub_reg_2411 <= grp_fu_492_p_dout0;
        tmp_1_1_reg_2417 <= grp_fu_496_p_dout0;
        tmp_1_3_reg_2465 <= grp_fu_536_p_dout0;
        tmp_1_6_reg_2453 <= grp_fu_528_p_dout0;
        tmp_1_reg_2405 <= grp_fu_488_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add14_reg_2630 <= grp_fu_484_p_dout0;
        add1636_1_reg_2684 <= grp_fu_516_p_dout0;
        add1662_1_reg_2704 <= grp_fu_524_p_dout0;
        add16_reg_2650 <= grp_fu_492_p_dout0;
        add17_reg_2655 <= grp_fu_496_p_dout0;
        add18_reg_2661 <= grp_fu_500_p_dout0;
        sub14_reg_2625 <= grp_fu_480_p_dout0;
        sub1630_1_reg_2679 <= grp_fu_512_p_dout0;
        sub1656_1_reg_2699 <= grp_fu_520_p_dout0;
        sub16_reg_2645 <= grp_fu_488_p_dout0;
        sub17_reg_2673 <= grp_fu_508_p_dout0;
        tmp_8_reg_2667 <= grp_fu_504_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_2799 <= grp_fu_484_p_dout0;
        add1649_1_reg_2823 <= grp_fu_492_p_dout0;
        c0_x_21_reg_2781 <= grp_fu_540_p_dout0;
        c0_y_21_reg_2787 <= grp_fu_544_p_dout0;
        mul7_reg_2805 <= grp_fu_548_p_dout0;
        mul8_reg_2811 <= grp_fu_605_p_dout0;
        sub15_reg_2793 <= grp_fu_480_p_dout0;
        sub1644_1_reg_2817 <= grp_fu_488_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add1689_1_reg_2757 <= grp_fu_512_p_dout0;
        add1692_1_reg_2763 <= grp_fu_516_p_dout0;
        c0_x_22_reg_2721 <= grp_fu_488_p_dout0;
        c0_x_27_reg_2745 <= grp_fu_504_p_dout0;
        c0_x_33_reg_2709 <= grp_fu_480_p_dout0;
        c0_x_40_reg_2733 <= grp_fu_496_p_dout0;
        c0_y_22_reg_2727 <= grp_fu_492_p_dout0;
        c0_y_27_reg_2751 <= grp_fu_508_p_dout0;
        c0_y_33_reg_2715 <= grp_fu_484_p_dout0;
        c0_y_40_reg_2739 <= grp_fu_500_p_dout0;
        sub1698_1_reg_2775 <= grp_fu_524_p_dout0;
        tmp_10_reg_2769 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1717_1_reg_2893 <= grp_fu_496_p_dout0;
        add1720_1_reg_2898 <= grp_fu_500_p_dout0;
        add19_reg_2863 <= grp_fu_480_p_dout0;
        add20_reg_2868 <= grp_fu_484_p_dout0;
        mul10_reg_2858 <= grp_fu_544_p_dout0;
        mul1702_1_reg_2883 <= grp_fu_548_p_dout0;
        mul1709_1_reg_2888 <= grp_fu_605_p_dout0;
        mul9_reg_2853 <= grp_fu_540_p_dout0;
        sub1723_1_reg_2903 <= grp_fu_504_p_dout0;
        sub1726_1_reg_2908 <= grp_fu_508_p_dout0;
        sub20_reg_2873 <= grp_fu_488_p_dout0;
        sub21_reg_2878 <= grp_fu_492_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1717_1_reg_2893_pp0_iter3_reg <= add1717_1_reg_2893;
        add1717_1_reg_2893_pp0_iter4_reg <= add1717_1_reg_2893_pp0_iter3_reg;
        add1720_1_reg_2898_pp0_iter3_reg <= add1720_1_reg_2898;
        add1720_1_reg_2898_pp0_iter4_reg <= add1720_1_reg_2898_pp0_iter3_reg;
        add19_reg_2863_pp0_iter3_reg <= add19_reg_2863;
        add19_reg_2863_pp0_iter4_reg <= add19_reg_2863_pp0_iter3_reg;
        add20_reg_2868_pp0_iter3_reg <= add20_reg_2868;
        add20_reg_2868_pp0_iter4_reg <= add20_reg_2868_pp0_iter3_reg;
        sub1723_1_reg_2903_pp0_iter3_reg <= sub1723_1_reg_2903;
        sub1723_1_reg_2903_pp0_iter4_reg <= sub1723_1_reg_2903_pp0_iter3_reg;
        sub1723_1_reg_2903_pp0_iter5_reg <= sub1723_1_reg_2903_pp0_iter4_reg;
        sub1726_1_reg_2908_pp0_iter3_reg <= sub1726_1_reg_2908;
        sub1726_1_reg_2908_pp0_iter4_reg <= sub1726_1_reg_2908_pp0_iter3_reg;
        sub1726_1_reg_2908_pp0_iter5_reg <= sub1726_1_reg_2908_pp0_iter4_reg;
        sub20_reg_2873_pp0_iter3_reg <= sub20_reg_2873;
        sub20_reg_2873_pp0_iter4_reg <= sub20_reg_2873_pp0_iter3_reg;
        sub21_reg_2878_pp0_iter3_reg <= sub21_reg_2878;
        sub21_reg_2878_pp0_iter4_reg <= sub21_reg_2878_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_3129 <= grp_fu_496_p_dout0;
        add1736_1_reg_3134 <= grp_fu_500_p_dout0;
        sub1739_1_reg_3139 <= grp_fu_504_p_dout0;
        sub1742_1_reg_3144 <= grp_fu_508_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_3129_pp0_iter5_reg <= add1733_1_reg_3129;
        add1736_1_reg_3134_pp0_iter5_reg <= add1736_1_reg_3134;
        sub1739_1_reg_3139_pp0_iter5_reg <= sub1739_1_reg_3139;
        sub1742_1_reg_3144_pp0_iter5_reg <= sub1742_1_reg_3144;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add1796_1_reg_3089 <= grp_fu_496_p_dout0;
        add1799_1_reg_3094 <= grp_fu_500_p_dout0;
        add25_reg_3059 <= grp_fu_480_p_dout0;
        add26_reg_3064 <= grp_fu_484_p_dout0;
        sub1802_1_reg_3099 <= grp_fu_504_p_dout0;
        sub1805_1_reg_3104 <= grp_fu_508_p_dout0;
        sub27_reg_3069 <= grp_fu_488_p_dout0;
        sub28_reg_3074 <= grp_fu_492_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add1796_1_reg_3089_pp0_iter4_reg <= add1796_1_reg_3089;
        add1799_1_reg_3094_pp0_iter4_reg <= add1799_1_reg_3094;
        add25_reg_3059_pp0_iter4_reg <= add25_reg_3059;
        add26_reg_3064_pp0_iter4_reg <= add26_reg_3064;
        sub1802_1_reg_3099_pp0_iter4_reg <= sub1802_1_reg_3099;
        sub1805_1_reg_3104_pp0_iter4_reg <= sub1805_1_reg_3104;
        sub27_reg_3069_pp0_iter4_reg <= sub27_reg_3069;
        sub28_reg_3074_pp0_iter4_reg <= sub28_reg_3074;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1812_1_reg_3182 <= grp_fu_520_p_dout0;
        add1815_1_reg_3187 <= grp_fu_524_p_dout0;
        sub1818_1_reg_3192 <= grp_fu_528_p_dout0;
        sub1821_1_reg_3197 <= grp_fu_532_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add21_reg_3109 <= grp_fu_528_p_dout0;
        add22_reg_3114 <= grp_fu_532_p_dout0;
        sub22_reg_3119 <= grp_fu_536_p_dout0;
        sub23_reg_3124 <= grp_fu_593_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2957 <= grp_fu_488_p_dout0;
        add24_reg_2963 <= grp_fu_492_p_dout0;
        c0_x_23_reg_2945 <= grp_fu_480_p_dout0;
        c0_x_28_reg_2981 <= grp_fu_504_p_dout0;
        c0_x_41_reg_2969 <= grp_fu_496_p_dout0;
        c0_y_23_reg_2951 <= grp_fu_484_p_dout0;
        c0_y_28_reg_2987 <= grp_fu_508_p_dout0;
        c0_y_41_reg_2975 <= grp_fu_500_p_dout0;
        sub1777_1_reg_2999 <= grp_fu_524_p_dout0;
        tmp_11_reg_2993 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add27_reg_3167 <= grp_fu_597_p_dout0;
        add28_reg_3172 <= grp_fu_601_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        c0_x_19_reg_2489_pp0_iter1_reg <= c0_x_19_reg_2489;
        c0_x_24_reg_2547_pp0_iter1_reg <= c0_x_24_reg_2547;
        c0_y_19_reg_2495_pp0_iter1_reg <= c0_y_19_reg_2495;
        c0_y_24_reg_2553_pp0_iter1_reg <= c0_y_24_reg_2553;
        zext_ln390_cast_reg_3161[5 : 0] <= zext_ln390_cast_fu_1693_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        c0_x_22_reg_2721_pp0_iter2_reg <= c0_x_22_reg_2721;
        c0_x_27_reg_2745_pp0_iter2_reg <= c0_x_27_reg_2745;
        c0_y_22_reg_2727_pp0_iter2_reg <= c0_y_22_reg_2727;
        c0_y_27_reg_2751_pp0_iter2_reg <= c0_y_27_reg_2751;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_23_reg_2945_pp0_iter4_reg <= c0_x_23_reg_2945;
        c0_x_28_reg_2981_pp0_iter4_reg <= c0_x_28_reg_2981;
        c0_y_23_reg_2951_pp0_iter4_reg <= c0_y_23_reg_2951;
        c0_y_28_reg_2987_pp0_iter4_reg <= c0_y_28_reg_2987;
        sub22_reg_3119_pp0_iter5_reg <= sub22_reg_3119;
        sub23_reg_3124_pp0_iter5_reg <= sub23_reg_3124;
        tid_5_reg_2018 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_2018_pp0_iter1_reg <= tid_5_reg_2018;
        tid_5_reg_2018_pp0_iter2_reg <= tid_5_reg_2018_pp0_iter1_reg;
        tid_5_reg_2018_pp0_iter3_reg <= tid_5_reg_2018_pp0_iter2_reg;
        tid_5_reg_2018_pp0_iter4_reg <= tid_5_reg_2018_pp0_iter3_reg;
        tid_5_reg_2018_pp0_iter5_reg <= tid_5_reg_2018_pp0_iter4_reg;
        tmp_reg_2029 <= ap_sig_allocacmp_tid_5[32'd6];
        zext_ln365_reg_2033[6 : 0] <= zext_ln365_fu_932_p1[6 : 0];
        zext_ln365_reg_2033_pp0_iter1_reg[6 : 0] <= zext_ln365_reg_2033[6 : 0];
        zext_ln365_reg_2033_pp0_iter2_reg[6 : 0] <= zext_ln365_reg_2033_pp0_iter1_reg[6 : 0];
        zext_ln365_reg_2033_pp0_iter3_reg[6 : 0] <= zext_ln365_reg_2033_pp0_iter2_reg[6 : 0];
        zext_ln365_reg_2033_pp0_iter4_reg[6 : 0] <= zext_ln365_reg_2033_pp0_iter3_reg[6 : 0];
        zext_ln367_reg_2119[5 : 1] <= zext_ln367_fu_970_p1[5 : 1];
        zext_ln367_reg_2119_pp0_iter1_reg[5 : 1] <= zext_ln367_reg_2119[5 : 1];
        zext_ln367_reg_2119_pp0_iter2_reg[5 : 1] <= zext_ln367_reg_2119_pp0_iter1_reg[5 : 1];
        zext_ln367_reg_2119_pp0_iter3_reg[5 : 1] <= zext_ln367_reg_2119_pp0_iter2_reg[5 : 1];
        zext_ln367_reg_2119_pp0_iter4_reg[5 : 1] <= zext_ln367_reg_2119_pp0_iter3_reg[5 : 1];
        zext_ln367_reg_2119_pp0_iter5_reg[5 : 1] <= zext_ln367_reg_2119_pp0_iter4_reg[5 : 1];
        zext_ln391_cast_reg_3177[6 : 0] <= zext_ln391_cast_fu_1719_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_26_reg_2829 <= grp_fu_540_p_dout0;
        c0_y_26_reg_2835 <= grp_fu_544_p_dout0;
        mul1657_1_reg_2841 <= grp_fu_548_p_dout0;
        mul1663_1_reg_2847 <= grp_fu_605_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        c0_x_34_reg_2933 <= grp_fu_536_p_dout0;
        c0_y_34_reg_2939 <= grp_fu_593_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul11_reg_3029 <= grp_fu_540_p_dout0;
        mul12_reg_3034 <= grp_fu_544_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul1641_1_reg_2615 <= grp_fu_548_p_dout0;
        mul1648_1_reg_2620 <= grp_fu_605_p_dout0;
        mul6_reg_2610 <= grp_fu_544_p_dout0;
        mul_reg_2605 <= grp_fu_540_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul1781_1_reg_3049 <= grp_fu_540_p_dout0;
        mul1788_1_reg_3054 <= grp_fu_544_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_882 <= grp_fu_512_p_dout0;
        reg_888 <= grp_fu_516_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_894 <= grp_fu_597_p_dout0;
        reg_899 <= grp_fu_601_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_904 <= grp_fu_512_p_dout0;
        reg_910 <= grp_fu_516_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub1705_1_reg_3017 <= grp_fu_488_p_dout0;
        sub1710_1_reg_3023 <= grp_fu_492_p_dout0;
        sub18_reg_3005 <= grp_fu_480_p_dout0;
        sub19_reg_3011 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_3149 <= grp_fu_480_p_dout0;
        sub26_reg_3155 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_37_reg_3208 <= {{tid_5_reg_2018_pp0_iter5_reg[6:1]}};
        zext_ln391_1_cast_reg_3213[6 : 1] <= zext_ln391_1_cast_fu_1882_p4[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln365_1_reg_3202[6 : 0] <= zext_ln365_1_fu_1823_p1[6 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce1_local = 1'b1;
    end else begin
        DATA_y_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce1_local = 1'b1;
    end else begin
        DATA_y_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce1_local = 1'b1;
    end else begin
        DATA_y_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce1_local = 1'b1;
    end else begin
        DATA_y_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2029 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_108;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_786_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_786_opcode = 2'd0;
    end else begin
        grp_fu_786_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_786_p0 = mul11_reg_3029;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_786_p0 = c0_x_34_reg_2933;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_786_p0 = mul9_reg_2853;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_786_p0 = c0_x_19_reg_2489_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_786_p0 = c0_x_33_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_786_p0 = mul_reg_2605;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_786_p0 = c0_x_32_reg_2477;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_786_p0 = tmp_1_reg_2405;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_786_p0 = c0_x_reg_2251;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_786_p0 = c0_x_29_reg_2257;
    end else begin
        grp_fu_786_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_786_p1 = bitcast_ln386_17_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_786_p1 = add23_reg_2957;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_786_p1 = bitcast_ln386_13_fu_1445_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_786_p1 = sub15_reg_2793;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_786_p1 = add17_reg_2655;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_786_p1 = bitcast_ln386_5_fu_1309_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_786_p1 = add_reg_2501;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_786_p1 = bitcast_ln386_1_fu_1019_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_786_p1 = DATA_x_4_load_reg_2274;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_786_p1 = DATA_x_5_load_reg_2280;
    end else begin
        grp_fu_786_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_790_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_790_opcode = 2'd0;
    end else begin
        grp_fu_790_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_790_p0 = bitcast_ln386_19_fu_1617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_790_p0 = c0_y_34_reg_2939;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_790_p0 = bitcast_ln386_15_fu_1479_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_790_p0 = c0_y_19_reg_2495_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_790_p0 = c0_y_33_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_790_p0 = bitcast_ln386_7_fu_1343_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_790_p0 = c0_y_32_reg_2483;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_790_p0 = bitcast_ln386_3_fu_1053_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_790_p0 = c0_y_reg_2205;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_790_p0 = c0_y_29_reg_2211;
    end else begin
        grp_fu_790_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_790_p1 = mul12_reg_3034;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_790_p1 = add24_reg_2963;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_790_p1 = mul10_reg_2858;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_790_p1 = add15_reg_2799;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_790_p1 = add18_reg_2661;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_790_p1 = mul6_reg_2610;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_790_p1 = add11_reg_2507;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_790_p1 = sub_reg_2411;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_790_p1 = DATA_y_4_load_reg_2228;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_790_p1 = DATA_y_5_load_reg_2234;
    end else begin
        grp_fu_790_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_794_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_794_opcode = 2'd0;
    end else begin
        grp_fu_794_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_794_p0 = c0_x_34_reg_2933;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_794_p0 = mul1702_1_reg_2883;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_794_p0 = c0_x_21_reg_2781;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_794_p0 = c0_x_33_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_794_p0 = mul1641_1_reg_2615;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_794_p0 = c0_x_32_reg_2477;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_794_p0 = bitcast_ln386_9_fu_1088_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_794_p0 = c0_x_reg_2251;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_794_p0 = c0_x_29_reg_2257;
    end else begin
        grp_fu_794_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_794_p1 = add23_reg_2957;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_794_p1 = bitcast_ln386_33_fu_1513_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_794_p1 = mul7_reg_2805;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_794_p1 = add17_reg_2655;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_794_p1 = bitcast_ln386_25_fu_1377_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_794_p1 = add_reg_2501;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_794_p1 = bitcast_ln386_11_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_794_p1 = DATA_x_4_load_reg_2274;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_794_p1 = DATA_x_5_load_reg_2280;
    end else begin
        grp_fu_794_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_798_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_798_opcode = 2'd0;
    end else begin
        grp_fu_798_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_798_p0 = c0_y_34_reg_2939;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_798_p0 = bitcast_ln386_35_fu_1547_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_798_p0 = c0_y_21_reg_2787;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_798_p0 = c0_y_33_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_798_p0 = bitcast_ln386_27_fu_1411_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_798_p0 = c0_y_32_reg_2483;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_798_p0 = bitcast_ln386_9_fu_1088_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_798_p0 = c0_y_reg_2205;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_798_p0 = c0_y_29_reg_2211;
    end else begin
        grp_fu_798_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_798_p1 = add24_reg_2963;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_798_p1 = mul1709_1_reg_2888;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_798_p1 = mul8_reg_2811;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_798_p1 = add18_reg_2661;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_798_p1 = mul1648_1_reg_2620;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_798_p1 = add11_reg_2507;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_798_p1 = bitcast_ln386_11_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_798_p1 = DATA_y_4_load_reg_2228;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_798_p1 = DATA_y_5_load_reg_2234;
    end else begin
        grp_fu_798_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_802_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_802_opcode = 2'd0;
    end else begin
        grp_fu_802_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_802_p0 = c0_x_27_reg_2745_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_802_p0 = c0_x_41_reg_2969;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_802_p0 = c0_x_24_reg_2547_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_802_p0 = c0_x_40_reg_2733;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_802_p0 = c0_x_39_reg_2535;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_802_p0 = c0_x_20_reg_2393;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_802_p0 = c0_x_30_reg_2263;
    end else begin
        grp_fu_802_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_802_p1 = sub1705_1_reg_3017;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_802_p1 = reg_882;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_802_p1 = sub1644_1_reg_2817;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_802_p1 = add1689_1_reg_2757;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_802_p1 = add1598_1_reg_2559;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_802_p1 = add12_reg_2429;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_802_p1 = DATA_x_6_load_reg_2286;
    end else begin
        grp_fu_802_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_806_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_806_opcode = 2'd0;
    end else begin
        grp_fu_806_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_806_p0 = c0_y_27_reg_2751_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_806_p0 = c0_y_41_reg_2975;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_806_p0 = c0_y_24_reg_2553_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_806_p0 = c0_y_40_reg_2739;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_806_p0 = c0_y_39_reg_2541;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_806_p0 = c0_y_20_reg_2399;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_806_p0 = c0_y_30_reg_2217;
    end else begin
        grp_fu_806_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_806_p1 = sub1710_1_reg_3023;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_806_p1 = reg_888;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_806_p1 = add1649_1_reg_2823;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_806_p1 = add1692_1_reg_2763;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_806_p1 = add1601_1_reg_2565;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_806_p1 = add13_reg_2435;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_806_p1 = DATA_y_6_load_reg_2240;
    end else begin
        grp_fu_806_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_810_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_810_opcode = 2'd0;
    end else begin
        grp_fu_810_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_810_p0 = c0_x_27_reg_2745_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_810_p0 = c0_x_41_reg_2969;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_810_p0 = c0_x_24_reg_2547_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_810_p0 = c0_x_40_reg_2733;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_810_p0 = c0_x_39_reg_2535;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_810_p0 = c0_x_20_reg_2393;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_810_p0 = c0_x_35_reg_2345;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_810_p0 = c0_x_31_reg_2268;
    end else begin
        grp_fu_810_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_810_p1 = sub1705_1_reg_3017;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_810_p1 = reg_882;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_810_p1 = sub1644_1_reg_2817;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_810_p1 = add1689_1_reg_2757;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_810_p1 = add1598_1_reg_2559;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_810_p1 = add12_reg_2429;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_810_p1 = DATA_x_4_load_2_reg_2369;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_810_p1 = DATA_x_7_load_reg_2291;
    end else begin
        grp_fu_810_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_814_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_814_opcode = 2'd0;
    end else begin
        grp_fu_814_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_814_p0 = c0_y_27_reg_2751_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_814_p0 = c0_y_41_reg_2975;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_814_p0 = c0_y_24_reg_2553_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_814_p0 = c0_y_40_reg_2739;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_814_p0 = c0_y_39_reg_2541;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_814_p0 = c0_y_20_reg_2399;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_814_p0 = c0_y_35_reg_2297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_814_p0 = c0_y_31_reg_2222;
    end else begin
        grp_fu_814_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_814_p1 = sub1710_1_reg_3023;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_814_p1 = reg_888;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_814_p1 = add1649_1_reg_2823;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_814_p1 = add1692_1_reg_2763;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_814_p1 = add1601_1_reg_2565;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_814_p1 = add13_reg_2435;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_814_p1 = DATA_y_4_load_3_reg_2321;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_814_p1 = DATA_y_7_load_reg_2245;
    end else begin
        grp_fu_814_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_818_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_818_opcode = 2'd0;
    end else begin
        grp_fu_818_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_818_p0 = c0_x_23_reg_2945_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_818_p0 = mul1781_1_reg_3049;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_818_p0 = c0_x_26_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_818_p0 = c0_x_25_reg_2441;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_818_p0 = tmp_1_6_reg_2453;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_818_p0 = c0_x_35_reg_2345;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_818_p0 = c0_x_31_reg_2268;
    end else begin
        grp_fu_818_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_818_p1 = sub25_reg_3149;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_818_p1 = bitcast_ln386_37_fu_1651_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_818_p1 = mul1657_1_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_818_p1 = add1614_1_reg_2571;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_818_p1 = bitcast_ln386_21_fu_1159_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_818_p1 = DATA_x_4_load_2_reg_2369;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_818_p1 = DATA_x_7_load_reg_2291;
    end else begin
        grp_fu_818_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_822_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_822_opcode = 2'd0;
    end else begin
        grp_fu_822_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_822_p0 = c0_y_23_reg_2951_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_822_p0 = bitcast_ln386_39_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_822_p0 = c0_y_26_reg_2835;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_822_p0 = c0_y_25_reg_2447;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_822_p0 = bitcast_ln386_23_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_822_p0 = c0_y_35_reg_2297;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_822_p0 = c0_y_31_reg_2222;
    end else begin
        grp_fu_822_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_822_p1 = sub26_reg_3155;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_822_p1 = mul1788_1_reg_3054;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_822_p1 = mul1663_1_reg_2847;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_822_p1 = add1617_1_reg_2577;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_822_p1 = sub1591_1_reg_2459;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_822_p1 = DATA_y_4_load_3_reg_2321;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_822_p1 = DATA_y_7_load_reg_2245;
    end else begin
        grp_fu_822_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_826_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_826_opcode = 2'd0;
    end else begin
        grp_fu_826_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_826_p0 = c0_x_28_reg_2981_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_826_p0 = c0_x_26_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_826_p0 = c0_x_25_reg_2441;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_826_p0 = bitcast_ln386_29_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_826_p0 = c0_x_37_reg_2357;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_826_p0 = c0_x_36_reg_2351;
    end else begin
        grp_fu_826_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_826_p1 = reg_904;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_826_p1 = mul1657_1_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_826_p1 = add1614_1_reg_2571;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_826_p1 = bitcast_ln386_31_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_826_p1 = DATA_x_6_load_2_reg_2381;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_826_p1 = DATA_x_5_load_2_reg_2375;
    end else begin
        grp_fu_826_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_830_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_830_opcode = 2'd0;
    end else begin
        grp_fu_830_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_830_p0 = c0_y_28_reg_2987_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_830_p0 = c0_y_26_reg_2835;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_830_p0 = c0_y_25_reg_2447;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_830_p0 = bitcast_ln386_29_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_830_p0 = c0_y_37_reg_2309;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_830_p0 = c0_y_36_reg_2303;
    end else begin
        grp_fu_830_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_830_p1 = reg_910;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_830_p1 = mul1663_1_reg_2847;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_830_p1 = add1617_1_reg_2577;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_830_p1 = bitcast_ln386_31_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_830_p1 = DATA_y_6_load_3_reg_2333;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_830_p1 = DATA_y_5_load_3_reg_2327;
    end else begin
        grp_fu_830_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_834_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_834_opcode = 2'd0;
    end else begin
        grp_fu_834_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_834_p0 = c0_x_28_reg_2981_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_834_p0 = c0_x_22_reg_2721_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_834_p0 = c0_x_38_reg_2363;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_834_p0 = c0_x_36_reg_2351;
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_834_p1 = reg_904;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_834_p1 = sub18_reg_3005;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_834_p1 = DATA_x_7_load_2_reg_2387;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_834_p1 = DATA_x_5_load_2_reg_2375;
    end else begin
        grp_fu_834_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_838_opcode = 2'd1;
    end else if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_838_opcode = 2'd0;
    end else begin
        grp_fu_838_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_838_p0 = c0_y_28_reg_2987_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_838_p0 = c0_y_22_reg_2727_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_838_p0 = c0_y_38_reg_2315;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_838_p0 = c0_y_36_reg_2303;
    end else begin
        grp_fu_838_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_838_p1 = reg_910;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_838_p1 = sub19_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_838_p1 = DATA_y_7_load_3_reg_2339;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_838_p1 = DATA_y_5_load_3_reg_2327;
    end else begin
        grp_fu_838_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_842_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_842_opcode = 2'd0;
    end else begin
        grp_fu_842_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_842_p0 = c0_x_22_reg_2721_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_842_p0 = c0_x_19_reg_2489_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_842_p0 = c0_x_37_reg_2357;
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_842_p1 = sub18_reg_3005;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_842_p1 = sub15_reg_2793;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_842_p1 = DATA_x_6_load_2_reg_2381;
    end else begin
        grp_fu_842_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_846_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_846_opcode = 2'd0;
    end else begin
        grp_fu_846_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_846_p0 = c0_y_22_reg_2727_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_846_p0 = c0_y_19_reg_2495_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_846_p0 = c0_y_37_reg_2309;
    end else begin
        grp_fu_846_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_846_p1 = sub19_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_846_p1 = add15_reg_2799;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_846_p1 = DATA_y_6_load_3_reg_2333;
    end else begin
        grp_fu_846_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_850_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_850_opcode = 2'd0;
    end else begin
        grp_fu_850_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_850_p0 = c0_x_23_reg_2945_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_850_p0 = c0_x_21_reg_2781;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_850_p0 = c0_x_38_reg_2363;
    end else begin
        grp_fu_850_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_850_p1 = sub25_reg_3149;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_850_p1 = mul7_reg_2805;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_850_p1 = DATA_x_7_load_2_reg_2387;
    end else begin
        grp_fu_850_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2029 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_854_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_854_opcode = 2'd0;
    end else begin
        grp_fu_854_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_854_p0 = c0_y_23_reg_2951_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_854_p0 = c0_y_21_reg_2787;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_854_p0 = c0_y_38_reg_2315;
    end else begin
        grp_fu_854_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_854_p1 = sub26_reg_3155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_854_p1 = mul8_reg_2811;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_854_p1 = DATA_y_7_load_3_reg_2339;
    end else begin
        grp_fu_854_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_858_p0 = tmp_11_reg_2993;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_858_p0 = reg_894;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_858_p0 = tmp_8_reg_2667;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_858_p0 = sub1630_1_reg_2679;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_858_p0 = sub14_reg_2625;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_858_p0 = tmp_1_1_reg_2417;
    end else begin
        grp_fu_858_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_858_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_858_p1 = 64'd0;
    end else begin
        grp_fu_858_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_863_p0 = sub1777_1_reg_2999;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_863_p0 = reg_899;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_863_p0 = sub17_reg_2673;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_863_p0 = add1636_1_reg_2684;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_863_p0 = add14_reg_2630;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_863_p0 = sub12_reg_2423;
    end else begin
        grp_fu_863_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_863_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_863_p1 = 64'd0;
    end else begin
        grp_fu_863_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_868_p0 = tmp_10_reg_2769;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_868_p0 = sub1656_1_reg_2699;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_868_p0 = sub16_reg_2645;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_868_p0 = tmp_1_3_reg_2465;
    end else begin
        grp_fu_868_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_868_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_868_p1 = 64'd0;
    end else begin
        grp_fu_868_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_873_p0 = sub1698_1_reg_2775;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_873_p0 = add1662_1_reg_2704;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_873_p0 = add16_reg_2650;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_873_p0 = sub1607_1_reg_2471;
    end else begin
        grp_fu_873_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_873_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_873_p1 = 64'd0;
    end else begin
        grp_fu_873_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_address0_local = zext_ln396_1_fu_1997_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_address0_local = zext_ln394_1_fu_1957_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_address0_local = zext_ln392_1_fu_1911_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_address0_local = zext_ln367_reg_2119_pp0_iter5_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_address0_local = zext_ln396_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_address0_local = zext_ln390_1_fu_1809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_address0_local = zext_ln395_fu_1760_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_address0_local = zext_ln391_fu_1726_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_address1_local = zext_ln395_1_fu_1974_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_address1_local = zext_ln393_2_fu_1938_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_address1_local = zext_ln391_1_fu_1892_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln394_fu_1832_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln393_fu_1789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln392_fu_1747_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_reg_2033_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_address1_local = zext_ln390_fu_1701_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_d0_local = bitcast_ln396_1_fu_2003_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_d0_local = bitcast_ln394_1_fu_1963_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_d0_local = bitcast_ln392_1_fu_1917_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_d0_local = bitcast_ln389_1_fu_1865_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_d0_local = bitcast_ln396_fu_1851_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_d0_local = bitcast_ln390_1_fu_1815_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_d0_local = bitcast_ln395_fu_1766_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_d0_local = bitcast_ln391_fu_1732_p1;
        end else begin
            work_x_d0_local = 'bx;
        end
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_d1_local = bitcast_ln395_1_fu_1980_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_d1_local = bitcast_ln393_1_fu_1944_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_d1_local = bitcast_ln391_1_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln394_fu_1838_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln393_fu_1795_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln392_fu_1753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_d1_local = bitcast_ln390_fu_1707_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_y_address0_local = zext_ln396_1_fu_1997_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_address0_local = zext_ln394_1_fu_1957_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_address0_local = zext_ln392_1_fu_1911_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_address0_local = zext_ln367_reg_2119_pp0_iter5_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_address0_local = zext_ln396_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_address0_local = zext_ln390_1_fu_1809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_address0_local = zext_ln395_fu_1760_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_address0_local = zext_ln391_fu_1726_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_address1_local = zext_ln395_1_fu_1974_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_address1_local = zext_ln393_2_fu_1938_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_address1_local = zext_ln391_1_fu_1892_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln394_fu_1832_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln393_fu_1789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln392_fu_1747_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_reg_2033_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_address1_local = zext_ln390_fu_1701_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_y_d0_local = bitcast_ln405_1_fu_2007_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_d0_local = bitcast_ln403_1_fu_1967_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_d0_local = bitcast_ln401_1_fu_1921_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_d0_local = bitcast_ln398_1_fu_1869_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_d0_local = bitcast_ln405_fu_1860_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_d0_local = bitcast_ln399_1_fu_1819_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_d0_local = bitcast_ln404_fu_1774_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_d0_local = bitcast_ln400_fu_1740_p1;
        end else begin
            work_y_d0_local = 'bx;
        end
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_d1_local = bitcast_ln404_1_fu_1984_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_d1_local = bitcast_ln402_1_fu_1948_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_d1_local = bitcast_ln400_1_fu_1902_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln403_fu_1856_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln402_fu_1799_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln401_fu_1770_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1736_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_d1_local = bitcast_ln399_fu_1711_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = zext_ln367_fu_970_p1;
assign DATA_x_1_address1 = zext_ln365_fu_932_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = zext_ln367_fu_970_p1;
assign DATA_x_2_address1 = zext_ln365_fu_932_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = zext_ln367_fu_970_p1;
assign DATA_x_3_address1 = zext_ln365_fu_932_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_4_address0 = zext_ln367_fu_970_p1;
assign DATA_x_4_address1 = zext_ln365_fu_932_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_5_address0 = zext_ln367_fu_970_p1;
assign DATA_x_5_address1 = zext_ln365_fu_932_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_6_address0 = zext_ln367_fu_970_p1;
assign DATA_x_6_address1 = zext_ln365_fu_932_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_7_address0 = zext_ln367_fu_970_p1;
assign DATA_x_7_address1 = zext_ln365_fu_932_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_address0 = zext_ln367_fu_970_p1;
assign DATA_x_address1 = zext_ln365_fu_932_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_y_1_address0 = zext_ln367_fu_970_p1;
assign DATA_y_1_address1 = zext_ln365_fu_932_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln367_fu_970_p1;
assign DATA_y_2_address1 = zext_ln365_fu_932_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln367_fu_970_p1;
assign DATA_y_3_address1 = zext_ln365_fu_932_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_4_address0 = zext_ln367_fu_970_p1;
assign DATA_y_4_address1 = zext_ln365_fu_932_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_ce1 = DATA_y_4_ce1_local;
assign DATA_y_5_address0 = zext_ln367_fu_970_p1;
assign DATA_y_5_address1 = zext_ln365_fu_932_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_ce1 = DATA_y_5_ce1_local;
assign DATA_y_6_address0 = zext_ln367_fu_970_p1;
assign DATA_y_6_address1 = zext_ln365_fu_932_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_ce1 = DATA_y_6_ce1_local;
assign DATA_y_7_address0 = zext_ln367_fu_970_p1;
assign DATA_y_7_address1 = zext_ln365_fu_932_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_ce1 = DATA_y_7_ce1_local;
assign DATA_y_address0 = zext_ln367_fu_970_p1;
assign DATA_y_address1 = zext_ln365_fu_932_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_1270_p2 = (tid_5_reg_2018 + 7'd2);
assign add_ln390_fu_1803_p2 = (zext_ln365_2_fu_1778_p1 + 8'd65);
assign add_ln392_fu_1906_p2 = (zext_ln365_1_reg_3202 + 9'd193);
assign add_ln394_1_fu_1952_p2 = ($signed(zext_ln365_1_reg_3202) + $signed(9'd321));
assign add_ln394_fu_1826_p2 = ($signed(zext_ln365_1_fu_1823_p1) + $signed(9'd320));
assign add_ln396_fu_1988_p2 = ($signed(tid_5_reg_2018_pp0_iter5_reg) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign bit_sel20_fu_1027_p3 = bitcast_ln386_2_fu_1024_p1[64'd63];
assign bit_sel21_fu_1283_p3 = bitcast_ln386_4_fu_1280_p1[64'd63];
assign bit_sel22_fu_1317_p3 = bitcast_ln386_6_fu_1314_p1[64'd63];
assign bit_sel23_fu_1062_p3 = bitcast_ln386_8_fu_1058_p1[64'd63];
assign bit_sel24_fu_1098_p3 = bitcast_ln386_10_fu_1094_p1[64'd63];
assign bit_sel25_fu_1419_p3 = bitcast_ln386_12_fu_1416_p1[64'd63];
assign bit_sel26_fu_1453_p3 = bitcast_ln386_14_fu_1450_p1[64'd63];
assign bit_sel27_fu_1556_p3 = bitcast_ln386_16_fu_1552_p1[64'd63];
assign bit_sel28_fu_1591_p3 = bitcast_ln386_18_fu_1587_p1[64'd63];
assign bit_sel29_fu_1133_p3 = bitcast_ln386_20_fu_1130_p1[64'd63];
assign bit_sel30_fu_1167_p3 = bitcast_ln386_22_fu_1164_p1[64'd63];
assign bit_sel31_fu_1351_p3 = bitcast_ln386_24_fu_1348_p1[64'd63];
assign bit_sel32_fu_1385_p3 = bitcast_ln386_26_fu_1382_p1[64'd63];
assign bit_sel33_fu_1202_p3 = bitcast_ln386_28_fu_1198_p1[64'd63];
assign bit_sel34_fu_1238_p3 = bitcast_ln386_30_fu_1234_p1[64'd63];
assign bit_sel35_fu_1487_p3 = bitcast_ln386_32_fu_1484_p1[64'd63];
assign bit_sel36_fu_1521_p3 = bitcast_ln386_34_fu_1518_p1[64'd63];
assign bit_sel37_fu_1625_p3 = bitcast_ln386_36_fu_1622_p1[64'd63];
assign bit_sel38_fu_1659_p3 = bitcast_ln386_38_fu_1656_p1[64'd63];
assign bit_sel_fu_993_p3 = bitcast_ln386_fu_990_p1[64'd63];
assign bitcast_ln386_10_fu_1094_p1 = reg_888;
assign bitcast_ln386_11_fu_1124_p1 = xor_ln386_5_fu_1116_p3;
assign bitcast_ln386_12_fu_1416_p1 = sub17_reg_2673;
assign bitcast_ln386_13_fu_1445_p1 = xor_ln386_6_fu_1437_p3;
assign bitcast_ln386_14_fu_1450_p1 = tmp_8_reg_2667;
assign bitcast_ln386_15_fu_1479_p1 = xor_ln386_7_fu_1471_p3;
assign bitcast_ln386_16_fu_1552_p1 = reg_899;
assign bitcast_ln386_17_fu_1582_p1 = xor_ln386_8_fu_1574_p3;
assign bitcast_ln386_18_fu_1587_p1 = reg_894;
assign bitcast_ln386_19_fu_1617_p1 = xor_ln386_9_fu_1609_p3;
assign bitcast_ln386_1_fu_1019_p1 = xor_ln3_fu_1011_p3;
assign bitcast_ln386_20_fu_1130_p1 = sub1591_1_reg_2459;
assign bitcast_ln386_21_fu_1159_p1 = xor_ln386_s_fu_1151_p3;
assign bitcast_ln386_22_fu_1164_p1 = tmp_1_6_reg_2453;
assign bitcast_ln386_23_fu_1193_p1 = xor_ln386_10_fu_1185_p3;
assign bitcast_ln386_24_fu_1348_p1 = sub1607_1_reg_2471;
assign bitcast_ln386_25_fu_1377_p1 = xor_ln386_11_fu_1369_p3;
assign bitcast_ln386_26_fu_1382_p1 = tmp_1_3_reg_2465;
assign bitcast_ln386_27_fu_1411_p1 = xor_ln386_12_fu_1403_p3;
assign bitcast_ln386_28_fu_1198_p1 = reg_894;
assign bitcast_ln386_29_fu_1228_p1 = xor_ln386_13_fu_1220_p3;
assign bitcast_ln386_2_fu_1024_p1 = tmp_1_reg_2405;
assign bitcast_ln386_30_fu_1234_p1 = reg_899;
assign bitcast_ln386_31_fu_1264_p1 = xor_ln386_14_fu_1256_p3;
assign bitcast_ln386_32_fu_1484_p1 = sub1698_1_reg_2775;
assign bitcast_ln386_33_fu_1513_p1 = xor_ln386_15_fu_1505_p3;
assign bitcast_ln386_34_fu_1518_p1 = tmp_10_reg_2769;
assign bitcast_ln386_35_fu_1547_p1 = xor_ln386_16_fu_1539_p3;
assign bitcast_ln386_36_fu_1622_p1 = sub1777_1_reg_2999;
assign bitcast_ln386_37_fu_1651_p1 = xor_ln386_17_fu_1643_p3;
assign bitcast_ln386_38_fu_1656_p1 = tmp_11_reg_2993;
assign bitcast_ln386_39_fu_1685_p1 = xor_ln386_18_fu_1677_p3;
assign bitcast_ln386_3_fu_1053_p1 = xor_ln386_1_fu_1045_p3;
assign bitcast_ln386_4_fu_1280_p1 = sub12_reg_2423;
assign bitcast_ln386_5_fu_1309_p1 = xor_ln386_2_fu_1301_p3;
assign bitcast_ln386_6_fu_1314_p1 = tmp_1_1_reg_2417;
assign bitcast_ln386_7_fu_1343_p1 = xor_ln386_3_fu_1335_p3;
assign bitcast_ln386_8_fu_1058_p1 = reg_882;
assign bitcast_ln386_9_fu_1088_p1 = xor_ln386_4_fu_1080_p3;
assign bitcast_ln386_fu_990_p1 = sub_reg_2411;
assign bitcast_ln389_1_fu_1865_p1 = add1717_1_reg_2893_pp0_iter4_reg;
assign bitcast_ln389_fu_1715_p1 = add19_reg_2863_pp0_iter4_reg;
assign bitcast_ln390_1_fu_1815_p1 = add1796_1_reg_3089_pp0_iter4_reg;
assign bitcast_ln390_fu_1707_p1 = add25_reg_3059_pp0_iter4_reg;
assign bitcast_ln391_1_fu_1898_p1 = add1733_1_reg_3129_pp0_iter5_reg;
assign bitcast_ln391_fu_1732_p1 = add21_reg_3109;
assign bitcast_ln392_1_fu_1917_p1 = add1812_1_reg_3182;
assign bitcast_ln392_fu_1753_p1 = add27_reg_3167;
assign bitcast_ln393_1_fu_1944_p1 = sub1723_1_reg_2903_pp0_iter5_reg;
assign bitcast_ln393_fu_1795_p1 = sub20_reg_2873_pp0_iter4_reg;
assign bitcast_ln394_1_fu_1963_p1 = sub1802_1_reg_3099_pp0_iter4_reg;
assign bitcast_ln394_fu_1838_p1 = sub27_reg_3069_pp0_iter4_reg;
assign bitcast_ln395_1_fu_1980_p1 = sub1739_1_reg_3139_pp0_iter5_reg;
assign bitcast_ln395_fu_1766_p1 = sub22_reg_3119_pp0_iter5_reg;
assign bitcast_ln396_1_fu_2003_p1 = sub1818_1_reg_3192;
assign bitcast_ln396_fu_1851_p1 = reg_904;
assign bitcast_ln398_1_fu_1869_p1 = add1720_1_reg_2898_pp0_iter4_reg;
assign bitcast_ln398_fu_1736_p1 = add20_reg_2868_pp0_iter4_reg;
assign bitcast_ln399_1_fu_1819_p1 = add1799_1_reg_3094_pp0_iter4_reg;
assign bitcast_ln399_fu_1711_p1 = add26_reg_3064_pp0_iter4_reg;
assign bitcast_ln400_1_fu_1902_p1 = add1736_1_reg_3134_pp0_iter5_reg;
assign bitcast_ln400_fu_1740_p1 = add22_reg_3114;
assign bitcast_ln401_1_fu_1921_p1 = add1815_1_reg_3187;
assign bitcast_ln401_fu_1770_p1 = add28_reg_3172;
assign bitcast_ln402_1_fu_1948_p1 = sub1726_1_reg_2908_pp0_iter5_reg;
assign bitcast_ln402_fu_1799_p1 = sub21_reg_2878_pp0_iter4_reg;
assign bitcast_ln403_1_fu_1967_p1 = sub1805_1_reg_3104_pp0_iter4_reg;
assign bitcast_ln403_fu_1856_p1 = sub28_reg_3074_pp0_iter4_reg;
assign bitcast_ln404_1_fu_1984_p1 = sub1742_1_reg_3144_pp0_iter5_reg;
assign bitcast_ln404_fu_1774_p1 = sub23_reg_3124_pp0_iter5_reg;
assign bitcast_ln405_1_fu_2007_p1 = sub1821_1_reg_3197;
assign bitcast_ln405_fu_1860_p1 = reg_910;
assign grp_fu_480_p_ce = 1'b1;
assign grp_fu_480_p_din0 = grp_fu_786_p0;
assign grp_fu_480_p_din1 = grp_fu_786_p1;
assign grp_fu_480_p_opcode = grp_fu_786_opcode;
assign grp_fu_484_p_ce = 1'b1;
assign grp_fu_484_p_din0 = grp_fu_790_p0;
assign grp_fu_484_p_din1 = grp_fu_790_p1;
assign grp_fu_484_p_opcode = grp_fu_790_opcode;
assign grp_fu_488_p_ce = 1'b1;
assign grp_fu_488_p_din0 = grp_fu_794_p0;
assign grp_fu_488_p_din1 = grp_fu_794_p1;
assign grp_fu_488_p_opcode = grp_fu_794_opcode;
assign grp_fu_492_p_ce = 1'b1;
assign grp_fu_492_p_din0 = grp_fu_798_p0;
assign grp_fu_492_p_din1 = grp_fu_798_p1;
assign grp_fu_492_p_opcode = grp_fu_798_opcode;
assign grp_fu_496_p_ce = 1'b1;
assign grp_fu_496_p_din0 = grp_fu_802_p0;
assign grp_fu_496_p_din1 = grp_fu_802_p1;
assign grp_fu_496_p_opcode = grp_fu_802_opcode;
assign grp_fu_500_p_ce = 1'b1;
assign grp_fu_500_p_din0 = grp_fu_806_p0;
assign grp_fu_500_p_din1 = grp_fu_806_p1;
assign grp_fu_500_p_opcode = grp_fu_806_opcode;
assign grp_fu_504_p_ce = 1'b1;
assign grp_fu_504_p_din0 = grp_fu_810_p0;
assign grp_fu_504_p_din1 = grp_fu_810_p1;
assign grp_fu_504_p_opcode = grp_fu_810_opcode;
assign grp_fu_508_p_ce = 1'b1;
assign grp_fu_508_p_din0 = grp_fu_814_p0;
assign grp_fu_508_p_din1 = grp_fu_814_p1;
assign grp_fu_508_p_opcode = grp_fu_814_opcode;
assign grp_fu_512_p_ce = 1'b1;
assign grp_fu_512_p_din0 = grp_fu_818_p0;
assign grp_fu_512_p_din1 = grp_fu_818_p1;
assign grp_fu_512_p_opcode = grp_fu_818_opcode;
assign grp_fu_516_p_ce = 1'b1;
assign grp_fu_516_p_din0 = grp_fu_822_p0;
assign grp_fu_516_p_din1 = grp_fu_822_p1;
assign grp_fu_516_p_opcode = grp_fu_822_opcode;
assign grp_fu_520_p_ce = 1'b1;
assign grp_fu_520_p_din0 = grp_fu_826_p0;
assign grp_fu_520_p_din1 = grp_fu_826_p1;
assign grp_fu_520_p_opcode = grp_fu_826_opcode;
assign grp_fu_524_p_ce = 1'b1;
assign grp_fu_524_p_din0 = grp_fu_830_p0;
assign grp_fu_524_p_din1 = grp_fu_830_p1;
assign grp_fu_524_p_opcode = grp_fu_830_opcode;
assign grp_fu_528_p_ce = 1'b1;
assign grp_fu_528_p_din0 = grp_fu_834_p0;
assign grp_fu_528_p_din1 = grp_fu_834_p1;
assign grp_fu_528_p_opcode = grp_fu_834_opcode;
assign grp_fu_532_p_ce = 1'b1;
assign grp_fu_532_p_din0 = grp_fu_838_p0;
assign grp_fu_532_p_din1 = grp_fu_838_p1;
assign grp_fu_532_p_opcode = grp_fu_838_opcode;
assign grp_fu_536_p_ce = 1'b1;
assign grp_fu_536_p_din0 = grp_fu_842_p0;
assign grp_fu_536_p_din1 = grp_fu_842_p1;
assign grp_fu_536_p_opcode = grp_fu_842_opcode;
assign grp_fu_540_p_ce = 1'b1;
assign grp_fu_540_p_din0 = grp_fu_858_p0;
assign grp_fu_540_p_din1 = grp_fu_858_p1;
assign grp_fu_544_p_ce = 1'b1;
assign grp_fu_544_p_din0 = grp_fu_863_p0;
assign grp_fu_544_p_din1 = grp_fu_863_p1;
assign grp_fu_548_p_ce = 1'b1;
assign grp_fu_548_p_din0 = grp_fu_868_p0;
assign grp_fu_548_p_din1 = grp_fu_868_p1;
assign grp_fu_593_p_ce = 1'b1;
assign grp_fu_593_p_din0 = grp_fu_846_p0;
assign grp_fu_593_p_din1 = grp_fu_846_p1;
assign grp_fu_593_p_opcode = grp_fu_846_opcode;
assign grp_fu_597_p_ce = 1'b1;
assign grp_fu_597_p_din0 = grp_fu_850_p0;
assign grp_fu_597_p_din1 = grp_fu_850_p1;
assign grp_fu_597_p_opcode = grp_fu_850_opcode;
assign grp_fu_601_p_ce = 1'b1;
assign grp_fu_601_p_din0 = grp_fu_854_p0;
assign grp_fu_601_p_din1 = grp_fu_854_p1;
assign grp_fu_601_p_opcode = grp_fu_854_opcode;
assign grp_fu_605_p_ce = 1'b1;
assign grp_fu_605_p_din0 = grp_fu_873_p0;
assign grp_fu_605_p_din1 = grp_fu_873_p1;
assign or_ln_fu_962_p3 = {{tmp_s_fu_952_p4}, {1'd1}};
assign sext_ln392_fu_1744_p1 = zext_ln390_cast_reg_3161;
assign sext_ln395_1_fu_1971_p1 = zext_ln391_1_cast_reg_3213;
assign sext_ln395_fu_1757_p1 = zext_ln391_cast_reg_3177;
assign sext_ln396_1_fu_1993_p1 = $signed(add_ln396_fu_1988_p2);
assign sext_ln396_fu_1842_p1 = zext_ln390_cast_reg_3161;
assign tmp_37_fu_1873_p4 = {{tid_5_reg_2018_pp0_iter5_reg[6:1]}};
assign tmp_s_fu_952_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign trunc_ln386_10_fu_1147_p1 = bitcast_ln386_20_fu_1130_p1[62:0];
assign trunc_ln386_11_fu_1181_p1 = bitcast_ln386_22_fu_1164_p1[62:0];
assign trunc_ln386_12_fu_1365_p1 = bitcast_ln386_24_fu_1348_p1[62:0];
assign trunc_ln386_13_fu_1399_p1 = bitcast_ln386_26_fu_1382_p1[62:0];
assign trunc_ln386_14_fu_1216_p1 = bitcast_ln386_28_fu_1198_p1[62:0];
assign trunc_ln386_15_fu_1252_p1 = bitcast_ln386_30_fu_1234_p1[62:0];
assign trunc_ln386_16_fu_1501_p1 = bitcast_ln386_32_fu_1484_p1[62:0];
assign trunc_ln386_17_fu_1535_p1 = bitcast_ln386_34_fu_1518_p1[62:0];
assign trunc_ln386_18_fu_1639_p1 = bitcast_ln386_36_fu_1622_p1[62:0];
assign trunc_ln386_19_fu_1673_p1 = bitcast_ln386_38_fu_1656_p1[62:0];
assign trunc_ln386_1_fu_1041_p1 = bitcast_ln386_2_fu_1024_p1[62:0];
assign trunc_ln386_2_fu_1297_p1 = bitcast_ln386_4_fu_1280_p1[62:0];
assign trunc_ln386_3_fu_1331_p1 = bitcast_ln386_6_fu_1314_p1[62:0];
assign trunc_ln386_4_fu_1076_p1 = bitcast_ln386_8_fu_1058_p1[62:0];
assign trunc_ln386_5_fu_1112_p1 = bitcast_ln386_10_fu_1094_p1[62:0];
assign trunc_ln386_6_fu_1433_p1 = bitcast_ln386_12_fu_1416_p1[62:0];
assign trunc_ln386_7_fu_1467_p1 = bitcast_ln386_14_fu_1450_p1[62:0];
assign trunc_ln386_8_fu_1570_p1 = bitcast_ln386_16_fu_1552_p1[62:0];
assign trunc_ln386_9_fu_1605_p1 = bitcast_ln386_18_fu_1587_p1[62:0];
assign trunc_ln386_fu_1007_p1 = bitcast_ln386_fu_990_p1[62:0];
assign trunc_ln390_fu_1690_p1 = tid_5_reg_2018_pp0_iter4_reg[5:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_x_d0 = work_x_d0_local;
assign work_x_d1 = work_x_d1_local;
assign work_x_we0 = work_x_we0_local;
assign work_x_we1 = work_x_we1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign work_y_d0 = work_y_d0_local;
assign work_y_d1 = work_y_d1_local;
assign work_y_we0 = work_y_we0_local;
assign work_y_we1 = work_y_we1_local;
assign xor_ln386_10_fu_1185_p3 = {{xor_ln386_29_fu_1175_p2}, {trunc_ln386_11_fu_1181_p1}};
assign xor_ln386_11_fu_1369_p3 = {{xor_ln386_30_fu_1359_p2}, {trunc_ln386_12_fu_1365_p1}};
assign xor_ln386_12_fu_1403_p3 = {{xor_ln386_31_fu_1393_p2}, {trunc_ln386_13_fu_1399_p1}};
assign xor_ln386_13_fu_1220_p3 = {{xor_ln386_32_fu_1210_p2}, {trunc_ln386_14_fu_1216_p1}};
assign xor_ln386_14_fu_1256_p3 = {{xor_ln386_33_fu_1246_p2}, {trunc_ln386_15_fu_1252_p1}};
assign xor_ln386_15_fu_1505_p3 = {{xor_ln386_34_fu_1495_p2}, {trunc_ln386_16_fu_1501_p1}};
assign xor_ln386_16_fu_1539_p3 = {{xor_ln386_35_fu_1529_p2}, {trunc_ln386_17_fu_1535_p1}};
assign xor_ln386_17_fu_1643_p3 = {{xor_ln386_36_fu_1633_p2}, {trunc_ln386_18_fu_1639_p1}};
assign xor_ln386_18_fu_1677_p3 = {{xor_ln386_37_fu_1667_p2}, {trunc_ln386_19_fu_1673_p1}};
assign xor_ln386_19_fu_1001_p2 = (bit_sel_fu_993_p3 ^ 1'd1);
assign xor_ln386_1_fu_1045_p3 = {{xor_ln386_fu_1035_p2}, {trunc_ln386_1_fu_1041_p1}};
assign xor_ln386_20_fu_1291_p2 = (bit_sel21_fu_1283_p3 ^ 1'd1);
assign xor_ln386_21_fu_1325_p2 = (bit_sel22_fu_1317_p3 ^ 1'd1);
assign xor_ln386_22_fu_1070_p2 = (bit_sel23_fu_1062_p3 ^ 1'd1);
assign xor_ln386_23_fu_1106_p2 = (bit_sel24_fu_1098_p3 ^ 1'd1);
assign xor_ln386_24_fu_1427_p2 = (bit_sel25_fu_1419_p3 ^ 1'd1);
assign xor_ln386_25_fu_1461_p2 = (bit_sel26_fu_1453_p3 ^ 1'd1);
assign xor_ln386_26_fu_1564_p2 = (bit_sel27_fu_1556_p3 ^ 1'd1);
assign xor_ln386_27_fu_1599_p2 = (bit_sel28_fu_1591_p3 ^ 1'd1);
assign xor_ln386_28_fu_1141_p2 = (bit_sel29_fu_1133_p3 ^ 1'd1);
assign xor_ln386_29_fu_1175_p2 = (bit_sel30_fu_1167_p3 ^ 1'd1);
assign xor_ln386_2_fu_1301_p3 = {{xor_ln386_20_fu_1291_p2}, {trunc_ln386_2_fu_1297_p1}};
assign xor_ln386_30_fu_1359_p2 = (bit_sel31_fu_1351_p3 ^ 1'd1);
assign xor_ln386_31_fu_1393_p2 = (bit_sel32_fu_1385_p3 ^ 1'd1);
assign xor_ln386_32_fu_1210_p2 = (bit_sel33_fu_1202_p3 ^ 1'd1);
assign xor_ln386_33_fu_1246_p2 = (bit_sel34_fu_1238_p3 ^ 1'd1);
assign xor_ln386_34_fu_1495_p2 = (bit_sel35_fu_1487_p3 ^ 1'd1);
assign xor_ln386_35_fu_1529_p2 = (bit_sel36_fu_1521_p3 ^ 1'd1);
assign xor_ln386_36_fu_1633_p2 = (bit_sel37_fu_1625_p3 ^ 1'd1);
assign xor_ln386_37_fu_1667_p2 = (bit_sel38_fu_1659_p3 ^ 1'd1);
assign xor_ln386_3_fu_1335_p3 = {{xor_ln386_21_fu_1325_p2}, {trunc_ln386_3_fu_1331_p1}};
assign xor_ln386_4_fu_1080_p3 = {{xor_ln386_22_fu_1070_p2}, {trunc_ln386_4_fu_1076_p1}};
assign xor_ln386_5_fu_1116_p3 = {{xor_ln386_23_fu_1106_p2}, {trunc_ln386_5_fu_1112_p1}};
assign xor_ln386_6_fu_1437_p3 = {{xor_ln386_24_fu_1427_p2}, {trunc_ln386_6_fu_1433_p1}};
assign xor_ln386_7_fu_1471_p3 = {{xor_ln386_25_fu_1461_p2}, {trunc_ln386_7_fu_1467_p1}};
assign xor_ln386_8_fu_1574_p3 = {{xor_ln386_26_fu_1564_p2}, {trunc_ln386_8_fu_1570_p1}};
assign xor_ln386_9_fu_1609_p3 = {{xor_ln386_27_fu_1599_p2}, {trunc_ln386_9_fu_1605_p1}};
assign xor_ln386_fu_1035_p2 = (bit_sel20_fu_1027_p3 ^ 1'd1);
assign xor_ln386_s_fu_1151_p3 = {{xor_ln386_28_fu_1141_p2}, {trunc_ln386_10_fu_1147_p1}};
assign xor_ln3_fu_1011_p3 = {{xor_ln386_19_fu_1001_p2}, {trunc_ln386_fu_1007_p1}};
assign zext_ln365_1_fu_1823_p1 = tid_5_reg_2018_pp0_iter5_reg;
assign zext_ln365_2_fu_1778_p1 = tid_5_reg_2018_pp0_iter5_reg;
assign zext_ln365_fu_932_p1 = ap_sig_allocacmp_tid_5;
assign zext_ln367_fu_970_p1 = or_ln_fu_962_p3;
assign zext_ln390_1_fu_1809_p1 = add_ln390_fu_1803_p2;
assign zext_ln390_cast_fu_1693_p3 = {{1'd1}, {trunc_ln390_fu_1690_p1}};
assign zext_ln390_fu_1701_p1 = $unsigned(zext_ln390_cast_fu_1693_p3);
assign zext_ln391_1_cast_fu_1882_p4 = {{{{1'd1}, {tmp_37_fu_1873_p4}}}, {1'd1}};
assign zext_ln391_1_fu_1892_p1 = $unsigned(zext_ln391_1_cast_fu_1882_p4);
assign zext_ln391_cast_fu_1719_p3 = {{1'd1}, {tid_5_reg_2018_pp0_iter4_reg}};
assign zext_ln391_fu_1726_p1 = $unsigned(zext_ln391_cast_fu_1719_p3);
assign zext_ln392_1_fu_1911_p1 = add_ln392_fu_1906_p2;
assign zext_ln392_fu_1747_p1 = $unsigned(sext_ln392_fu_1744_p1);
assign zext_ln393_1_cast_fu_1928_p4 = {{{{1'd1}, {zext_ln393_1_fu_1925_p1}}}, {1'd1}};
assign zext_ln393_1_fu_1925_p1 = tmp_37_reg_3208;
assign zext_ln393_2_fu_1938_p1 = zext_ln393_1_cast_fu_1928_p4;
assign zext_ln393_cast_fu_1781_p3 = {{1'd1}, {zext_ln365_2_fu_1778_p1}};
assign zext_ln393_fu_1789_p1 = zext_ln393_cast_fu_1781_p3;
assign zext_ln394_1_fu_1957_p1 = add_ln394_1_fu_1952_p2;
assign zext_ln394_fu_1832_p1 = add_ln394_fu_1826_p2;
assign zext_ln395_1_fu_1974_p1 = $unsigned(sext_ln395_1_fu_1971_p1);
assign zext_ln395_fu_1760_p1 = $unsigned(sext_ln395_fu_1757_p1);
assign zext_ln396_1_fu_1997_p1 = $unsigned(sext_ln396_1_fu_1993_p1);
assign zext_ln396_fu_1845_p1 = $unsigned(sext_ln396_fu_1842_p1);
always @ (posedge ap_clk) begin
    zext_ln365_reg_2033[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2033_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2033_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2033_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2033_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln367_reg_2119[0] <= 1'b1;
    zext_ln367_reg_2119[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_reg_2119_pp0_iter1_reg[0] <= 1'b1;
    zext_ln367_reg_2119_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_reg_2119_pp0_iter2_reg[0] <= 1'b1;
    zext_ln367_reg_2119_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_reg_2119_pp0_iter3_reg[0] <= 1'b1;
    zext_ln367_reg_2119_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_reg_2119_pp0_iter4_reg[0] <= 1'b1;
    zext_ln367_reg_2119_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_reg_2119_pp0_iter5_reg[0] <= 1'b1;
    zext_ln367_reg_2119_pp0_iter5_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln390_cast_reg_3161[6] <= 1'b1;
    zext_ln391_cast_reg_3177[7] <= 1'b1;
    zext_ln365_1_reg_3202[8:7] <= 2'b00;
    zext_ln391_1_cast_reg_3213[0] <= 1'b1;
    zext_ln391_1_cast_reg_3213[7] <= 1'b1;
end
endmodule 