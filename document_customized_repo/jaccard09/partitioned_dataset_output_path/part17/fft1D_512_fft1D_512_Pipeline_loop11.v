
module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_16_address0,DATA_y_16_ce0,DATA_y_16_q0,DATA_y_24_address0,DATA_y_24_ce0,DATA_y_24_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_17_address0,DATA_y_17_ce0,DATA_y_17_q0,DATA_y_25_address0,DATA_y_25_ce0,DATA_y_25_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_18_address0,DATA_y_18_ce0,DATA_y_18_q0,DATA_y_26_address0,DATA_y_26_ce0,DATA_y_26_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_19_address0,DATA_y_19_ce0,DATA_y_19_q0,DATA_y_27_address0,DATA_y_27_ce0,DATA_y_27_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_20_address0,DATA_y_20_ce0,DATA_y_20_q0,DATA_y_28_address0,DATA_y_28_ce0,DATA_y_28_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_21_address0,DATA_y_21_ce0,DATA_y_21_q0,DATA_y_29_address0,DATA_y_29_ce0,DATA_y_29_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_22_address0,DATA_y_22_ce0,DATA_y_22_q0,DATA_y_30_address0,DATA_y_30_ce0,DATA_y_30_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0,DATA_y_23_address0,DATA_y_23_ce0,DATA_y_23_q0,DATA_y_31_address0,DATA_y_31_ce0,DATA_y_31_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_q0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_q0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_q0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_q0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_q0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_q0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_q0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_q0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_11139_p_din0,grp_fu_11139_p_din1,grp_fu_11139_p_opcode,grp_fu_11139_p_dout0,grp_fu_11139_p_ce,grp_fu_11143_p_din0,grp_fu_11143_p_din1,grp_fu_11143_p_opcode,grp_fu_11143_p_dout0,grp_fu_11143_p_ce,grp_fu_11147_p_din0,grp_fu_11147_p_din1,grp_fu_11147_p_opcode,grp_fu_11147_p_dout0,grp_fu_11147_p_ce,grp_fu_11151_p_din0,grp_fu_11151_p_din1,grp_fu_11151_p_opcode,grp_fu_11151_p_dout0,grp_fu_11151_p_ce,grp_fu_11155_p_din0,grp_fu_11155_p_din1,grp_fu_11155_p_opcode,grp_fu_11155_p_dout0,grp_fu_11155_p_ce,grp_fu_11159_p_din0,grp_fu_11159_p_din1,grp_fu_11159_p_opcode,grp_fu_11159_p_dout0,grp_fu_11159_p_ce,grp_fu_11163_p_din0,grp_fu_11163_p_din1,grp_fu_11163_p_opcode,grp_fu_11163_p_dout0,grp_fu_11163_p_ce,grp_fu_11167_p_din0,grp_fu_11167_p_din1,grp_fu_11167_p_opcode,grp_fu_11167_p_dout0,grp_fu_11167_p_ce,grp_fu_11171_p_din0,grp_fu_11171_p_din1,grp_fu_11171_p_opcode,grp_fu_11171_p_dout0,grp_fu_11171_p_ce,grp_fu_11175_p_din0,grp_fu_11175_p_din1,grp_fu_11175_p_opcode,grp_fu_11175_p_dout0,grp_fu_11175_p_ce,grp_fu_11179_p_din0,grp_fu_11179_p_din1,grp_fu_11179_p_opcode,grp_fu_11179_p_dout0,grp_fu_11179_p_ce,grp_fu_11183_p_din0,grp_fu_11183_p_din1,grp_fu_11183_p_opcode,grp_fu_11183_p_dout0,grp_fu_11183_p_ce,grp_fu_11187_p_din0,grp_fu_11187_p_din1,grp_fu_11187_p_opcode,grp_fu_11187_p_dout0,grp_fu_11187_p_ce,grp_fu_11191_p_din0,grp_fu_11191_p_din1,grp_fu_11191_p_opcode,grp_fu_11191_p_dout0,grp_fu_11191_p_ce,grp_fu_11195_p_din0,grp_fu_11195_p_din1,grp_fu_11195_p_opcode,grp_fu_11195_p_dout0,grp_fu_11195_p_ce,grp_fu_11199_p_din0,grp_fu_11199_p_din1,grp_fu_11199_p_dout0,grp_fu_11199_p_ce,grp_fu_11203_p_din0,grp_fu_11203_p_din1,grp_fu_11203_p_dout0,grp_fu_11203_p_ce,grp_fu_11207_p_din0,grp_fu_11207_p_din1,grp_fu_11207_p_dout0,grp_fu_11207_p_ce,grp_fu_11236_p_din0,grp_fu_11236_p_din1,grp_fu_11236_p_dout0,grp_fu_11236_p_ce);  
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
output  [3:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [3:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [3:0] DATA_y_16_address0;
output   DATA_y_16_ce0;
input  [63:0] DATA_y_16_q0;
output  [3:0] DATA_y_24_address0;
output   DATA_y_24_ce0;
input  [63:0] DATA_y_24_q0;
output  [3:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [3:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [3:0] DATA_y_17_address0;
output   DATA_y_17_ce0;
input  [63:0] DATA_y_17_q0;
output  [3:0] DATA_y_25_address0;
output   DATA_y_25_ce0;
input  [63:0] DATA_y_25_q0;
output  [3:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [3:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [3:0] DATA_y_18_address0;
output   DATA_y_18_ce0;
input  [63:0] DATA_y_18_q0;
output  [3:0] DATA_y_26_address0;
output   DATA_y_26_ce0;
input  [63:0] DATA_y_26_q0;
output  [3:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [3:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [3:0] DATA_y_19_address0;
output   DATA_y_19_ce0;
input  [63:0] DATA_y_19_q0;
output  [3:0] DATA_y_27_address0;
output   DATA_y_27_ce0;
input  [63:0] DATA_y_27_q0;
output  [3:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [3:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [3:0] DATA_y_20_address0;
output   DATA_y_20_ce0;
input  [63:0] DATA_y_20_q0;
output  [3:0] DATA_y_28_address0;
output   DATA_y_28_ce0;
input  [63:0] DATA_y_28_q0;
output  [3:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [3:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [3:0] DATA_y_21_address0;
output   DATA_y_21_ce0;
input  [63:0] DATA_y_21_q0;
output  [3:0] DATA_y_29_address0;
output   DATA_y_29_ce0;
input  [63:0] DATA_y_29_q0;
output  [3:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [3:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [3:0] DATA_y_22_address0;
output   DATA_y_22_ce0;
input  [63:0] DATA_y_22_q0;
output  [3:0] DATA_y_30_address0;
output   DATA_y_30_ce0;
input  [63:0] DATA_y_30_q0;
output  [3:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [3:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
output  [3:0] DATA_y_23_address0;
output   DATA_y_23_ce0;
input  [63:0] DATA_y_23_q0;
output  [3:0] DATA_y_31_address0;
output   DATA_y_31_ce0;
input  [63:0] DATA_y_31_q0;
output  [3:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [3:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [3:0] DATA_x_16_address0;
output   DATA_x_16_ce0;
input  [63:0] DATA_x_16_q0;
output  [3:0] DATA_x_24_address0;
output   DATA_x_24_ce0;
input  [63:0] DATA_x_24_q0;
output  [3:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [3:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [3:0] DATA_x_17_address0;
output   DATA_x_17_ce0;
input  [63:0] DATA_x_17_q0;
output  [3:0] DATA_x_25_address0;
output   DATA_x_25_ce0;
input  [63:0] DATA_x_25_q0;
output  [3:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [3:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [3:0] DATA_x_18_address0;
output   DATA_x_18_ce0;
input  [63:0] DATA_x_18_q0;
output  [3:0] DATA_x_26_address0;
output   DATA_x_26_ce0;
input  [63:0] DATA_x_26_q0;
output  [3:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [3:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [3:0] DATA_x_19_address0;
output   DATA_x_19_ce0;
input  [63:0] DATA_x_19_q0;
output  [3:0] DATA_x_27_address0;
output   DATA_x_27_ce0;
input  [63:0] DATA_x_27_q0;
output  [3:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [3:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [3:0] DATA_x_20_address0;
output   DATA_x_20_ce0;
input  [63:0] DATA_x_20_q0;
output  [3:0] DATA_x_28_address0;
output   DATA_x_28_ce0;
input  [63:0] DATA_x_28_q0;
output  [3:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [3:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [3:0] DATA_x_21_address0;
output   DATA_x_21_ce0;
input  [63:0] DATA_x_21_q0;
output  [3:0] DATA_x_29_address0;
output   DATA_x_29_ce0;
input  [63:0] DATA_x_29_q0;
output  [3:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [3:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [3:0] DATA_x_22_address0;
output   DATA_x_22_ce0;
input  [63:0] DATA_x_22_q0;
output  [3:0] DATA_x_30_address0;
output   DATA_x_30_ce0;
input  [63:0] DATA_x_30_q0;
output  [3:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [3:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [3:0] DATA_x_23_address0;
output   DATA_x_23_ce0;
input  [63:0] DATA_x_23_q0;
output  [3:0] DATA_x_31_address0;
output   DATA_x_31_ce0;
input  [63:0] DATA_x_31_q0;
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
output  [63:0] grp_fu_11139_p_din0;
output  [63:0] grp_fu_11139_p_din1;
output  [1:0] grp_fu_11139_p_opcode;
input  [63:0] grp_fu_11139_p_dout0;
output   grp_fu_11139_p_ce;
output  [63:0] grp_fu_11143_p_din0;
output  [63:0] grp_fu_11143_p_din1;
output  [1:0] grp_fu_11143_p_opcode;
input  [63:0] grp_fu_11143_p_dout0;
output   grp_fu_11143_p_ce;
output  [63:0] grp_fu_11147_p_din0;
output  [63:0] grp_fu_11147_p_din1;
output  [1:0] grp_fu_11147_p_opcode;
input  [63:0] grp_fu_11147_p_dout0;
output   grp_fu_11147_p_ce;
output  [63:0] grp_fu_11151_p_din0;
output  [63:0] grp_fu_11151_p_din1;
output  [1:0] grp_fu_11151_p_opcode;
input  [63:0] grp_fu_11151_p_dout0;
output   grp_fu_11151_p_ce;
output  [63:0] grp_fu_11155_p_din0;
output  [63:0] grp_fu_11155_p_din1;
output  [1:0] grp_fu_11155_p_opcode;
input  [63:0] grp_fu_11155_p_dout0;
output   grp_fu_11155_p_ce;
output  [63:0] grp_fu_11159_p_din0;
output  [63:0] grp_fu_11159_p_din1;
output  [1:0] grp_fu_11159_p_opcode;
input  [63:0] grp_fu_11159_p_dout0;
output   grp_fu_11159_p_ce;
output  [63:0] grp_fu_11163_p_din0;
output  [63:0] grp_fu_11163_p_din1;
output  [1:0] grp_fu_11163_p_opcode;
input  [63:0] grp_fu_11163_p_dout0;
output   grp_fu_11163_p_ce;
output  [63:0] grp_fu_11167_p_din0;
output  [63:0] grp_fu_11167_p_din1;
output  [1:0] grp_fu_11167_p_opcode;
input  [63:0] grp_fu_11167_p_dout0;
output   grp_fu_11167_p_ce;
output  [63:0] grp_fu_11171_p_din0;
output  [63:0] grp_fu_11171_p_din1;
output  [1:0] grp_fu_11171_p_opcode;
input  [63:0] grp_fu_11171_p_dout0;
output   grp_fu_11171_p_ce;
output  [63:0] grp_fu_11175_p_din0;
output  [63:0] grp_fu_11175_p_din1;
output  [1:0] grp_fu_11175_p_opcode;
input  [63:0] grp_fu_11175_p_dout0;
output   grp_fu_11175_p_ce;
output  [63:0] grp_fu_11179_p_din0;
output  [63:0] grp_fu_11179_p_din1;
output  [1:0] grp_fu_11179_p_opcode;
input  [63:0] grp_fu_11179_p_dout0;
output   grp_fu_11179_p_ce;
output  [63:0] grp_fu_11183_p_din0;
output  [63:0] grp_fu_11183_p_din1;
output  [1:0] grp_fu_11183_p_opcode;
input  [63:0] grp_fu_11183_p_dout0;
output   grp_fu_11183_p_ce;
output  [63:0] grp_fu_11187_p_din0;
output  [63:0] grp_fu_11187_p_din1;
output  [1:0] grp_fu_11187_p_opcode;
input  [63:0] grp_fu_11187_p_dout0;
output   grp_fu_11187_p_ce;
output  [63:0] grp_fu_11191_p_din0;
output  [63:0] grp_fu_11191_p_din1;
output  [1:0] grp_fu_11191_p_opcode;
input  [63:0] grp_fu_11191_p_dout0;
output   grp_fu_11191_p_ce;
output  [63:0] grp_fu_11195_p_din0;
output  [63:0] grp_fu_11195_p_din1;
output  [1:0] grp_fu_11195_p_opcode;
input  [63:0] grp_fu_11195_p_dout0;
output   grp_fu_11195_p_ce;
output  [63:0] grp_fu_11199_p_din0;
output  [63:0] grp_fu_11199_p_din1;
input  [63:0] grp_fu_11199_p_dout0;
output   grp_fu_11199_p_ce;
output  [63:0] grp_fu_11203_p_din0;
output  [63:0] grp_fu_11203_p_din1;
input  [63:0] grp_fu_11203_p_dout0;
output   grp_fu_11203_p_ce;
output  [63:0] grp_fu_11207_p_din0;
output  [63:0] grp_fu_11207_p_din1;
input  [63:0] grp_fu_11207_p_dout0;
output   grp_fu_11207_p_ce;
output  [63:0] grp_fu_11236_p_din0;
output  [63:0] grp_fu_11236_p_din1;
input  [63:0] grp_fu_11236_p_dout0;
output   grp_fu_11236_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln365_reg_2273;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_2262;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_2262_pp0_iter1_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter2_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter3_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter4_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter5_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter6_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter7_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter8_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter9_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter10_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter11_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter12_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter13_reg;
reg   [6:0] tid_5_reg_2262_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_1274_p2;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_2273_pp0_iter13_reg;
wire   [63:0] c0_y_fu_1361_p11;
reg   [63:0] c0_y_reg_2597;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] c0_y_95_fu_1385_p11;
reg   [63:0] c0_y_95_reg_2603;
wire   [63:0] c0_y_96_fu_1409_p11;
reg   [63:0] c0_y_96_reg_2609;
wire   [63:0] c0_y_97_fu_1433_p11;
reg   [63:0] c0_y_97_reg_2614;
wire   [63:0] tmp_s_fu_1457_p11;
reg   [63:0] tmp_s_reg_2620;
wire   [63:0] tmp_97_fu_1481_p11;
reg   [63:0] tmp_97_reg_2626;
wire   [63:0] tmp_98_fu_1505_p11;
reg   [63:0] tmp_98_reg_2632;
wire   [63:0] tmp_99_fu_1529_p11;
reg   [63:0] tmp_99_reg_2637;
wire   [63:0] c0_x_fu_1553_p11;
reg   [63:0] c0_x_reg_2643;
wire   [63:0] c0_x_95_fu_1577_p11;
reg   [63:0] c0_x_95_reg_2649;
wire   [63:0] c0_x_96_fu_1601_p11;
reg   [63:0] c0_x_96_reg_2655;
wire   [63:0] c0_x_97_fu_1625_p11;
reg   [63:0] c0_x_97_reg_2660;
wire   [63:0] tmp_100_fu_1649_p11;
reg   [63:0] tmp_100_reg_2666;
wire   [63:0] tmp_101_fu_1673_p11;
reg   [63:0] tmp_101_reg_2672;
wire   [63:0] tmp_102_fu_1697_p11;
reg   [63:0] tmp_102_reg_2678;
wire   [63:0] tmp_103_fu_1721_p11;
reg   [63:0] tmp_103_reg_2683;
reg   [63:0] c0_x_99_reg_2689;
reg   [63:0] c0_y_99_reg_2695;
reg   [63:0] tmp_1_reg_2701;
reg   [63:0] sub_reg_2707;
reg   [63:0] tmp_1_23_reg_2713;
reg   [63:0] tmp_1_23_reg_2713_pp0_iter3_reg;
reg   [63:0] tmp_1_23_reg_2713_pp0_iter4_reg;
reg   [63:0] sub12_reg_2719;
reg   [63:0] sub12_reg_2719_pp0_iter3_reg;
reg   [63:0] sub12_reg_2719_pp0_iter4_reg;
reg   [63:0] add12_reg_2725;
reg   [63:0] add13_reg_2731;
reg   [63:0] tmp_1_24_reg_2737;
reg   [63:0] sub13_reg_2742;
reg   [63:0] c0_x_101_reg_2747;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_101_reg_2753;
reg   [63:0] c0_x_98_reg_2759;
reg   [63:0] c0_x_98_reg_2759_pp0_iter3_reg;
reg   [63:0] c0_x_98_reg_2759_pp0_iter4_reg;
reg   [63:0] c0_x_98_reg_2759_pp0_iter5_reg;
reg   [63:0] c0_x_98_reg_2759_pp0_iter6_reg;
reg   [63:0] c0_y_98_reg_2765;
reg   [63:0] c0_y_98_reg_2765_pp0_iter3_reg;
reg   [63:0] c0_y_98_reg_2765_pp0_iter4_reg;
reg   [63:0] c0_y_98_reg_2765_pp0_iter5_reg;
reg   [63:0] c0_y_98_reg_2765_pp0_iter6_reg;
reg   [63:0] add_reg_2771;
reg   [63:0] add11_reg_2777;
wire   [63:0] bitcast_ln386_1_fu_1784_p1;
wire   [63:0] bitcast_ln386_3_fu_1818_p1;
wire   [63:0] bitcast_ln386_9_fu_1852_p1;
wire   [63:0] bitcast_ln386_11_fu_1887_p1;
reg   [63:0] sub14_reg_2805;
reg   [63:0] add14_reg_2810;
reg   [63:0] mul_reg_2815;
reg   [63:0] mul6_reg_2820;
reg   [63:0] sub16_reg_2825;
reg   [63:0] add16_reg_2830;
reg   [63:0] tmp_95_reg_2835;
reg   [63:0] tmp_95_reg_2835_pp0_iter5_reg;
reg   [63:0] tmp_95_reg_2835_pp0_iter6_reg;
reg   [63:0] c0_x_103_reg_2841;
reg   [63:0] c0_y_103_reg_2847;
reg   [63:0] sub17_reg_2853;
reg   [63:0] sub17_reg_2853_pp0_iter5_reg;
reg   [63:0] sub17_reg_2853_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_1922_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_1956_p1;
reg   [63:0] c0_x_102_reg_2869;
reg   [63:0] c0_x_102_reg_2869_pp0_iter5_reg;
reg   [63:0] c0_x_102_reg_2869_pp0_iter6_reg;
reg   [63:0] c0_x_102_reg_2869_pp0_iter7_reg;
reg   [63:0] c0_x_102_reg_2869_pp0_iter8_reg;
reg   [63:0] c0_y_102_reg_2875;
reg   [63:0] c0_y_102_reg_2875_pp0_iter5_reg;
reg   [63:0] c0_y_102_reg_2875_pp0_iter6_reg;
reg   [63:0] c0_y_102_reg_2875_pp0_iter7_reg;
reg   [63:0] c0_y_102_reg_2875_pp0_iter8_reg;
reg   [63:0] add17_reg_2881;
reg   [63:0] add18_reg_2887;
reg   [63:0] c0_x_100_reg_2893;
reg   [63:0] c0_y_100_reg_2899;
reg   [63:0] mul7_reg_2905;
reg   [63:0] mul8_reg_2911;
reg   [63:0] mul9_reg_2917;
reg   [63:0] mul10_reg_2922;
reg   [63:0] sub15_reg_2927;
reg   [63:0] add15_reg_2933;
reg   [63:0] sub20_reg_2939;
reg   [63:0] sub20_reg_2939_pp0_iter7_reg;
reg   [63:0] sub20_reg_2939_pp0_iter8_reg;
reg   [63:0] sub20_reg_2939_pp0_iter9_reg;
reg   [63:0] sub20_reg_2939_pp0_iter10_reg;
reg   [63:0] sub20_reg_2939_pp0_iter11_reg;
reg   [63:0] sub20_reg_2939_pp0_iter12_reg;
reg   [63:0] sub20_reg_2939_pp0_iter13_reg;
reg   [63:0] sub21_reg_2944;
reg   [63:0] sub21_reg_2944_pp0_iter7_reg;
reg   [63:0] sub21_reg_2944_pp0_iter8_reg;
reg   [63:0] sub21_reg_2944_pp0_iter9_reg;
reg   [63:0] sub21_reg_2944_pp0_iter10_reg;
reg   [63:0] sub21_reg_2944_pp0_iter11_reg;
reg   [63:0] sub21_reg_2944_pp0_iter12_reg;
reg   [63:0] sub21_reg_2944_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_1990_p1;
wire   [63:0] bitcast_ln386_15_fu_2024_p1;
reg   [63:0] add19_reg_2959;
reg   [63:0] add19_reg_2959_pp0_iter8_reg;
reg   [63:0] add19_reg_2959_pp0_iter9_reg;
reg   [63:0] add19_reg_2959_pp0_iter10_reg;
reg   [63:0] add19_reg_2959_pp0_iter11_reg;
reg   [63:0] add19_reg_2959_pp0_iter12_reg;
reg   [63:0] add19_reg_2959_pp0_iter13_reg;
reg   [63:0] add20_reg_2964;
reg   [63:0] add20_reg_2964_pp0_iter8_reg;
reg   [63:0] add20_reg_2964_pp0_iter9_reg;
reg   [63:0] add20_reg_2964_pp0_iter10_reg;
reg   [63:0] add20_reg_2964_pp0_iter11_reg;
reg   [63:0] add20_reg_2964_pp0_iter12_reg;
reg   [63:0] add20_reg_2964_pp0_iter13_reg;
reg   [63:0] add23_reg_2969;
reg   [63:0] add23_reg_2969_pp0_iter9_reg;
reg   [63:0] add24_reg_2974;
reg   [63:0] add24_reg_2974_pp0_iter9_reg;
reg   [63:0] tmp_96_reg_2979;
reg   [63:0] tmp_96_reg_2979_pp0_iter9_reg;
reg   [63:0] sub24_reg_2985;
reg   [63:0] sub24_reg_2985_pp0_iter9_reg;
reg   [63:0] c0_x_105_reg_2991;
reg   [63:0] c0_y_105_reg_2996;
reg   [63:0] c0_x_104_reg_3001;
reg   [63:0] c0_x_104_reg_3001_pp0_iter9_reg;
reg   [63:0] c0_x_104_reg_3001_pp0_iter10_reg;
reg   [63:0] c0_x_104_reg_3001_pp0_iter11_reg;
reg   [63:0] c0_y_104_reg_3007;
reg   [63:0] c0_y_104_reg_3007_pp0_iter9_reg;
reg   [63:0] c0_y_104_reg_3007_pp0_iter10_reg;
reg   [63:0] c0_y_104_reg_3007_pp0_iter11_reg;
reg   [63:0] sub18_reg_3013;
reg   [63:0] sub19_reg_3019;
reg   [63:0] mul11_reg_3025;
reg   [63:0] mul12_reg_3030;
wire   [63:0] bitcast_ln386_17_fu_2058_p1;
wire   [63:0] bitcast_ln386_19_fu_2092_p1;
reg   [63:0] add21_reg_3045;
reg   [63:0] add21_reg_3045_pp0_iter11_reg;
reg   [63:0] add21_reg_3045_pp0_iter12_reg;
reg   [63:0] add25_reg_3050;
reg   [63:0] add25_reg_3050_pp0_iter11_reg;
reg   [63:0] add25_reg_3050_pp0_iter12_reg;
reg   [63:0] add26_reg_3055;
reg   [63:0] add26_reg_3055_pp0_iter11_reg;
reg   [63:0] add26_reg_3055_pp0_iter12_reg;
reg   [63:0] add22_reg_3060;
reg   [63:0] add22_reg_3060_pp0_iter12_reg;
reg   [63:0] add22_reg_3060_pp0_iter13_reg;
reg   [63:0] sub22_reg_3065;
reg   [63:0] sub22_reg_3065_pp0_iter12_reg;
reg   [63:0] sub22_reg_3065_pp0_iter13_reg;
reg   [63:0] sub22_reg_3065_pp0_iter14_reg;
reg   [63:0] sub23_reg_3070;
reg   [63:0] sub23_reg_3070_pp0_iter12_reg;
reg   [63:0] sub23_reg_3070_pp0_iter13_reg;
reg   [63:0] sub23_reg_3070_pp0_iter14_reg;
reg   [63:0] sub27_reg_3075;
reg   [63:0] sub27_reg_3075_pp0_iter12_reg;
reg   [63:0] sub27_reg_3075_pp0_iter13_reg;
reg   [63:0] sub27_reg_3075_pp0_iter14_reg;
reg   [63:0] sub28_reg_3080;
reg   [63:0] sub28_reg_3080_pp0_iter12_reg;
reg   [63:0] sub28_reg_3080_pp0_iter13_reg;
reg   [63:0] sub28_reg_3080_pp0_iter14_reg;
reg   [63:0] sub25_reg_3085;
reg   [63:0] sub26_reg_3091;
reg   [63:0] add27_reg_3097;
reg   [63:0] add28_reg_3102;
wire  signed [6:0] zext_ln390_cast_fu_2100_p3;
reg  signed [6:0] zext_ln390_cast_reg_3107;
wire  signed [7:0] zext_ln391_cast_fu_2118_p3;
reg  signed [7:0] zext_ln391_cast_reg_3113;
reg   [63:0] sub29_reg_3118;
reg   [63:0] sub30_reg_3123;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln367_fu_1290_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln390_fu_2108_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_2125_p1;
wire   [63:0] zext_ln365_fu_2143_p1;
wire   [63:0] zext_ln392_fu_2155_p1;
wire   [63:0] zext_ln393_1_fu_2184_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_2197_p1;
wire   [63:0] zext_ln394_fu_2224_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_2237_p1;
reg   [6:0] tid_fu_200;
wire   [6:0] add_ln365_fu_1745_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_16_ce0_local;
reg    DATA_y_24_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_17_ce0_local;
reg    DATA_y_25_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_18_ce0_local;
reg    DATA_y_26_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_19_ce0_local;
reg    DATA_y_27_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_20_ce0_local;
reg    DATA_y_28_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_21_ce0_local;
reg    DATA_y_29_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_22_ce0_local;
reg    DATA_y_30_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_15_ce0_local;
reg    DATA_y_23_ce0_local;
reg    DATA_y_31_ce0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_16_ce0_local;
reg    DATA_x_24_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_17_ce0_local;
reg    DATA_x_25_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_18_ce0_local;
reg    DATA_x_26_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_19_ce0_local;
reg    DATA_x_27_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_20_ce0_local;
reg    DATA_x_28_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_21_ce0_local;
reg    DATA_x_29_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_22_ce0_local;
reg    DATA_x_30_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_15_ce0_local;
reg    DATA_x_23_ce0_local;
reg    DATA_x_31_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_2114_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_2131_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_2148_p1;
wire   [63:0] bitcast_ln392_fu_2161_p1;
wire   [63:0] bitcast_ln393_fu_2190_p1;
wire   [63:0] bitcast_ln395_fu_2203_p1;
wire   [63:0] bitcast_ln394_fu_2230_p1;
wire   [63:0] bitcast_ln396_fu_2243_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_2135_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_2139_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_2165_p1;
wire   [63:0] bitcast_ln401_fu_2169_p1;
wire   [63:0] bitcast_ln402_fu_2207_p1;
wire   [63:0] bitcast_ln404_fu_2211_p1;
wire   [63:0] bitcast_ln403_fu_2247_p1;
wire   [63:0] bitcast_ln405_fu_2251_p1;
reg   [63:0] grp_fu_1182_p0;
reg   [63:0] grp_fu_1182_p1;
reg   [63:0] grp_fu_1186_p0;
reg   [63:0] grp_fu_1186_p1;
reg   [63:0] grp_fu_1190_p0;
reg   [63:0] grp_fu_1190_p1;
reg   [63:0] grp_fu_1194_p0;
reg   [63:0] grp_fu_1194_p1;
reg   [63:0] grp_fu_1198_p0;
reg   [63:0] grp_fu_1198_p1;
reg   [63:0] grp_fu_1202_p0;
reg   [63:0] grp_fu_1202_p1;
reg   [63:0] grp_fu_1206_p0;
reg   [63:0] grp_fu_1206_p1;
reg   [63:0] grp_fu_1210_p0;
reg   [63:0] grp_fu_1210_p1;
reg   [63:0] grp_fu_1214_p0;
reg   [63:0] grp_fu_1214_p1;
reg   [63:0] grp_fu_1218_p0;
reg   [63:0] grp_fu_1218_p1;
reg   [63:0] grp_fu_1222_p0;
reg   [63:0] grp_fu_1222_p1;
reg   [63:0] grp_fu_1226_p0;
reg   [63:0] grp_fu_1226_p1;
reg   [63:0] grp_fu_1230_p0;
reg   [63:0] grp_fu_1230_p1;
reg   [63:0] grp_fu_1234_p0;
reg   [63:0] grp_fu_1234_p1;
reg   [63:0] grp_fu_1238_p0;
reg   [63:0] grp_fu_1238_p1;
reg   [63:0] grp_fu_1242_p0;
reg   [63:0] grp_fu_1242_p1;
reg   [63:0] grp_fu_1247_p0;
reg   [63:0] grp_fu_1247_p1;
reg   [63:0] grp_fu_1254_p0;
reg   [63:0] grp_fu_1254_p1;
reg   [63:0] grp_fu_1259_p0;
reg   [63:0] grp_fu_1259_p1;
wire   [3:0] lshr_ln_fu_1280_p4;
wire   [63:0] c0_y_fu_1361_p9;
wire   [1:0] trunc_ln365_fu_1358_p1;
wire   [63:0] c0_y_95_fu_1385_p9;
wire   [63:0] c0_y_96_fu_1409_p9;
wire   [63:0] c0_y_97_fu_1433_p9;
wire   [63:0] tmp_s_fu_1457_p9;
wire   [63:0] tmp_97_fu_1481_p9;
wire   [63:0] tmp_98_fu_1505_p9;
wire   [63:0] tmp_99_fu_1529_p9;
wire   [63:0] c0_x_fu_1553_p9;
wire   [63:0] c0_x_95_fu_1577_p9;
wire   [63:0] c0_x_96_fu_1601_p9;
wire   [63:0] c0_x_97_fu_1625_p9;
wire   [63:0] tmp_100_fu_1649_p9;
wire   [63:0] tmp_101_fu_1673_p9;
wire   [63:0] tmp_102_fu_1697_p9;
wire   [63:0] tmp_103_fu_1721_p9;
wire   [63:0] bitcast_ln386_fu_1755_p1;
wire   [0:0] bit_sel_fu_1758_p3;
wire   [0:0] xor_ln386_10_fu_1766_p2;
wire   [62:0] trunc_ln386_fu_1772_p1;
wire   [63:0] xor_ln3_fu_1776_p3;
wire   [63:0] bitcast_ln386_2_fu_1789_p1;
wire   [0:0] bit_sel80_fu_1792_p3;
wire   [0:0] xor_ln386_fu_1800_p2;
wire   [62:0] trunc_ln386_1_fu_1806_p1;
wire   [63:0] xor_ln386_1_fu_1810_p3;
wire   [63:0] bitcast_ln386_8_fu_1823_p1;
wire   [0:0] bit_sel83_fu_1826_p3;
wire   [0:0] xor_ln386_13_fu_1834_p2;
wire   [62:0] trunc_ln386_4_fu_1840_p1;
wire   [63:0] xor_ln386_4_fu_1844_p3;
wire   [63:0] bitcast_ln386_10_fu_1858_p1;
wire   [0:0] bit_sel84_fu_1861_p3;
wire   [0:0] xor_ln386_14_fu_1869_p2;
wire   [62:0] trunc_ln386_5_fu_1875_p1;
wire   [63:0] xor_ln386_5_fu_1879_p3;
wire   [63:0] bitcast_ln386_4_fu_1893_p1;
wire   [0:0] bit_sel81_fu_1896_p3;
wire   [0:0] xor_ln386_11_fu_1904_p2;
wire   [62:0] trunc_ln386_2_fu_1910_p1;
wire   [63:0] xor_ln386_2_fu_1914_p3;
wire   [63:0] bitcast_ln386_6_fu_1927_p1;
wire   [0:0] bit_sel82_fu_1930_p3;
wire   [0:0] xor_ln386_12_fu_1938_p2;
wire   [62:0] trunc_ln386_3_fu_1944_p1;
wire   [63:0] xor_ln386_3_fu_1948_p3;
wire   [63:0] bitcast_ln386_12_fu_1961_p1;
wire   [0:0] bit_sel85_fu_1964_p3;
wire   [0:0] xor_ln386_15_fu_1972_p2;
wire   [62:0] trunc_ln386_6_fu_1978_p1;
wire   [63:0] xor_ln386_6_fu_1982_p3;
wire   [63:0] bitcast_ln386_14_fu_1995_p1;
wire   [0:0] bit_sel86_fu_1998_p3;
wire   [0:0] xor_ln386_16_fu_2006_p2;
wire   [62:0] trunc_ln386_7_fu_2012_p1;
wire   [63:0] xor_ln386_7_fu_2016_p3;
wire   [63:0] bitcast_ln386_16_fu_2029_p1;
wire   [0:0] bit_sel87_fu_2032_p3;
wire   [0:0] xor_ln386_17_fu_2040_p2;
wire   [62:0] trunc_ln386_8_fu_2046_p1;
wire   [63:0] xor_ln386_8_fu_2050_p3;
wire   [63:0] bitcast_ln386_18_fu_2063_p1;
wire   [0:0] bit_sel88_fu_2066_p3;
wire   [0:0] xor_ln386_18_fu_2074_p2;
wire   [62:0] trunc_ln386_9_fu_2080_p1;
wire   [63:0] xor_ln386_9_fu_2084_p3;
wire   [5:0] trunc_ln390_fu_2097_p1;
wire  signed [7:0] sext_ln392_fu_2152_p1;
wire   [7:0] zext_ln393_fu_2173_p1;
wire   [8:0] zext_ln393_cast_fu_2176_p3;
wire  signed [8:0] sext_ln395_fu_2194_p1;
wire   [8:0] zext_ln365_1_fu_2215_p1;
wire   [8:0] add_ln394_fu_2218_p2;
wire  signed [8:0] sext_ln396_fu_2234_p1;
reg   [1:0] grp_fu_1182_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_1186_opcode;
reg   [1:0] grp_fu_1190_opcode;
reg   [1:0] grp_fu_1194_opcode;
reg   [1:0] grp_fu_1198_opcode;
reg   [1:0] grp_fu_1202_opcode;
reg   [1:0] grp_fu_1206_opcode;
reg   [1:0] grp_fu_1210_opcode;
reg   [1:0] grp_fu_1214_opcode;
reg   [1:0] grp_fu_1218_opcode;
reg   [1:0] grp_fu_1222_opcode;
reg   [1:0] grp_fu_1226_opcode;
reg   [1:0] grp_fu_1230_opcode;
reg   [1:0] grp_fu_1234_opcode;
reg   [1:0] grp_fu_1238_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter13_stage2;
reg    ap_idle_pp0_0to12;
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
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to14;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] c0_y_fu_1361_p1;
wire   [1:0] c0_y_fu_1361_p3;
wire  signed [1:0] c0_y_fu_1361_p5;
wire  signed [1:0] c0_y_fu_1361_p7;
wire   [1:0] c0_y_95_fu_1385_p1;
wire   [1:0] c0_y_95_fu_1385_p3;
wire  signed [1:0] c0_y_95_fu_1385_p5;
wire  signed [1:0] c0_y_95_fu_1385_p7;
wire   [1:0] c0_y_96_fu_1409_p1;
wire   [1:0] c0_y_96_fu_1409_p3;
wire  signed [1:0] c0_y_96_fu_1409_p5;
wire  signed [1:0] c0_y_96_fu_1409_p7;
wire   [1:0] c0_y_97_fu_1433_p1;
wire   [1:0] c0_y_97_fu_1433_p3;
wire  signed [1:0] c0_y_97_fu_1433_p5;
wire  signed [1:0] c0_y_97_fu_1433_p7;
wire   [1:0] tmp_s_fu_1457_p1;
wire   [1:0] tmp_s_fu_1457_p3;
wire  signed [1:0] tmp_s_fu_1457_p5;
wire  signed [1:0] tmp_s_fu_1457_p7;
wire   [1:0] tmp_97_fu_1481_p1;
wire   [1:0] tmp_97_fu_1481_p3;
wire  signed [1:0] tmp_97_fu_1481_p5;
wire  signed [1:0] tmp_97_fu_1481_p7;
wire   [1:0] tmp_98_fu_1505_p1;
wire   [1:0] tmp_98_fu_1505_p3;
wire  signed [1:0] tmp_98_fu_1505_p5;
wire  signed [1:0] tmp_98_fu_1505_p7;
wire   [1:0] tmp_99_fu_1529_p1;
wire   [1:0] tmp_99_fu_1529_p3;
wire  signed [1:0] tmp_99_fu_1529_p5;
wire  signed [1:0] tmp_99_fu_1529_p7;
wire   [1:0] c0_x_fu_1553_p1;
wire   [1:0] c0_x_fu_1553_p3;
wire  signed [1:0] c0_x_fu_1553_p5;
wire  signed [1:0] c0_x_fu_1553_p7;
wire   [1:0] c0_x_95_fu_1577_p1;
wire   [1:0] c0_x_95_fu_1577_p3;
wire  signed [1:0] c0_x_95_fu_1577_p5;
wire  signed [1:0] c0_x_95_fu_1577_p7;
wire   [1:0] c0_x_96_fu_1601_p1;
wire   [1:0] c0_x_96_fu_1601_p3;
wire  signed [1:0] c0_x_96_fu_1601_p5;
wire  signed [1:0] c0_x_96_fu_1601_p7;
wire   [1:0] c0_x_97_fu_1625_p1;
wire   [1:0] c0_x_97_fu_1625_p3;
wire  signed [1:0] c0_x_97_fu_1625_p5;
wire  signed [1:0] c0_x_97_fu_1625_p7;
wire   [1:0] tmp_100_fu_1649_p1;
wire   [1:0] tmp_100_fu_1649_p3;
wire  signed [1:0] tmp_100_fu_1649_p5;
wire  signed [1:0] tmp_100_fu_1649_p7;
wire   [1:0] tmp_101_fu_1673_p1;
wire   [1:0] tmp_101_fu_1673_p3;
wire  signed [1:0] tmp_101_fu_1673_p5;
wire  signed [1:0] tmp_101_fu_1673_p7;
wire   [1:0] tmp_102_fu_1697_p1;
wire   [1:0] tmp_102_fu_1697_p3;
wire  signed [1:0] tmp_102_fu_1697_p5;
wire  signed [1:0] tmp_102_fu_1697_p7;
wire   [1:0] tmp_103_fu_1721_p1;
wire   [1:0] tmp_103_fu_1721_p3;
wire  signed [1:0] tmp_103_fu_1721_p5;
wire  signed [1:0] tmp_103_fu_1721_p7;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_200 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2012(.din0(DATA_y_q0),.din1(DATA_y_8_q0),.din2(DATA_y_16_q0),.din3(DATA_y_24_q0),.def(c0_y_fu_1361_p9),.sel(trunc_ln365_fu_1358_p1),.dout(c0_y_fu_1361_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2013(.din0(DATA_y_1_q0),.din1(DATA_y_9_q0),.din2(DATA_y_17_q0),.din3(DATA_y_25_q0),.def(c0_y_95_fu_1385_p9),.sel(trunc_ln365_fu_1358_p1),.dout(c0_y_95_fu_1385_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2014(.din0(DATA_y_2_q0),.din1(DATA_y_10_q0),.din2(DATA_y_18_q0),.din3(DATA_y_26_q0),.def(c0_y_96_fu_1409_p9),.sel(trunc_ln365_fu_1358_p1),.dout(c0_y_96_fu_1409_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2015(.din0(DATA_y_3_q0),.din1(DATA_y_11_q0),.din2(DATA_y_19_q0),.din3(DATA_y_27_q0),.def(c0_y_97_fu_1433_p9),.sel(trunc_ln365_fu_1358_p1),.dout(c0_y_97_fu_1433_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2016(.din0(DATA_y_4_q0),.din1(DATA_y_12_q0),.din2(DATA_y_20_q0),.din3(DATA_y_28_q0),.def(tmp_s_fu_1457_p9),.sel(trunc_ln365_fu_1358_p1),.dout(tmp_s_fu_1457_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2017(.din0(DATA_y_5_q0),.din1(DATA_y_13_q0),.din2(DATA_y_21_q0),.din3(DATA_y_29_q0),.def(tmp_97_fu_1481_p9),.sel(trunc_ln365_fu_1358_p1),.dout(tmp_97_fu_1481_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2018(.din0(DATA_y_6_q0),.din1(DATA_y_14_q0),.din2(DATA_y_22_q0),.din3(DATA_y_30_q0),.def(tmp_98_fu_1505_p9),.sel(trunc_ln365_fu_1358_p1),.dout(tmp_98_fu_1505_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2019(.din0(DATA_y_7_q0),.din1(DATA_y_15_q0),.din2(DATA_y_23_q0),.din3(DATA_y_31_q0),.def(tmp_99_fu_1529_p9),.sel(trunc_ln365_fu_1358_p1),.dout(tmp_99_fu_1529_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2020(.din0(DATA_x_q0),.din1(DATA_x_8_q0),.din2(DATA_x_16_q0),.din3(DATA_x_24_q0),.def(c0_x_fu_1553_p9),.sel(trunc_ln365_fu_1358_p1),.dout(c0_x_fu_1553_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2021(.din0(DATA_x_1_q0),.din1(DATA_x_9_q0),.din2(DATA_x_17_q0),.din3(DATA_x_25_q0),.def(c0_x_95_fu_1577_p9),.sel(trunc_ln365_fu_1358_p1),.dout(c0_x_95_fu_1577_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2022(.din0(DATA_x_2_q0),.din1(DATA_x_10_q0),.din2(DATA_x_18_q0),.din3(DATA_x_26_q0),.def(c0_x_96_fu_1601_p9),.sel(trunc_ln365_fu_1358_p1),.dout(c0_x_96_fu_1601_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2023(.din0(DATA_x_3_q0),.din1(DATA_x_11_q0),.din2(DATA_x_19_q0),.din3(DATA_x_27_q0),.def(c0_x_97_fu_1625_p9),.sel(trunc_ln365_fu_1358_p1),.dout(c0_x_97_fu_1625_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2024(.din0(DATA_x_4_q0),.din1(DATA_x_12_q0),.din2(DATA_x_20_q0),.din3(DATA_x_28_q0),.def(tmp_100_fu_1649_p9),.sel(trunc_ln365_fu_1358_p1),.dout(tmp_100_fu_1649_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2025(.din0(DATA_x_5_q0),.din1(DATA_x_13_q0),.din2(DATA_x_21_q0),.din3(DATA_x_29_q0),.def(tmp_101_fu_1673_p9),.sel(trunc_ln365_fu_1358_p1),.dout(tmp_101_fu_1673_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2026(.din0(DATA_x_6_q0),.din1(DATA_x_14_q0),.din2(DATA_x_22_q0),.din3(DATA_x_30_q0),.def(tmp_102_fu_1697_p9),.sel(trunc_ln365_fu_1358_p1),.dout(tmp_102_fu_1697_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2027(.din0(DATA_x_7_q0),.din1(DATA_x_15_q0),.din2(DATA_x_23_q0),.din3(DATA_x_31_q0),.def(tmp_103_fu_1721_p9),.sel(trunc_ln365_fu_1358_p1),.dout(tmp_103_fu_1721_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter14 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_200 <= 7'd0;
    end else if (((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_200 <= add_ln365_fu_1745_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_2777 <= grp_fu_11159_p_dout0;
        add_reg_2771 <= grp_fu_11155_p_dout0;
        c0_x_101_reg_2747 <= grp_fu_11139_p_dout0;
        c0_x_98_reg_2759 <= grp_fu_11147_p_dout0;
        c0_y_101_reg_2753 <= grp_fu_11143_p_dout0;
        c0_y_98_reg_2765 <= grp_fu_11151_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_2725 <= grp_fu_11163_p_dout0;
        add13_reg_2731 <= grp_fu_11167_p_dout0;
        c0_x_99_reg_2689 <= grp_fu_11139_p_dout0;
        c0_y_99_reg_2695 <= grp_fu_11143_p_dout0;
        sub12_reg_2719 <= grp_fu_11159_p_dout0;
        sub13_reg_2742 <= grp_fu_11175_p_dout0;
        sub_reg_2707 <= grp_fu_11151_p_dout0;
        tmp_1_23_reg_2713 <= grp_fu_11155_p_dout0;
        tmp_1_24_reg_2737 <= grp_fu_11171_p_dout0;
        tmp_1_reg_2701 <= grp_fu_11147_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_2810 <= grp_fu_11183_p_dout0;
        add16_reg_2830 <= grp_fu_11191_p_dout0;
        mul6_reg_2820 <= grp_fu_11203_p_dout0;
        mul_reg_2815 <= grp_fu_11199_p_dout0;
        sub14_reg_2805 <= grp_fu_11179_p_dout0;
        sub16_reg_2825 <= grp_fu_11187_p_dout0;
        tmp_95_reg_2835 <= grp_fu_11195_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_2933 <= grp_fu_11179_p_dout0;
        sub15_reg_2927 <= grp_fu_11175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_2881 <= grp_fu_11147_p_dout0;
        add18_reg_2887 <= grp_fu_11151_p_dout0;
        c0_x_102_reg_2869 <= grp_fu_11139_p_dout0;
        c0_y_102_reg_2875 <= grp_fu_11143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_2959 <= grp_fu_11139_p_dout0;
        add20_reg_2964 <= grp_fu_11143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_2959_pp0_iter10_reg <= add19_reg_2959_pp0_iter9_reg;
        add19_reg_2959_pp0_iter11_reg <= add19_reg_2959_pp0_iter10_reg;
        add19_reg_2959_pp0_iter12_reg <= add19_reg_2959_pp0_iter11_reg;
        add19_reg_2959_pp0_iter13_reg <= add19_reg_2959_pp0_iter12_reg;
        add19_reg_2959_pp0_iter8_reg <= add19_reg_2959;
        add19_reg_2959_pp0_iter9_reg <= add19_reg_2959_pp0_iter8_reg;
        add20_reg_2964_pp0_iter10_reg <= add20_reg_2964_pp0_iter9_reg;
        add20_reg_2964_pp0_iter11_reg <= add20_reg_2964_pp0_iter10_reg;
        add20_reg_2964_pp0_iter12_reg <= add20_reg_2964_pp0_iter11_reg;
        add20_reg_2964_pp0_iter13_reg <= add20_reg_2964_pp0_iter12_reg;
        add20_reg_2964_pp0_iter8_reg <= add20_reg_2964;
        add20_reg_2964_pp0_iter9_reg <= add20_reg_2964_pp0_iter8_reg;
        add22_reg_3060_pp0_iter12_reg <= add22_reg_3060;
        add22_reg_3060_pp0_iter13_reg <= add22_reg_3060_pp0_iter12_reg;
        add23_reg_2969_pp0_iter9_reg <= add23_reg_2969;
        add24_reg_2974_pp0_iter9_reg <= add24_reg_2974;
        icmp_ln365_reg_2273 <= icmp_ln365_fu_1274_p2;
        icmp_ln365_reg_2273_pp0_iter10_reg <= icmp_ln365_reg_2273_pp0_iter9_reg;
        icmp_ln365_reg_2273_pp0_iter11_reg <= icmp_ln365_reg_2273_pp0_iter10_reg;
        icmp_ln365_reg_2273_pp0_iter12_reg <= icmp_ln365_reg_2273_pp0_iter11_reg;
        icmp_ln365_reg_2273_pp0_iter13_reg <= icmp_ln365_reg_2273_pp0_iter12_reg;
        icmp_ln365_reg_2273_pp0_iter1_reg <= icmp_ln365_reg_2273;
        icmp_ln365_reg_2273_pp0_iter2_reg <= icmp_ln365_reg_2273_pp0_iter1_reg;
        icmp_ln365_reg_2273_pp0_iter3_reg <= icmp_ln365_reg_2273_pp0_iter2_reg;
        icmp_ln365_reg_2273_pp0_iter4_reg <= icmp_ln365_reg_2273_pp0_iter3_reg;
        icmp_ln365_reg_2273_pp0_iter5_reg <= icmp_ln365_reg_2273_pp0_iter4_reg;
        icmp_ln365_reg_2273_pp0_iter6_reg <= icmp_ln365_reg_2273_pp0_iter5_reg;
        icmp_ln365_reg_2273_pp0_iter7_reg <= icmp_ln365_reg_2273_pp0_iter6_reg;
        icmp_ln365_reg_2273_pp0_iter8_reg <= icmp_ln365_reg_2273_pp0_iter7_reg;
        icmp_ln365_reg_2273_pp0_iter9_reg <= icmp_ln365_reg_2273_pp0_iter8_reg;
        sub22_reg_3065_pp0_iter12_reg <= sub22_reg_3065;
        sub22_reg_3065_pp0_iter13_reg <= sub22_reg_3065_pp0_iter12_reg;
        sub22_reg_3065_pp0_iter14_reg <= sub22_reg_3065_pp0_iter13_reg;
        sub23_reg_3070_pp0_iter12_reg <= sub23_reg_3070;
        sub23_reg_3070_pp0_iter13_reg <= sub23_reg_3070_pp0_iter12_reg;
        sub23_reg_3070_pp0_iter14_reg <= sub23_reg_3070_pp0_iter13_reg;
        sub24_reg_2985_pp0_iter9_reg <= sub24_reg_2985;
        sub27_reg_3075_pp0_iter12_reg <= sub27_reg_3075;
        sub27_reg_3075_pp0_iter13_reg <= sub27_reg_3075_pp0_iter12_reg;
        sub27_reg_3075_pp0_iter14_reg <= sub27_reg_3075_pp0_iter13_reg;
        sub28_reg_3080_pp0_iter12_reg <= sub28_reg_3080;
        sub28_reg_3080_pp0_iter13_reg <= sub28_reg_3080_pp0_iter12_reg;
        sub28_reg_3080_pp0_iter14_reg <= sub28_reg_3080_pp0_iter13_reg;
        tid_5_reg_2262 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_2262_pp0_iter10_reg <= tid_5_reg_2262_pp0_iter9_reg;
        tid_5_reg_2262_pp0_iter11_reg <= tid_5_reg_2262_pp0_iter10_reg;
        tid_5_reg_2262_pp0_iter12_reg <= tid_5_reg_2262_pp0_iter11_reg;
        tid_5_reg_2262_pp0_iter13_reg <= tid_5_reg_2262_pp0_iter12_reg;
        tid_5_reg_2262_pp0_iter14_reg <= tid_5_reg_2262_pp0_iter13_reg;
        tid_5_reg_2262_pp0_iter1_reg <= tid_5_reg_2262;
        tid_5_reg_2262_pp0_iter2_reg <= tid_5_reg_2262_pp0_iter1_reg;
        tid_5_reg_2262_pp0_iter3_reg <= tid_5_reg_2262_pp0_iter2_reg;
        tid_5_reg_2262_pp0_iter4_reg <= tid_5_reg_2262_pp0_iter3_reg;
        tid_5_reg_2262_pp0_iter5_reg <= tid_5_reg_2262_pp0_iter4_reg;
        tid_5_reg_2262_pp0_iter6_reg <= tid_5_reg_2262_pp0_iter5_reg;
        tid_5_reg_2262_pp0_iter7_reg <= tid_5_reg_2262_pp0_iter6_reg;
        tid_5_reg_2262_pp0_iter8_reg <= tid_5_reg_2262_pp0_iter7_reg;
        tid_5_reg_2262_pp0_iter9_reg <= tid_5_reg_2262_pp0_iter8_reg;
        tmp_96_reg_2979_pp0_iter9_reg <= tmp_96_reg_2979;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_3045 <= grp_fu_11171_p_dout0;
        add25_reg_3050 <= grp_fu_11175_p_dout0;
        add26_reg_3055 <= grp_fu_11179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_3045_pp0_iter11_reg <= add21_reg_3045;
        add21_reg_3045_pp0_iter12_reg <= add21_reg_3045_pp0_iter11_reg;
        add25_reg_3050_pp0_iter11_reg <= add25_reg_3050;
        add25_reg_3050_pp0_iter12_reg <= add25_reg_3050_pp0_iter11_reg;
        add26_reg_3055_pp0_iter11_reg <= add26_reg_3055;
        add26_reg_3055_pp0_iter12_reg <= add26_reg_3055_pp0_iter11_reg;
        c0_x_102_reg_2869_pp0_iter5_reg <= c0_x_102_reg_2869;
        c0_x_102_reg_2869_pp0_iter6_reg <= c0_x_102_reg_2869_pp0_iter5_reg;
        c0_x_102_reg_2869_pp0_iter7_reg <= c0_x_102_reg_2869_pp0_iter6_reg;
        c0_x_102_reg_2869_pp0_iter8_reg <= c0_x_102_reg_2869_pp0_iter7_reg;
        c0_y_102_reg_2875_pp0_iter5_reg <= c0_y_102_reg_2875;
        c0_y_102_reg_2875_pp0_iter6_reg <= c0_y_102_reg_2875_pp0_iter5_reg;
        c0_y_102_reg_2875_pp0_iter7_reg <= c0_y_102_reg_2875_pp0_iter6_reg;
        c0_y_102_reg_2875_pp0_iter8_reg <= c0_y_102_reg_2875_pp0_iter7_reg;
        sub20_reg_2939_pp0_iter10_reg <= sub20_reg_2939_pp0_iter9_reg;
        sub20_reg_2939_pp0_iter11_reg <= sub20_reg_2939_pp0_iter10_reg;
        sub20_reg_2939_pp0_iter12_reg <= sub20_reg_2939_pp0_iter11_reg;
        sub20_reg_2939_pp0_iter13_reg <= sub20_reg_2939_pp0_iter12_reg;
        sub20_reg_2939_pp0_iter7_reg <= sub20_reg_2939;
        sub20_reg_2939_pp0_iter8_reg <= sub20_reg_2939_pp0_iter7_reg;
        sub20_reg_2939_pp0_iter9_reg <= sub20_reg_2939_pp0_iter8_reg;
        sub21_reg_2944_pp0_iter10_reg <= sub21_reg_2944_pp0_iter9_reg;
        sub21_reg_2944_pp0_iter11_reg <= sub21_reg_2944_pp0_iter10_reg;
        sub21_reg_2944_pp0_iter12_reg <= sub21_reg_2944_pp0_iter11_reg;
        sub21_reg_2944_pp0_iter13_reg <= sub21_reg_2944_pp0_iter12_reg;
        sub21_reg_2944_pp0_iter7_reg <= sub21_reg_2944;
        sub21_reg_2944_pp0_iter8_reg <= sub21_reg_2944_pp0_iter7_reg;
        sub21_reg_2944_pp0_iter9_reg <= sub21_reg_2944_pp0_iter8_reg;
        zext_ln390_cast_reg_3107[5 : 0] <= zext_ln390_cast_fu_2100_p3[5 : 0];
        zext_ln391_cast_reg_3113[6 : 0] <= zext_ln391_cast_fu_2118_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add22_reg_3060 <= grp_fu_11163_p_dout0;
        sub22_reg_3065 <= grp_fu_11167_p_dout0;
        sub23_reg_3070 <= grp_fu_11171_p_dout0;
        sub27_reg_3075 <= grp_fu_11175_p_dout0;
        sub28_reg_3080 <= grp_fu_11179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2969 <= grp_fu_11147_p_dout0;
        add24_reg_2974 <= grp_fu_11151_p_dout0;
        sub24_reg_2985 <= grp_fu_11159_p_dout0;
        tmp_96_reg_2979 <= grp_fu_11155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add27_reg_3097 <= grp_fu_11191_p_dout0;
        add28_reg_3102 <= grp_fu_11195_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_100_reg_2893 <= grp_fu_11199_p_dout0;
        c0_y_100_reg_2899 <= grp_fu_11203_p_dout0;
        mul7_reg_2905 <= grp_fu_11207_p_dout0;
        mul8_reg_2911 <= grp_fu_11236_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_103_reg_2841 <= grp_fu_11163_p_dout0;
        c0_y_103_reg_2847 <= grp_fu_11167_p_dout0;
        sub17_reg_2853 <= grp_fu_11171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_104_reg_3001 <= grp_fu_11191_p_dout0;
        c0_x_105_reg_2991 <= grp_fu_11183_p_dout0;
        c0_y_104_reg_3007 <= grp_fu_11195_p_dout0;
        c0_y_105_reg_2996 <= grp_fu_11187_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_104_reg_3001_pp0_iter10_reg <= c0_x_104_reg_3001_pp0_iter9_reg;
        c0_x_104_reg_3001_pp0_iter11_reg <= c0_x_104_reg_3001_pp0_iter10_reg;
        c0_x_104_reg_3001_pp0_iter9_reg <= c0_x_104_reg_3001;
        c0_x_98_reg_2759_pp0_iter3_reg <= c0_x_98_reg_2759;
        c0_x_98_reg_2759_pp0_iter4_reg <= c0_x_98_reg_2759_pp0_iter3_reg;
        c0_x_98_reg_2759_pp0_iter5_reg <= c0_x_98_reg_2759_pp0_iter4_reg;
        c0_x_98_reg_2759_pp0_iter6_reg <= c0_x_98_reg_2759_pp0_iter5_reg;
        c0_y_104_reg_3007_pp0_iter10_reg <= c0_y_104_reg_3007_pp0_iter9_reg;
        c0_y_104_reg_3007_pp0_iter11_reg <= c0_y_104_reg_3007_pp0_iter10_reg;
        c0_y_104_reg_3007_pp0_iter9_reg <= c0_y_104_reg_3007;
        c0_y_98_reg_2765_pp0_iter3_reg <= c0_y_98_reg_2765;
        c0_y_98_reg_2765_pp0_iter4_reg <= c0_y_98_reg_2765_pp0_iter3_reg;
        c0_y_98_reg_2765_pp0_iter5_reg <= c0_y_98_reg_2765_pp0_iter4_reg;
        c0_y_98_reg_2765_pp0_iter6_reg <= c0_y_98_reg_2765_pp0_iter5_reg;
        sub17_reg_2853_pp0_iter5_reg <= sub17_reg_2853;
        sub17_reg_2853_pp0_iter6_reg <= sub17_reg_2853_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c0_x_95_reg_2649 <= c0_x_95_fu_1577_p11;
        c0_x_96_reg_2655 <= c0_x_96_fu_1601_p11;
        c0_x_97_reg_2660 <= c0_x_97_fu_1625_p11;
        c0_x_reg_2643 <= c0_x_fu_1553_p11;
        c0_y_95_reg_2603 <= c0_y_95_fu_1385_p11;
        c0_y_96_reg_2609 <= c0_y_96_fu_1409_p11;
        c0_y_97_reg_2614 <= c0_y_97_fu_1433_p11;
        c0_y_reg_2597 <= c0_y_fu_1361_p11;
        sub12_reg_2719_pp0_iter3_reg <= sub12_reg_2719;
        sub12_reg_2719_pp0_iter4_reg <= sub12_reg_2719_pp0_iter3_reg;
        tmp_100_reg_2666 <= tmp_100_fu_1649_p11;
        tmp_101_reg_2672 <= tmp_101_fu_1673_p11;
        tmp_102_reg_2678 <= tmp_102_fu_1697_p11;
        tmp_103_reg_2683 <= tmp_103_fu_1721_p11;
        tmp_1_23_reg_2713_pp0_iter3_reg <= tmp_1_23_reg_2713;
        tmp_1_23_reg_2713_pp0_iter4_reg <= tmp_1_23_reg_2713_pp0_iter3_reg;
        tmp_95_reg_2835_pp0_iter5_reg <= tmp_95_reg_2835;
        tmp_95_reg_2835_pp0_iter6_reg <= tmp_95_reg_2835_pp0_iter5_reg;
        tmp_97_reg_2626 <= tmp_97_fu_1481_p11;
        tmp_98_reg_2632 <= tmp_98_fu_1505_p11;
        tmp_99_reg_2637 <= tmp_99_fu_1529_p11;
        tmp_s_reg_2620 <= tmp_s_fu_1457_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul10_reg_2922 <= grp_fu_11236_p_dout0;
        mul9_reg_2917 <= grp_fu_11207_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul11_reg_3025 <= grp_fu_11199_p_dout0;
        mul12_reg_3030 <= grp_fu_11203_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub18_reg_3013 <= grp_fu_11163_p_dout0;
        sub19_reg_3019 <= grp_fu_11167_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub20_reg_2939 <= grp_fu_11155_p_dout0;
        sub21_reg_2944 <= grp_fu_11159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_3085 <= grp_fu_11183_p_dout0;
        sub26_reg_3091 <= grp_fu_11187_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub29_reg_3118 <= grp_fu_11183_p_dout0;
        sub30_reg_3123 <= grp_fu_11187_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_16_ce0_local = 1'b1;
    end else begin
        DATA_x_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_17_ce0_local = 1'b1;
    end else begin
        DATA_x_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_18_ce0_local = 1'b1;
    end else begin
        DATA_x_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_19_ce0_local = 1'b1;
    end else begin
        DATA_x_19_ce0_local = 1'b0;
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
        DATA_x_20_ce0_local = 1'b1;
    end else begin
        DATA_x_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_21_ce0_local = 1'b1;
    end else begin
        DATA_x_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_22_ce0_local = 1'b1;
    end else begin
        DATA_x_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_23_ce0_local = 1'b1;
    end else begin
        DATA_x_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_24_ce0_local = 1'b1;
    end else begin
        DATA_x_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_25_ce0_local = 1'b1;
    end else begin
        DATA_x_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_26_ce0_local = 1'b1;
    end else begin
        DATA_x_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_27_ce0_local = 1'b1;
    end else begin
        DATA_x_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_28_ce0_local = 1'b1;
    end else begin
        DATA_x_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_29_ce0_local = 1'b1;
    end else begin
        DATA_x_29_ce0_local = 1'b0;
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
        DATA_x_30_ce0_local = 1'b1;
    end else begin
        DATA_x_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_31_ce0_local = 1'b1;
    end else begin
        DATA_x_31_ce0_local = 1'b0;
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
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
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
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
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
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
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
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_16_ce0_local = 1'b1;
    end else begin
        DATA_y_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_17_ce0_local = 1'b1;
    end else begin
        DATA_y_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_18_ce0_local = 1'b1;
    end else begin
        DATA_y_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_19_ce0_local = 1'b1;
    end else begin
        DATA_y_19_ce0_local = 1'b0;
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
        DATA_y_20_ce0_local = 1'b1;
    end else begin
        DATA_y_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_21_ce0_local = 1'b1;
    end else begin
        DATA_y_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_22_ce0_local = 1'b1;
    end else begin
        DATA_y_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_23_ce0_local = 1'b1;
    end else begin
        DATA_y_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_24_ce0_local = 1'b1;
    end else begin
        DATA_y_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_25_ce0_local = 1'b1;
    end else begin
        DATA_y_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_26_ce0_local = 1'b1;
    end else begin
        DATA_y_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_27_ce0_local = 1'b1;
    end else begin
        DATA_y_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_28_ce0_local = 1'b1;
    end else begin
        DATA_y_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_29_ce0_local = 1'b1;
    end else begin
        DATA_y_29_ce0_local = 1'b0;
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
        DATA_y_30_ce0_local = 1'b1;
    end else begin
        DATA_y_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_31_ce0_local = 1'b1;
    end else begin
        DATA_y_31_ce0_local = 1'b0;
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
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
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
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
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
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
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
    if (((icmp_ln365_reg_2273 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_2273_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to12 = 1'b1;
    end else begin
        ap_idle_pp0_0to12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to14 = 1'b1;
    end else begin
        ap_idle_pp0_1to14 = 1'b0;
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
        ap_sig_allocacmp_tid_5 = tid_fu_200;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1182_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1182_opcode = 2'd0;
    end else begin
        grp_fu_1182_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1182_p0 = c0_x_103_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1182_p0 = c0_x_101_reg_2747;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1182_p0 = c0_x_reg_2643;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1182_p0 = c0_x_95_reg_2649;
    end else begin
        grp_fu_1182_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1182_p1 = add17_reg_2881;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1182_p1 = add_reg_2771;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1182_p1 = tmp_100_reg_2666;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1182_p1 = tmp_101_reg_2672;
    end else begin
        grp_fu_1182_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1186_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1186_opcode = 2'd0;
    end else begin
        grp_fu_1186_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1186_p0 = c0_y_103_reg_2847;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1186_p0 = c0_y_101_reg_2753;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1186_p0 = c0_y_reg_2597;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1186_p0 = c0_y_95_reg_2603;
    end else begin
        grp_fu_1186_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1186_p1 = add18_reg_2887;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1186_p1 = add11_reg_2777;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1186_p1 = tmp_s_reg_2620;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1186_p1 = tmp_97_reg_2626;
    end else begin
        grp_fu_1186_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1190_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1190_opcode = 2'd0;
    end else begin
        grp_fu_1190_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1190_p0 = c0_x_100_reg_2893;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1190_p0 = c0_x_99_reg_2689;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1190_p0 = c0_x_reg_2643;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1190_p0 = c0_x_95_reg_2649;
    end else begin
        grp_fu_1190_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1190_p1 = mul7_reg_2905;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1190_p1 = add12_reg_2725;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1190_p1 = tmp_100_reg_2666;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1190_p1 = tmp_101_reg_2672;
    end else begin
        grp_fu_1190_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1194_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1194_opcode = 2'd0;
    end else begin
        grp_fu_1194_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1194_p0 = c0_y_100_reg_2899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1194_p0 = c0_y_99_reg_2695;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1194_p0 = c0_y_reg_2597;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1194_p0 = c0_y_95_reg_2603;
    end else begin
        grp_fu_1194_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1194_p1 = mul8_reg_2911;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1194_p1 = add13_reg_2731;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1194_p1 = tmp_s_reg_2620;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1194_p1 = tmp_97_reg_2626;
    end else begin
        grp_fu_1194_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1198_opcode = 2'd1;
    end else if (((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1198_opcode = 2'd0;
    end else begin
        grp_fu_1198_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1198_p0 = c0_x_100_reg_2893;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1198_p0 = c0_x_103_reg_2841;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1198_p0 = c0_x_96_reg_2655;
    end else begin
        grp_fu_1198_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1198_p1 = mul7_reg_2905;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1198_p1 = add17_reg_2881;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1198_p1 = tmp_102_reg_2678;
    end else begin
        grp_fu_1198_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1202_opcode = 2'd1;
    end else if (((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1202_opcode = 2'd0;
    end else begin
        grp_fu_1202_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1202_p0 = c0_y_100_reg_2899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1202_p0 = c0_y_103_reg_2847;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1202_p0 = c0_y_96_reg_2609;
    end else begin
        grp_fu_1202_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1202_p1 = mul8_reg_2911;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1202_p1 = add18_reg_2887;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1202_p1 = tmp_98_reg_2632;
    end else begin
        grp_fu_1202_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1206_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1206_opcode = 2'd0;
    end else begin
        grp_fu_1206_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1206_p0 = c0_y_102_reg_2875_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1206_p0 = mul9_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1206_p0 = c0_x_101_reg_2747;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1206_p0 = c0_x_97_reg_2660;
    end else begin
        grp_fu_1206_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1206_p1 = sub19_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1206_p1 = bitcast_ln386_13_fu_1990_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1206_p1 = add_reg_2771;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1206_p1 = tmp_103_reg_2683;
    end else begin
        grp_fu_1206_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1210_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1210_opcode = 2'd0;
    end else begin
        grp_fu_1210_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1210_p0 = c0_x_102_reg_2869_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1210_p0 = bitcast_ln386_15_fu_2024_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1210_p0 = c0_y_101_reg_2753;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1210_p0 = c0_y_97_reg_2614;
    end else begin
        grp_fu_1210_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1210_p1 = sub18_reg_3013;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1210_p1 = mul10_reg_2922;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1210_p1 = add11_reg_2777;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1210_p1 = tmp_99_reg_2637;
    end else begin
        grp_fu_1210_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1214_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1214_opcode = 2'd0;
    end else begin
        grp_fu_1214_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1214_p0 = c0_y_102_reg_2875_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1214_p0 = c0_x_102_reg_2869_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1214_p0 = c0_y_99_reg_2695;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1214_p0 = c0_x_97_reg_2660;
    end else begin
        grp_fu_1214_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1214_p1 = sub19_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1214_p1 = sub18_reg_3013;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1214_p1 = add13_reg_2731;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1214_p1 = tmp_103_reg_2683;
    end else begin
        grp_fu_1214_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2273 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1218_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1218_opcode = 2'd0;
    end else begin
        grp_fu_1218_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1218_p0 = c0_x_105_reg_2991;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1218_p0 = mul_reg_2815;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1218_p0 = c0_y_97_reg_2614;
    end else begin
        grp_fu_1218_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1218_p1 = add23_reg_2969_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1218_p1 = add23_reg_2969;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1218_p1 = bitcast_ln386_5_fu_1922_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1218_p1 = tmp_99_reg_2637;
    end else begin
        grp_fu_1218_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1222_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1222_opcode = 2'd0;
    end else begin
        grp_fu_1222_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1222_p0 = c0_y_105_reg_2996;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1222_p0 = bitcast_ln386_7_fu_1956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1222_p0 = tmp_1_reg_2701;
    end else begin
        grp_fu_1222_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1222_p1 = add24_reg_2974_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1222_p1 = add24_reg_2974;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1222_p1 = mul6_reg_2820;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1222_p1 = bitcast_ln386_1_fu_1784_p1;
    end else begin
        grp_fu_1222_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1226_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1226_opcode = 2'd0;
    end else begin
        grp_fu_1226_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1226_p0 = c0_x_104_reg_3001_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1226_p0 = mul11_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1226_p0 = c0_x_98_reg_2759_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1226_p0 = bitcast_ln386_3_fu_1818_p1;
    end else begin
        grp_fu_1226_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1226_p1 = sub25_reg_3085;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1226_p1 = bitcast_ln386_17_fu_2058_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1226_p1 = sub15_reg_2927;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1226_p1 = sub_reg_2707;
    end else begin
        grp_fu_1226_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1230_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1230_opcode = 2'd0;
    end else begin
        grp_fu_1230_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1230_p0 = c0_y_104_reg_3007_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1230_p0 = bitcast_ln386_19_fu_2092_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1230_p0 = c0_y_98_reg_2765_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1230_p0 = bitcast_ln386_9_fu_1852_p1;
    end else begin
        grp_fu_1230_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1230_p1 = sub26_reg_3091;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1230_p1 = mul12_reg_3030;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1230_p1 = add15_reg_2933;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1230_p1 = bitcast_ln386_11_fu_1887_p1;
    end else begin
        grp_fu_1230_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1234_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1234_opcode = 2'd0;
    end else begin
        grp_fu_1234_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1234_p0 = c0_x_104_reg_3001_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1234_p0 = c0_x_98_reg_2759_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1234_p0 = bitcast_ln386_9_fu_1852_p1;
    end else begin
        grp_fu_1234_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1234_p1 = sub25_reg_3085;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1234_p1 = sub15_reg_2927;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1234_p1 = bitcast_ln386_11_fu_1887_p1;
    end else begin
        grp_fu_1234_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1238_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1238_opcode = 2'd0;
    end else begin
        grp_fu_1238_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1238_p0 = c0_y_104_reg_3007_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1238_p0 = c0_y_98_reg_2765_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1238_p0 = c0_x_99_reg_2689;
    end else begin
        grp_fu_1238_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1238_p1 = sub26_reg_3091;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1238_p1 = add15_reg_2933;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1238_p1 = add12_reg_2725;
    end else begin
        grp_fu_1238_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1242_p0 = tmp_96_reg_2979;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1242_p0 = sub14_reg_2805;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1242_p0 = tmp_1_23_reg_2713;
    end else begin
        grp_fu_1242_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1242_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1242_p1 = 64'd0;
    end else begin
        grp_fu_1242_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1247_p0 = sub24_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1247_p0 = add14_reg_2810;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1247_p0 = sub12_reg_2719;
    end else begin
        grp_fu_1247_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1247_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1247_p1 = 64'd0;
    end else begin
        grp_fu_1247_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1254_p0 = tmp_95_reg_2835;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1254_p0 = sub16_reg_2825;
        end else begin
            grp_fu_1254_p0 = 'bx;
        end
    end else begin
        grp_fu_1254_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1254_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1254_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_1254_p1 = 'bx;
        end
    end else begin
        grp_fu_1254_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1259_p0 = sub17_reg_2853;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1259_p0 = add16_reg_2830;
        end else begin
            grp_fu_1259_p0 = 'bx;
        end
    end else begin
        grp_fu_1259_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1259_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1259_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_1259_p1 = 'bx;
        end
    end else begin
        grp_fu_1259_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_2237_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_2197_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_2155_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_2125_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_2224_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_2184_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_2143_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_2108_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d0_local = bitcast_ln396_fu_2243_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_2131_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_2230_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_2190_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_2148_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_2114_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address0_local = zext_ln396_fu_2237_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_2197_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_2155_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_2125_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_2224_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_2184_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_2143_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_2108_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d0_local = bitcast_ln405_fu_2251_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_2169_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_2139_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_2247_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_2207_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_2165_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_2135_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to14 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign DATA_x_10_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_16_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_17_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_18_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_19_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_20_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_21_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_22_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_23_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_24_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_25_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_26_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_27_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_28_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_29_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_30_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_31_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_1290_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_10_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_16_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_16_ce0 = DATA_y_16_ce0_local;
assign DATA_y_17_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_17_ce0 = DATA_y_17_ce0_local;
assign DATA_y_18_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_18_ce0 = DATA_y_18_ce0_local;
assign DATA_y_19_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_19_ce0 = DATA_y_19_ce0_local;
assign DATA_y_1_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_20_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_20_ce0 = DATA_y_20_ce0_local;
assign DATA_y_21_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_21_ce0 = DATA_y_21_ce0_local;
assign DATA_y_22_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_22_ce0 = DATA_y_22_ce0_local;
assign DATA_y_23_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_23_ce0 = DATA_y_23_ce0_local;
assign DATA_y_24_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_24_ce0 = DATA_y_24_ce0_local;
assign DATA_y_25_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_25_ce0 = DATA_y_25_ce0_local;
assign DATA_y_26_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_26_ce0 = DATA_y_26_ce0_local;
assign DATA_y_27_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_27_ce0 = DATA_y_27_ce0_local;
assign DATA_y_28_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_28_ce0 = DATA_y_28_ce0_local;
assign DATA_y_29_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_29_ce0 = DATA_y_29_ce0_local;
assign DATA_y_2_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_30_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_30_ce0 = DATA_y_30_ce0_local;
assign DATA_y_31_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_31_ce0 = DATA_y_31_ce0_local;
assign DATA_y_3_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln367_fu_1290_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_1745_p2 = (tid_5_reg_2262 + 7'd1);
assign add_ln394_fu_2218_p2 = ($signed(zext_ln365_1_fu_2215_p1) + $signed(9'd320));
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
assign bit_sel80_fu_1792_p3 = bitcast_ln386_2_fu_1789_p1[64'd63];
assign bit_sel81_fu_1896_p3 = bitcast_ln386_4_fu_1893_p1[64'd63];
assign bit_sel82_fu_1930_p3 = bitcast_ln386_6_fu_1927_p1[64'd63];
assign bit_sel83_fu_1826_p3 = bitcast_ln386_8_fu_1823_p1[64'd63];
assign bit_sel84_fu_1861_p3 = bitcast_ln386_10_fu_1858_p1[64'd63];
assign bit_sel85_fu_1964_p3 = bitcast_ln386_12_fu_1961_p1[64'd63];
assign bit_sel86_fu_1998_p3 = bitcast_ln386_14_fu_1995_p1[64'd63];
assign bit_sel87_fu_2032_p3 = bitcast_ln386_16_fu_2029_p1[64'd63];
assign bit_sel88_fu_2066_p3 = bitcast_ln386_18_fu_2063_p1[64'd63];
assign bit_sel_fu_1758_p3 = bitcast_ln386_fu_1755_p1[64'd63];
assign bitcast_ln386_10_fu_1858_p1 = sub13_reg_2742;
assign bitcast_ln386_11_fu_1887_p1 = xor_ln386_5_fu_1879_p3;
assign bitcast_ln386_12_fu_1961_p1 = sub17_reg_2853_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1990_p1 = xor_ln386_6_fu_1982_p3;
assign bitcast_ln386_14_fu_1995_p1 = tmp_95_reg_2835_pp0_iter6_reg;
assign bitcast_ln386_15_fu_2024_p1 = xor_ln386_7_fu_2016_p3;
assign bitcast_ln386_16_fu_2029_p1 = sub24_reg_2985_pp0_iter9_reg;
assign bitcast_ln386_17_fu_2058_p1 = xor_ln386_8_fu_2050_p3;
assign bitcast_ln386_18_fu_2063_p1 = tmp_96_reg_2979_pp0_iter9_reg;
assign bitcast_ln386_19_fu_2092_p1 = xor_ln386_9_fu_2084_p3;
assign bitcast_ln386_1_fu_1784_p1 = xor_ln3_fu_1776_p3;
assign bitcast_ln386_2_fu_1789_p1 = tmp_1_reg_2701;
assign bitcast_ln386_3_fu_1818_p1 = xor_ln386_1_fu_1810_p3;
assign bitcast_ln386_4_fu_1893_p1 = sub12_reg_2719_pp0_iter4_reg;
assign bitcast_ln386_5_fu_1922_p1 = xor_ln386_2_fu_1914_p3;
assign bitcast_ln386_6_fu_1927_p1 = tmp_1_23_reg_2713_pp0_iter4_reg;
assign bitcast_ln386_7_fu_1956_p1 = xor_ln386_3_fu_1948_p3;
assign bitcast_ln386_8_fu_1823_p1 = tmp_1_24_reg_2737;
assign bitcast_ln386_9_fu_1852_p1 = xor_ln386_4_fu_1844_p3;
assign bitcast_ln386_fu_1755_p1 = sub_reg_2707;
assign bitcast_ln389_fu_2148_p1 = add19_reg_2959_pp0_iter13_reg;
assign bitcast_ln390_fu_2114_p1 = add25_reg_3050_pp0_iter12_reg;
assign bitcast_ln391_fu_2131_p1 = add21_reg_3045_pp0_iter12_reg;
assign bitcast_ln392_fu_2161_p1 = add27_reg_3097;
assign bitcast_ln393_fu_2190_p1 = sub20_reg_2939_pp0_iter13_reg;
assign bitcast_ln394_fu_2230_p1 = sub27_reg_3075_pp0_iter14_reg;
assign bitcast_ln395_fu_2203_p1 = sub22_reg_3065_pp0_iter14_reg;
assign bitcast_ln396_fu_2243_p1 = sub29_reg_3118;
assign bitcast_ln398_fu_2165_p1 = add20_reg_2964_pp0_iter13_reg;
assign bitcast_ln399_fu_2135_p1 = add26_reg_3055_pp0_iter12_reg;
assign bitcast_ln400_fu_2139_p1 = add22_reg_3060_pp0_iter13_reg;
assign bitcast_ln401_fu_2169_p1 = add28_reg_3102;
assign bitcast_ln402_fu_2207_p1 = sub21_reg_2944_pp0_iter13_reg;
assign bitcast_ln403_fu_2247_p1 = sub28_reg_3080_pp0_iter14_reg;
assign bitcast_ln404_fu_2211_p1 = sub23_reg_3070_pp0_iter14_reg;
assign bitcast_ln405_fu_2251_p1 = sub30_reg_3123;
assign c0_x_95_fu_1577_p9 = 'bx;
assign c0_x_96_fu_1601_p9 = 'bx;
assign c0_x_97_fu_1625_p9 = 'bx;
assign c0_x_fu_1553_p9 = 'bx;
assign c0_y_95_fu_1385_p9 = 'bx;
assign c0_y_96_fu_1409_p9 = 'bx;
assign c0_y_97_fu_1433_p9 = 'bx;
assign c0_y_fu_1361_p9 = 'bx;
assign grp_fu_11139_p_ce = 1'b1;
assign grp_fu_11139_p_din0 = grp_fu_1182_p0;
assign grp_fu_11139_p_din1 = grp_fu_1182_p1;
assign grp_fu_11139_p_opcode = grp_fu_1182_opcode;
assign grp_fu_11143_p_ce = 1'b1;
assign grp_fu_11143_p_din0 = grp_fu_1186_p0;
assign grp_fu_11143_p_din1 = grp_fu_1186_p1;
assign grp_fu_11143_p_opcode = grp_fu_1186_opcode;
assign grp_fu_11147_p_ce = 1'b1;
assign grp_fu_11147_p_din0 = grp_fu_1190_p0;
assign grp_fu_11147_p_din1 = grp_fu_1190_p1;
assign grp_fu_11147_p_opcode = grp_fu_1190_opcode;
assign grp_fu_11151_p_ce = 1'b1;
assign grp_fu_11151_p_din0 = grp_fu_1194_p0;
assign grp_fu_11151_p_din1 = grp_fu_1194_p1;
assign grp_fu_11151_p_opcode = grp_fu_1194_opcode;
assign grp_fu_11155_p_ce = 1'b1;
assign grp_fu_11155_p_din0 = grp_fu_1198_p0;
assign grp_fu_11155_p_din1 = grp_fu_1198_p1;
assign grp_fu_11155_p_opcode = grp_fu_1198_opcode;
assign grp_fu_11159_p_ce = 1'b1;
assign grp_fu_11159_p_din0 = grp_fu_1202_p0;
assign grp_fu_11159_p_din1 = grp_fu_1202_p1;
assign grp_fu_11159_p_opcode = grp_fu_1202_opcode;
assign grp_fu_11163_p_ce = 1'b1;
assign grp_fu_11163_p_din0 = grp_fu_1206_p0;
assign grp_fu_11163_p_din1 = grp_fu_1206_p1;
assign grp_fu_11163_p_opcode = grp_fu_1206_opcode;
assign grp_fu_11167_p_ce = 1'b1;
assign grp_fu_11167_p_din0 = grp_fu_1210_p0;
assign grp_fu_11167_p_din1 = grp_fu_1210_p1;
assign grp_fu_11167_p_opcode = grp_fu_1210_opcode;
assign grp_fu_11171_p_ce = 1'b1;
assign grp_fu_11171_p_din0 = grp_fu_1214_p0;
assign grp_fu_11171_p_din1 = grp_fu_1214_p1;
assign grp_fu_11171_p_opcode = grp_fu_1214_opcode;
assign grp_fu_11175_p_ce = 1'b1;
assign grp_fu_11175_p_din0 = grp_fu_1218_p0;
assign grp_fu_11175_p_din1 = grp_fu_1218_p1;
assign grp_fu_11175_p_opcode = grp_fu_1218_opcode;
assign grp_fu_11179_p_ce = 1'b1;
assign grp_fu_11179_p_din0 = grp_fu_1222_p0;
assign grp_fu_11179_p_din1 = grp_fu_1222_p1;
assign grp_fu_11179_p_opcode = grp_fu_1222_opcode;
assign grp_fu_11183_p_ce = 1'b1;
assign grp_fu_11183_p_din0 = grp_fu_1226_p0;
assign grp_fu_11183_p_din1 = grp_fu_1226_p1;
assign grp_fu_11183_p_opcode = grp_fu_1226_opcode;
assign grp_fu_11187_p_ce = 1'b1;
assign grp_fu_11187_p_din0 = grp_fu_1230_p0;
assign grp_fu_11187_p_din1 = grp_fu_1230_p1;
assign grp_fu_11187_p_opcode = grp_fu_1230_opcode;
assign grp_fu_11191_p_ce = 1'b1;
assign grp_fu_11191_p_din0 = grp_fu_1234_p0;
assign grp_fu_11191_p_din1 = grp_fu_1234_p1;
assign grp_fu_11191_p_opcode = grp_fu_1234_opcode;
assign grp_fu_11195_p_ce = 1'b1;
assign grp_fu_11195_p_din0 = grp_fu_1238_p0;
assign grp_fu_11195_p_din1 = grp_fu_1238_p1;
assign grp_fu_11195_p_opcode = grp_fu_1238_opcode;
assign grp_fu_11199_p_ce = 1'b1;
assign grp_fu_11199_p_din0 = grp_fu_1242_p0;
assign grp_fu_11199_p_din1 = grp_fu_1242_p1;
assign grp_fu_11203_p_ce = 1'b1;
assign grp_fu_11203_p_din0 = grp_fu_1247_p0;
assign grp_fu_11203_p_din1 = grp_fu_1247_p1;
assign grp_fu_11207_p_ce = 1'b1;
assign grp_fu_11207_p_din0 = grp_fu_1254_p0;
assign grp_fu_11207_p_din1 = grp_fu_1254_p1;
assign grp_fu_11236_p_ce = 1'b1;
assign grp_fu_11236_p_din0 = grp_fu_1259_p0;
assign grp_fu_11236_p_din1 = grp_fu_1259_p1;
assign icmp_ln365_fu_1274_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1280_p4 = {{ap_sig_allocacmp_tid_5[5:2]}};
assign sext_ln392_fu_2152_p1 = zext_ln390_cast_reg_3107;
assign sext_ln395_fu_2194_p1 = zext_ln391_cast_reg_3113;
assign sext_ln396_fu_2234_p1 = zext_ln390_cast_reg_3107;
assign tmp_100_fu_1649_p9 = 'bx;
assign tmp_101_fu_1673_p9 = 'bx;
assign tmp_102_fu_1697_p9 = 'bx;
assign tmp_103_fu_1721_p9 = 'bx;
assign tmp_97_fu_1481_p9 = 'bx;
assign tmp_98_fu_1505_p9 = 'bx;
assign tmp_99_fu_1529_p9 = 'bx;
assign tmp_s_fu_1457_p9 = 'bx;
assign trunc_ln365_fu_1358_p1 = tid_5_reg_2262[1:0];
assign trunc_ln386_1_fu_1806_p1 = bitcast_ln386_2_fu_1789_p1[62:0];
assign trunc_ln386_2_fu_1910_p1 = bitcast_ln386_4_fu_1893_p1[62:0];
assign trunc_ln386_3_fu_1944_p1 = bitcast_ln386_6_fu_1927_p1[62:0];
assign trunc_ln386_4_fu_1840_p1 = bitcast_ln386_8_fu_1823_p1[62:0];
assign trunc_ln386_5_fu_1875_p1 = bitcast_ln386_10_fu_1858_p1[62:0];
assign trunc_ln386_6_fu_1978_p1 = bitcast_ln386_12_fu_1961_p1[62:0];
assign trunc_ln386_7_fu_2012_p1 = bitcast_ln386_14_fu_1995_p1[62:0];
assign trunc_ln386_8_fu_2046_p1 = bitcast_ln386_16_fu_2029_p1[62:0];
assign trunc_ln386_9_fu_2080_p1 = bitcast_ln386_18_fu_2063_p1[62:0];
assign trunc_ln386_fu_1772_p1 = bitcast_ln386_fu_1755_p1[62:0];
assign trunc_ln390_fu_2097_p1 = tid_5_reg_2262_pp0_iter13_reg[5:0];
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
assign xor_ln386_10_fu_1766_p2 = (bit_sel_fu_1758_p3 ^ 1'd1);
assign xor_ln386_11_fu_1904_p2 = (bit_sel81_fu_1896_p3 ^ 1'd1);
assign xor_ln386_12_fu_1938_p2 = (bit_sel82_fu_1930_p3 ^ 1'd1);
assign xor_ln386_13_fu_1834_p2 = (bit_sel83_fu_1826_p3 ^ 1'd1);
assign xor_ln386_14_fu_1869_p2 = (bit_sel84_fu_1861_p3 ^ 1'd1);
assign xor_ln386_15_fu_1972_p2 = (bit_sel85_fu_1964_p3 ^ 1'd1);
assign xor_ln386_16_fu_2006_p2 = (bit_sel86_fu_1998_p3 ^ 1'd1);
assign xor_ln386_17_fu_2040_p2 = (bit_sel87_fu_2032_p3 ^ 1'd1);
assign xor_ln386_18_fu_2074_p2 = (bit_sel88_fu_2066_p3 ^ 1'd1);
assign xor_ln386_1_fu_1810_p3 = {{xor_ln386_fu_1800_p2}, {trunc_ln386_1_fu_1806_p1}};
assign xor_ln386_2_fu_1914_p3 = {{xor_ln386_11_fu_1904_p2}, {trunc_ln386_2_fu_1910_p1}};
assign xor_ln386_3_fu_1948_p3 = {{xor_ln386_12_fu_1938_p2}, {trunc_ln386_3_fu_1944_p1}};
assign xor_ln386_4_fu_1844_p3 = {{xor_ln386_13_fu_1834_p2}, {trunc_ln386_4_fu_1840_p1}};
assign xor_ln386_5_fu_1879_p3 = {{xor_ln386_14_fu_1869_p2}, {trunc_ln386_5_fu_1875_p1}};
assign xor_ln386_6_fu_1982_p3 = {{xor_ln386_15_fu_1972_p2}, {trunc_ln386_6_fu_1978_p1}};
assign xor_ln386_7_fu_2016_p3 = {{xor_ln386_16_fu_2006_p2}, {trunc_ln386_7_fu_2012_p1}};
assign xor_ln386_8_fu_2050_p3 = {{xor_ln386_17_fu_2040_p2}, {trunc_ln386_8_fu_2046_p1}};
assign xor_ln386_9_fu_2084_p3 = {{xor_ln386_18_fu_2074_p2}, {trunc_ln386_9_fu_2080_p1}};
assign xor_ln386_fu_1800_p2 = (bit_sel80_fu_1792_p3 ^ 1'd1);
assign xor_ln3_fu_1776_p3 = {{xor_ln386_10_fu_1766_p2}, {trunc_ln386_fu_1772_p1}};
assign zext_ln365_1_fu_2215_p1 = tid_5_reg_2262_pp0_iter14_reg;
assign zext_ln365_fu_2143_p1 = tid_5_reg_2262_pp0_iter13_reg;
assign zext_ln367_fu_1290_p1 = lshr_ln_fu_1280_p4;
assign zext_ln390_cast_fu_2100_p3 = {{1'd1}, {trunc_ln390_fu_2097_p1}};
assign zext_ln390_fu_2108_p1 = $unsigned(zext_ln390_cast_fu_2100_p3);
assign zext_ln391_cast_fu_2118_p3 = {{1'd1}, {tid_5_reg_2262_pp0_iter13_reg}};
assign zext_ln391_fu_2125_p1 = $unsigned(zext_ln391_cast_fu_2118_p3);
assign zext_ln392_fu_2155_p1 = $unsigned(sext_ln392_fu_2152_p1);
assign zext_ln393_1_fu_2184_p1 = zext_ln393_cast_fu_2176_p3;
assign zext_ln393_cast_fu_2176_p3 = {{1'd1}, {zext_ln393_fu_2173_p1}};
assign zext_ln393_fu_2173_p1 = tid_5_reg_2262_pp0_iter14_reg;
assign zext_ln394_fu_2224_p1 = add_ln394_fu_2218_p2;
assign zext_ln395_fu_2197_p1 = $unsigned(sext_ln395_fu_2194_p1);
assign zext_ln396_fu_2237_p1 = $unsigned(sext_ln396_fu_2234_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_3107[6] <= 1'b1;
    zext_ln391_cast_reg_3113[7] <= 1'b1;
end
endmodule 
