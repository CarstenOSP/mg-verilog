module fft1D_512_fft1D_512_Pipeline_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,work_x_address0,work_x_ce0,work_x_q0,work_x_address1,work_x_ce1,work_x_q1,work_y_address0,work_y_ce0,work_y_q0,work_y_address1,work_y_ce1,work_y_q1,grp_fu_480_p_din0,grp_fu_480_p_din1,grp_fu_480_p_opcode,grp_fu_480_p_dout0,grp_fu_480_p_ce,grp_fu_484_p_din0,grp_fu_484_p_din1,grp_fu_484_p_opcode,grp_fu_484_p_dout0,grp_fu_484_p_ce,grp_fu_488_p_din0,grp_fu_488_p_din1,grp_fu_488_p_opcode,grp_fu_488_p_dout0,grp_fu_488_p_ce,grp_fu_492_p_din0,grp_fu_492_p_din1,grp_fu_492_p_opcode,grp_fu_492_p_dout0,grp_fu_492_p_ce,grp_fu_496_p_din0,grp_fu_496_p_din1,grp_fu_496_p_opcode,grp_fu_496_p_dout0,grp_fu_496_p_ce,grp_fu_500_p_din0,grp_fu_500_p_din1,grp_fu_500_p_opcode,grp_fu_500_p_dout0,grp_fu_500_p_ce,grp_fu_504_p_din0,grp_fu_504_p_din1,grp_fu_504_p_opcode,grp_fu_504_p_dout0,grp_fu_504_p_ce,grp_fu_508_p_din0,grp_fu_508_p_din1,grp_fu_508_p_opcode,grp_fu_508_p_dout0,grp_fu_508_p_ce,grp_fu_512_p_din0,grp_fu_512_p_din1,grp_fu_512_p_opcode,grp_fu_512_p_dout0,grp_fu_512_p_ce,grp_fu_516_p_din0,grp_fu_516_p_din1,grp_fu_516_p_opcode,grp_fu_516_p_dout0,grp_fu_516_p_ce,grp_fu_520_p_din0,grp_fu_520_p_din1,grp_fu_520_p_opcode,grp_fu_520_p_dout0,grp_fu_520_p_ce,grp_fu_524_p_din0,grp_fu_524_p_din1,grp_fu_524_p_opcode,grp_fu_524_p_dout0,grp_fu_524_p_ce,grp_fu_528_p_din0,grp_fu_528_p_din1,grp_fu_528_p_opcode,grp_fu_528_p_dout0,grp_fu_528_p_ce,grp_fu_532_p_din0,grp_fu_532_p_din1,grp_fu_532_p_opcode,grp_fu_532_p_dout0,grp_fu_532_p_ce,grp_fu_536_p_din0,grp_fu_536_p_din1,grp_fu_536_p_opcode,grp_fu_536_p_dout0,grp_fu_536_p_ce,grp_fu_540_p_din0,grp_fu_540_p_din1,grp_fu_540_p_dout0,grp_fu_540_p_ce,grp_fu_544_p_din0,grp_fu_544_p_din1,grp_fu_544_p_dout0,grp_fu_544_p_ce,grp_fu_548_p_din0,grp_fu_548_p_din1,grp_fu_548_p_dout0,grp_fu_548_p_ce,grp_twiddles8_fu_552_p_din1,grp_twiddles8_fu_552_p_din2,grp_twiddles8_fu_552_p_din3,grp_twiddles8_fu_552_p_din4,grp_twiddles8_fu_552_p_din5,grp_twiddles8_fu_552_p_din6,grp_twiddles8_fu_552_p_din7,grp_twiddles8_fu_552_p_din8,grp_twiddles8_fu_552_p_din9,grp_twiddles8_fu_552_p_din10,grp_twiddles8_fu_552_p_din11,grp_twiddles8_fu_552_p_din12,grp_twiddles8_fu_552_p_din13,grp_twiddles8_fu_552_p_din14,grp_twiddles8_fu_552_p_din15,grp_twiddles8_fu_552_p_din16,grp_twiddles8_fu_552_p_dout0_0,grp_twiddles8_fu_552_p_dout0_1,grp_twiddles8_fu_552_p_dout0_2,grp_twiddles8_fu_552_p_dout0_3,grp_twiddles8_fu_552_p_dout0_4,grp_twiddles8_fu_552_p_dout0_5,grp_twiddles8_fu_552_p_dout0_6,grp_twiddles8_fu_552_p_dout0_7,grp_twiddles8_fu_552_p_dout0_8,grp_twiddles8_fu_552_p_dout0_9,grp_twiddles8_fu_552_p_dout0_10,grp_twiddles8_fu_552_p_dout0_11,grp_twiddles8_fu_552_p_dout0_12,grp_twiddles8_fu_552_p_dout0_13,grp_twiddles8_fu_552_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [5:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [8:0] work_x_address0;
output   work_x_ce0;
input  [63:0] work_x_q0;
output  [8:0] work_x_address1;
output   work_x_ce1;
input  [63:0] work_x_q1;
output  [8:0] work_y_address0;
output   work_y_ce0;
input  [63:0] work_y_q0;
output  [8:0] work_y_address1;
output   work_y_ce1;
input  [63:0] work_y_q1;
output  [63:0] grp_fu_480_p_din0;
output  [63:0] grp_fu_480_p_din1;
output  [0:0] grp_fu_480_p_opcode;
input  [63:0] grp_fu_480_p_dout0;
output   grp_fu_480_p_ce;
output  [63:0] grp_fu_484_p_din0;
output  [63:0] grp_fu_484_p_din1;
output  [0:0] grp_fu_484_p_opcode;
input  [63:0] grp_fu_484_p_dout0;
output   grp_fu_484_p_ce;
output  [63:0] grp_fu_488_p_din0;
output  [63:0] grp_fu_488_p_din1;
output  [1:0] grp_fu_488_p_opcode;
input  [63:0] grp_fu_488_p_dout0;
output   grp_fu_488_p_ce;
output  [63:0] grp_fu_492_p_din0;
output  [63:0] grp_fu_492_p_din1;
output  [0:0] grp_fu_492_p_opcode;
input  [63:0] grp_fu_492_p_dout0;
output   grp_fu_492_p_ce;
output  [63:0] grp_fu_496_p_din0;
output  [63:0] grp_fu_496_p_din1;
output  [1:0] grp_fu_496_p_opcode;
input  [63:0] grp_fu_496_p_dout0;
output   grp_fu_496_p_ce;
output  [63:0] grp_fu_500_p_din0;
output  [63:0] grp_fu_500_p_din1;
output  [0:0] grp_fu_500_p_opcode;
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
output  [0:0] grp_fu_536_p_opcode;
input  [63:0] grp_fu_536_p_dout0;
output   grp_fu_536_p_ce;
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
output  [63:0] grp_twiddles8_fu_552_p_din1;
output  [63:0] grp_twiddles8_fu_552_p_din2;
output  [63:0] grp_twiddles8_fu_552_p_din3;
output  [63:0] grp_twiddles8_fu_552_p_din4;
output  [63:0] grp_twiddles8_fu_552_p_din5;
output  [63:0] grp_twiddles8_fu_552_p_din6;
output  [63:0] grp_twiddles8_fu_552_p_din7;
output  [63:0] grp_twiddles8_fu_552_p_din8;
output  [63:0] grp_twiddles8_fu_552_p_din9;
output  [63:0] grp_twiddles8_fu_552_p_din10;
output  [63:0] grp_twiddles8_fu_552_p_din11;
output  [63:0] grp_twiddles8_fu_552_p_din12;
output  [63:0] grp_twiddles8_fu_552_p_din13;
output  [63:0] grp_twiddles8_fu_552_p_din14;
output  [5:0] grp_twiddles8_fu_552_p_din15;
output  [9:0] grp_twiddles8_fu_552_p_din16;
input  [63:0] grp_twiddles8_fu_552_p_dout0_0;
input  [63:0] grp_twiddles8_fu_552_p_dout0_1;
input  [63:0] grp_twiddles8_fu_552_p_dout0_2;
input  [63:0] grp_twiddles8_fu_552_p_dout0_3;
input  [63:0] grp_twiddles8_fu_552_p_dout0_4;
input  [63:0] grp_twiddles8_fu_552_p_dout0_5;
input  [63:0] grp_twiddles8_fu_552_p_dout0_6;
input  [63:0] grp_twiddles8_fu_552_p_dout0_7;
input  [63:0] grp_twiddles8_fu_552_p_dout0_8;
input  [63:0] grp_twiddles8_fu_552_p_dout0_9;
input  [63:0] grp_twiddles8_fu_552_p_dout0_10;
input  [63:0] grp_twiddles8_fu_552_p_dout0_11;
input  [63:0] grp_twiddles8_fu_552_p_dout0_12;
input  [63:0] grp_twiddles8_fu_552_p_dout0_13;
output   grp_twiddles8_fu_552_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_132_reg_2170;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_913;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_917;
reg   [63:0] reg_921;
reg   [63:0] reg_925;
reg   [63:0] reg_929;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_933;
reg   [63:0] reg_937;
reg   [63:0] reg_941;
reg   [63:0] reg_945;
reg   [63:0] reg_949;
reg   [63:0] reg_953;
reg   [63:0] reg_958;
reg   [63:0] reg_963;
reg   [63:0] reg_968;
reg   [63:0] reg_973;
reg   [63:0] reg_978;
reg   [63:0] reg_983;
reg   [63:0] reg_988;
reg   [63:0] reg_993;
reg   [63:0] reg_998;
reg   [63:0] reg_1003;
reg   [63:0] reg_1008;
reg   [63:0] reg_1013;
reg   [63:0] reg_1018;
reg   [6:0] tid_7_reg_2158;
reg   [0:0] tmp_132_reg_2170_pp0_iter1_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter2_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter3_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter4_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter5_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter6_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter7_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter8_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter9_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter10_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter11_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter12_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter13_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter14_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter15_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter16_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter17_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter18_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter19_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter20_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter21_reg;
reg   [0:0] tmp_132_reg_2170_pp0_iter22_reg;
wire   [5:0] trunc_ln127_fu_1039_p1;
reg   [5:0] trunc_ln127_reg_2174;
reg   [5:0] trunc_ln127_reg_2174_pp0_iter1_reg;
reg   [5:0] trunc_ln127_reg_2174_pp0_iter2_reg;
reg   [5:0] trunc_ln127_reg_2174_pp0_iter3_reg;
reg   [5:0] trunc_ln127_reg_2174_pp0_iter4_reg;
reg   [5:0] trunc_ln127_reg_2174_pp0_iter5_reg;
reg   [5:0] trunc_ln127_reg_2174_pp0_iter6_reg;
reg   [5:0] trunc_ln127_reg_2174_pp0_iter7_reg;
reg   [5:0] trunc_ln127_reg_2174_pp0_iter8_reg;
wire  signed [6:0] zext_ln130_cast_fu_1043_p3;
reg  signed [6:0] zext_ln130_cast_reg_2179;
wire   [8:0] zext_ln127_1_fu_1067_p1;
reg   [8:0] zext_ln127_1_reg_2204;
wire   [7:0] zext_ln127_2_fu_1091_p1;
reg   [7:0] zext_ln127_2_reg_2230;
wire   [63:0] c0_x_35_fu_1117_p1;
wire   [63:0] c0_x_37_fu_1123_p1;
wire   [63:0] bitcast_ln134_fu_1129_p1;
wire   [63:0] bitcast_ln136_fu_1135_p1;
wire   [63:0] c0_y_35_fu_1141_p1;
wire   [63:0] c0_y_37_fu_1147_p1;
wire   [63:0] bitcast_ln143_fu_1153_p1;
wire   [63:0] bitcast_ln145_fu_1159_p1;
wire   [63:0] c0_x_39_fu_1214_p1;
wire   [5:0] tmp_42_fu_1220_p4;
reg   [5:0] tmp_42_reg_2349;
wire   [63:0] c0_x_41_fu_1245_p1;
wire   [63:0] bitcast_ln134_1_fu_1251_p1;
wire   [63:0] bitcast_ln136_1_fu_1267_p1;
wire   [63:0] c0_y_39_fu_1273_p1;
wire   [63:0] c0_y_41_fu_1279_p1;
wire   [63:0] bitcast_ln143_1_fu_1285_p1;
wire   [63:0] bitcast_ln145_1_fu_1291_p1;
wire   [63:0] zext_ln127_fu_1297_p1;
reg   [63:0] zext_ln127_reg_2416;
reg   [63:0] zext_ln127_reg_2416_pp0_iter1_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter2_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter3_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter4_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter5_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter6_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter7_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter8_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter9_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter10_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter11_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter12_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter13_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter14_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter15_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter16_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter17_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter18_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter19_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter20_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter21_reg;
reg   [63:0] zext_ln127_reg_2416_pp0_iter22_reg;
wire   [63:0] c0_x_36_fu_1302_p1;
wire   [63:0] bitcast_ln135_fu_1321_p1;
wire   [63:0] c0_y_36_fu_1327_p1;
wire   [63:0] bitcast_ln144_fu_1333_p1;
wire   [5:0] or_ln3_fu_1348_p3;
reg   [5:0] or_ln3_reg_2480;
reg   [5:0] or_ln3_reg_2480_pp0_iter1_reg;
reg   [5:0] or_ln3_reg_2480_pp0_iter2_reg;
reg   [5:0] or_ln3_reg_2480_pp0_iter3_reg;
reg   [5:0] or_ln3_reg_2480_pp0_iter4_reg;
reg   [5:0] or_ln3_reg_2480_pp0_iter5_reg;
reg   [5:0] or_ln3_reg_2480_pp0_iter6_reg;
reg   [5:0] or_ln3_reg_2480_pp0_iter7_reg;
wire   [63:0] zext_ln129_fu_1356_p1;
reg   [63:0] zext_ln129_reg_2485;
reg   [63:0] zext_ln129_reg_2485_pp0_iter1_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter2_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter3_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter4_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter5_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter6_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter7_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter8_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter9_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter10_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter11_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter12_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter13_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter14_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter15_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter16_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter17_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter18_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter19_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter20_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter21_reg;
reg   [63:0] zext_ln129_reg_2485_pp0_iter22_reg;
wire   [63:0] c0_x_40_fu_1362_p1;
wire   [63:0] bitcast_ln135_1_fu_1387_p1;
wire   [63:0] c0_y_40_fu_1393_p1;
wire   [63:0] bitcast_ln144_1_fu_1399_p1;
wire   [63:0] c0_x_fu_1415_p1;
wire   [63:0] bitcast_ln133_fu_1421_p1;
wire   [63:0] c0_y_fu_1427_p1;
wire   [63:0] bitcast_ln142_fu_1433_p1;
wire   [63:0] c0_x_38_fu_1439_p1;
wire   [63:0] bitcast_ln133_1_fu_1445_p1;
wire   [63:0] c0_y_38_fu_1451_p1;
wire   [63:0] bitcast_ln142_1_fu_1457_p1;
reg   [63:0] c0_x_5_reg_2597;
reg   [63:0] c0_y_5_reg_2603;
reg   [63:0] tmp_1_reg_2609;
reg   [63:0] sub3_reg_2615;
reg   [63:0] add6_reg_2621;
reg   [63:0] add7_reg_2627;
wire   [63:0] bitcast_ln148_1_fu_1492_p1;
wire   [63:0] bitcast_ln148_3_fu_1526_p1;
wire   [63:0] bitcast_ln148_9_fu_1561_p1;
wire   [63:0] bitcast_ln148_11_fu_1597_p1;
reg   [63:0] c0_x_15_reg_2655;
reg   [63:0] c0_y_15_reg_2661;
reg   [63:0] tmp_1_3_reg_2667;
reg   [63:0] sub104_1_reg_2673;
reg   [63:0] add127_1_reg_2679;
reg   [63:0] add130_1_reg_2685;
reg   [63:0] add4_reg_2691;
reg   [63:0] add5_reg_2697;
reg   [63:0] tmp_1_1_reg_2703;
reg   [63:0] tmp_1_1_reg_2703_pp0_iter2_reg;
reg   [63:0] sub5_reg_2709;
reg   [63:0] sub5_reg_2709_pp0_iter2_reg;
wire   [63:0] bitcast_ln148_21_fu_1632_p1;
wire   [63:0] bitcast_ln148_23_fu_1666_p1;
wire   [63:0] bitcast_ln148_29_fu_1701_p1;
wire   [63:0] bitcast_ln148_31_fu_1737_p1;
reg   [63:0] add111_1_reg_2737;
reg   [63:0] add114_1_reg_2743;
reg   [63:0] tmp_1_4_reg_2749;
reg   [63:0] sub120_1_reg_2755;
reg   [63:0] c0_x_4_reg_2761;
reg   [63:0] c0_y_4_reg_2767;
reg   [63:0] c0_x_8_reg_2773;
reg   [63:0] c0_x_8_reg_2773_pp0_iter2_reg;
reg   [63:0] c0_y_8_reg_2779;
reg   [63:0] c0_y_8_reg_2779_pp0_iter2_reg;
reg   [63:0] c0_x_21_reg_2785;
reg   [63:0] c0_y_21_reg_2791;
reg   [63:0] c0_x_13_reg_2797;
reg   [63:0] c0_x_13_reg_2797_pp0_iter3_reg;
reg   [63:0] c0_y_13_reg_2803;
reg   [63:0] c0_y_13_reg_2803_pp0_iter3_reg;
reg   [63:0] sub8_reg_2809;
reg   [63:0] add8_reg_2814;
reg   [63:0] sub1_reg_2819;
reg   [63:0] add1_reg_2824;
reg   [63:0] tmp_reg_2829;
reg   [63:0] tmp_reg_2829_pp0_iter3_reg;
reg   [63:0] sub2_reg_2835;
reg   [63:0] sub2_reg_2835_pp0_iter3_reg;
reg   [63:0] add2_reg_2841;
reg   [63:0] add3_reg_2847;
reg   [63:0] mul6_reg_2853;
reg   [63:0] mul9_reg_2858;
reg   [63:0] sub143_1_reg_2863;
reg   [63:0] add149_1_reg_2868;
reg   [63:0] sub169_1_reg_2873;
reg   [63:0] add175_1_reg_2878;
reg   [63:0] tmp_3_reg_2883;
reg   [63:0] tmp_3_reg_2883_pp0_iter3_reg;
reg   [63:0] sub208_1_reg_2889;
reg   [63:0] sub208_1_reg_2889_pp0_iter3_reg;
reg   [63:0] mul154_1_reg_2895;
reg   [63:0] mul161_1_reg_2900;
reg   [63:0] add199_1_reg_2905;
reg   [63:0] add202_1_reg_2911;
wire   [63:0] bitcast_ln148_5_fu_1772_p1;
wire   [63:0] bitcast_ln148_7_fu_1806_p1;
wire   [63:0] bitcast_ln148_25_fu_1840_p1;
wire   [63:0] bitcast_ln148_27_fu_1874_p1;
reg   [63:0] c0_x_6_reg_2937;
reg   [63:0] c0_y_6_reg_2943;
reg   [63:0] c0_x_7_reg_2949;
reg   [63:0] c0_x_7_reg_2949_pp0_iter3_reg;
reg   [63:0] c0_y_7_reg_2955;
reg   [63:0] c0_y_7_reg_2955_pp0_iter3_reg;
reg   [63:0] c0_x_18_reg_2961;
reg   [63:0] c0_y_18_reg_2967;
reg   [63:0] c0_x_19_reg_2973;
reg   [63:0] c0_x_19_reg_2973_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_2979;
reg   [63:0] c0_y_19_reg_2979_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_2979_pp0_iter5_reg;
reg   [63:0] c0_x_9_reg_2985;
reg   [63:0] c0_y_9_reg_2991;
reg   [63:0] mul3_reg_2997;
reg   [63:0] mul5_reg_3003;
reg   [63:0] mul_reg_3009;
reg   [63:0] mul1_reg_3014;
reg   [63:0] c0_x_20_reg_3019;
reg   [63:0] c0_y_20_reg_3025;
reg   [63:0] mul170_1_reg_3031;
wire   [63:0] bitcast_ln148_13_fu_1908_p1;
wire   [63:0] bitcast_ln148_15_fu_1942_p1;
reg   [63:0] mul176_1_reg_3047;
reg   [63:0] sub9_reg_3053;
reg   [63:0] add9_reg_3059;
reg   [63:0] sub157_1_reg_3065;
reg   [63:0] add162_1_reg_3071;
reg   [63:0] mul212_1_reg_3077;
wire   [63:0] bitcast_ln148_33_fu_1976_p1;
reg   [63:0] mul219_1_reg_3087;
reg   [63:0] data_x_1_reg_3092;
reg   [63:0] data_x_1_reg_3092_pp0_iter4_reg;
reg   [63:0] data_x_1_reg_3092_pp0_iter5_reg;
reg   [63:0] data_x_1_reg_3092_pp0_iter6_reg;
reg   [63:0] data_x_1_reg_3092_pp0_iter7_reg;
reg   [63:0] data_y_1_reg_3097;
reg   [63:0] data_y_1_reg_3097_pp0_iter4_reg;
reg   [63:0] data_y_1_reg_3097_pp0_iter5_reg;
reg   [63:0] data_y_1_reg_3097_pp0_iter6_reg;
reg   [63:0] data_y_1_reg_3097_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_35_fu_2010_p1;
reg   [63:0] data_x_1_2_reg_3107;
reg   [63:0] data_x_1_2_reg_3107_pp0_iter5_reg;
reg   [63:0] data_x_1_2_reg_3107_pp0_iter6_reg;
reg   [63:0] data_x_1_2_reg_3107_pp0_iter7_reg;
reg   [63:0] data_x_1_2_reg_3107_pp0_iter8_reg;
reg   [63:0] data_y_1_2_reg_3112;
reg   [63:0] data_y_1_2_reg_3112_pp0_iter5_reg;
reg   [63:0] data_y_1_2_reg_3112_pp0_iter6_reg;
reg   [63:0] data_y_1_2_reg_3112_pp0_iter7_reg;
reg   [63:0] data_y_1_2_reg_3112_pp0_iter8_reg;
reg   [63:0] data_x_0_reg_3117;
reg   [63:0] data_y_0_reg_3122;
reg   [63:0] add_reg_3127;
reg   [63:0] tmp_2_reg_3133;
reg   [63:0] tmp_2_reg_3133_pp0_iter5_reg;
reg   [63:0] data_x_0_1_reg_3139;
reg   [63:0] data_y_0_1_reg_3144;
reg   [63:0] sub10_reg_3149;
reg   [63:0] sub4_reg_3155;
reg   [63:0] sub6_reg_3161;
reg   [63:0] add10_reg_3167;
reg   [63:0] add278_1_reg_3173;
reg   [63:0] tmp_4_reg_3179;
reg   [63:0] tmp_4_reg_3179_pp0_iter5_reg;
reg   [63:0] sub287_1_reg_3185;
reg   [63:0] sub287_1_reg_3185_pp0_iter5_reg;
reg   [63:0] c0_x_11_reg_3191;
reg   [63:0] c0_y_11_reg_3197;
reg   [63:0] c0_x_10_reg_3203;
reg   [63:0] c0_x_10_reg_3203_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3209;
reg   [63:0] c0_y_10_reg_3209_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3209_pp0_iter6_reg;
reg   [63:0] sub215_1_reg_3215;
reg   [63:0] sub220_1_reg_3221;
reg   [63:0] c0_x_23_reg_3227;
reg   [63:0] c0_y_23_reg_3233;
reg   [63:0] c0_x_22_reg_3239;
reg   [63:0] c0_x_22_reg_3239_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_3239_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_3245;
reg   [63:0] c0_y_22_reg_3245_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_3245_pp0_iter6_reg;
reg   [63:0] add281_1_reg_3251;
reg   [63:0] mul2_reg_3257;
wire   [63:0] bitcast_ln148_17_fu_2044_p1;
reg   [63:0] data_x_2_reg_3267;
reg   [63:0] data_x_2_reg_3267_pp0_iter6_reg;
reg   [63:0] data_x_2_reg_3267_pp0_iter7_reg;
reg   [63:0] data_y_2_reg_3272;
reg   [63:0] data_y_2_reg_3272_pp0_iter6_reg;
reg   [63:0] data_y_2_reg_3272_pp0_iter7_reg;
reg   [63:0] data_x_3_reg_3277;
reg   [63:0] data_x_3_reg_3277_pp0_iter6_reg;
reg   [63:0] data_x_3_reg_3277_pp0_iter7_reg;
reg   [63:0] data_y_3_reg_3282;
reg   [63:0] data_y_3_reg_3282_pp0_iter6_reg;
reg   [63:0] data_y_3_reg_3282_pp0_iter7_reg;
reg   [63:0] mul4_reg_3287;
reg   [63:0] data_x_4_reg_3292;
reg   [63:0] data_x_4_reg_3292_pp0_iter6_reg;
reg   [63:0] data_x_4_reg_3292_pp0_iter7_reg;
reg   [63:0] data_y_4_reg_3297;
reg   [63:0] data_y_4_reg_3297_pp0_iter6_reg;
reg   [63:0] data_y_4_reg_3297_pp0_iter7_reg;
reg   [63:0] data_x_5_reg_3302;
reg   [63:0] data_x_5_reg_3302_pp0_iter6_reg;
reg   [63:0] data_x_5_reg_3302_pp0_iter7_reg;
reg   [63:0] mul291_1_reg_3307;
wire   [63:0] bitcast_ln148_19_fu_2078_p1;
reg   [63:0] data_y_5_reg_3317;
reg   [63:0] data_y_5_reg_3317_pp0_iter6_reg;
reg   [63:0] data_y_5_reg_3317_pp0_iter7_reg;
reg   [63:0] data_x_2_2_reg_3322;
reg   [63:0] data_x_2_2_reg_3322_pp0_iter6_reg;
reg   [63:0] data_x_2_2_reg_3322_pp0_iter7_reg;
reg   [63:0] data_y_2_2_reg_3327;
reg   [63:0] data_y_2_2_reg_3327_pp0_iter6_reg;
reg   [63:0] data_y_2_2_reg_3327_pp0_iter7_reg;
reg   [63:0] data_x_3_2_reg_3332;
reg   [63:0] data_x_3_2_reg_3332_pp0_iter6_reg;
reg   [63:0] data_x_3_2_reg_3332_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_37_fu_2112_p1;
reg   [63:0] mul298_1_reg_3342;
reg   [63:0] sub11_reg_3347;
reg   [63:0] data_y_3_2_reg_3353;
reg   [63:0] data_y_3_2_reg_3353_pp0_iter7_reg;
reg   [63:0] data_y_3_2_reg_3353_pp0_iter8_reg;
wire   [63:0] bitcast_ln148_39_fu_2146_p1;
reg   [63:0] data_x_4_2_reg_3363;
reg   [63:0] data_x_4_2_reg_3363_pp0_iter7_reg;
reg   [63:0] data_x_4_2_reg_3363_pp0_iter8_reg;
reg   [63:0] data_y_4_2_reg_3368;
reg   [63:0] data_y_4_2_reg_3368_pp0_iter7_reg;
reg   [63:0] data_y_4_2_reg_3368_pp0_iter8_reg;
reg   [63:0] data_x_5_2_reg_3373;
reg   [63:0] data_x_5_2_reg_3373_pp0_iter7_reg;
reg   [63:0] data_x_5_2_reg_3373_pp0_iter8_reg;
reg   [63:0] data_y_5_2_reg_3378;
reg   [63:0] data_y_5_2_reg_3378_pp0_iter7_reg;
reg   [63:0] data_y_5_2_reg_3378_pp0_iter8_reg;
reg   [63:0] sub12_reg_3383;
reg   [63:0] sub294_1_reg_3389;
reg   [63:0] sub299_1_reg_3395;
reg   [63:0] data_x_6_reg_3401;
reg   [63:0] data_x_6_reg_3401_pp0_iter8_reg;
reg   [63:0] data_x_7_reg_3406;
reg   [63:0] data_x_7_reg_3406_pp0_iter8_reg;
reg   [63:0] data_y_6_reg_3411;
reg   [63:0] data_y_7_reg_3416;
reg   [63:0] data_x_6_2_reg_3421;
reg   [63:0] data_y_6_2_reg_3426;
reg   [63:0] data_x_7_2_reg_3431;
reg   [63:0] data_y_7_2_reg_3436;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
reg   [63:0] grp_twiddles8_fu_746_a_x_1_read;
reg   [63:0] grp_twiddles8_fu_746_a_x_2_read;
reg   [63:0] grp_twiddles8_fu_746_a_x_3_read;
reg   [63:0] grp_twiddles8_fu_746_a_x_4_read;
reg   [63:0] grp_twiddles8_fu_746_a_x_5_read;
reg   [63:0] grp_twiddles8_fu_746_a_x_6_read;
reg   [63:0] grp_twiddles8_fu_746_a_x_7_read;
reg   [63:0] grp_twiddles8_fu_746_a_y_1_read;
reg   [63:0] grp_twiddles8_fu_746_a_y_2_read;
reg   [63:0] grp_twiddles8_fu_746_a_y_3_read;
reg   [63:0] grp_twiddles8_fu_746_a_y_4_read;
reg   [63:0] grp_twiddles8_fu_746_a_y_5_read;
reg   [63:0] grp_twiddles8_fu_746_a_y_6_read;
reg   [63:0] grp_twiddles8_fu_746_a_y_7_read;
reg   [5:0] grp_twiddles8_fu_746_i;
reg    grp_twiddles8_fu_746_ap_ce;
wire    ap_block_pp0_stage2_11001_ignoreCallOp1565;
wire    ap_block_pp0_stage3_11001_ignoreCallOp1566;
wire    ap_block_pp0_stage4_11001_ignoreCallOp1568;
wire    ap_block_pp0_stage5_11001_ignoreCallOp1570;
wire    ap_block_pp0_stage6_11001_ignoreCallOp1572;
wire    ap_block_pp0_stage7_11001_ignoreCallOp1574;
wire    ap_block_pp0_stage1_11001_ignoreCallOp1578;
wire    ap_block_pp0_stage0_11001_ignoreCallOp1576;
wire    ap_block_pp0_stage2_ignoreCallOp1565;
wire    ap_block_pp0_stage3_ignoreCallOp1567;
wire   [63:0] zext_ln130_fu_1051_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln132_fu_1061_p1;
wire   [63:0] zext_ln134_fu_1076_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln136_fu_1085_p1;
wire   [63:0] zext_ln130_1_fu_1100_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln132_1_fu_1111_p1;
wire   [63:0] zext_ln134_1_fu_1170_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln136_1_fu_1185_p1;
wire   [63:0] zext_ln131_fu_1198_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln135_fu_1208_p1;
wire   [63:0] zext_ln131_1_fu_1239_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln135_1_fu_1261_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln133_fu_1315_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln133_2_fu_1381_p1;
reg   [6:0] tid_fu_124;
wire   [6:0] add_ln127_fu_1405_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_7;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_y_we1_local;
reg    DATA_y_ce1_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg   [5:0] DATA_x_1_address0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg   [5:0] DATA_x_2_address0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg   [5:0] DATA_x_3_address0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg   [5:0] DATA_x_4_address0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg   [5:0] DATA_x_5_address0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg   [5:0] DATA_x_6_address0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
reg   [5:0] DATA_x_7_address0_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg   [5:0] DATA_y_1_address0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg   [5:0] DATA_y_2_address0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg   [5:0] DATA_y_3_address0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg   [5:0] DATA_y_4_address0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg   [5:0] DATA_y_5_address0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg   [5:0] DATA_y_6_address0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg   [5:0] DATA_y_7_address0_local;
reg   [63:0] grp_fu_779_p0;
reg   [63:0] grp_fu_779_p1;
reg   [63:0] grp_fu_783_p0;
reg   [63:0] grp_fu_783_p1;
reg   [63:0] grp_fu_787_p0;
reg   [63:0] grp_fu_787_p1;
reg   [63:0] grp_fu_791_p0;
reg   [63:0] grp_fu_791_p1;
reg   [63:0] grp_fu_795_p0;
reg   [63:0] grp_fu_795_p1;
reg   [63:0] grp_fu_799_p0;
reg   [63:0] grp_fu_799_p1;
reg   [63:0] grp_fu_803_p0;
reg   [63:0] grp_fu_803_p1;
reg   [63:0] grp_fu_807_p0;
reg   [63:0] grp_fu_807_p1;
reg   [63:0] grp_fu_811_p0;
reg   [63:0] grp_fu_811_p1;
reg   [63:0] grp_fu_815_p0;
reg   [63:0] grp_fu_815_p1;
reg   [63:0] grp_fu_819_p0;
reg   [63:0] grp_fu_819_p1;
reg   [63:0] grp_fu_823_p0;
reg   [63:0] grp_fu_823_p1;
reg   [63:0] grp_fu_827_p0;
reg   [63:0] grp_fu_827_p1;
reg   [63:0] grp_fu_831_p0;
reg   [63:0] grp_fu_831_p1;
reg   [63:0] grp_fu_835_p0;
reg   [63:0] grp_fu_835_p1;
reg   [63:0] grp_fu_839_p0;
reg   [63:0] grp_fu_839_p1;
reg   [63:0] grp_fu_844_p0;
reg   [63:0] grp_fu_844_p1;
reg   [63:0] grp_fu_851_p0;
reg   [63:0] grp_fu_851_p1;
wire  signed [7:0] sext_ln132_fu_1057_p1;
wire   [8:0] add_ln134_fu_1070_p2;
wire  signed [8:0] sext_ln136_fu_1082_p1;
wire   [7:0] add_ln130_fu_1094_p2;
wire   [8:0] add_ln132_fu_1106_p2;
wire   [8:0] add_ln134_1_fu_1165_p2;
wire   [6:0] add_ln136_fu_1176_p2;
wire  signed [8:0] sext_ln136_1_fu_1181_p1;
wire  signed [7:0] zext_ln131_cast_fu_1191_p3;
wire  signed [8:0] sext_ln135_fu_1204_p1;
wire  signed [7:0] zext_ln131_1_cast_fu_1229_p4;
wire  signed [8:0] sext_ln135_1_fu_1257_p1;
wire   [8:0] zext_ln133_cast_fu_1308_p3;
wire   [4:0] tmp_s_fu_1339_p4;
wire   [6:0] zext_ln133_1_fu_1368_p1;
wire   [8:0] zext_ln133_1_cast_fu_1371_p4;
wire   [63:0] bitcast_ln148_fu_1463_p1;
wire   [0:0] bit_sel2_fu_1466_p3;
wire   [0:0] xor_ln148_19_fu_1474_p2;
wire   [62:0] trunc_ln148_fu_1480_p1;
wire   [63:0] xor_ln1_fu_1484_p3;
wire   [63:0] bitcast_ln148_2_fu_1497_p1;
wire   [0:0] bit_sel3_fu_1500_p3;
wire   [0:0] xor_ln148_fu_1508_p2;
wire   [62:0] trunc_ln148_1_fu_1514_p1;
wire   [63:0] xor_ln148_1_fu_1518_p3;
wire   [63:0] bitcast_ln148_8_fu_1531_p1;
wire   [0:0] bit_sel8_fu_1535_p3;
wire   [0:0] xor_ln148_22_fu_1543_p2;
wire   [62:0] trunc_ln148_4_fu_1549_p1;
wire   [63:0] xor_ln148_4_fu_1553_p3;
wire   [63:0] bitcast_ln148_10_fu_1567_p1;
wire   [0:0] bit_sel9_fu_1571_p3;
wire   [0:0] xor_ln148_23_fu_1579_p2;
wire   [62:0] trunc_ln148_5_fu_1585_p1;
wire   [63:0] xor_ln148_5_fu_1589_p3;
wire   [63:0] bitcast_ln148_20_fu_1603_p1;
wire   [0:0] bit_sel17_fu_1606_p3;
wire   [0:0] xor_ln148_28_fu_1614_p2;
wire   [62:0] trunc_ln148_10_fu_1620_p1;
wire   [63:0] xor_ln148_s_fu_1624_p3;
wire   [63:0] bitcast_ln148_22_fu_1637_p1;
wire   [0:0] bit_sel18_fu_1640_p3;
wire   [0:0] xor_ln148_29_fu_1648_p2;
wire   [62:0] trunc_ln148_11_fu_1654_p1;
wire   [63:0] xor_ln148_10_fu_1658_p3;
wire   [63:0] bitcast_ln148_28_fu_1671_p1;
wire   [0:0] bit_sel13_fu_1675_p3;
wire   [0:0] xor_ln148_32_fu_1683_p2;
wire   [62:0] trunc_ln148_14_fu_1689_p1;
wire   [63:0] xor_ln148_13_fu_1693_p3;
wire   [63:0] bitcast_ln148_30_fu_1707_p1;
wire   [0:0] bit_sel10_fu_1711_p3;
wire   [0:0] xor_ln148_33_fu_1719_p2;
wire   [62:0] trunc_ln148_15_fu_1725_p1;
wire   [63:0] xor_ln148_14_fu_1729_p3;
wire   [63:0] bitcast_ln148_4_fu_1743_p1;
wire   [0:0] bit_sel5_fu_1746_p3;
wire   [0:0] xor_ln148_20_fu_1754_p2;
wire   [62:0] trunc_ln148_2_fu_1760_p1;
wire   [63:0] xor_ln148_2_fu_1764_p3;
wire   [63:0] bitcast_ln148_6_fu_1777_p1;
wire   [0:0] bit_sel6_fu_1780_p3;
wire   [0:0] xor_ln148_21_fu_1788_p2;
wire   [62:0] trunc_ln148_3_fu_1794_p1;
wire   [63:0] xor_ln148_3_fu_1798_p3;
wire   [63:0] bitcast_ln148_24_fu_1811_p1;
wire   [0:0] bit_sel19_fu_1814_p3;
wire   [0:0] xor_ln148_30_fu_1822_p2;
wire   [62:0] trunc_ln148_12_fu_1828_p1;
wire   [63:0] xor_ln148_11_fu_1832_p3;
wire   [63:0] bitcast_ln148_26_fu_1845_p1;
wire   [0:0] bit_sel16_fu_1848_p3;
wire   [0:0] xor_ln148_31_fu_1856_p2;
wire   [62:0] trunc_ln148_13_fu_1862_p1;
wire   [63:0] xor_ln148_12_fu_1866_p3;
wire   [63:0] bitcast_ln148_12_fu_1879_p1;
wire   [0:0] bit_sel11_fu_1882_p3;
wire   [0:0] xor_ln148_24_fu_1890_p2;
wire   [62:0] trunc_ln148_6_fu_1896_p1;
wire   [63:0] xor_ln148_6_fu_1900_p3;
wire   [63:0] bitcast_ln148_14_fu_1913_p1;
wire   [0:0] bit_sel12_fu_1916_p3;
wire   [0:0] xor_ln148_25_fu_1924_p2;
wire   [62:0] trunc_ln148_7_fu_1930_p1;
wire   [63:0] xor_ln148_7_fu_1934_p3;
wire   [63:0] bitcast_ln148_32_fu_1947_p1;
wire   [0:0] bit_sel7_fu_1950_p3;
wire   [0:0] xor_ln148_34_fu_1958_p2;
wire   [62:0] trunc_ln148_16_fu_1964_p1;
wire   [63:0] xor_ln148_15_fu_1968_p3;
wire   [63:0] bitcast_ln148_34_fu_1981_p1;
wire   [0:0] bit_sel4_fu_1984_p3;
wire   [0:0] xor_ln148_35_fu_1992_p2;
wire   [62:0] trunc_ln148_17_fu_1998_p1;
wire   [63:0] xor_ln148_16_fu_2002_p3;
wire   [63:0] bitcast_ln148_16_fu_2015_p1;
wire   [0:0] bit_sel14_fu_2018_p3;
wire   [0:0] xor_ln148_26_fu_2026_p2;
wire   [62:0] trunc_ln148_8_fu_2032_p1;
wire   [63:0] xor_ln148_8_fu_2036_p3;
wire   [63:0] bitcast_ln148_18_fu_2049_p1;
wire   [0:0] bit_sel15_fu_2052_p3;
wire   [0:0] xor_ln148_27_fu_2060_p2;
wire   [62:0] trunc_ln148_9_fu_2066_p1;
wire   [63:0] xor_ln148_9_fu_2070_p3;
wire   [63:0] bitcast_ln148_36_fu_2083_p1;
wire   [0:0] bit_sel1_fu_2086_p3;
wire   [0:0] xor_ln148_36_fu_2094_p2;
wire   [62:0] trunc_ln148_18_fu_2100_p1;
wire   [63:0] xor_ln148_17_fu_2104_p3;
wire   [63:0] bitcast_ln148_38_fu_2117_p1;
wire   [0:0] bit_sel_fu_2120_p3;
wire   [0:0] xor_ln148_37_fu_2128_p2;
wire   [62:0] trunc_ln148_19_fu_2134_p1;
wire   [63:0] xor_ln148_18_fu_2138_p3;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage2_00001;
reg   [1:0] grp_fu_787_opcode;
reg   [1:0] grp_fu_795_opcode;
reg   [1:0] grp_fu_803_opcode;
reg   [1:0] grp_fu_807_opcode;
reg   [1:0] grp_fu_811_opcode;
reg   [1:0] grp_fu_815_opcode;
reg   [1:0] grp_fu_819_opcode;
reg   [1:0] grp_fu_823_opcode;
reg   [1:0] grp_fu_827_opcode;
reg   [1:0] grp_fu_831_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter22_stage5;
reg    ap_idle_pp0_0to21;
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
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to23;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_124 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
            ap_enable_reg_pp0_iter23 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tid_fu_124 <= 7'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        tid_fu_124 <= add_ln127_fu_1405_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add10_reg_3167 <= grp_fu_496_p_dout0;
        add278_1_reg_3173 <= grp_fu_500_p_dout0;
        sub4_reg_3155 <= grp_fu_488_p_dout0;
        sub6_reg_3161 <= grp_fu_492_p_dout0;
        tmp_4_reg_3179 <= grp_fu_504_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add111_1_reg_2737 <= grp_fu_480_p_dout0;
        add114_1_reg_2743 <= grp_fu_484_p_dout0;
        sub120_1_reg_2755 <= grp_fu_492_p_dout0;
        tmp_1_4_reg_2749 <= grp_fu_488_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add127_1_reg_2679 <= grp_fu_496_p_dout0;
        add130_1_reg_2685 <= grp_fu_500_p_dout0;
        c0_x_15_reg_2655 <= grp_fu_480_p_dout0;
        c0_y_15_reg_2661 <= grp_fu_484_p_dout0;
        sub104_1_reg_2673 <= grp_fu_492_p_dout0;
        tmp_1_3_reg_2667 <= grp_fu_488_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add149_1_reg_2868 <= grp_fu_516_p_dout0;
        add175_1_reg_2878 <= grp_fu_524_p_dout0;
        mul6_reg_2853 <= grp_fu_540_p_dout0;
        mul9_reg_2858 <= grp_fu_544_p_dout0;
        sub143_1_reg_2863 <= grp_fu_512_p_dout0;
        sub169_1_reg_2873 <= grp_fu_520_p_dout0;
        sub208_1_reg_2889 <= grp_fu_532_p_dout0;
        tmp_3_reg_2883 <= grp_fu_528_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add162_1_reg_3071 <= grp_fu_516_p_dout0;
        add9_reg_3059 <= grp_fu_508_p_dout0;
        mul212_1_reg_3077 <= grp_fu_548_p_dout0;
        sub157_1_reg_3065 <= grp_fu_512_p_dout0;
        sub9_reg_3053 <= grp_fu_504_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add199_1_reg_2905 <= grp_fu_496_p_dout0;
        add202_1_reg_2911 <= grp_fu_500_p_dout0;
        mul154_1_reg_2895 <= grp_fu_540_p_dout0;
        mul161_1_reg_2900 <= grp_fu_544_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add1_reg_2824 <= grp_fu_524_p_dout0;
        add8_reg_2814 <= grp_fu_516_p_dout0;
        sub1_reg_2819 <= grp_fu_520_p_dout0;
        sub2_reg_2835 <= grp_fu_532_p_dout0;
        sub8_reg_2809 <= grp_fu_512_p_dout0;
        tmp_reg_2829 <= grp_fu_528_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add281_1_reg_3251 <= grp_fu_516_p_dout0;
        c0_x_22_reg_3239 <= grp_fu_508_p_dout0;
        c0_x_23_reg_3227 <= grp_fu_500_p_dout0;
        c0_y_22_reg_3245 <= grp_fu_512_p_dout0;
        c0_y_23_reg_3233 <= grp_fu_504_p_dout0;
        sub220_1_reg_3221 <= grp_fu_496_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add2_reg_2841 <= grp_fu_480_p_dout0;
        add3_reg_2847 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add4_reg_2691 <= grp_fu_480_p_dout0;
        add5_reg_2697 <= grp_fu_484_p_dout0;
        sub5_reg_2709 <= grp_fu_492_p_dout0;
        tmp_1_1_reg_2703 <= grp_fu_488_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add6_reg_2621 <= grp_fu_496_p_dout0;
        add7_reg_2627 <= grp_fu_500_p_dout0;
        c0_x_5_reg_2597 <= grp_fu_480_p_dout0;
        c0_y_5_reg_2603 <= grp_fu_484_p_dout0;
        sub3_reg_2615 <= grp_fu_492_p_dout0;
        tmp_1_reg_2609 <= grp_fu_488_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_reg_3127 <= grp_fu_488_p_dout0;
        data_x_0_1_reg_3139 <= grp_fu_496_p_dout0;
        data_x_0_reg_3117 <= grp_fu_480_p_dout0;
        data_y_0_1_reg_3144 <= grp_fu_500_p_dout0;
        data_y_0_reg_3122 <= grp_fu_484_p_dout0;
        tmp_2_reg_3133 <= grp_fu_492_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3203 <= grp_fu_528_p_dout0;
        c0_x_11_reg_3191 <= grp_fu_520_p_dout0;
        c0_y_10_reg_3209 <= grp_fu_532_p_dout0;
        c0_y_11_reg_3197 <= grp_fu_524_p_dout0;
        sub215_1_reg_3215 <= grp_fu_536_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3203_pp0_iter5_reg <= c0_x_10_reg_3203;
        c0_y_10_reg_3209_pp0_iter5_reg <= c0_y_10_reg_3209;
        c0_y_10_reg_3209_pp0_iter6_reg <= c0_y_10_reg_3209_pp0_iter5_reg;
        sub5_reg_2709_pp0_iter2_reg <= sub5_reg_2709;
        tmp_1_1_reg_2703_pp0_iter2_reg <= tmp_1_1_reg_2703;
        tmp_42_reg_2349 <= {{tid_7_reg_2158[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_2797 <= grp_fu_488_p_dout0;
        c0_x_21_reg_2785 <= grp_fu_480_p_dout0;
        c0_y_13_reg_2803 <= grp_fu_492_p_dout0;
        c0_y_21_reg_2791 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_2797_pp0_iter3_reg <= c0_x_13_reg_2797;
        c0_x_19_reg_2973_pp0_iter4_reg <= c0_x_19_reg_2973;
        c0_y_13_reg_2803_pp0_iter3_reg <= c0_y_13_reg_2803;
        c0_y_19_reg_2979_pp0_iter4_reg <= c0_y_19_reg_2979;
        c0_y_19_reg_2979_pp0_iter5_reg <= c0_y_19_reg_2979_pp0_iter4_reg;
        data_x_1_2_reg_3107_pp0_iter5_reg <= data_x_1_2_reg_3107;
        data_x_1_2_reg_3107_pp0_iter6_reg <= data_x_1_2_reg_3107_pp0_iter5_reg;
        data_x_1_2_reg_3107_pp0_iter7_reg <= data_x_1_2_reg_3107_pp0_iter6_reg;
        data_x_1_2_reg_3107_pp0_iter8_reg <= data_x_1_2_reg_3107_pp0_iter7_reg;
        data_x_4_2_reg_3363_pp0_iter7_reg <= data_x_4_2_reg_3363;
        data_x_4_2_reg_3363_pp0_iter8_reg <= data_x_4_2_reg_3363_pp0_iter7_reg;
        data_x_5_2_reg_3373_pp0_iter7_reg <= data_x_5_2_reg_3373;
        data_x_5_2_reg_3373_pp0_iter8_reg <= data_x_5_2_reg_3373_pp0_iter7_reg;
        data_y_1_2_reg_3112_pp0_iter5_reg <= data_y_1_2_reg_3112;
        data_y_1_2_reg_3112_pp0_iter6_reg <= data_y_1_2_reg_3112_pp0_iter5_reg;
        data_y_1_2_reg_3112_pp0_iter7_reg <= data_y_1_2_reg_3112_pp0_iter6_reg;
        data_y_1_2_reg_3112_pp0_iter8_reg <= data_y_1_2_reg_3112_pp0_iter7_reg;
        data_y_3_2_reg_3353_pp0_iter7_reg <= data_y_3_2_reg_3353;
        data_y_3_2_reg_3353_pp0_iter8_reg <= data_y_3_2_reg_3353_pp0_iter7_reg;
        data_y_4_2_reg_3368_pp0_iter7_reg <= data_y_4_2_reg_3368;
        data_y_4_2_reg_3368_pp0_iter8_reg <= data_y_4_2_reg_3368_pp0_iter7_reg;
        tid_7_reg_2158 <= ap_sig_allocacmp_tid_7;
        tmp_132_reg_2170 <= ap_sig_allocacmp_tid_7[32'd6];
        tmp_132_reg_2170_pp0_iter10_reg <= tmp_132_reg_2170_pp0_iter9_reg;
        tmp_132_reg_2170_pp0_iter11_reg <= tmp_132_reg_2170_pp0_iter10_reg;
        tmp_132_reg_2170_pp0_iter12_reg <= tmp_132_reg_2170_pp0_iter11_reg;
        tmp_132_reg_2170_pp0_iter13_reg <= tmp_132_reg_2170_pp0_iter12_reg;
        tmp_132_reg_2170_pp0_iter14_reg <= tmp_132_reg_2170_pp0_iter13_reg;
        tmp_132_reg_2170_pp0_iter15_reg <= tmp_132_reg_2170_pp0_iter14_reg;
        tmp_132_reg_2170_pp0_iter16_reg <= tmp_132_reg_2170_pp0_iter15_reg;
        tmp_132_reg_2170_pp0_iter17_reg <= tmp_132_reg_2170_pp0_iter16_reg;
        tmp_132_reg_2170_pp0_iter18_reg <= tmp_132_reg_2170_pp0_iter17_reg;
        tmp_132_reg_2170_pp0_iter19_reg <= tmp_132_reg_2170_pp0_iter18_reg;
        tmp_132_reg_2170_pp0_iter1_reg <= tmp_132_reg_2170;
        tmp_132_reg_2170_pp0_iter20_reg <= tmp_132_reg_2170_pp0_iter19_reg;
        tmp_132_reg_2170_pp0_iter21_reg <= tmp_132_reg_2170_pp0_iter20_reg;
        tmp_132_reg_2170_pp0_iter22_reg <= tmp_132_reg_2170_pp0_iter21_reg;
        tmp_132_reg_2170_pp0_iter2_reg <= tmp_132_reg_2170_pp0_iter1_reg;
        tmp_132_reg_2170_pp0_iter3_reg <= tmp_132_reg_2170_pp0_iter2_reg;
        tmp_132_reg_2170_pp0_iter4_reg <= tmp_132_reg_2170_pp0_iter3_reg;
        tmp_132_reg_2170_pp0_iter5_reg <= tmp_132_reg_2170_pp0_iter4_reg;
        tmp_132_reg_2170_pp0_iter6_reg <= tmp_132_reg_2170_pp0_iter5_reg;
        tmp_132_reg_2170_pp0_iter7_reg <= tmp_132_reg_2170_pp0_iter6_reg;
        tmp_132_reg_2170_pp0_iter8_reg <= tmp_132_reg_2170_pp0_iter7_reg;
        tmp_132_reg_2170_pp0_iter9_reg <= tmp_132_reg_2170_pp0_iter8_reg;
        trunc_ln127_reg_2174 <= trunc_ln127_fu_1039_p1;
        trunc_ln127_reg_2174_pp0_iter1_reg <= trunc_ln127_reg_2174;
        trunc_ln127_reg_2174_pp0_iter2_reg <= trunc_ln127_reg_2174_pp0_iter1_reg;
        trunc_ln127_reg_2174_pp0_iter3_reg <= trunc_ln127_reg_2174_pp0_iter2_reg;
        trunc_ln127_reg_2174_pp0_iter4_reg <= trunc_ln127_reg_2174_pp0_iter3_reg;
        trunc_ln127_reg_2174_pp0_iter5_reg <= trunc_ln127_reg_2174_pp0_iter4_reg;
        trunc_ln127_reg_2174_pp0_iter6_reg <= trunc_ln127_reg_2174_pp0_iter5_reg;
        trunc_ln127_reg_2174_pp0_iter7_reg <= trunc_ln127_reg_2174_pp0_iter6_reg;
        trunc_ln127_reg_2174_pp0_iter8_reg <= trunc_ln127_reg_2174_pp0_iter7_reg;
        zext_ln130_cast_reg_2179[5 : 0] <= zext_ln130_cast_fu_1043_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_18_reg_2961 <= grp_fu_496_p_dout0;
        c0_x_19_reg_2973 <= grp_fu_504_p_dout0;
        c0_y_18_reg_2967 <= grp_fu_500_p_dout0;
        c0_y_19_reg_2979 <= grp_fu_508_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        c0_x_20_reg_3019 <= grp_fu_540_p_dout0;
        c0_y_20_reg_3025 <= grp_fu_544_p_dout0;
        mul170_1_reg_3031 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        c0_x_22_reg_3239_pp0_iter5_reg <= c0_x_22_reg_3239;
        c0_x_22_reg_3239_pp0_iter6_reg <= c0_x_22_reg_3239_pp0_iter5_reg;
        c0_y_22_reg_3245_pp0_iter5_reg <= c0_y_22_reg_3245;
        c0_y_22_reg_3245_pp0_iter6_reg <= c0_y_22_reg_3245_pp0_iter5_reg;
        data_x_4_reg_3292_pp0_iter6_reg <= data_x_4_reg_3292;
        data_x_4_reg_3292_pp0_iter7_reg <= data_x_4_reg_3292_pp0_iter6_reg;
        data_x_5_reg_3302_pp0_iter6_reg <= data_x_5_reg_3302;
        data_x_5_reg_3302_pp0_iter7_reg <= data_x_5_reg_3302_pp0_iter6_reg;
        data_y_4_reg_3297_pp0_iter6_reg <= data_y_4_reg_3297;
        data_y_4_reg_3297_pp0_iter7_reg <= data_y_4_reg_3297_pp0_iter6_reg;
        zext_ln127_reg_2416[6 : 0] <= zext_ln127_fu_1297_p1[6 : 0];
        zext_ln127_reg_2416_pp0_iter10_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter9_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter11_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter10_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter12_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter11_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter13_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter12_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter14_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter13_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter15_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter14_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter16_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter15_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter17_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter16_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter18_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter17_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter19_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter18_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter1_reg[6 : 0] <= zext_ln127_reg_2416[6 : 0];
        zext_ln127_reg_2416_pp0_iter20_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter19_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter21_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter20_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter22_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter21_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter2_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter1_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter3_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter2_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter4_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter3_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter5_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter4_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter6_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter5_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter7_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter6_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter8_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter7_reg[6 : 0];
        zext_ln127_reg_2416_pp0_iter9_reg[6 : 0] <= zext_ln127_reg_2416_pp0_iter8_reg[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_4_reg_2761 <= grp_fu_480_p_dout0;
        c0_x_8_reg_2773 <= grp_fu_488_p_dout0;
        c0_y_4_reg_2767 <= grp_fu_484_p_dout0;
        c0_y_8_reg_2779 <= grp_fu_492_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_6_reg_2937 <= grp_fu_496_p_dout0;
        c0_x_7_reg_2949 <= grp_fu_504_p_dout0;
        c0_y_6_reg_2943 <= grp_fu_500_p_dout0;
        c0_y_7_reg_2955 <= grp_fu_508_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_7_reg_2949_pp0_iter3_reg <= c0_x_7_reg_2949;
        c0_x_8_reg_2773_pp0_iter2_reg <= c0_x_8_reg_2773;
        c0_y_7_reg_2955_pp0_iter3_reg <= c0_y_7_reg_2955;
        c0_y_8_reg_2779_pp0_iter2_reg <= c0_y_8_reg_2779;
        data_x_1_reg_3092_pp0_iter4_reg <= data_x_1_reg_3092;
        data_x_1_reg_3092_pp0_iter5_reg <= data_x_1_reg_3092_pp0_iter4_reg;
        data_x_1_reg_3092_pp0_iter6_reg <= data_x_1_reg_3092_pp0_iter5_reg;
        data_x_1_reg_3092_pp0_iter7_reg <= data_x_1_reg_3092_pp0_iter6_reg;
        data_x_2_2_reg_3322_pp0_iter6_reg <= data_x_2_2_reg_3322;
        data_x_2_2_reg_3322_pp0_iter7_reg <= data_x_2_2_reg_3322_pp0_iter6_reg;
        data_x_3_2_reg_3332_pp0_iter6_reg <= data_x_3_2_reg_3332;
        data_x_3_2_reg_3332_pp0_iter7_reg <= data_x_3_2_reg_3332_pp0_iter6_reg;
        data_y_1_reg_3097_pp0_iter4_reg <= data_y_1_reg_3097;
        data_y_1_reg_3097_pp0_iter5_reg <= data_y_1_reg_3097_pp0_iter4_reg;
        data_y_1_reg_3097_pp0_iter6_reg <= data_y_1_reg_3097_pp0_iter5_reg;
        data_y_1_reg_3097_pp0_iter7_reg <= data_y_1_reg_3097_pp0_iter6_reg;
        data_y_2_2_reg_3327_pp0_iter6_reg <= data_y_2_2_reg_3327;
        data_y_2_2_reg_3327_pp0_iter7_reg <= data_y_2_2_reg_3327_pp0_iter6_reg;
        data_y_5_reg_3317_pp0_iter6_reg <= data_y_5_reg_3317;
        data_y_5_reg_3317_pp0_iter7_reg <= data_y_5_reg_3317_pp0_iter6_reg;
        or_ln3_reg_2480[5 : 1] <= or_ln3_fu_1348_p3[5 : 1];
        or_ln3_reg_2480_pp0_iter1_reg[5 : 1] <= or_ln3_reg_2480[5 : 1];
        or_ln3_reg_2480_pp0_iter2_reg[5 : 1] <= or_ln3_reg_2480_pp0_iter1_reg[5 : 1];
        or_ln3_reg_2480_pp0_iter3_reg[5 : 1] <= or_ln3_reg_2480_pp0_iter2_reg[5 : 1];
        or_ln3_reg_2480_pp0_iter4_reg[5 : 1] <= or_ln3_reg_2480_pp0_iter3_reg[5 : 1];
        or_ln3_reg_2480_pp0_iter5_reg[5 : 1] <= or_ln3_reg_2480_pp0_iter4_reg[5 : 1];
        or_ln3_reg_2480_pp0_iter6_reg[5 : 1] <= or_ln3_reg_2480_pp0_iter5_reg[5 : 1];
        or_ln3_reg_2480_pp0_iter7_reg[5 : 1] <= or_ln3_reg_2480_pp0_iter6_reg[5 : 1];
        zext_ln129_reg_2485[5 : 1] <= zext_ln129_fu_1356_p1[5 : 1];
        zext_ln129_reg_2485_pp0_iter10_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter9_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter11_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter10_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter12_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter11_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter13_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter12_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter14_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter13_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter15_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter14_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter16_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter15_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter17_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter16_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter18_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter17_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter19_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter18_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter1_reg[5 : 1] <= zext_ln129_reg_2485[5 : 1];
        zext_ln129_reg_2485_pp0_iter20_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter19_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter21_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter20_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter22_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter21_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter2_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter1_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter3_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter2_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter4_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter3_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter5_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter4_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter6_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter5_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter7_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter6_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter8_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter7_reg[5 : 1];
        zext_ln129_reg_2485_pp0_iter9_reg[5 : 1] <= zext_ln129_reg_2485_pp0_iter8_reg[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        c0_x_9_reg_2985 <= grp_fu_540_p_dout0;
        c0_y_9_reg_2991 <= grp_fu_544_p_dout0;
        mul3_reg_2997 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_1_2_reg_3107 <= grp_fu_512_p_dout0;
        data_y_1_2_reg_3112 <= grp_fu_516_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_1_reg_3092 <= grp_fu_512_p_dout0;
        data_y_1_reg_3097 <= grp_fu_516_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_2_2_reg_3322 <= grp_fu_524_p_dout0;
        data_x_3_2_reg_3332 <= grp_fu_532_p_dout0;
        data_y_2_2_reg_3327 <= grp_fu_528_p_dout0;
        data_y_5_reg_3317 <= grp_fu_520_p_dout0;
        mul298_1_reg_3342 <= grp_fu_540_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3267 <= grp_fu_508_p_dout0;
        data_x_3_reg_3277 <= grp_fu_516_p_dout0;
        data_y_2_reg_3272 <= grp_fu_512_p_dout0;
        data_y_3_reg_3282 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3267_pp0_iter6_reg <= data_x_2_reg_3267;
        data_x_2_reg_3267_pp0_iter7_reg <= data_x_2_reg_3267_pp0_iter6_reg;
        data_x_3_reg_3277_pp0_iter6_reg <= data_x_3_reg_3277;
        data_x_3_reg_3277_pp0_iter7_reg <= data_x_3_reg_3277_pp0_iter6_reg;
        data_y_2_reg_3272_pp0_iter6_reg <= data_y_2_reg_3272;
        data_y_2_reg_3272_pp0_iter7_reg <= data_y_2_reg_3272_pp0_iter6_reg;
        data_y_3_reg_3282_pp0_iter6_reg <= data_y_3_reg_3282;
        data_y_3_reg_3282_pp0_iter7_reg <= data_y_3_reg_3282_pp0_iter6_reg;
        tmp_4_reg_3179_pp0_iter5_reg <= tmp_4_reg_3179;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_4_2_reg_3363 <= grp_fu_528_p_dout0;
        data_x_5_2_reg_3373 <= grp_fu_536_p_dout0;
        data_y_3_2_reg_3353 <= grp_fu_524_p_dout0;
        data_y_4_2_reg_3368 <= grp_fu_532_p_dout0;
        sub11_reg_3347 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        data_x_4_reg_3292 <= grp_fu_520_p_dout0;
        data_x_5_reg_3302 <= grp_fu_528_p_dout0;
        data_y_4_reg_3297 <= grp_fu_524_p_dout0;
        mul291_1_reg_3307 <= grp_fu_548_p_dout0;
        mul4_reg_3287 <= grp_fu_544_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_2_reg_3421 <= grp_fu_524_p_dout0;
        data_x_7_2_reg_3431 <= grp_fu_532_p_dout0;
        data_y_6_2_reg_3426 <= grp_fu_528_p_dout0;
        data_y_6_reg_3411 <= grp_fu_516_p_dout0;
        data_y_7_2_reg_3436 <= grp_fu_536_p_dout0;
        data_y_7_reg_3416 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3401 <= grp_fu_508_p_dout0;
        data_x_7_reg_3406 <= grp_fu_512_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3401_pp0_iter8_reg <= data_x_6_reg_3401;
        data_x_7_reg_3406_pp0_iter8_reg <= data_x_7_reg_3406;
        data_y_5_2_reg_3378_pp0_iter7_reg <= data_y_5_2_reg_3378;
        data_y_5_2_reg_3378_pp0_iter8_reg <= data_y_5_2_reg_3378_pp0_iter7_reg;
        tmp_2_reg_3133_pp0_iter5_reg <= tmp_2_reg_3133;
        zext_ln127_1_reg_2204[6 : 0] <= zext_ln127_1_fu_1067_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_y_5_2_reg_3378 <= grp_fu_504_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul176_1_reg_3047 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul1_reg_3014 <= grp_fu_548_p_dout0;
        mul5_reg_3003 <= grp_fu_540_p_dout0;
        mul_reg_3009 <= grp_fu_544_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        mul219_1_reg_3087 <= grp_fu_540_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul2_reg_3257 <= grp_fu_540_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_1003 <= grp_twiddles8_fu_552_p_dout0_10;
        reg_1008 <= grp_twiddles8_fu_552_p_dout0_11;
        reg_1013 <= grp_twiddles8_fu_552_p_dout0_12;
        reg_1018 <= grp_twiddles8_fu_552_p_dout0_13;
        reg_953 <= grp_twiddles8_fu_552_p_dout0_0;
        reg_958 <= grp_twiddles8_fu_552_p_dout0_1;
        reg_963 <= grp_twiddles8_fu_552_p_dout0_2;
        reg_968 <= grp_twiddles8_fu_552_p_dout0_3;
        reg_973 <= grp_twiddles8_fu_552_p_dout0_4;
        reg_978 <= grp_twiddles8_fu_552_p_dout0_5;
        reg_983 <= grp_twiddles8_fu_552_p_dout0_6;
        reg_988 <= grp_twiddles8_fu_552_p_dout0_7;
        reg_993 <= grp_twiddles8_fu_552_p_dout0_8;
        reg_998 <= grp_twiddles8_fu_552_p_dout0_9;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        reg_913 <= work_x_q1;
        reg_917 <= work_x_q0;
        reg_921 <= work_y_q1;
        reg_925 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_929 <= work_x_q1;
        reg_933 <= work_x_q0;
        reg_937 <= work_y_q1;
        reg_941 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_945 <= grp_fu_504_p_dout0;
        reg_949 <= grp_fu_508_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub10_reg_3149 <= grp_fu_536_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        sub12_reg_3383 <= grp_fu_532_p_dout0;
        sub294_1_reg_3389 <= grp_fu_536_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub208_1_reg_2889_pp0_iter3_reg <= sub208_1_reg_2889;
        sub287_1_reg_3185_pp0_iter5_reg <= sub287_1_reg_3185;
        tmp_3_reg_2883_pp0_iter3_reg <= tmp_3_reg_2883;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub287_1_reg_3185 <= grp_fu_536_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        sub299_1_reg_3395 <= grp_fu_536_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub2_reg_2835_pp0_iter3_reg <= sub2_reg_2835;
        tmp_reg_2829_pp0_iter3_reg <= tmp_reg_2829;
        zext_ln127_2_reg_2230[6 : 0] <= zext_ln127_2_fu_1091_p1[6 : 0];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_1_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_1_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_2_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_2_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_3_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_3_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_4_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_4_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_x_4_address0_local = 'bx;
        end
    end else begin
        DATA_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_5_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_5_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_x_5_address0_local = 'bx;
        end
    end else begin
        DATA_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_6_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_6_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_x_6_address0_local = 'bx;
        end
    end else begin
        DATA_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_x_7_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_x_7_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_x_7_address0_local = 'bx;
        end
    end else begin
        DATA_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_y_1_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_y_1_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_y_2_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_y_2_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_y_2_address0_local = 'bx;
        end
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_y_3_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_y_3_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_y_3_address0_local = 'bx;
        end
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_y_4_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_y_4_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_y_4_address0_local = 'bx;
        end
    end else begin
        DATA_y_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_y_5_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_y_5_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_y_5_address0_local = 'bx;
        end
    end else begin
        DATA_y_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_y_6_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_y_6_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_y_6_address0_local = 'bx;
        end
    end else begin
        DATA_y_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter23 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            DATA_y_7_address0_local = zext_ln129_reg_2485_pp0_iter22_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            DATA_y_7_address0_local = zext_ln127_reg_2416_pp0_iter22_reg;
        end else begin
            DATA_y_7_address0_local = 'bx;
        end
    end else begin
        DATA_y_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_132_reg_2170 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (tmp_132_reg_2170_pp0_iter22_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to21 = 1'b1;
    end else begin
        ap_idle_pp0_0to21 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to23 = 1'b1;
    end else begin
        ap_idle_pp0_1to23 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tid_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_7 = tid_fu_124;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_779_p0 = c0_x_6_reg_2937;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_779_p0 = c0_x_5_reg_2597;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_779_p0 = c0_x_38_fu_1439_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_779_p0 = c0_x_fu_1415_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_779_p0 = c0_x_40_fu_1362_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_779_p0 = c0_x_36_fu_1302_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_779_p0 = c0_x_39_fu_1214_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_779_p0 = c0_x_35_fu_1117_p1;
    end else begin
        grp_fu_779_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_779_p1 = add2_reg_2841;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_779_p1 = add6_reg_2621;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_779_p1 = bitcast_ln133_1_fu_1445_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_779_p1 = bitcast_ln133_fu_1421_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_779_p1 = bitcast_ln135_1_fu_1387_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_779_p1 = bitcast_ln135_fu_1321_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_779_p1 = bitcast_ln134_1_fu_1251_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_779_p1 = bitcast_ln134_fu_1129_p1;
    end else begin
        grp_fu_779_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_783_p0 = c0_y_6_reg_2943;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_783_p0 = c0_y_5_reg_2603;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_783_p0 = c0_y_38_fu_1451_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_783_p0 = c0_y_fu_1427_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_783_p0 = c0_y_40_fu_1393_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_783_p0 = c0_y_36_fu_1327_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_783_p0 = c0_y_39_fu_1273_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_783_p0 = c0_y_35_fu_1141_p1;
    end else begin
        grp_fu_783_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_783_p1 = add3_reg_2847;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_783_p1 = add7_reg_2627;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_783_p1 = bitcast_ln142_1_fu_1457_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_783_p1 = bitcast_ln142_fu_1433_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_783_p1 = bitcast_ln144_1_fu_1399_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_783_p1 = bitcast_ln144_fu_1333_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_783_p1 = bitcast_ln143_1_fu_1285_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_783_p1 = bitcast_ln143_fu_1153_p1;
    end else begin
        grp_fu_783_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_787_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_787_opcode = 2'd0;
    end else begin
        grp_fu_787_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_787_p0 = mul_reg_3009;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_787_p0 = c0_x_9_reg_2985;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_787_p0 = c0_x_38_fu_1439_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_787_p0 = c0_x_fu_1415_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_787_p0 = c0_x_40_fu_1362_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_787_p0 = c0_x_36_fu_1302_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_787_p0 = c0_x_39_fu_1214_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_787_p0 = c0_x_35_fu_1117_p1;
    end else begin
        grp_fu_787_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_787_p1 = bitcast_ln148_13_fu_1908_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_787_p1 = mul3_reg_2997;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_787_p1 = bitcast_ln133_1_fu_1445_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_787_p1 = bitcast_ln133_fu_1421_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_787_p1 = bitcast_ln135_1_fu_1387_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_787_p1 = bitcast_ln135_fu_1321_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_787_p1 = bitcast_ln134_1_fu_1251_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_787_p1 = bitcast_ln134_fu_1129_p1;
    end else begin
        grp_fu_787_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_791_p0 = bitcast_ln148_15_fu_1942_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_791_p0 = c0_x_9_reg_2985;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_791_p0 = c0_y_38_fu_1451_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_791_p0 = c0_y_fu_1427_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_791_p0 = c0_y_40_fu_1393_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_791_p0 = c0_y_36_fu_1327_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_791_p0 = c0_y_39_fu_1273_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_791_p0 = c0_y_35_fu_1141_p1;
    end else begin
        grp_fu_791_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_791_p1 = mul1_reg_3014;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_791_p1 = mul3_reg_2997;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_791_p1 = bitcast_ln142_1_fu_1457_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_791_p1 = bitcast_ln142_fu_1433_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_791_p1 = bitcast_ln144_1_fu_1399_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_791_p1 = bitcast_ln144_fu_1333_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_791_p1 = bitcast_ln143_1_fu_1285_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_791_p1 = bitcast_ln143_fu_1153_p1;
    end else begin
        grp_fu_791_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_795_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_795_opcode = 2'd0;
    end else begin
        grp_fu_795_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_795_p0 = bitcast_ln148_35_fu_2010_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_795_p0 = c0_y_9_reg_2991;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_795_p0 = c0_x_18_reg_2961;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_795_p0 = c0_x_21_reg_2785;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_795_p0 = c0_x_4_reg_2761;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_795_p0 = c0_x_15_reg_2655;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_795_p0 = c0_x_41_fu_1245_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_795_p0 = c0_x_37_fu_1123_p1;
    end else begin
        grp_fu_795_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_795_p1 = mul219_1_reg_3087;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_795_p1 = mul5_reg_3003;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_795_p1 = add199_1_reg_2905;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_795_p1 = add111_1_reg_2737;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_795_p1 = add4_reg_2691;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_795_p1 = add127_1_reg_2679;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_795_p1 = bitcast_ln136_1_fu_1267_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_795_p1 = bitcast_ln136_fu_1135_p1;
    end else begin
        grp_fu_795_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_799_p0 = c0_x_13_reg_2797_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_799_p0 = c0_x_20_reg_3019;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_799_p0 = c0_y_18_reg_2967;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_799_p0 = c0_y_21_reg_2791;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_799_p0 = c0_y_4_reg_2767;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_799_p0 = c0_y_15_reg_2661;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_799_p0 = c0_y_41_fu_1279_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_799_p0 = c0_y_37_fu_1147_p1;
    end else begin
        grp_fu_799_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_799_p1 = sub157_1_reg_3065;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_799_p1 = mul170_1_reg_3031;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_799_p1 = add202_1_reg_2911;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_799_p1 = add114_1_reg_2743;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_799_p1 = add5_reg_2697;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_799_p1 = add130_1_reg_2685;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_799_p1 = bitcast_ln145_1_fu_1291_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_799_p1 = bitcast_ln145_fu_1159_p1;
    end else begin
        grp_fu_799_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_803_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_803_opcode = 2'd0;
    end else begin
        grp_fu_803_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_803_p0 = c0_y_23_reg_3233;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_803_p0 = c0_y_13_reg_2803_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_803_p0 = c0_x_20_reg_3019;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_803_p0 = mul6_reg_2853;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_803_p0 = c0_x_21_reg_2785;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_803_p0 = c0_x_4_reg_2761;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_803_p0 = c0_x_41_fu_1245_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_803_p0 = c0_x_37_fu_1123_p1;
    end else begin
        grp_fu_803_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_803_p1 = add281_1_reg_3251;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_803_p1 = add162_1_reg_3071;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_803_p1 = mul170_1_reg_3031;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_803_p1 = bitcast_ln148_5_fu_1772_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_803_p1 = add111_1_reg_2737;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_803_p1 = add4_reg_2691;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_803_p1 = bitcast_ln136_1_fu_1267_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_803_p1 = bitcast_ln136_fu_1135_p1;
    end else begin
        grp_fu_803_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_132_reg_2170 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_807_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_807_opcode = 2'd0;
    end else begin
        grp_fu_807_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_807_p0 = c0_x_10_reg_3203_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_807_p0 = c0_x_7_reg_2949_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_807_p0 = c0_x_13_reg_2797_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_807_p0 = bitcast_ln148_7_fu_1806_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_807_p0 = c0_y_21_reg_2791;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_807_p0 = c0_y_4_reg_2767;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_807_p0 = c0_y_41_fu_1279_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_807_p0 = c0_y_37_fu_1147_p1;
    end else begin
        grp_fu_807_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_807_p1 = sub11_reg_3347;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_807_p1 = sub4_reg_3155;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_807_p1 = sub157_1_reg_3065;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_807_p1 = mul9_reg_2858;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_807_p1 = add114_1_reg_2743;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_807_p1 = add5_reg_2697;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_807_p1 = bitcast_ln145_1_fu_1291_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_807_p1 = bitcast_ln145_fu_1159_p1;
    end else begin
        grp_fu_807_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_811_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001))) begin
        grp_fu_811_opcode = 2'd0;
    end else begin
        grp_fu_811_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_811_p0 = c0_x_10_reg_3203_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_811_p0 = c0_y_7_reg_2955_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_811_p0 = c0_y_13_reg_2803_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_811_p0 = c0_x_18_reg_2961;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_811_p0 = c0_x_6_reg_2937;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_811_p0 = mul154_1_reg_2895;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_811_p0 = tmp_1_3_reg_2667;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_811_p0 = tmp_1_reg_2609;
    end else begin
        grp_fu_811_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_811_p1 = sub11_reg_3347;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_811_p1 = sub6_reg_3161;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_811_p1 = add162_1_reg_3071;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_811_p1 = add199_1_reg_2905;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_811_p1 = add2_reg_2841;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_811_p1 = bitcast_ln148_25_fu_1840_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_811_p1 = bitcast_ln148_21_fu_1632_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_811_p1 = bitcast_ln148_1_fu_1492_p1;
    end else begin
        grp_fu_811_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_815_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_815_opcode = 2'd0;
    end else begin
        grp_fu_815_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_815_p0 = c0_y_10_reg_3209_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_815_p0 = c0_x_7_reg_2949_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_815_p0 = c0_y_20_reg_3025;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_815_p0 = c0_y_18_reg_2967;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_815_p0 = c0_y_6_reg_2943;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_815_p0 = bitcast_ln148_27_fu_1874_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_815_p0 = bitcast_ln148_23_fu_1666_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_815_p0 = bitcast_ln148_3_fu_1526_p1;
    end else begin
        grp_fu_815_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_815_p1 = sub12_reg_3383;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_815_p1 = sub4_reg_3155;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_815_p1 = mul176_1_reg_3047;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_815_p1 = add202_1_reg_2911;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_815_p1 = add3_reg_2847;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_815_p1 = mul161_1_reg_2900;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_815_p1 = sub104_1_reg_2673;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_815_p1 = sub3_reg_2615;
    end else begin
        grp_fu_815_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_819_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_819_opcode = 2'd0;
    end else begin
        grp_fu_819_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_819_p0 = c0_y_10_reg_3209_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_819_p0 = mul2_reg_3257;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_819_p0 = c0_y_11_reg_3197;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_819_p0 = c0_x_11_reg_3191;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_819_p0 = c0_y_7_reg_2955_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_819_p0 = c0_x_8_reg_2773_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_819_p0 = bitcast_ln148_29_fu_1701_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_819_p0 = bitcast_ln148_9_fu_1561_p1;
    end else begin
        grp_fu_819_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_819_p1 = sub12_reg_3383;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_819_p1 = bitcast_ln148_17_fu_2044_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_819_p1 = add10_reg_3167;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_819_p1 = add_reg_3127;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_819_p1 = sub6_reg_3161;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_819_p1 = sub9_reg_3053;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_819_p1 = bitcast_ln148_31_fu_1737_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_819_p1 = bitcast_ln148_11_fu_1597_p1;
    end else begin
        grp_fu_819_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_823_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_823_opcode = 2'd0;
    end else begin
        grp_fu_823_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_823_p0 = c0_x_22_reg_3239_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_823_p0 = c0_y_19_reg_2979_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_823_p0 = c0_x_19_reg_2973_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_823_p0 = c0_y_11_reg_3197;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_823_p0 = c0_y_8_reg_2779_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_823_p0 = bitcast_ln148_29_fu_1701_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_823_p0 = bitcast_ln148_9_fu_1561_p1;
    end else begin
        grp_fu_823_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_823_p1 = sub294_1_reg_3389;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_823_p1 = sub220_1_reg_3221;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_823_p1 = sub215_1_reg_3215;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_823_p1 = add10_reg_3167;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_823_p1 = add9_reg_3059;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_823_p1 = bitcast_ln148_31_fu_1737_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_823_p1 = bitcast_ln148_11_fu_1597_p1;
    end else begin
        grp_fu_823_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_827_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_827_opcode = 2'd0;
    end else begin
        grp_fu_827_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_827_p0 = c0_y_22_reg_3245_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_827_p0 = c0_x_23_reg_3227;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_827_p0 = c0_y_19_reg_2979_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_827_p0 = c0_x_11_reg_3191;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_827_p0 = c0_x_8_reg_2773_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_827_p0 = c0_x_15_reg_2655;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_827_p0 = c0_x_5_reg_2597;
    end else begin
        grp_fu_827_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_827_p1 = sub299_1_reg_3395;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_827_p1 = add278_1_reg_3173;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_827_p1 = sub220_1_reg_3221;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_827_p1 = add_reg_3127;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_827_p1 = sub9_reg_3053;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_827_p1 = add127_1_reg_2679;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_827_p1 = add6_reg_2621;
    end else begin
        grp_fu_827_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_831_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_831_opcode = 2'd0;
    end else begin
        grp_fu_831_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_831_p0 = c0_x_22_reg_3239_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_831_p0 = bitcast_ln148_19_fu_2078_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_831_p0 = c0_y_23_reg_3233;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_831_p0 = c0_x_19_reg_2973_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_831_p0 = c0_y_8_reg_2779_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_831_p0 = c0_y_15_reg_2661;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_831_p0 = c0_y_5_reg_2603;
    end else begin
        grp_fu_831_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_831_p1 = sub294_1_reg_3389;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_831_p1 = mul4_reg_3287;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_831_p1 = add281_1_reg_3251;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_831_p1 = sub215_1_reg_3215;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_831_p1 = add9_reg_3059;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_831_p1 = add130_1_reg_2685;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_831_p1 = add7_reg_2627;
    end else begin
        grp_fu_831_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_835_p0 = c0_y_22_reg_3245_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_835_p0 = bitcast_ln148_39_fu_2146_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_835_p0 = mul291_1_reg_3307;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_835_p0 = c0_x_23_reg_3227;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_835_p0 = mul212_1_reg_3077;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_835_p0 = c0_y_20_reg_3025;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_835_p0 = c0_y_9_reg_2991;
    end else begin
        grp_fu_835_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_835_p1 = sub299_1_reg_3395;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_835_p1 = mul298_1_reg_3342;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_835_p1 = bitcast_ln148_37_fu_2112_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_835_p1 = add278_1_reg_3173;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_835_p1 = bitcast_ln148_33_fu_1976_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_835_p1 = mul176_1_reg_3047;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_835_p1 = mul5_reg_3003;
    end else begin
        grp_fu_835_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_839_p0 = sub287_1_reg_3185;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_839_p0 = tmp_2_reg_3133;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_839_p0 = sub208_1_reg_2889;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_839_p0 = sub143_1_reg_2863;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_839_p0 = add1_reg_2824;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_839_p0 = sub8_reg_2809;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_839_p0 = tmp_1_4_reg_2749;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_839_p0 = tmp_1_1_reg_2703;
    end else begin
        grp_fu_839_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_839_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)))) begin
        grp_fu_839_p1 = 64'd0;
    end else begin
        grp_fu_839_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_844_p0 = sub10_reg_3149;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_844_p0 = add149_1_reg_2868;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_844_p0 = tmp_reg_2829;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_844_p0 = add8_reg_2814;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_844_p0 = sub120_1_reg_2755;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_844_p0 = sub5_reg_2709;
    end else begin
        grp_fu_844_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_844_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_844_p1 = 64'd0;
    end else begin
        grp_fu_844_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_851_p0 = tmp_4_reg_3179;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_851_p0 = tmp_3_reg_2883;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_851_p0 = add175_1_reg_2878;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_851_p0 = sub169_1_reg_2873;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_851_p0 = sub2_reg_2835;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_851_p0 = sub1_reg_2819;
    end else begin
        grp_fu_851_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_851_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_851_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_851_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_x_1_read = data_x_1_2_reg_3107_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_x_1_read = data_x_1_reg_3092_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_x_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_x_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_x_2_read = data_x_2_2_reg_3322_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_x_2_read = data_x_2_reg_3267_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_x_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_x_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_x_3_read = data_x_3_2_reg_3332_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_x_3_read = data_x_3_reg_3277_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_x_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_x_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_x_4_read = data_x_4_2_reg_3363_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_x_4_read = data_x_4_reg_3292_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_x_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_x_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_x_5_read = data_x_5_2_reg_3373_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_x_5_read = data_x_5_reg_3302_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_x_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_x_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_x_6_read = data_x_6_2_reg_3421;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_x_6_read = data_x_6_reg_3401_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_746_a_x_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_x_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_x_7_read = data_x_7_2_reg_3431;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_x_7_read = data_x_7_reg_3406_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_746_a_x_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_x_7_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_y_1_read = data_y_1_2_reg_3112_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_y_1_read = data_y_1_reg_3097_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_y_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_y_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_y_2_read = data_y_2_2_reg_3327_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_y_2_read = data_y_2_reg_3272_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_y_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_y_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_y_3_read = data_y_3_2_reg_3353_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_y_3_read = data_y_3_reg_3282_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_y_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_y_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_y_4_read = data_y_4_2_reg_3368_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_y_4_read = data_y_4_reg_3297_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_y_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_y_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_y_5_read = data_y_5_2_reg_3378_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_y_5_read = data_y_5_reg_3317_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_746_a_y_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_y_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_y_6_read = data_y_6_2_reg_3426;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_y_6_read = data_y_6_reg_3411;
        end else begin
            grp_twiddles8_fu_746_a_y_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_y_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_a_y_7_read = data_y_7_2_reg_3436;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_a_y_7_read = data_y_7_reg_3416;
        end else begin
            grp_twiddles8_fu_746_a_y_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_a_y_7_read = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp1568)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp1565)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001_ignoreCallOp1572)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001_ignoreCallOp1570)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp1566)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp1578)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp1576)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001_ignoreCallOp1574)))) begin
        grp_twiddles8_fu_746_ap_ce = 1'b1;
    end else begin
        grp_twiddles8_fu_746_ap_ce = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1567))) begin
            grp_twiddles8_fu_746_i = or_ln3_reg_2480_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1565))) begin
            grp_twiddles8_fu_746_i = trunc_ln127_reg_2174_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_746_i = 'bx;
        end
    end else begin
        grp_twiddles8_fu_746_i = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address0_local = zext_ln133_2_fu_1381_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address0_local = zext_ln133_fu_1315_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address0_local = zext_ln135_1_fu_1261_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address0_local = zext_ln135_fu_1208_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address0_local = zext_ln136_1_fu_1185_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address0_local = zext_ln132_1_fu_1111_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address0_local = zext_ln136_fu_1085_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address0_local = zext_ln132_fu_1061_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address1_local = zext_ln129_fu_1356_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address1_local = zext_ln127_fu_1297_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address1_local = zext_ln131_1_fu_1239_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address1_local = zext_ln131_fu_1198_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address1_local = zext_ln134_1_fu_1170_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address1_local = zext_ln130_1_fu_1100_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address1_local = zext_ln134_fu_1076_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address1_local = zext_ln130_fu_1051_p1;
        end else begin
            work_x_address1_local = 'bx;
        end
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address0_local = zext_ln133_2_fu_1381_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address0_local = zext_ln133_fu_1315_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address0_local = zext_ln135_1_fu_1261_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address0_local = zext_ln135_fu_1208_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address0_local = zext_ln136_1_fu_1185_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address0_local = zext_ln132_1_fu_1111_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address0_local = zext_ln136_fu_1085_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address0_local = zext_ln132_fu_1061_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address1_local = zext_ln129_fu_1356_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address1_local = zext_ln127_fu_1297_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address1_local = zext_ln131_1_fu_1239_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address1_local = zext_ln131_fu_1198_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address1_local = zext_ln134_1_fu_1170_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address1_local = zext_ln130_1_fu_1100_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address1_local = zext_ln134_fu_1076_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address1_local = zext_ln130_fu_1051_p1;
        end else begin
            work_y_address1_local = 'bx;
        end
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to23 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = reg_953;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = reg_958;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = reg_963;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = DATA_x_4_address0_local;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = reg_968;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = DATA_x_5_address0_local;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = reg_973;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = DATA_x_6_address0_local;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = reg_978;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = DATA_x_7_address0_local;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = reg_983;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_address0 = zext_ln129_reg_2485_pp0_iter3_reg;
assign DATA_x_address1 = zext_ln127_reg_2416_pp0_iter3_reg;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = data_x_0_1_reg_3139;
assign DATA_x_d1 = data_x_0_reg_3117;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_988;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = DATA_y_2_address0_local;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_993;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = DATA_y_3_address0_local;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_998;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = DATA_y_4_address0_local;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_1003;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = DATA_y_5_address0_local;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_1008;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = DATA_y_6_address0_local;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_1013;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = DATA_y_7_address0_local;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_1018;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_address0 = zext_ln129_reg_2485_pp0_iter3_reg;
assign DATA_y_address1 = zext_ln127_reg_2416_pp0_iter3_reg;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = data_y_0_1_reg_3144;
assign DATA_y_d1 = data_y_0_reg_3122;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln127_fu_1405_p2 = (tid_7_reg_2158 + 7'd2);
assign add_ln130_fu_1094_p2 = (zext_ln127_2_fu_1091_p1 + 8'd65);
assign add_ln132_fu_1106_p2 = (zext_ln127_1_reg_2204 + 9'd193);
assign add_ln134_1_fu_1165_p2 = ($signed(zext_ln127_1_reg_2204) + $signed(9'd321));
assign add_ln134_fu_1070_p2 = ($signed(zext_ln127_1_fu_1067_p1) + $signed(9'd320));
assign add_ln136_fu_1176_p2 = ($signed(tid_7_reg_2158) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001_ignoreCallOp1576 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001_ignoreCallOp1578 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001_ignoreCallOp1565 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp1565 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001_ignoreCallOp1566 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp1567 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001_ignoreCallOp1568 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001_ignoreCallOp1570 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001_ignoreCallOp1572 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001_ignoreCallOp1574 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bit_sel10_fu_1711_p3 = bitcast_ln148_30_fu_1707_p1[64'd63];
assign bit_sel11_fu_1882_p3 = bitcast_ln148_12_fu_1879_p1[64'd63];
assign bit_sel12_fu_1916_p3 = bitcast_ln148_14_fu_1913_p1[64'd63];
assign bit_sel13_fu_1675_p3 = bitcast_ln148_28_fu_1671_p1[64'd63];
assign bit_sel14_fu_2018_p3 = bitcast_ln148_16_fu_2015_p1[64'd63];
assign bit_sel15_fu_2052_p3 = bitcast_ln148_18_fu_2049_p1[64'd63];
assign bit_sel16_fu_1848_p3 = bitcast_ln148_26_fu_1845_p1[64'd63];
assign bit_sel17_fu_1606_p3 = bitcast_ln148_20_fu_1603_p1[64'd63];
assign bit_sel18_fu_1640_p3 = bitcast_ln148_22_fu_1637_p1[64'd63];
assign bit_sel19_fu_1814_p3 = bitcast_ln148_24_fu_1811_p1[64'd63];
assign bit_sel1_fu_2086_p3 = bitcast_ln148_36_fu_2083_p1[64'd63];
assign bit_sel2_fu_1466_p3 = bitcast_ln148_fu_1463_p1[64'd63];
assign bit_sel3_fu_1500_p3 = bitcast_ln148_2_fu_1497_p1[64'd63];
assign bit_sel4_fu_1984_p3 = bitcast_ln148_34_fu_1981_p1[64'd63];
assign bit_sel5_fu_1746_p3 = bitcast_ln148_4_fu_1743_p1[64'd63];
assign bit_sel6_fu_1780_p3 = bitcast_ln148_6_fu_1777_p1[64'd63];
assign bit_sel7_fu_1950_p3 = bitcast_ln148_32_fu_1947_p1[64'd63];
assign bit_sel8_fu_1535_p3 = bitcast_ln148_8_fu_1531_p1[64'd63];
assign bit_sel9_fu_1571_p3 = bitcast_ln148_10_fu_1567_p1[64'd63];
assign bit_sel_fu_2120_p3 = bitcast_ln148_38_fu_2117_p1[64'd63];
assign bitcast_ln133_1_fu_1445_p1 = reg_917;
assign bitcast_ln133_fu_1421_p1 = reg_917;
assign bitcast_ln134_1_fu_1251_p1 = reg_929;
assign bitcast_ln134_fu_1129_p1 = reg_929;
assign bitcast_ln135_1_fu_1387_p1 = reg_917;
assign bitcast_ln135_fu_1321_p1 = reg_917;
assign bitcast_ln136_1_fu_1267_p1 = reg_933;
assign bitcast_ln136_fu_1135_p1 = reg_933;
assign bitcast_ln142_1_fu_1457_p1 = reg_925;
assign bitcast_ln142_fu_1433_p1 = reg_925;
assign bitcast_ln143_1_fu_1285_p1 = reg_937;
assign bitcast_ln143_fu_1153_p1 = reg_937;
assign bitcast_ln144_1_fu_1399_p1 = reg_925;
assign bitcast_ln144_fu_1333_p1 = reg_925;
assign bitcast_ln145_1_fu_1291_p1 = reg_941;
assign bitcast_ln145_fu_1159_p1 = reg_941;
assign bitcast_ln148_10_fu_1567_p1 = reg_949;
assign bitcast_ln148_11_fu_1597_p1 = xor_ln148_5_fu_1589_p3;
assign bitcast_ln148_12_fu_1879_p1 = sub2_reg_2835_pp0_iter3_reg;
assign bitcast_ln148_13_fu_1908_p1 = xor_ln148_6_fu_1900_p3;
assign bitcast_ln148_14_fu_1913_p1 = tmp_reg_2829_pp0_iter3_reg;
assign bitcast_ln148_15_fu_1942_p1 = xor_ln148_7_fu_1934_p3;
assign bitcast_ln148_16_fu_2015_p1 = sub10_reg_3149;
assign bitcast_ln148_17_fu_2044_p1 = xor_ln148_8_fu_2036_p3;
assign bitcast_ln148_18_fu_2049_p1 = tmp_2_reg_3133_pp0_iter5_reg;
assign bitcast_ln148_19_fu_2078_p1 = xor_ln148_9_fu_2070_p3;
assign bitcast_ln148_1_fu_1492_p1 = xor_ln1_fu_1484_p3;
assign bitcast_ln148_20_fu_1603_p1 = sub104_1_reg_2673;
assign bitcast_ln148_21_fu_1632_p1 = xor_ln148_s_fu_1624_p3;
assign bitcast_ln148_22_fu_1637_p1 = tmp_1_3_reg_2667;
assign bitcast_ln148_23_fu_1666_p1 = xor_ln148_10_fu_1658_p3;
assign bitcast_ln148_24_fu_1811_p1 = sub120_1_reg_2755;
assign bitcast_ln148_25_fu_1840_p1 = xor_ln148_11_fu_1832_p3;
assign bitcast_ln148_26_fu_1845_p1 = tmp_1_4_reg_2749;
assign bitcast_ln148_27_fu_1874_p1 = xor_ln148_12_fu_1866_p3;
assign bitcast_ln148_28_fu_1671_p1 = reg_945;
assign bitcast_ln148_29_fu_1701_p1 = xor_ln148_13_fu_1693_p3;
assign bitcast_ln148_2_fu_1497_p1 = tmp_1_reg_2609;
assign bitcast_ln148_30_fu_1707_p1 = reg_949;
assign bitcast_ln148_31_fu_1737_p1 = xor_ln148_14_fu_1729_p3;
assign bitcast_ln148_32_fu_1947_p1 = sub208_1_reg_2889_pp0_iter3_reg;
assign bitcast_ln148_33_fu_1976_p1 = xor_ln148_15_fu_1968_p3;
assign bitcast_ln148_34_fu_1981_p1 = tmp_3_reg_2883_pp0_iter3_reg;
assign bitcast_ln148_35_fu_2010_p1 = xor_ln148_16_fu_2002_p3;
assign bitcast_ln148_36_fu_2083_p1 = sub287_1_reg_3185_pp0_iter5_reg;
assign bitcast_ln148_37_fu_2112_p1 = xor_ln148_17_fu_2104_p3;
assign bitcast_ln148_38_fu_2117_p1 = tmp_4_reg_3179_pp0_iter5_reg;
assign bitcast_ln148_39_fu_2146_p1 = xor_ln148_18_fu_2138_p3;
assign bitcast_ln148_3_fu_1526_p1 = xor_ln148_1_fu_1518_p3;
assign bitcast_ln148_4_fu_1743_p1 = sub5_reg_2709_pp0_iter2_reg;
assign bitcast_ln148_5_fu_1772_p1 = xor_ln148_2_fu_1764_p3;
assign bitcast_ln148_6_fu_1777_p1 = tmp_1_1_reg_2703_pp0_iter2_reg;
assign bitcast_ln148_7_fu_1806_p1 = xor_ln148_3_fu_1798_p3;
assign bitcast_ln148_8_fu_1531_p1 = reg_945;
assign bitcast_ln148_9_fu_1561_p1 = xor_ln148_4_fu_1553_p3;
assign bitcast_ln148_fu_1463_p1 = sub3_reg_2615;
assign c0_x_35_fu_1117_p1 = reg_913;
assign c0_x_36_fu_1302_p1 = reg_913;
assign c0_x_37_fu_1123_p1 = reg_917;
assign c0_x_38_fu_1439_p1 = reg_913;
assign c0_x_39_fu_1214_p1 = reg_913;
assign c0_x_40_fu_1362_p1 = reg_913;
assign c0_x_41_fu_1245_p1 = reg_917;
assign c0_x_fu_1415_p1 = reg_913;
assign c0_y_35_fu_1141_p1 = reg_921;
assign c0_y_36_fu_1327_p1 = reg_921;
assign c0_y_37_fu_1147_p1 = reg_925;
assign c0_y_38_fu_1451_p1 = reg_921;
assign c0_y_39_fu_1273_p1 = reg_921;
assign c0_y_40_fu_1393_p1 = reg_921;
assign c0_y_41_fu_1279_p1 = reg_925;
assign c0_y_fu_1427_p1 = reg_921;
assign grp_fu_480_p_ce = 1'b1;
assign grp_fu_480_p_din0 = grp_fu_779_p0;
assign grp_fu_480_p_din1 = grp_fu_779_p1;
assign grp_fu_480_p_opcode = 2'd0;
assign grp_fu_484_p_ce = 1'b1;
assign grp_fu_484_p_din0 = grp_fu_783_p0;
assign grp_fu_484_p_din1 = grp_fu_783_p1;
assign grp_fu_484_p_opcode = 2'd0;
assign grp_fu_488_p_ce = 1'b1;
assign grp_fu_488_p_din0 = grp_fu_787_p0;
assign grp_fu_488_p_din1 = grp_fu_787_p1;
assign grp_fu_488_p_opcode = grp_fu_787_opcode;
assign grp_fu_492_p_ce = 1'b1;
assign grp_fu_492_p_din0 = grp_fu_791_p0;
assign grp_fu_492_p_din1 = grp_fu_791_p1;
assign grp_fu_492_p_opcode = 2'd1;
assign grp_fu_496_p_ce = 1'b1;
assign grp_fu_496_p_din0 = grp_fu_795_p0;
assign grp_fu_496_p_din1 = grp_fu_795_p1;
assign grp_fu_496_p_opcode = grp_fu_795_opcode;
assign grp_fu_500_p_ce = 1'b1;
assign grp_fu_500_p_din0 = grp_fu_799_p0;
assign grp_fu_500_p_din1 = grp_fu_799_p1;
assign grp_fu_500_p_opcode = 2'd0;
assign grp_fu_504_p_ce = 1'b1;
assign grp_fu_504_p_din0 = grp_fu_803_p0;
assign grp_fu_504_p_din1 = grp_fu_803_p1;
assign grp_fu_504_p_opcode = grp_fu_803_opcode;
assign grp_fu_508_p_ce = 1'b1;
assign grp_fu_508_p_din0 = grp_fu_807_p0;
assign grp_fu_508_p_din1 = grp_fu_807_p1;
assign grp_fu_508_p_opcode = grp_fu_807_opcode;
assign grp_fu_512_p_ce = 1'b1;
assign grp_fu_512_p_din0 = grp_fu_811_p0;
assign grp_fu_512_p_din1 = grp_fu_811_p1;
assign grp_fu_512_p_opcode = grp_fu_811_opcode;
assign grp_fu_516_p_ce = 1'b1;
assign grp_fu_516_p_din0 = grp_fu_815_p0;
assign grp_fu_516_p_din1 = grp_fu_815_p1;
assign grp_fu_516_p_opcode = grp_fu_815_opcode;
assign grp_fu_520_p_ce = 1'b1;
assign grp_fu_520_p_din0 = grp_fu_819_p0;
assign grp_fu_520_p_din1 = grp_fu_819_p1;
assign grp_fu_520_p_opcode = grp_fu_819_opcode;
assign grp_fu_524_p_ce = 1'b1;
assign grp_fu_524_p_din0 = grp_fu_823_p0;
assign grp_fu_524_p_din1 = grp_fu_823_p1;
assign grp_fu_524_p_opcode = grp_fu_823_opcode;
assign grp_fu_528_p_ce = 1'b1;
assign grp_fu_528_p_din0 = grp_fu_827_p0;
assign grp_fu_528_p_din1 = grp_fu_827_p1;
assign grp_fu_528_p_opcode = grp_fu_827_opcode;
assign grp_fu_532_p_ce = 1'b1;
assign grp_fu_532_p_din0 = grp_fu_831_p0;
assign grp_fu_532_p_din1 = grp_fu_831_p1;
assign grp_fu_532_p_opcode = grp_fu_831_opcode;
assign grp_fu_536_p_ce = 1'b1;
assign grp_fu_536_p_din0 = grp_fu_835_p0;
assign grp_fu_536_p_din1 = grp_fu_835_p1;
assign grp_fu_536_p_opcode = 2'd1;
assign grp_fu_540_p_ce = 1'b1;
assign grp_fu_540_p_din0 = grp_fu_839_p0;
assign grp_fu_540_p_din1 = grp_fu_839_p1;
assign grp_fu_544_p_ce = 1'b1;
assign grp_fu_544_p_din0 = grp_fu_844_p0;
assign grp_fu_544_p_din1 = grp_fu_844_p1;
assign grp_fu_548_p_ce = 1'b1;
assign grp_fu_548_p_din0 = grp_fu_851_p0;
assign grp_fu_548_p_din1 = grp_fu_851_p1;
assign grp_twiddles8_fu_552_p_ce = grp_twiddles8_fu_746_ap_ce;
assign grp_twiddles8_fu_552_p_din1 = grp_twiddles8_fu_746_a_x_1_read;
assign grp_twiddles8_fu_552_p_din10 = grp_twiddles8_fu_746_a_y_3_read;
assign grp_twiddles8_fu_552_p_din11 = grp_twiddles8_fu_746_a_y_4_read;
assign grp_twiddles8_fu_552_p_din12 = grp_twiddles8_fu_746_a_y_5_read;
assign grp_twiddles8_fu_552_p_din13 = grp_twiddles8_fu_746_a_y_6_read;
assign grp_twiddles8_fu_552_p_din14 = grp_twiddles8_fu_746_a_y_7_read;
assign grp_twiddles8_fu_552_p_din15 = grp_twiddles8_fu_746_i;
assign grp_twiddles8_fu_552_p_din16 = 10'd512;
assign grp_twiddles8_fu_552_p_din2 = grp_twiddles8_fu_746_a_x_2_read;
assign grp_twiddles8_fu_552_p_din3 = grp_twiddles8_fu_746_a_x_3_read;
assign grp_twiddles8_fu_552_p_din4 = grp_twiddles8_fu_746_a_x_4_read;
assign grp_twiddles8_fu_552_p_din5 = grp_twiddles8_fu_746_a_x_5_read;
assign grp_twiddles8_fu_552_p_din6 = grp_twiddles8_fu_746_a_x_6_read;
assign grp_twiddles8_fu_552_p_din7 = grp_twiddles8_fu_746_a_x_7_read;
assign grp_twiddles8_fu_552_p_din8 = grp_twiddles8_fu_746_a_y_1_read;
assign grp_twiddles8_fu_552_p_din9 = grp_twiddles8_fu_746_a_y_2_read;
assign or_ln3_fu_1348_p3 = {{tmp_s_fu_1339_p4}, {1'd1}};
assign sext_ln132_fu_1057_p1 = zext_ln130_cast_fu_1043_p3;
assign sext_ln135_1_fu_1257_p1 = zext_ln131_1_cast_fu_1229_p4;
assign sext_ln135_fu_1204_p1 = zext_ln131_cast_fu_1191_p3;
assign sext_ln136_1_fu_1181_p1 = $signed(add_ln136_fu_1176_p2);
assign sext_ln136_fu_1082_p1 = zext_ln130_cast_reg_2179;
assign tmp_42_fu_1220_p4 = {{tid_7_reg_2158[6:1]}};
assign tmp_s_fu_1339_p4 = {{tid_7_reg_2158[5:1]}};
assign trunc_ln127_fu_1039_p1 = ap_sig_allocacmp_tid_7[5:0];
assign trunc_ln148_10_fu_1620_p1 = bitcast_ln148_20_fu_1603_p1[62:0];
assign trunc_ln148_11_fu_1654_p1 = bitcast_ln148_22_fu_1637_p1[62:0];
assign trunc_ln148_12_fu_1828_p1 = bitcast_ln148_24_fu_1811_p1[62:0];
assign trunc_ln148_13_fu_1862_p1 = bitcast_ln148_26_fu_1845_p1[62:0];
assign trunc_ln148_14_fu_1689_p1 = bitcast_ln148_28_fu_1671_p1[62:0];
assign trunc_ln148_15_fu_1725_p1 = bitcast_ln148_30_fu_1707_p1[62:0];
assign trunc_ln148_16_fu_1964_p1 = bitcast_ln148_32_fu_1947_p1[62:0];
assign trunc_ln148_17_fu_1998_p1 = bitcast_ln148_34_fu_1981_p1[62:0];
assign trunc_ln148_18_fu_2100_p1 = bitcast_ln148_36_fu_2083_p1[62:0];
assign trunc_ln148_19_fu_2134_p1 = bitcast_ln148_38_fu_2117_p1[62:0];
assign trunc_ln148_1_fu_1514_p1 = bitcast_ln148_2_fu_1497_p1[62:0];
assign trunc_ln148_2_fu_1760_p1 = bitcast_ln148_4_fu_1743_p1[62:0];
assign trunc_ln148_3_fu_1794_p1 = bitcast_ln148_6_fu_1777_p1[62:0];
assign trunc_ln148_4_fu_1549_p1 = bitcast_ln148_8_fu_1531_p1[62:0];
assign trunc_ln148_5_fu_1585_p1 = bitcast_ln148_10_fu_1567_p1[62:0];
assign trunc_ln148_6_fu_1896_p1 = bitcast_ln148_12_fu_1879_p1[62:0];
assign trunc_ln148_7_fu_1930_p1 = bitcast_ln148_14_fu_1913_p1[62:0];
assign trunc_ln148_8_fu_2032_p1 = bitcast_ln148_16_fu_2015_p1[62:0];
assign trunc_ln148_9_fu_2066_p1 = bitcast_ln148_18_fu_2049_p1[62:0];
assign trunc_ln148_fu_1480_p1 = bitcast_ln148_fu_1463_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign xor_ln148_10_fu_1658_p3 = {{xor_ln148_29_fu_1648_p2}, {trunc_ln148_11_fu_1654_p1}};
assign xor_ln148_11_fu_1832_p3 = {{xor_ln148_30_fu_1822_p2}, {trunc_ln148_12_fu_1828_p1}};
assign xor_ln148_12_fu_1866_p3 = {{xor_ln148_31_fu_1856_p2}, {trunc_ln148_13_fu_1862_p1}};
assign xor_ln148_13_fu_1693_p3 = {{xor_ln148_32_fu_1683_p2}, {trunc_ln148_14_fu_1689_p1}};
assign xor_ln148_14_fu_1729_p3 = {{xor_ln148_33_fu_1719_p2}, {trunc_ln148_15_fu_1725_p1}};
assign xor_ln148_15_fu_1968_p3 = {{xor_ln148_34_fu_1958_p2}, {trunc_ln148_16_fu_1964_p1}};
assign xor_ln148_16_fu_2002_p3 = {{xor_ln148_35_fu_1992_p2}, {trunc_ln148_17_fu_1998_p1}};
assign xor_ln148_17_fu_2104_p3 = {{xor_ln148_36_fu_2094_p2}, {trunc_ln148_18_fu_2100_p1}};
assign xor_ln148_18_fu_2138_p3 = {{xor_ln148_37_fu_2128_p2}, {trunc_ln148_19_fu_2134_p1}};
assign xor_ln148_19_fu_1474_p2 = (bit_sel2_fu_1466_p3 ^ 1'd1);
assign xor_ln148_1_fu_1518_p3 = {{xor_ln148_fu_1508_p2}, {trunc_ln148_1_fu_1514_p1}};
assign xor_ln148_20_fu_1754_p2 = (bit_sel5_fu_1746_p3 ^ 1'd1);
assign xor_ln148_21_fu_1788_p2 = (bit_sel6_fu_1780_p3 ^ 1'd1);
assign xor_ln148_22_fu_1543_p2 = (bit_sel8_fu_1535_p3 ^ 1'd1);
assign xor_ln148_23_fu_1579_p2 = (bit_sel9_fu_1571_p3 ^ 1'd1);
assign xor_ln148_24_fu_1890_p2 = (bit_sel11_fu_1882_p3 ^ 1'd1);
assign xor_ln148_25_fu_1924_p2 = (bit_sel12_fu_1916_p3 ^ 1'd1);
assign xor_ln148_26_fu_2026_p2 = (bit_sel14_fu_2018_p3 ^ 1'd1);
assign xor_ln148_27_fu_2060_p2 = (bit_sel15_fu_2052_p3 ^ 1'd1);
assign xor_ln148_28_fu_1614_p2 = (bit_sel17_fu_1606_p3 ^ 1'd1);
assign xor_ln148_29_fu_1648_p2 = (bit_sel18_fu_1640_p3 ^ 1'd1);
assign xor_ln148_2_fu_1764_p3 = {{xor_ln148_20_fu_1754_p2}, {trunc_ln148_2_fu_1760_p1}};
assign xor_ln148_30_fu_1822_p2 = (bit_sel19_fu_1814_p3 ^ 1'd1);
assign xor_ln148_31_fu_1856_p2 = (bit_sel16_fu_1848_p3 ^ 1'd1);
assign xor_ln148_32_fu_1683_p2 = (bit_sel13_fu_1675_p3 ^ 1'd1);
assign xor_ln148_33_fu_1719_p2 = (bit_sel10_fu_1711_p3 ^ 1'd1);
assign xor_ln148_34_fu_1958_p2 = (bit_sel7_fu_1950_p3 ^ 1'd1);
assign xor_ln148_35_fu_1992_p2 = (bit_sel4_fu_1984_p3 ^ 1'd1);
assign xor_ln148_36_fu_2094_p2 = (bit_sel1_fu_2086_p3 ^ 1'd1);
assign xor_ln148_37_fu_2128_p2 = (bit_sel_fu_2120_p3 ^ 1'd1);
assign xor_ln148_3_fu_1798_p3 = {{xor_ln148_21_fu_1788_p2}, {trunc_ln148_3_fu_1794_p1}};
assign xor_ln148_4_fu_1553_p3 = {{xor_ln148_22_fu_1543_p2}, {trunc_ln148_4_fu_1549_p1}};
assign xor_ln148_5_fu_1589_p3 = {{xor_ln148_23_fu_1579_p2}, {trunc_ln148_5_fu_1585_p1}};
assign xor_ln148_6_fu_1900_p3 = {{xor_ln148_24_fu_1890_p2}, {trunc_ln148_6_fu_1896_p1}};
assign xor_ln148_7_fu_1934_p3 = {{xor_ln148_25_fu_1924_p2}, {trunc_ln148_7_fu_1930_p1}};
assign xor_ln148_8_fu_2036_p3 = {{xor_ln148_26_fu_2026_p2}, {trunc_ln148_8_fu_2032_p1}};
assign xor_ln148_9_fu_2070_p3 = {{xor_ln148_27_fu_2060_p2}, {trunc_ln148_9_fu_2066_p1}};
assign xor_ln148_fu_1508_p2 = (bit_sel3_fu_1500_p3 ^ 1'd1);
assign xor_ln148_s_fu_1624_p3 = {{xor_ln148_28_fu_1614_p2}, {trunc_ln148_10_fu_1620_p1}};
assign xor_ln1_fu_1484_p3 = {{xor_ln148_19_fu_1474_p2}, {trunc_ln148_fu_1480_p1}};
assign zext_ln127_1_fu_1067_p1 = tid_7_reg_2158;
assign zext_ln127_2_fu_1091_p1 = tid_7_reg_2158;
assign zext_ln127_fu_1297_p1 = tid_7_reg_2158;
assign zext_ln129_fu_1356_p1 = or_ln3_fu_1348_p3;
assign zext_ln130_1_fu_1100_p1 = add_ln130_fu_1094_p2;
assign zext_ln130_cast_fu_1043_p3 = {{1'd1}, {trunc_ln127_fu_1039_p1}};
assign zext_ln130_fu_1051_p1 = $unsigned(zext_ln130_cast_fu_1043_p3);
assign zext_ln131_1_cast_fu_1229_p4 = {{{{1'd1}, {tmp_42_fu_1220_p4}}}, {1'd1}};
assign zext_ln131_1_fu_1239_p1 = $unsigned(zext_ln131_1_cast_fu_1229_p4);
assign zext_ln131_cast_fu_1191_p3 = {{1'd1}, {tid_7_reg_2158}};
assign zext_ln131_fu_1198_p1 = $unsigned(zext_ln131_cast_fu_1191_p3);
assign zext_ln132_1_fu_1111_p1 = add_ln132_fu_1106_p2;
assign zext_ln132_fu_1061_p1 = $unsigned(sext_ln132_fu_1057_p1);
assign zext_ln133_1_cast_fu_1371_p4 = {{{{1'd1}, {zext_ln133_1_fu_1368_p1}}}, {1'd1}};
assign zext_ln133_1_fu_1368_p1 = tmp_42_reg_2349;
assign zext_ln133_2_fu_1381_p1 = zext_ln133_1_cast_fu_1371_p4;
assign zext_ln133_cast_fu_1308_p3 = {{1'd1}, {zext_ln127_2_reg_2230}};
assign zext_ln133_fu_1315_p1 = zext_ln133_cast_fu_1308_p3;
assign zext_ln134_1_fu_1170_p1 = add_ln134_1_fu_1165_p2;
assign zext_ln134_fu_1076_p1 = add_ln134_fu_1070_p2;
assign zext_ln135_1_fu_1261_p1 = $unsigned(sext_ln135_1_fu_1257_p1);
assign zext_ln135_fu_1208_p1 = $unsigned(sext_ln135_fu_1204_p1);
assign zext_ln136_1_fu_1185_p1 = $unsigned(sext_ln136_1_fu_1181_p1);
assign zext_ln136_fu_1085_p1 = $unsigned(sext_ln136_fu_1082_p1);
always @ (posedge ap_clk) begin
    zext_ln130_cast_reg_2179[6] <= 1'b1;
    zext_ln127_1_reg_2204[8:7] <= 2'b00;
    zext_ln127_2_reg_2230[7] <= 1'b0;
    zext_ln127_reg_2416[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter5_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter6_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter7_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter8_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter9_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter10_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter11_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter12_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter13_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter14_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter15_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter16_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter17_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter18_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter19_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter20_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter21_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln127_reg_2416_pp0_iter22_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    or_ln3_reg_2480[0] <= 1'b1;
    or_ln3_reg_2480_pp0_iter1_reg[0] <= 1'b1;
    or_ln3_reg_2480_pp0_iter2_reg[0] <= 1'b1;
    or_ln3_reg_2480_pp0_iter3_reg[0] <= 1'b1;
    or_ln3_reg_2480_pp0_iter4_reg[0] <= 1'b1;
    or_ln3_reg_2480_pp0_iter5_reg[0] <= 1'b1;
    or_ln3_reg_2480_pp0_iter6_reg[0] <= 1'b1;
    or_ln3_reg_2480_pp0_iter7_reg[0] <= 1'b1;
    zext_ln129_reg_2485[0] <= 1'b1;
    zext_ln129_reg_2485[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter1_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter2_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter3_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter4_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter5_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter5_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter6_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter6_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter7_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter7_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter8_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter8_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter9_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter9_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter10_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter10_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter11_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter11_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter12_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter12_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter13_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter13_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter14_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter14_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter15_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter15_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter16_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter16_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter17_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter17_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter18_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter18_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter19_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter19_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter20_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter20_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter21_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter21_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln129_reg_2485_pp0_iter22_reg[0] <= 1'b1;
    zext_ln129_reg_2485_pp0_iter22_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 